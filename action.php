<?php

require_once $_SERVER['DOCUMENT_ROOT'] . '/inc/ini.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/inc/func.php';

$info_text3 = NULL;
$db = false;
$_db_rows = array();
$type = isset( $_POST['registration_type'] ) ? $_POST['registration_type'] : 'exch';

$query = mysqli_query($mysqli, "SELECT `fieldtype`, `mandatory`, `name`, `regexp` FROM `inputs_$type`" );

function validateUAIBAN($iban) {
    $iban = str_replace([' ', '-'], '', strtoupper($iban));

    // Проверяем длину и префикс
    if (strlen($iban) !== 29 || substr($iban, 0, 2) !== 'UA') {
        return false;
    }

    // Переносим первые 4 символа в конец
    $iban_rearranged = substr($iban, 4) . substr($iban, 0, 4);

    // Преобразуем буквы в числа (A=10, B=11, ... Z=35)
    $numeric_iban = '';
    for ($i = 0; $i < strlen($iban_rearranged); $i++) {
        $char = $iban_rearranged[$i];
        if (ctype_alpha($char)) {
            $numeric_iban .= (ord($char) - 55);
        } else {
            $numeric_iban .= $char;
        }
    }

    // Проверяем контрольное число (mod 97)
    $remainder = intval(substr($numeric_iban, 0, 1));
    for ($i = 1; $i < strlen($numeric_iban); $i++) {
        $remainder = ($remainder * 10 + intval($numeric_iban[$i])) % 97;
    }

    return $remainder === 1;
}

while ( $_row = mysqli_fetch_assoc( $query ) ) {
    $key = $_row['name'];
    if ( isset( $_POST[ $key ] ) ) {
        $val = $_POST[ $key ];
        $_row['fieldtype'] = (int) $_row['fieldtype'];

        if ( in_array( $_row['fieldtype'], [1, 2, 3, 4, 6], true ) ) {

            if ( $_row['fieldtype'] === 4 ) {
                $val = is_array( $val ) ? implode( ',', $val ) : '';
            }

            $val = clear_hyphen( str_replace( '’', "'", stripslashes( strip_tags( trim( $val ) ) ) ) );

            // Проверка обязательных полей
            if ( $val === '' && $_row['mandatory'] ) {
                $_backend_failed[] = $key;
                continue;
            }

            // Проверка IBAN для поля "Поточний рахунок"
            if (preg_match('/^banking_account[0-9]+$/', $key)) {
                if ($val !== '' && !validateUAIBAN($val)) {
                    $_backend_failed[] = $key;
                    continue;
                }
            }

            // Проверка регулярного выражения из БД (если задано)
            if (!empty($_row['regexp'])) {
                $pattern_raw = trim($_row['regexp']);
                $val = trim($val);

                // Пропускаем пустые поля, если они не обязательные
                if ($val === '' && empty($_row['mandatory'])) {
                    // например, скрытые или необязательные поля — не валидируем
                    continue;
                }

                // Добавляем слэши, если их нет
                if ($pattern_raw[0] !== '/' && substr($pattern_raw, -1) !== '/') {
                    $pattern = '/' . $pattern_raw . '/u';
                } else {
                    $pattern = $pattern_raw;
                }

                // Проверяем корректность регулярки
                $is_valid_pattern = @preg_match($pattern, '') !== false;

                if ($is_valid_pattern) {
                    // Проверяем значение по шаблону
                    if ($val !== '' && !preg_match($pattern, $val)) {
                        $_backend_failed[] = $key;
                        continue;
                    }
                } else {
                    // Если регулярка некорректна — логируем, но не блокируем форму
                    error_log("Invalid regexp for field '{$key}': {$pattern_raw}");
                }
            }

            // если всё прошло — добавляем в массив для записи
            $_db_rows[ $_row['name'] ] = $val;
        }
    }
}

if ( ! empty( $_db_rows ) && empty( $_backend_failed ) ) {
	$db = mysqli_query($mysqli, 'INSERT INTO users SET ' . db_set_array( $_db_rows ) );
	$info_text3 = 'Анкету отримано!';
} else {
	if (!empty($_backend_failed)) {
    echo '<pre>';
    print_r($_backend_failed);
    echo '</pre>';
	}
	$info_text3 = 'Сталася помилка!';
}

?>
<!DOCTYPE html>
<html class="no-js" lang="uk-UA">

<head>
	<meta charset="utf-8">
	<title>Action</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="stylesheet" href="/font/iconsmind-s/css/iconsminds.css">
	<link rel="stylesheet" href="/font/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="/css/vendor/bootstrap.min.css">
	<link rel="stylesheet" href="/css/dore.light.blueyale.css">
	<link rel="stylesheet" href="/css/main.css">
	<script>(function (html) {
			html.className = html.className.replace(/\bno-js\b/, 'js')
		})(document.documentElement);</script>
	<script src="/js/vendor/jquery-3.3.1.min.js"></script>
</head>

<body id="app-container" class="menu-default">

<br><br>
<div class="form-wrapper form-wrapper-ap">

	<div class="row">

		<div class="col-12 form-content" style="margin: auto;">
			<div class="card">
				<div class="card-body">
					<h1><?php echo $info_text3; ?></h1>
				</div>
			</div> <!-- end .card -->
		</div> <!-- end .row -->

	</div> <!-- end form-wrapper -->

</div>
</body>

</html>