-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Ноя 17 2025 г., 19:08
-- Версия сервера: 5.5.62
-- Версия PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `taskdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `inputs_exch`
--

CREATE TABLE `inputs_exch` (
  `ord` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `fieldtype` int(1) NOT NULL DEFAULT '1',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `header` int(1) NOT NULL DEFAULT '0',
  `mandatory` int(1) NOT NULL DEFAULT '1',
  `pctwidth` tinyint(3) UNSIGNED NOT NULL DEFAULT '100',
  `note` varchar(255) NOT NULL DEFAULT '',
  `regexp` varchar(255) NOT NULL DEFAULT '',
  `validation_info` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inputs_exch`
--

INSERT INTO `inputs_exch` (`ord`, `name`, `value`, `descr`, `fieldtype`, `parent`, `header`, `mandatory`, `pctwidth`, `note`, `regexp`, `validation_info`) VALUES
(4, 'company_info', '', 'Інформація про компанію', 0, '', 1, 1, 100, '', '', ''),
(5, 'company_fullname_ukr', '', 'Назва компанії (повна)', 1, '', 0, 1, 75, '(українською мовою)', '', ''),
(6, 'company_fullname_eng', '', '', 1, '', 0, 0, 75, '(англійською мовою)', '', ''),
(7, 'company_shortname_ukr', '', 'Назва компанії (скорочена)', 1, '', 0, 1, 75, '(українською мовою)', '', ''),
(8, 'company_shortname_eng', '', '', 1, '', 0, 0, 75, '(англійською мовою)', '', ''),
(9, 'company_constituent_doc', '', 'Компанія діє на підставі', 1, '', 0, 1, 50, '(назва документа у родовому відмінку)', '', ''),
(10, 'company_ownership_form', 'Державна, Приватна, Комунальна', 'Форма власності', 3, '', 0, 1, 100, '', '', ''),
(11, 'company_legal_address', '', 'Юридична адреса', 0, '', 0, 1, 100, '', '', ''),
(12, 'company_legal_address_code', '', 'Індекс', 1, 'company_legal_address', 0, 1, 50, '', '^[0-9]+$', ''),
(13, 'company_legal_address_country', '', 'Країна', 1, 'company_legal_address', 0, 1, 50, '', '', ''),
(14, 'company_legal_address_oblast', '', 'Область', 1, 'company_legal_address', 0, 0, 50, '', '', ''),
(15, 'company_legal_address_city', '', 'Місто', 1, 'company_legal_address', 0, 1, 50, '', '', ''),
(16, 'company_legal_address_district', '', 'Район', 1, 'company_legal_address', 0, 0, 50, '', '', ''),
(17, 'company_legal_address_street', '', 'Вулиця', 1, 'company_legal_address', 0, 1, 50, '', '', ''),
(18, 'company_legal_address_dom', '', 'Будинок', 1, 'company_legal_address', 0, 1, 50, '', '', ''),
(19, 'company_legal_address_korpus', '', 'Корпус', 1, 'company_legal_address', 0, 0, 50, '(заповнюється у разі наявності)', '', ''),
(20, 'company_legal_address_office', '', 'Офіс (кім.)', 1, 'company_legal_address', 0, 0, 50, '(заповнюється у разі наявності)', '', ''),
(21, 'company_legal_address_eng', '', 'Юридична адреса (на англ. мові)', 2, '', 0, 0, 100, '', '', ''),
(22, 'company_mailing_address', '', 'Поштова адреса', 0, '', 0, 1, 100, '', '', ''),
(23, 'company_mailing_address_code', '', 'Індекс', 1, 'company_mailing_address', 0, 1, 50, '', '^[0-9]+$', ''),
(24, 'company_mailing_address_country', '', 'Країна', 1, 'company_mailing_address', 0, 1, 50, '', '', ''),
(25, 'company_mailing_address_oblast', '', 'Область', 1, 'company_mailing_address', 0, 0, 50, '', '', ''),
(26, 'company_mailing_address_city', '', 'Місто', 1, 'company_mailing_address', 0, 1, 50, '', '', ''),
(27, 'company_mailing_address_district', '', 'Район', 1, 'company_mailing_address', 0, 0, 50, '', '', ''),
(28, 'company_mailing_address_street', '', 'Вулиця', 1, 'company_mailing_address', 0, 1, 50, '', '', ''),
(29, 'company_mailing_address_dom', '', 'Будинок', 1, 'company_mailing_address', 0, 1, 50, '', '', ''),
(30, 'company_mailing_address_korpus', '', 'Корпус', 1, 'company_mailing_address', 0, 0, 50, '(заповнюється у разі наявності)', '', ''),
(31, 'company_mailing_address_office', '', 'Офіс (кім.)', 1, 'company_mailing_address', 0, 0, 50, '(заповнюється у разі наявності)', '', ''),
(32, 'company_phone', '', 'Телефон', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(33, 'company_fax', '', 'Телефон/факс', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(34, 'company_email', '', 'E-mail', 1, '', 0, 1, 50, '', '^[0-9a-z_-]+(\\.[0-9a-z_-]+)*@[0-9a-z-]+(\\.[0-9a-z-]+)+$', ''),
(35, 'company_code', '', 'Код за ЄДРПОУ', 1, '', 0, 1, 50, '', '^[0-9]+$', ''),
(36, 'company_tax_number', '', 'Індивідуальний податковий номер', 1, '', 0, 0, 50, '', '^[0-9]+$', ''),
(38, 'bank_details1', '', 'Поточний (розрахунковий) рахунок – 1', 0, '', 1, 1, 100, '', '', ''),
(39, 'bank_name_ukr1', '', 'Назва банку', 1, '', 0, 1, 75, '(українською мовою)', '', ''),
(40, 'bank_name_eng1', '', '', 1, '', 0, 0, 75, '(англійською мовою)', '', ''),
(41, 'bank_address1', '', 'Адреса банку', 1, '', 0, 1, 100, '', '', ''),
(42, 'banking_account1', '', 'Поточний рахунок', 1, '', 0, 1, 50, '', '^(UA)?[0-9]{27}$', 'Вкажіть рахунок у форматі IBAN'),
(44, 'bank_details2', '', 'Поточний рахунок – 2', 0, '', 1, 1, 100, '', '', ''),
(45, 'bank_name_ukr2', '', 'Назва банку', 1, '', 0, 1, 75, '(українською мовою)', '', ''),
(46, 'bank_name_eng2', '', '', 1, '', 0, 0, 75, '(англійською мовою)', '', ''),
(47, 'bank_address2', '', 'Адреса банку', 1, '', 0, 1, 100, '', '', ''),
(48, 'banking_account2', '', 'Поточний рахунок', 1, '', 0, 1, 50, '', '^(UA)?[0-9]{27}$', 'Вкажіть рахунок у форматі IBAN'),
(50, 'bank_details3', '', 'Поточний рахунок – 3', 0, '', 1, 1, 100, '', '', ''),
(51, 'bank_name_ukr3', '', 'Назва банку', 1, '', 0, 1, 75, '(українською мовою)', '', ''),
(52, 'bank_name_eng3', '', '', 1, '', 0, 0, 75, '(англійською мовою)', '', ''),
(53, 'bank_address3', '', 'Адреса банку', 1, '', 0, 1, 100, '', '', ''),
(54, 'banking_account3', '', 'Поточний рахунок', 1, '', 0, 1, 50, '', '^(UA)?[0-9]{27}$', 'Вкажіть рахунок у форматі IBAN'),
(56, 'ceo_info', '', 'Інформація про керівника', 0, '', 1, 1, 100, '', '', ''),
(57, 'ceo_fullname_nom', '', 'ПІБ керівника', 1, '', 0, 1, 75, '(у називному відмінку)', '', ''),
(58, 'ceo_fullname_gen', '', '', 1, '', 0, 1, 75, '(у родовому відмінку)', '', ''),
(59, 'ceo_position_nom', '', 'Посада керівника', 1, '', 0, 1, 75, '(у називному відмінку)', '', ''),
(60, 'ceo_position_gen', '', '', 1, '', 0, 1, 75, '(у родовому відмінку)', '', ''),
(62, 'ceo_passport_data', '', 'Паспортні дані керівника', 0, '', 0, 1, 100, '', '', ''),
(63, 'ceo_passport_series', '', 'серія', 1, 'ceo_passport_data', 0, 1, 50, '', '^[A-Za-zА-Яа-яҐґЄєІіЇї]{1,4}$', ''),
(64, 'ceo_passport_number', '', '№', 1, 'ceo_passport_data', 0, 1, 50, '', '^[0-9]{1,20}$', ''),
(65, 'ceo_passport_authority', '', 'ким виданий', 1, 'ceo_passport_data', 0, 1, 100, '', '', ''),
(66, 'ceo_passport_date', '', 'дата видачі', 1, 'ceo_passport_data', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '', ''),
(71, 'ceo_id_num', '', 'Ідентифікаційний номер керівника', 1, '', 0, 1, 50, '', '^([0-9]{10}|[А-Яа-яЁёҐґЄєІіЇї]{2}[0-9]{6})$', ''),
(72, 'agent_info1', '', 'Особа, що буде виконувати повноваження брокера – 1', 0, '', 1, 1, 100, '', '', ''),
(73, 'agent_fullname_nom1', '', 'ПІБ особи', 1, '', 0, 1, 50, '(у називному відмінку)', '', ''),
(74, 'agent_fullname_gen1', '', '', 1, '', 0, 1, 50, '(у родовому відмінку)', '', ''),
(75, 'agent_fullname_acc1', '', '', 1, '', 0, 1, 50, '(у знахідному відмінку)', '', ''),
(77, 'agent_position1', '', 'Посада особи', 1, '', 0, 1, 100, '', '', ''),
(79, 'agent_passport_data1', '', 'Паспортні дані особи', 0, '', 0, 1, 100, '', '', ''),
(80, 'agent_passport_series1', '', 'серія', 1, 'agent_passport_data1', 0, 1, 50, '', '^[A-Za-zА-Яа-яҐґЄєІіЇї]{1,4}$', ''),
(81, 'agent_passport_number1', '', '№', 1, 'agent_passport_data1', 0, 1, 50, '', '^[0-9]{1,20}$', ''),
(82, 'agent_passport_authority1', '', 'ким виданий', 1, 'agent_passport_data1', 0, 1, 100, '', '', ''),
(83, 'agent_passport_date1', '', 'дата видачі', 1, 'agent_passport_data1', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '', ''),
(88, 'agent_id1', '', 'Ідентифікаційний номер особи', 1, '', 0, 1, 50, '', '^([0-9]{10}|[А-Яа-яЁёҐґЄєІіЇї]{2}[0-9]{6})$', ''),
(89, 'agent_address1', '', 'Адреса проживання особи', 2, '', 0, 1, 100, '', '', ''),
(90, 'agent_email1', '', 'E-mail особи', 1, '', 0, 1, 50, '', '^[0-9a-z_-]+(\\.[0-9a-z_-]+)*@[0-9a-z-]+(\\.[0-9a-z-]+)+$', ''),
(91, 'agent_work_phone1', '', 'Телефон особи (робочий)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(92, 'agent_mobile_phone1', '', 'Телефон особи (мобільний)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(94, 'agent_info2', '', 'Особа, що буде виконувати повноваження брокера – 2', 0, '', 1, 1, 100, '', '', ''),
(95, 'agent_fullname_nom2', '', 'ПІБ особи', 1, '', 0, 1, 50, '(у називному відмінку)', '', ''),
(96, 'agent_fullname_gen2', '', '', 1, '', 0, 1, 50, '(у родовому відмінку)', '', ''),
(97, 'agent_fullname_acc2', '', '', 1, '', 0, 1, 50, '(у знахідному відмінку)', '', ''),
(99, 'agent_position2', '', 'Посада особи', 1, '', 0, 1, 100, '', '', ''),
(101, 'agent_passport_data2', '', 'Паспортні дані особи', 0, '', 0, 1, 100, '', '', ''),
(102, 'agent_passport_series2', '', 'серія', 1, 'agent_passport_data2', 0, 1, 50, '', '^[a-zа-яЁёҐґЄєІіЇї]{1,4}$', ''),
(103, 'agent_passport_number2', '', '№', 1, 'agent_passport_data2', 0, 1, 50, '', '^[0-9]{1,20}$', ''),
(104, 'agent_passport_authority2', '', 'ким виданий', 1, 'agent_passport_data2', 0, 1, 100, '', '', ''),
(105, 'agent_passport_date2', '', 'дата видачі', 1, 'agent_passport_data2', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '', ''),
(110, 'agent_id2', '', 'Ідентифікаційний номер особи', 1, '', 0, 1, 50, '', '^([0-9]{10}|[А-Яа-яЁёҐґЄєІіЇї]{2}[0-9]{6})$', ''),
(111, 'agent_address2', '', 'Адреса проживання особи', 2, '', 0, 1, 100, '', '', ''),
(112, 'agent_email2', '', 'E-mail особи', 1, '', 0, 1, 50, '', '^[0-9a-z_-]+(\\.[0-9a-z_-]+)*@[0-9a-z-]+(\\.[0-9a-z-]+)+$', ''),
(113, 'agent_work_phone2', '', 'Телефон особи (робочий)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(114, 'agent_mobile_phone2', '', 'Телефон особи (мобільний)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(116, 'agent_info3', '', 'Особа, що буде виконувати повноваження брокера – 3', 0, '', 1, 1, 100, '', '', ''),
(117, 'agent_fullname_nom3', '', 'ПІБ особи', 1, '', 0, 1, 50, '(у називному відмінку)', '', ''),
(118, 'agent_fullname_gen3', '', '', 1, '', 0, 1, 50, '(у родовому відмінку)', '', ''),
(119, 'agent_fullname_acc3', '', '', 1, '', 0, 1, 50, '(у знахідному відмінку)', '', ''),
(121, 'agent_position3', '', 'Посада особи', 1, '', 0, 1, 100, '', '', ''),
(123, 'agent_passport_data3', '', 'Паспортні дані особи', 0, '', 0, 1, 100, '', '', ''),
(124, 'agent_passport_series3', '', 'серія', 1, 'agent_passport_data3', 0, 1, 50, '', '^[a-zа-яЁёҐґЄєІіЇї]{1,4}$', ''),
(125, 'agent_passport_number3', '', '№', 1, 'agent_passport_data3', 0, 1, 50, '', '^[0-9]{1,20}$', ''),
(126, 'agent_passport_authority3', '', 'ким виданий', 1, 'agent_passport_data3', 0, 1, 100, '', '', ''),
(127, 'agent_passport_date3', '', 'дата видачі', 1, 'agent_passport_data3', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '', ''),
(132, 'agent_id3', '', 'Ідентифікаційний номер особи', 1, '', 0, 1, 50, '', '^([0-9]{10}|[А-Яа-яЁёҐґЄєІіЇї]{2}[0-9]{6})$', ''),
(133, 'agent_address3', '', 'Адреса проживання особи', 2, '', 0, 1, 100, '', '', ''),
(134, 'agent_email3', '', 'E-mail особи', 1, '', 0, 1, 50, '', '^[0-9a-z_-]+(\\.[0-9a-z_-]+)*@[0-9a-z-]+(\\.[0-9a-z-]+)+$', ''),
(135, 'agent_work_phone3', '', 'Телефон особи (робочий)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(136, 'agent_mobile_phone3', '', 'Телефон особи (мобільний)', 1, '', 0, 1, 50, '(формат запису: +380XXXXXXXXX)', '^\\+380[0-9]{9}$', ''),
(1, 'accreditation_params', '', 'Акредитація за напрямками', 0, '', 1, 1, 100, '', '', ''),
(2, 'accreditation_sections', '«Вугільна продукція», «Природний газ», «Скраплений газ», «Нафта та газовий конденсат», «Нафтопродукти»,«Сировина та інша продукція», «Добрива»', 'Напрямки, на яких бажаєте здійснювати біржові операції', 4, '', 0, 1, 100, '', '', ''),
(3, 'accreditation_period', '3,6,12', 'Строк оренди біржового місця (місяці)', 3, '', 0, 1, 50, '', '', ''),
(37, 'company_eic', '', 'EIC код', 1, '', 0, 0, 50, '(заповнюється для напрямку \"Природний газ\")', '', ''),
(61, 'ceo_document_type', 'паспорт, ID-картка', 'Тип документу', 6, '', 0, 1, 100, '', '', ''),
(70, 'ceo_id_card_authority', '', 'орган, що видав', 1, 'ceo_id_card_data', 0, 1, 100, '', '^[0-9]{4}$', ''),
(67, 'ceo_id_card_data', '', 'Дані ID-картки керівника', 0, '', 0, 1, 100, '', '', ''),
(69, 'ceo_id_card_date', '', 'дата видачі', 1, 'ceo_id_card_data', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{4}$', ''),
(68, 'ceo_id_card_number', '', 'документ №', 1, 'ceo_id_card_data', 0, 1, 50, '', '^[0-9]{9}$', ''),
(78, 'agent_document_type1', 'паспорт, ID-картка', 'Тип документу', 6, '', 0, 1, 100, '', '', ''),
(87, 'agent_id_card_authority1', '', 'орган, що видав', 1, 'agent_id_card_data1', 0, 1, 100, '', '', ''),
(84, 'agent_id_card_data1', '', 'Дані ID-картки особи', 0, '', 0, 1, 100, '', '', ''),
(86, 'agent_id_card_date1', '', 'дата видачі', 1, 'agent_id_card_data1', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{4}$', ''),
(85, 'agent_id_card_number1', '', 'документ №', 1, 'agent_id_card_data1', 0, 1, 50, '', '^[0-9]{9}$', ''),
(100, 'agent_document_type2', 'паспорт, ID-картка', 'Тип документу', 6, '', 0, 1, 100, '', '', ''),
(109, 'agent_id_card_authority2', '', 'орган, що видав', 1, 'agent_id_card_data2', 0, 1, 100, '', '', ''),
(106, 'agent_id_card_data2', '', 'Дані ID-картки особи', 0, '', 0, 1, 100, '', '', ''),
(108, 'agent_id_card_date2', '', 'дата видачі', 1, 'agent_id_card_data2', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{4}$', ''),
(107, 'agent_id_card_number2', '', 'документ №', 1, 'agent_id_card_data2', 0, 1, 50, '', '^[0-9]{9}$', ''),
(122, 'agent_document_type3', 'паспорт, ID-картка', 'Тип документу', 6, '', 0, 1, 100, '', '', ''),
(131, 'agent_id_card_authority3', '', 'орган, що видав', 1, 'agent_id_card_data3', 0, 1, 100, '', '', ''),
(128, 'agent_id_card_data3', '', 'Дані ID-картки особи', 0, '', 0, 1, 100, '', '', ''),
(130, 'agent_id_card_date3', '', 'дата видачі', 1, 'agent_id_card_data3', 0, 1, 50, '(формат запису: ЧЧ.ММ.РРРР)', '^[0-9]{2}\\.[0-9]{2}\\.[0-9]{4}$', ''),
(129, 'agent_id_card_number3', '', 'документ №', 1, 'agent_id_card_data3', 0, 1, 50, '', '^[0-9]{9}$', ''),
(76, 'agent_fullname_eng1', '', 'ПІБ особи (англійською мовою)', 1, '', 0, 1, 50, '', '', ''),
(98, 'agent_fullname_eng2', '', 'ПІБ особи (англійською мовою)', 1, '', 0, 1, 50, '', '', ''),
(120, 'agent_fullname_eng3', '', 'ПІБ особи (англійською мовою)', 1, '', 0, 1, 50, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` set('exch') NOT NULL DEFAULT 'exch',
  `status` set('new','processing','waiting','ok','stop') NOT NULL DEFAULT 'new',
  `company_fullname_ukr` text NOT NULL,
  `company_fullname_eng` text NOT NULL,
  `company_shortname_ukr` text NOT NULL,
  `company_shortname_eng` text NOT NULL,
  `company_constituent_doc` text NOT NULL,
  `company_ownership_form` text NOT NULL,
  `company_legal_address_code` text NOT NULL,
  `company_legal_address_country` text NOT NULL,
  `company_legal_address_oblast` text NOT NULL,
  `company_legal_address_city` text NOT NULL,
  `company_legal_address_district` text NOT NULL,
  `company_legal_address_street` text NOT NULL,
  `company_legal_address_dom` text NOT NULL,
  `company_legal_address_korpus` text NOT NULL,
  `company_legal_address_office` text NOT NULL,
  `company_legal_address_eng` text NOT NULL,
  `company_mailing_address_code` text NOT NULL,
  `company_mailing_address_country` text NOT NULL,
  `company_mailing_address_oblast` text NOT NULL,
  `company_mailing_address_city` text NOT NULL,
  `company_mailing_address_district` text NOT NULL,
  `company_mailing_address_street` text NOT NULL,
  `company_mailing_address_dom` text NOT NULL,
  `company_mailing_address_korpus` text NOT NULL,
  `company_mailing_address_office` text NOT NULL,
  `company_phone` text NOT NULL,
  `company_fax` text NOT NULL,
  `company_email` text NOT NULL,
  `company_code` varchar(32) NOT NULL,
  `company_tax_number` text NOT NULL,
  `company_eic` text NOT NULL,
  `bank_name_ukr1` text NOT NULL,
  `bank_name_eng1` text NOT NULL,
  `bank_address1` text NOT NULL,
  `banking_account1` text NOT NULL,
  `bank_code1` text NOT NULL,
  `bank_name_ukr2` text NOT NULL,
  `bank_name_eng2` text NOT NULL,
  `bank_address2` text NOT NULL,
  `banking_account2` text NOT NULL,
  `bank_code2` text NOT NULL,
  `bank_name_ukr3` text NOT NULL,
  `bank_name_eng3` text NOT NULL,
  `bank_address3` text NOT NULL,
  `banking_account3` text NOT NULL,
  `bank_code3` text NOT NULL,
  `ceo_fullname_nom` text NOT NULL,
  `ceo_fullname_gen` text NOT NULL,
  `ceo_position_nom` text NOT NULL,
  `ceo_position_gen` text NOT NULL,
  `ceo_document_type` text NOT NULL,
  `ceo_passport_series` text NOT NULL,
  `ceo_passport_number` text NOT NULL,
  `ceo_passport_authority` text NOT NULL,
  `ceo_passport_date` text NOT NULL,
  `ceo_id_card_number` text NOT NULL,
  `ceo_id_card_date` text NOT NULL,
  `ceo_id_card_authority` text NOT NULL,
  `ceo_id_num` varchar(32) NOT NULL,
  `agent_fullname_nom1` text NOT NULL,
  `agent_fullname_gen1` text NOT NULL,
  `agent_fullname_acc1` text NOT NULL,
  `agent_fullname_eng1` text NOT NULL,
  `agent_position1` text NOT NULL,
  `agent_position_eng1` text NOT NULL,
  `agent_document_type1` text NOT NULL,
  `agent_passport_series1` text NOT NULL,
  `agent_passport_number1` text NOT NULL,
  `agent_passport_authority1` text NOT NULL,
  `agent_passport_date1` text NOT NULL,
  `agent_id_card_number1` text NOT NULL,
  `agent_id_card_date1` text NOT NULL,
  `agent_id_card_authority1` text NOT NULL,
  `agent_id1` varchar(32) NOT NULL,
  `agent_address1` text NOT NULL,
  `agent_email1` text NOT NULL,
  `agent_work_phone1` text NOT NULL,
  `agent_mobile_phone1` text NOT NULL,
  `agent_fullname_nom2` text NOT NULL,
  `agent_fullname_gen2` text NOT NULL,
  `agent_fullname_acc2` text NOT NULL,
  `agent_fullname_eng2` text NOT NULL,
  `agent_position2` text NOT NULL,
  `agent_position_eng2` text NOT NULL,
  `agent_document_type2` text NOT NULL,
  `agent_passport_series2` text NOT NULL,
  `agent_passport_number2` text NOT NULL,
  `agent_passport_authority2` text NOT NULL,
  `agent_passport_date2` text NOT NULL,
  `agent_id_card_number2` text NOT NULL,
  `agent_id_card_date2` text NOT NULL,
  `agent_id_card_authority2` text NOT NULL,
  `agent_id2` varchar(32) NOT NULL,
  `agent_address2` text NOT NULL,
  `agent_email2` text NOT NULL,
  `agent_work_phone2` text NOT NULL,
  `agent_mobile_phone2` text NOT NULL,
  `agent_fullname_nom3` text NOT NULL,
  `agent_fullname_gen3` text NOT NULL,
  `agent_fullname_acc3` text NOT NULL,
  `agent_fullname_eng3` text NOT NULL,
  `agent_position3` text NOT NULL,
  `agent_position_eng3` text NOT NULL,
  `agent_document_type3` text NOT NULL,
  `agent_passport_series3` text NOT NULL,
  `agent_passport_number3` text NOT NULL,
  `agent_passport_authority3` text NOT NULL,
  `agent_passport_date3` text NOT NULL,
  `agent_id_card_number3` text NOT NULL,
  `agent_id_card_date3` text NOT NULL,
  `agent_id_card_authority3` text NOT NULL,
  `agent_id3` varchar(32) NOT NULL,
  `agent_address3` text NOT NULL,
  `agent_email3` text NOT NULL,
  `agent_work_phone3` text NOT NULL,
  `agent_mobile_phone3` text NOT NULL,
  `accreditation_sections` text NOT NULL,
  `accreditation_period` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `type`, `status`, `company_fullname_ukr`, `company_fullname_eng`, `company_shortname_ukr`, `company_shortname_eng`, `company_constituent_doc`, `company_ownership_form`, `company_legal_address_code`, `company_legal_address_country`, `company_legal_address_oblast`, `company_legal_address_city`, `company_legal_address_district`, `company_legal_address_street`, `company_legal_address_dom`, `company_legal_address_korpus`, `company_legal_address_office`, `company_legal_address_eng`, `company_mailing_address_code`, `company_mailing_address_country`, `company_mailing_address_oblast`, `company_mailing_address_city`, `company_mailing_address_district`, `company_mailing_address_street`, `company_mailing_address_dom`, `company_mailing_address_korpus`, `company_mailing_address_office`, `company_phone`, `company_fax`, `company_email`, `company_code`, `company_tax_number`, `company_eic`, `bank_name_ukr1`, `bank_name_eng1`, `bank_address1`, `banking_account1`, `bank_code1`, `bank_name_ukr2`, `bank_name_eng2`, `bank_address2`, `banking_account2`, `bank_code2`, `bank_name_ukr3`, `bank_name_eng3`, `bank_address3`, `banking_account3`, `bank_code3`, `ceo_fullname_nom`, `ceo_fullname_gen`, `ceo_position_nom`, `ceo_position_gen`, `ceo_document_type`, `ceo_passport_series`, `ceo_passport_number`, `ceo_passport_authority`, `ceo_passport_date`, `ceo_id_card_number`, `ceo_id_card_date`, `ceo_id_card_authority`, `ceo_id_num`, `agent_fullname_nom1`, `agent_fullname_gen1`, `agent_fullname_acc1`, `agent_fullname_eng1`, `agent_position1`, `agent_position_eng1`, `agent_document_type1`, `agent_passport_series1`, `agent_passport_number1`, `agent_passport_authority1`, `agent_passport_date1`, `agent_id_card_number1`, `agent_id_card_date1`, `agent_id_card_authority1`, `agent_id1`, `agent_address1`, `agent_email1`, `agent_work_phone1`, `agent_mobile_phone1`, `agent_fullname_nom2`, `agent_fullname_gen2`, `agent_fullname_acc2`, `agent_fullname_eng2`, `agent_position2`, `agent_position_eng2`, `agent_document_type2`, `agent_passport_series2`, `agent_passport_number2`, `agent_passport_authority2`, `agent_passport_date2`, `agent_id_card_number2`, `agent_id_card_date2`, `agent_id_card_authority2`, `agent_id2`, `agent_address2`, `agent_email2`, `agent_work_phone2`, `agent_mobile_phone2`, `agent_fullname_nom3`, `agent_fullname_gen3`, `agent_fullname_acc3`, `agent_fullname_eng3`, `agent_position3`, `agent_position_eng3`, `agent_document_type3`, `agent_passport_series3`, `agent_passport_number3`, `agent_passport_authority3`, `agent_passport_date3`, `agent_id_card_number3`, `agent_id_card_date3`, `agent_id_card_authority3`, `agent_id3`, `agent_address3`, `agent_email3`, `agent_work_phone3`, `agent_mobile_phone3`, `accreditation_sections`, `accreditation_period`) VALUES
(1, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'колективна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', 'ПриватБанк', 'PrivatBank', 'м. Київ, вул. Антоновича, 127', '213223130000026007233566001', '', 'УкрСиббанк', 'UkrSibbank', 'м. Харкыв, Садовый проїзд, 3а', 'UA213223130000026007233566001', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(2, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'колективна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', 'ПриватБанк', 'PrivatBank', 'Місто Харків, Проспект Петра Григоренко, 13', 'UA213223130000026007233566001', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(3, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'колективна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', 'ПриватБанк', 'PrivatBank', 'Місто Харків, Проспект Петра Григоренко, 13', 'UA213223130000026007233566001', '', 'УкрСиббанк', 'UkrSibbank', 'Місто Харків, Жасминовий бульвар, 1', 'UA213223130000026007233566001', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(4, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(5, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Приватна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(6, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(7, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(8, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(9, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(10, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(11, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(12, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(13, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12'),
(14, 'exch', 'new', 'Товариство з обмеженою відповідальністю \"ТЕСТ\"', '\"TEST\" Company Limited', 'ТОВ \"ТЕСТ\"', '\"TEST\" Co Ltd', 'статуту', 'Державна', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '22 Khreshchatyk St., office 1, Kyiv, Ukraine, 01001', '01001', 'Україна', 'Київська', 'Київ', 'Київський', 'Хрещатик', '22', '', '1', '+380501234567', '+380501112233', 'ueex@tt.localhost', '12345678', '0987654321', '21Х0000000012345', 'Акціонерне товариство «Державний експортно-імпортний банк України»', 'Joint Stock Company \"State Export-Import Bank of Ukraine\"', 'м. Київ, вул. Антоновича, 127', 'UA213223130000026007233566001', '', '', '', '', '', '', '', '', '', '', '', 'Керівник Віталій Олександрович', 'Керівника Віталія Олександровича', 'директор', 'директора', 'паспорт', 'АА', '123456', 'Дніпровським РВ ПГУ УМВС України у м. Кременчуці', '20.10.1990', '', '', '', '1234567890', 'Брокер Галина Миколаївна', 'Брокера Галини Миколаївни', 'Брокера Галину Миколаївну', 'Broker Galina Mykolaivna', 'фінансовий директор', '', 'паспорт', 'ББ', '112233', 'Комсомольським РВ ПГУ УМВС України у м. Кременчуці', '01.01.1990', '', '', '', '1122334455', 'Полтавська область, м. Кременчук, вул. Ломоносова, 2, кв. 3', 'broker1@tt.localhost', '+380501111111', '+380501111112', 'Брокер Сергій Олександрович', 'Брокера Сергія Олександровича', 'Брокера Сергія Олександровича', 'Broker Sergiy Oleksandrovych', 'головний бухгалтер', '', 'ID-картка', '', '', '', '', '123456789', '10.10.2010', '1234', '6677889900', 'Полтавська область, м. Кременчук, вул. Ломоносова, 4, кв. 5', 'broker2@tt.localhost', '+380502222221', '+380502222222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '«Скраплений газ»,«Нафтопродукти»', '12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `inputs_exch`
--
ALTER TABLE `inputs_exch`
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `company_code` (`company_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
