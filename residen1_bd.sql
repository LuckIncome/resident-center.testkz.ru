-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb43.ps.kz:3306
-- Время создания: Май 29 2022 г., 13:22
-- Версия сервера: 10.2.41-MariaDB
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `residen1_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_first_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_first_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_first_excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_second_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_second_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_second_excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_third_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_third_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_third_excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_fouth_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_fouth_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_fouth_excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `excerpt`, `image`, `adv_first_image`, `adv_first_title`, `adv_first_excerpt`, `adv_second_image`, `adv_second_title`, `adv_second_excerpt`, `adv_third_image`, `adv_third_title`, `adv_third_excerpt`, `adv_fouth_image`, `adv_fouth_title`, `adv_fouth_excerpt`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Иммиграционный Центр «RESIDENT»', '– это команда профессионалов, которая работает одновременно в 12 странах мира.  Все наши сотрудники – это высококвалифицированные специалисты в сфере иммиграции и консалтинга. Мы следим за обновлениями в мировой иммиграционной политике, поэтому предлагаем нашим клиентам наилучшие стратегии получения ВНЖ, ПМЖ и гражданства.', 'abouts\\March2022\\Suzx961SptY8QmXDtJkp.jpg', 'abouts\\March2022\\CViJVsR8nf2P4mGHxBjX.svg', '15 лет опыта', 'работы нашей команды', 'abouts\\March2022\\1gTec85JgvE5LUXbHIES.svg', 'Юридическая', 'чистота сделок', 'abouts\\March2022\\ouJVZhwDwtSsYbgnjqZD.svg', 'Гарантии', 'на большинство услуг', 'abouts\\March2022\\zGFdPUKhELki0zhvkVF5.svg', 'Уникальные решения', 'для иммиграции', '<p>Работая с 2003 года в сфере иммиграционных услуг, мы предлагаем только лучшие варианты переезда на постоянное место жительства, трудоустройства, получения налогового статуса за рубежом, а также образования и родов. Наши специалисты ориентированы на запросы наших клиентов, поэтому каждый клиент может рассчитывать на персональную стратегию.<span class=\"Apple-converted-space\">&nbsp;<br /></span></p>\r\n<p>Большинство наших услуг гарантированно договором. Юридическая чистота и прозрачность всех этапов процесса помогут вам быть максимально уверенными в компетентности и профессионализме наших специалистов. Сотни успешных кейсов и довольных семей &ndash; это результат работы нашей команды!<span class=\"Apple-converted-space\"> &nbsp;</span></p>', '2022-03-29 11:05:00', '2022-04-28 07:46:19');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-03-28 22:18:08', '2022-03-28 22:18:08');

-- --------------------------------------------------------

--
-- Структура таблицы `citizenship`
--

CREATE TABLE `citizenship` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_fifth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sixth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sixth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_sixth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sixth_o_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_sixth_o_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seventh_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seventh_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_seventh_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `who` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `citizenship`
--

INSERT INTO `citizenship` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `fifth_content`, `fifth_img`, `alt_fifth_img`, `sixth_content`, `sixth_img`, `alt_sixth_img`, `sixth_o_img`, `alt_sixth_o_img`, `seventh_content`, `seventh_img`, `alt_seventh_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `who`, `help`) VALUES
(1, 'Гражданство Мальты CDI', 'Гражданство Мальты (за прямые инвестиции)', 'Если при выборе программы второго гражданства в мире вы руководствуетесь такими критериями, как респектабельность и безопасность, то инвестиционная программа Мальты (Мальта CDI), наиболее подходящий вариант! Одновременно вы становитесь гражданином ЕС и гражданином Британского Содружества (Содружества Наций).', 'citizenship\\April2022\\VIabqjprnYwsAG6vrpV2.jpg', '<p>В одно и то же время Мальта входит в Европейский Союз, Шенгенскую зону и Британское Содружество. С точки зрения политической и экономической стабильности Мальта находится в списке лидеров среди европейский государств. Безупречный кредитный рейтинг страны всегда имеет только позитивные прогнозы.</p>\r\n<p>Если вы готовы внести существенный вклад в экономику страны, то программа получения мальтийского гражданства за прямые инвестиции, как нельзя лучше подойдёт вам. В ответ на это вы можете рассчитывать на то, что члены вашей семьи также получат гражданство Мальты. Главным условием в процессе является успешное прохождение тщательной проверки самих заявителей и истории формирования их общего благосостояния</p>', 'citizenship\\April2022\\RtAq3qZPoXTAK9K6RTFZ.jpg', 'Фон', 'citizenship\\April2022\\6HODhFKIZIwbPl4LFxyJ.jpg', 'Фон', '<p><strong>Участнику программы получения гражданства Мальты за инвестиции, необходимо будет предъявить подтверждающие документы о выполнении следующих условий программы:</strong></p>\r\n<ol>\r\n<li>Оплата в Фонд национального и социального развития Мальты суммы в размере &euro;750 000 (опция V1) или &euro;600 000 (опция V2).</li>\r\n<li>Покупка недвижимости на Мальте стоимостью от &euro;700 000 сроком не менее чем на 5 лет, либоАренда недвижимости на Мальте за &euro;16 000 в год на 5 лет.</li>\r\n<li>Пожертвования в размерене менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n<li>Оформление международной медицинской страховки с покрытием от &euro;50 000.</li>\r\n</ol>', 'citizenship\\April2022\\veZ155hDsoEpef6gViRS.jpg', 'Фон', '<ul>\r\n<li>Подача заявления на этап резидентства.</li>\r\n<li>Взнос &euro;10 000 в Фонд национального и социального развития Мальты.</li>\r\n<li>Оплата в Malta Community Agency сбора за рассмотрение и обработку заявления на резидентство.\r\n<ol>\r\n<li>Основной заявитель: &euro;5 000.</li>\r\n<li>Каждый дополнительный заявитель: &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Оплата по &euro;27,50 за печать каждой резидентской карточки, которая будет выдана на 36 месяцев).</li>\r\n<li>Все заявители должны оставаться резидентами Мальты на протяжении 36 месяцев либо менее 36 месяцев (в зависимости от выбранной опции) с момента получения резидентских карточек.</li>\r\n</ul>', 'citizenship\\April2022\\VAofVPFsV8bmji648ojs.jpg', 'Фон', '<ul>\r\n<li>Подача пакета подтверждающих документов на стадию Eligibility не позднее чем через 12 месяцев. Если документы не будут поданы в пределах указанного срока, государственное агентство обязано отозвать резидентский статус.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.\r\n<ol>\r\n<li>Due Diligence основного заявителя: &euro;15 000.</li>\r\n<li>Due Diligence каждого доп. заявителя: &euro;10 000.</li>\r\n<li>Benefactor Due Diligence: &euro;15 000.</li>\r\n<li>Административный сбор (за каждого заявителя): &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Трехуровневая проверка заявителя, членов его семьи и финансовых активов.</li>\r\n<li>Предварительное решение по результатам проверки принимается профильным министром на протяжении 120-150 дней с момента осуществления платежей EPRV.</li>\r\n<li>Предварительное решение профильного министра.</li>\r\n<li>В результате положительного решения заявление получает Letter of Approval for Eligibility.</li>\r\n</ul>', 'citizenship\\April2022\\5IOJyuMLwfYb0HyJu4bh.jpg', 'Фон', '<ul>\r\n<li>Этап гражданства Подача заявления на этап гражданства. <br />Для V1 &ndash; через 12 месяцев. <br />Для V2 &ndash; через 36 месяцев</li>\r\n<li>В случае корректно сформированного пакета требуемых документов заявление может быть повторно рассмотрено.</li>\r\n<li>После завершения повторного рассмотрения и второй фазы 3-уровневой проверки, Malta Community Agency выдает Investment Request Voucher (IRV) для оплаты инвестиций и остатков обязательных платежей.\r\n<ol>\r\n<li>Прямые инвестиции основного заявителя: &euro;740 000 (опция V1) / &euro;590 000 (опция V2)</li>\r\n<li>Прямые инвестиции каждого дополнительного заявителя: &euro;50 000</li>\r\n<li>Административный сбор за основного заявителя: &euro;5 000</li>\r\n<li>Административный сбор за каждого дополнительного заявителя: &euro;1 000</li>\r\n</ol>\r\n</li>\r\n<li>Letter of Approval in Principle.</li>\r\n<li>Подача в Malta Community Agency в течении 4 месяцев доказательств выполнения требований программы:\r\n<ol>\r\n<li>доказательства прочной связи со страной на протяжении 12 или 36 месяцев;</li>\r\n<li>копию договора аренды/договора купли-продажи недвижимости стоимостью &euro;16 000 в год/ &euro;700 000 соответственно + заявление основного заявителя, подтверждающее понимание им обязанности сохранять в аренде/собственности указанную недвижимость на протяжении следующих 5 лет;</li>\r\n<li>заключение мальтийского архитектора о соответствии заявленной стоимости реальной рыночной стоимости;</li>\r\n<li>подтверждение оплаты полной суммы Investment Request Voucher (IRV);</li>\r\n<li>подтверждение оплаты пожертвования в размере не менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n</ol>\r\n</li>\r\n<li>Финальная проверка в Malta Community Agency (5 дней). Приглашение на присягу от Malta Community Agency (действует 6 месяцев с даты выдачи Letter of Approval in Principle и касается заявителей от 18 лет).</li>\r\n</ul>', 'citizenship\\April2022\\lhFlcOAKtWFqZZdJLwK0.jpg', 'Фон', 'citizenship\\April2022\\MhF3j7NFE1MliOSBKzcg.jpg', 'Фон', '<ul>\r\n<li>После присяги и выполнения оставшихся нормативных процедур, основной заявитель получает сертификат о натурализации, включающий всех участников его заявления.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.</li>\r\n</ul>\r\n<h2>Ежегодный мониторинг</h2>\r\n<ul>\r\n<li>На протяжении первых 5 лет агент, сопровождающий заявление, обязан ежегодно подавать Annual Compliance Form по лицам, участвующим в заявлении.</li>\r\n</ul>', 'citizenship\\April2022\\zzzQ8yC8X7c3kUjMc4TF.jpg', 'Фон', 'grazhdanstvo-malty-cdi1', 0, 0, 'Гражданство Мальты CDI', 'Гражданство Мальты CDI', 'Гражданство Мальты CDI', '2022-04-05 07:25:00', '2022-04-25 14:40:45', '<p>Финансово &ndash; независимые лица и члены их семей. Программа предусматривает получение гражданства Мальты непосредственно для самого инвестора, а также его супруги (а), детей инвестора, родителей и прародителей. Это делает программу уникальной в своем роде.</p>', 'гражданство Мальты'),
(3, 'Гражданство Канады', 'Гражданство за инвестиции в Канаде', 'Для то чтобы получить канадское гражданство за инвестиции, вам необходимо будет подтвердить тот факт, что вы имеете достаточно средств, чтобы подтвердить возможность инвестирования в размере $ 2.000.000 CAD из которых $ 1.200.000 CAD необходимо будет инвестировать в экономику Квебека сроком на пять лет.', 'citizenship/April2022/esK8ueowt1OxhF61kVBA.jpeg', '<p>Канадское государство гарантирует вам возврат средств без вычетов и процентов от этой суммы.&nbsp;</p>\r\n<p>Уникальным предложением является предложение со стороны канадских банков взять кредит на сумму $ 1.200.00 для инвестиционного вклада.</p>', 'citizenship/April2022/tFMlsCzlP33n4UlVi6LD.jpeg', NULL, 'citizenship/April2022/5lfyWggWmKWBwM7ftmmx.jpeg', NULL, '<p><strong>Основной пакет документов, которые должен предоставить потенциальный инвестор:&nbsp;</strong></p>\r\n<p>1. Документы, удостоверяющие личность инвестора и членов его семьи.</p>\r\n<p>2. Документы, подтверждающие право собственности на бизнес и объекты недвижимости.</p>\r\n<p>3. Документы, подтверждающие стоимость бизнеса и объектов недвижимости, остатки на счетах.</p>\r\n<p>4. Документы, подтверждающие отсутствие судимостей у инвестора и членов его семьи.</p>\r\n<p>Данный список может быть дополнен исходя из каждой конкретной ситуации.</p>', 'citizenship/April2022/57ns5clmI9rBmI80LF9D.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Получить подробную информацию по процессу получения канадского гражданства за инвестиции вы сможете заказав у нас консультацию со специалистом по канадским программам. Уже на первой консультации у вас будет понятное представление о том, с чего начинать и какие дальнейшие шаги вам будет необходимо предпринять.</p>\r\n<p>Те инвесторы, которые помимо средств для инвестиций смогут показать достаточно хорошее владение французским языком будут иметь преимущество перед остальными претендентами на получение гражданства. Такие заявители не ограничены квотами. Подача заявки происходит в 2 этапа:</p>\r\n<p>1) рассмотрение вашей заявки на уровне Провинции Квебек и оформление инвестиций;</p>\r\n<p>2) прохождение проверки на федеральном уровне, где оценивается состояние здоровья заявителя и членов его семьи, а также наличие криминального прошлого или его отсутствия.</p>', 'citizenship/April2022/HNx9neSIPHtyStUPND6u.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-kanady', 1, 0, 'Гражданство Канады', 'Гражданство Канады', 'Гражданство Канады', '2022-04-12 11:11:00', '2022-05-04 06:39:04', '<p>После получения канадского паспорта инвестор становится полноправным гражданином Канады и имеет право на участие в различных социальных программах, использование бесплатной медицины, а его дети смогут наравне с другими канадцами получить образование и устроится на высокооплачиваемую работу. Сам инвестор, как и члены его семьи после получения гражданства получают возможность учувствовать в выборах и занимать государственные должности.&nbsp;</p>', 'Гражданство Канады'),
(4, 'Гражданство Турции', 'Гражданство Турции через инвестиции', 'Если вы планируете приобрести второе гражданство или сменить имеющееся в обмен на инвестиции, то Турция идеально для этого подходит.\r\nПривлекательным фактором является то, что в 2018 году были внесены изменения, которые сократили требования к размеру инвестиций в 4 раза. Это сделало программу еще более привлекательной и доступной для всех, кто планирует ею воспользоваться.', 'citizenship/April2022/gjdw9BzzKSZVzSDaDmKP.jpeg', '<p>Одним из условий программы является тот факт, что инвестиции и депозит теперь необходимо сохранять на протяжении трех лет. Однако расчеты возможны в долларах США. Инвестор освобождается от необходимости подтверждать происхождение средств или наличие стабильного дохода.</p>\r\n<p>Приятной новостью также станет система налоговых стимулов по четырем направлениям, включающим общую, региональную, крупномасштабную и стратегическую схемы.</p>\r\n<p>Среди инструментов поддержки для инвесторов такие важные факторы, как: снижение налогов, освобождение от уплаты НДС и/или таможенных пошлин, предоставление земли, возврат НДС и другие бонусы.</p>', 'citizenship/April2022/nwU0zYidyQROGK7ZFC1A.jpeg', NULL, 'citizenship/April2022/nHm7NFdMJQjT7mjbY5hR.jpeg', NULL, '<p>Наши специалисты оценят ваши иммиграционные шансы и в зависимости от выбранного вами варианта получения гражданства Турции предоставят вам полный перечень необходимых документов.</p>', 'citizenship/April2022/Ju7o7s6fAGOaJboExkYI.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Заявитель, соответствующий условиям программы, может получить гражданство сразу, без 5-летнего ожидания.</p>\r\n<p>1.ВЫБОР НАПРАВЛЕНИЯ ИНВЕСТИЦИЙ.</p>\r\n<p>Вы можете рассчитывать на то сто благодаря регулярным маркетинговым исследованиям на рынке инвестиционных предложений мы сможем подобрать самые выгодные и надежные варианты инвестирования, а наши специалисты будут рядом с вами на протяжении всего периода оформления гражданства.</p>\r\n<p>2.ИНВЕСТИРОВАНИЕ.</p>\r\n<p>На данном этапе реализуется главная составляющая проекта: приобретается недвижимость, производятся инвестиции, размещается депозит или выполняются иные мероприятия, предусмотренные программой и направленные на подтверждение наличия оснований для получения гражданства Турции.</p>\r\n<p>3.ПОДГОТОВКА И ПРОВЕРКА ВСЕХ ДОКУМЕНТОВ.</p>\r\n<p>Главный этап, на котором необходимо выполнить все условия программы, ведь от этого будет зависеть решение о предоставлении вам турецкого гражданства. Все представленные вами документы должны быть апостилированны и переведены на турецкий язык у официального переводчика с нотариальным заверением.</p>\r\n<p>4.ПОДАЧА ВАШЕГО ЗАЯВЛЕНИЯ.</p>\r\n<p>На этом этапе инвестор, соответствующий всем условиям программы, должен подать свое заявление на получение турецкого гражданства взамен инвестиций в &laquo;Главное Управление по вопросам гражданского состояния&raquo;. После получения одобрения заявление вместе со всеми приложенными документами отправляется в Совет Министров, где и принимается заключительное решение.</p>\r\n<p>В случае положительного исхода заявитель приглашается для получения &laquo;Turkie Cumhuriyeti Nufus Cuzdani&raquo; &mdash; документа, удостоверяющего наличие турецкого гражданства, и паспорта гражданина Турции.</p>', 'citizenship/April2022/hPXncDEWu294CnqSqsuq.jpeg', NULL, 'citizenship/April2022/pLBcHaa0AJxYfVyGMSG9.jpeg', NULL, NULL, NULL, NULL, 'grazhdanstvo-turcii', 1, 0, 'Гражданство Турции', 'Гражданство Турции', 'Гражданство Турции', '2022-04-12 13:11:00', '2022-05-04 06:38:44', '<p>Финансово &ndash; независимым лицам и членам их семей, предпринимателям и инвесторам. Всем, кто готов сделать инвестиционный вклад в обмен на паспорт гражданина Турции.</p>', 'Гражданство Турции'),
(5, 'Гражданство Чили', 'Гражданство Чили (через визу для финансово- независимых людей)', 'Уже несколько десятилетий подряд Чили является центром притяжения иммигрантов со всего мира, в том числе из России, Казахстана и других стран СНГ.', 'citizenship/April2022/uGV2ZDtTKA7rqGSurNSq.jpeg', '<p>Этому способствуют лояльное иммиграционное законодательство, безвизовое сообщение, а также приемлемые сроки получения первичного вида на жительство, разрешения на ПМЖ и гражданства. Рассмотрим наиболее простой вариант получения гражданства в Чили. ВНЖ для финансово-независимых людей это начало процесса, который далее приведет к получению ПМЖ и гражданства.</p>', 'citizenship/April2022/7ruY3GsvuJcMQUCDjCDH.jpeg', NULL, 'citizenship/April2022/OU12uz0wUnQevmPQ0mmi.jpeg', NULL, '<p>Уже на первой консультации вы узнаете с чего начинать и какой пакет документов вам необходимо подготовить. Мы готовы помочь вам со сбором всех требуемых подтверждений.</p>', 'citizenship/April2022/fzRYXpUOY0fjVvI6Bn4V.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Обращаясь в нашу компанию вы можете рассчитывать, что уже на первой консультации вам будет озвучен подробный алгоритм действий необходимых для получения Гражданства Чили. Мы действуем максимально в пользу ваших интересов. Доверьте процесс нашим специалистам, и вы получите самый комфортный и профессиональный сервис.&nbsp;</p>', 'citizenship/April2022/e6QUzPMvaNLowk2xzh4q.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-chili', 1, 0, 'Гражданство Чили', 'Гражданство Чили', 'Гражданство Чили', '2022-04-12 14:03:00', '2022-05-04 06:38:19', '<p>Начало процесса в котором мы готовы поддержать наиболее хорошо подходит для финансово-независимых людей, имеющих постоянный пассивный доход за пределами Чили.&nbsp;</p>\r\n<p>ВНЖ, ПМЖ и Гражданство получают:</p>', 'Гражданство Чили'),
(6, 'Гражданство Израиля', 'Гражданство Израиля', '5 июля 1950 года вступил в силу закон о возвращении евреев на их историческую Родину. На основании этого закона все евреи и члены их семей включая потомков до третьего колена получают право на репатриацию в Израиль и получение израильского гражданства.', 'citizenship/April2022/nQRqyt5W9aCo6V8gqDmx.jpeg', '<p>На данный момент уже тысячи семей прошли процесс репатриации и получили израильское гражданство, что дало им новые возможности и преимущества такие как свободное передвижение по 147 странам мира.</p>', 'citizenship/April2022/nSFS51NgqRY29YReNup8.jpeg', NULL, 'citizenship/April2022/T0WiUw7OVzBbNtYmbE4B.jpeg', NULL, '<p>Очень важно подготовить все документы, которые подтверждают вашу принадлежность к еврейскому народу. Важно также учесть то, что еврейство признается по линии матери, однако те, кто еврей по отцу, также имеют возможность пройти весь процесс репатриации. Мы предоставим вам полный перечень документов, которые необходимо будет подготовить и предоставить с заполненной анкетой перед интервью с Консулом Израиля.</p>', 'citizenship/April2022/D7PKcqf9hOzDwGYUBJjj.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>ПЕРВЫЙ ЭТАП &ndash; ПОДТВЕРЖДЕНИЕ ПРАВА НА ГРАЖДАНСТВО (консульство Израиля в стране</p>\r\n<p>проживания).</p>\r\n<p>&bull; сбор, анализ и подготовка необходимых документов, которые подтверждают еврейское происхождение.</p>\r\n<p>&bull; подача заявления и прохождение собеседования.</p>\r\n<p>&bull; получение репатриационной визы для поездки в Израиль.</p>\r\n<p>&nbsp;</p>\r\n<p>ВТОРОЙ ЭТАП - ПОЛУЧЕНИЕ ГРАЖДАНСТВА И ПАСПОРТА (на территории Израиля).</p>\r\n<p>&bull; приезд в Израиль, получение гражданства и временного удостоверения личности.</p>\r\n<p>&bull; оформление постоянного паспорта &ndash; Даркона.</p>\r\n<p>&bull; знакомство с порядком регистрации и использования полученного гражданства.</p>', 'citizenship/April2022/wK7I1tntftJVIZHcliuj.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-izrailya', 1, 0, 'Гражданство Израиля', 'Гражданство Израиля', 'Гражданство Израиля', '2022-04-12 14:28:00', '2022-05-04 06:37:55', '<p>&bull; лица еврейской национальности</p>\r\n<p>&bull; дети еврея</p>\r\n<p>&bull; внуки еврея</p>\r\n<p>&bull; супруги (а также вдовцы/вдовы) еврея</p>\r\n<p>&bull; супруги (а также вдовцы/вдовы) детей евреев</p>\r\n<p>&bull; супруги (а также вдовцы/вдовы) детей евреев</p>\r\n<p>&bull; удочеренные и усыновленные дети евреев, а также их внуки</p>', 'Гражданство Израиля'),
(7, 'Гражданство Антигуа и Барбуда', 'Гражданство Антигуа и Барбуда', 'Самое развитое государство среди стран Карибского региона, участников действующей программы инвестиционного гражданства.', 'citizenship/April2022/jvVBeQeSn4DVYpo2Hqf6.png', '<p>Прекрасная инфраструктура, живописные пляжи, бирюзового цвета море, курортные отели и поселки, в которых приобретают недвижимость звезды мирового масштаба &ndash; такие как американская ведущая Опра Уинфри, и британский рок-музыкант Эрик Клэптон, &ndash; делают Антигуа и Барбуда одним из самых популярных курортных направлений Западного полушария. Для привлечения инвестиций в Антигуа и Барбуда еще в 2013 году была разработана программа инвестиционного гражданства, таким образом правительство развивает инфраструктуру островного государства, повышает уровень жизни населения, усиливает безопасность, тем самым способствуя развитию привлекательности этой живописной страны.</p>', 'citizenship/April2022/Ui2oETf4zORLxnh5IN7r.jpg', NULL, 'citizenship/April2022/3SplFAhnzPh9zWEwAsuR.jpeg', NULL, '<p>Уже на первой консультации вы получите перечень необходимых документов в зависимости от выбранного вами варианта получения гражданства Антигуа и Барбуда.</p>', 'citizenship/April2022/VIUkaV7UvnVPNHflVAmG.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\"><strong>1.ПОЖЕРТВОВАНИЕ В ПОЛЬЗУ ГОСУДАРСТВА.</strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Официальный орган:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Национальный Фонд Развития (NDF)</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Только инвестор:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">100,000 $ + 30,000 $ для главного заявителя</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Семья с 4-х человек:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">100,000 $ + 30,000 $ для главного заявителя</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">+ 0 $ для супруга (-и) + двух дополнительных иждивенцев</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Семья с 5-и человек или больше:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">125,000 $ + 30,000 $ для главного заявителя и трех иждивенцев</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">+ 15,000 $ для каждого дополнительного иждивенца</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\"><strong>2. ИНВЕСТИЦИИ В НЕДВИЖИМОСТЬ.</strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Минимальная инвестиция:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">200,000 $</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Требуемый период владения недвижимостью:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">5 лет</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Государственные сборы</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Семья с 4-х человек: 50,000 $</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.693333625793457px; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: #000000; color: #000000;\">Иждивенцы: 15,000 $ за каждого дополнительного иждивенца</p>\r\n<p>&nbsp;</p>', 'citizenship/April2022/2x33bSXwcx7M3Fh775cH.jpeg', NULL, 'citizenship/April2022/Ap71FbEayjsQsTFFZkYH.jpeg', NULL, NULL, NULL, NULL, 'grazhdanstvo-antigua-i-barbuda', 1, 0, 'Гражданство Антигуа и Барбуда', 'Гражданство Антигуа и Барбуда', 'Гражданство Антигуа и Барбуда', '2022-04-17 19:51:00', '2022-05-04 06:37:30', '<p>Программы Антигуа и Барбуда хорошо подойдут финансово-независимым людям, инвесторам, лицам, вступившим в наследство.&nbsp;&nbsp;Наша компания готова предоставить вам подробную консультацию по всем имеющимся направлениям.&nbsp;</p>', 'Гражданство Антигуа и Барбуда'),
(8, 'Гражданство Вануату', 'Гражданство Вануату за инвестиции', 'Наиболее доступная и молодая программа инвестиционного гражданства в мире.', 'citizenship/April2022/NAkhXvN3yz9nl8t6vzRJ.jpg', '<p>Благодаря финансовой доступности, эта программа претендует на звание лучшей инвестиционной программы для приобретения гражданства во всем мире.</p>', 'citizenship/April2022/xAN18DeFvuTmwYPvywaO.jpg', 'img', 'citizenship/April2022/xxuCoRuEH4cqQhEJLfhQ.jpg', 'img', '<ul>\r\n<li>Бланки заявлений</li>\r\n<li>Заграничный паспорт</li>\r\n<li>ID</li>\r\n<li>Свидетельство о браке (если применимо)</li>\r\n<li>Свидетельство о рождении</li>\r\n<li>Справка об отсутствии судимостей</li>\r\n<li>Документы об образовании</li>\r\n<li>Сертификат медицинского обследования</li>\r\n<li>Доказательство наличия необходимых активов</li>\r\n<li>Резюме</li>\r\n<li>Справка с места работы</li>\r\n<li>6 паспортных фотографий</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'citizenship/April2022/eLwS94ZsJFa1yjFa6XI4.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<ol>\r\n<li><strong>Предварительная проверка на благонадежность (проводится RESIDENT) -1 неделя</strong></li>\r\n<li><strong>Подготовка досье к подаче в СОС - 1 неделя.</strong></li>\r\n<li><strong>Оплата государственных сборов и услуг компании - 1 неделя.</strong></li>\r\n<li><strong>Предварительная проверка на благонадежность (проводится фин. отделом) - 1 неделя.</strong></li>\r\n<li><strong>Одобрение заявления на подачу - 2 неделя.</strong></li>\r\n<li><strong>Приём и обработка заявления - 2 неделя.</strong></li>\r\n<li><strong>Финальное решение о присвоении гражданства 3-4 недели.</strong></li>\r\n<li><strong>Оплата полной суммы контрибуции 4-6 недель.</strong></li>\r\n<li><strong>Принятие присяги в Брюсселе, Гонконге или Вануату - 7 неделя.</strong></li>\r\n<li><strong>Получение сертификата о гражданстве и паспорта гражданина Вануату 7-8 неделя.</strong></li>\r\n</ol>\r\n<p>&nbsp;</p>', 'citizenship/April2022/27jcPumhGOULx7CsDk1Y.jpg', 'img', NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-vanuatu', 1, 0, 'Гражданство Вануату', 'Гражданство Вануату', 'Гражданство Вануату', '2022-04-19 13:18:00', '2022-04-26 13:07:49', '<p>Гражданство через пожертвование в пользу государства*</p>\r\n<ul>\r\n<li>Только инвестор - $80.000</li>\r\n<li>Инвестор + супруг(а) - $100.000</li>\r\n<li>Инвестор + супруг (а) + двое детей до 18 лет - $130.000</li>\r\n<li>Взрослые иждивенцы - $10.000 / чел.</li>\r\n</ul>\r\n<p>* Применяются дополнительные сборы и расходы.</p>\r\n<p>&nbsp;</p>', 'Гражданство Вануату'),
(9, 'Гражданство Гренады', 'Гражданство Гренады', 'В 2013 году Правительством Гренады была одобрена программа инвестиционного Гражданства Гренады, на данный момент эта программа имеет безупречную репутацию.', 'citizenship/April2022/rXVEXPPvTW6Fakb31HA5.jpg', '<p>Всё это по причине высоких требований к заявителям на гражданство страны. Паспорт Гренады становится всё более привлекательным для желающих получить столь престижное гражданство. За относительно небольшие деньги вы получаете наиболее статусный из всех паспортов Карибского региона.&nbsp;</p>', 'citizenship/April2022/h3yfT23ieaoxBwBSNSW3.jpg', 'img', 'citizenship/April2022/IyxosDMt0WpithyaxYrC.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Уже на первой консультации вы получите перечень необходимых документов в зависимости от выбранного вами варианта получения гражданства Гренады.</p>', 'citizenship/April2022/61gMtKtKqrf839SSu7w9.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1.ПОЖЕРТВОВАНИЕ В ПОЛЬЗУ ГОСУДАРСТВА.</strong></p>\r\n<ul>\r\n<li>Официальный орган: Национальный Фонд Развития (NDF)</li>\r\n<li>Только инвестор 150.000 USD</li>\r\n<li>Инвестор + супруг (а) 200.000 USD</li>\r\n<li>Инвестор + супруг (а) + 2 детей 200.000 USD</li>\r\n<li>Дополнительные иждивенцы 25.000 USD за каждого дополнительного иждивенца, после первых трёх.</li>\r\n</ul>\r\n<p><strong>2. ИНВЕСТИЦИИ В НЕДВИЖИМОСТЬ.</strong></p>\r\n<ul>\r\n<li>Минимальная инвестиция: 200,000 $</li>\r\n<li>Требуемый период владения недвижимостью: 5 лет</li>\r\n<li>Государственные сборы:</li>\r\n</ul>\r\n<p>Инвестор: 50,000 $</p>\r\n<p>Супруг(а): 0 $</p>\r\n<p>Иждивенцы: 25,000 $ за каждого после первых 3-х.</p>\r\n<p>&nbsp;</p>', 'citizenship/April2022/vBFuNZ5cQpUgRqKX1wqp.jpg', 'img', NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-grenady', 1, 0, 'Гражданство Гренады', 'Гражданство Гренады', 'Гражданство Гренады', '2022-04-19 13:27:00', '2022-04-26 13:08:31', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Программы Гренады хорошо подойдут финансово-независимым людям, инвесторам, лицам, вступившим в наследство.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Наша компания готова предоставить вам подробную консультацию по всем имеющимся направлениям.</p>', 'Гражданство Гренады'),
(10, 'Гражданство Доминики', 'Гражданство Доминики', 'Невысокая стоимость и быстроте обработки заявлений – это главные преимущества, программа инвестиционного гражданства Содружества Доминики за последние несколько лет заняла лидирующую позицию среди программ инвестиционного гражданства в мире.', 'citizenship/April2022/SEXGBQtLedXXbSCF2u6x.jpg', '<p class=\"MsoNormal\">Благодаря программе, Доминика стала популярной, как у инвесторов, так и у путешественников, потому что полученные инвестиции направляются в том числе и на развитие страны. Территории Содружества Доминики известны не только развитой инфраструктурой, но и множеством нетронутых и живописных мест.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Уже более 25 лет все механизмы работают безупречно. Агентство по гражданству предлагает максимально выгодные финансовые условия, поэтому получение гражданства Содружества Доминики столь привлекательно для состоятельных людей со всего мира.</p>', 'citizenship/April2022/8Gv3P3VO6s0jiTVT1mCc.jpg', 'img', 'citizenship/April2022/rx1zbKcA7yfd2CRoYEMB.jpeg', 'img', '<p class=\"MsoNormal\"><span style=\"text-align: justify;\">Уже на первой консультации вы получите перечень необходимых документов в зависимости от выбранного вами варианта получения гражданства Доминики.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>', 'citizenship/April2022/0TaKjpTdb1ysx1feKg24.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1.ПОЖЕРТВОВАНИЕ В ПОЛЬЗУ ГОСУДАРСТВА.</strong></p>\r\n<ul>\r\n<li>Официальный орган: Государство напрямую</li>\r\n<li>Только инвестор: 100,000 $</li>\r\n<li>Инвестор + супруг(а): 150,000 $</li>\r\n<li>Инвестор + супруг(а)+ 2 детей: 175,000 $</li>\r\n<li>Дополнительные иждивенцы: 25,000 $</li>\r\n</ul>\r\n<p><strong>2. ИНВЕСТИЦИИ В НЕДВИЖИМОСТЬ.</strong></p>\r\n<ul>\r\n<li>Минимальная инвестиция: 200,000 $</li>\r\n<li>Требуемый период владения недвижимостью: 3 года</li>\r\n<li>Государственные сборы: Инвестор: 25,000 $</li>\r\n<li>Инвестор + супруг/а: 35,000 $</li>\r\n<li>Семья с 4-х человек: 35,000 $</li>\r\n<li>Семья с 6-и человек: 50,000 $</li>\r\n<li>Семья с 7-и человек и больше: 70,000 $</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'citizenship/April2022/phsLEX40F4S2lMz9pini.jpg', 'img', NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-dominiki', 1, 0, 'Гражданство Доминики', 'Гражданство Доминики', 'Гражданство Доминики', '2022-04-19 13:34:00', '2022-04-28 14:37:03', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Программы Доминики хорошо подойдут финансово-независимым людям, инвесторам, лицам, вступившим в наследство.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Наша компания готова предоставить вам подробную консультацию по всем имеющимся направлениям.</p>', 'Гражданство Доминики'),
(11, 'Гражданство Сент-Китс и Невис', 'Гражданство Сент-Китс и Невис', 'Одна из первых программ получения гражданства через инвестиции в мире, надежная и проверенная временем.', 'citizenship/April2022/uWjc3b4lrZJledikfECg.jpg', '<p>Программа инвестиционного гражданства Сент-Киттс и Невис стала примером, послужившим появлению в мире других подобных программ. Более чем 35-лет, программа инвестиционного гражданства Сент-Киттс и Невис создавала себе репутацию, как самая стабильная, безопасная и устойчивая программа инвестиционного гражданства не только в своем регионе, но и во всем мире.</p>', 'citizenship/April2022/VZ3N8izWNz2QYinv02fo.jpg', 'img', 'citizenship/April2022/XYUKl6hnNeS85j380tgE.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Наши специалисты оценят ваши иммиграционные шансы и в зависимости от выбранного вами варианта получения гражданства Сент-Китс и Невис предоставят вам полный перечень необходимых документов.</p>', 'citizenship/April2022/xdPxpnd4eydm3XZnyBXH.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Есть два варианта оформления и в зависимости от того, какой вариант вам более подходит, вам необходимо будет внести оплату в пользу государства Сент-Китс и Невис, либо инвестировать в недвижимость. Ниже мы приведём стоимость обоих вариантов.</p>\r\n<p><strong>ПОЖЕРТВОВАНИЕ В ПОЛЬЗУ ГОСУДАРСТВА.</strong></p>\r\n<ul>\r\n<li><strong>Официальный орган:</strong> Sustainable Growth Fund (SGF)</li>\r\n<li><strong>Только инвестор:</strong> 150,000 $</li>\r\n<li><strong>Инвестор + супруг(а) + 2 детей:</strong> 195,000 $</li>\r\n<li><strong>Каждый дополнительный иждивенец:</strong> 10,000 $</li>\r\n</ul>\r\n<p><strong>ИНВЕСТИЦИИ В НЕДВИЖИМОСТЬ.</strong></p>\r\n<ul>\r\n<li><strong>Минимальная инвестиция:</strong> 200,000 $</li>\r\n<li><strong>Требуемый период владения недвижимостью: </strong>7 лет</li>\r\n<li><strong>Государственные сборы</strong></li>\r\n</ul>\r\n<p>Инвестор: 35,000 $</p>\r\n<p>Супруг(а): 20,000 $</p>\r\n<p>Иждивенцы: до 18 лет - 10,000 $ за каждого</p>\r\n<p>18-30 лет и родители 55+ - 10,000 $ за каждого</p>\r\n<p>&nbsp;</p>', 'citizenship/April2022/NeGwi2qIrJlfarmYGFKh.jpg', NULL, 'citizenship/April2022/sDdavQH9OBv5Wxa7kYjT.jpeg', NULL, NULL, NULL, NULL, 'grazhdanstvo-sent-kits-i-nevis', 1, 0, 'Гражданство Сент-Китс и Невис', 'Гражданство Сент-Китс и Невис', 'Гражданство Сент-Китс и Невис', '2022-04-19 13:41:00', '2022-04-28 14:42:56', '<p class=\"MsoNormal\">Финансово &ndash; независимым лицам и членам их семей. Программа предусматривает получение гражданства Сент-Китс и Невис непосредственно для самого инвестора, а также его супруги (а), детей инвестора, родителей и прародителей. Это делает программу уникальной в своем роде.</p>', 'Гражданство Сент-Китс и Невис'),
(12, 'Гражданство Сент-Люсии', 'Гражданство Сент-Люсии', 'В Карибском регионе программа инвестиционного гражданства Сент-Люсии была запущена позже остальных.', 'citizenship/April2022/wEFdoCWcbjUv5NnchRvX.jpg', '<p class=\"MsoNormal\">Благодаря этому и очень высоким критериям отбора претендентов на гражданство страны, по своей репутации паспорт Сент-Люсии является наиболее респектабельным среди стран Карибского региона, предлагающих свое гражданство в обмен на инвестиции.</p>\r\n<p class=\"MsoNormal\">Привлекая инвестиции через одобренную в 2015 году программу инвестиционного гражданства, правительство Сент-Люсии развивает инфраструктуру острова, улучшает уровень жизни населения, повышает безопасность, чем способствует развитию привлекательности этого живописного уголка нашей планеты.</p>', 'citizenship/April2022/ZYhg7RMpN0cr5uDXAEDr.jpg', 'img', 'citizenship/April2022/TjXcMuMqMPVp4OnJG7mo.jpg', 'img', '<p>Наши специалисты оценят ваши иммиграционные шансы и в зависимости от выбранного вами варианта получения гражданства Сент-Люсии предоставят вам полный перечень необходимых документов.</p>', 'citizenship/April2022/B0qeb8RYHwZkDkxF8vkS.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\">Есть два варианта оформления и в зависимости от того, какой вариант вам более подходит, вам необходимо будет внести оплату в пользу государства Сент-Люсии, либо инвестировать в недвижимость. Ниже мы приведём стоимость обоих вариантов.</p>', 'citizenship/April2022/gwJLJviVxCtgupcCOXv6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-sent-lyusii', 1, 0, 'Гражданство Сент-Люсии', 'Гражданство Сент-Люсии', 'Гражданство Сент-Люсии', '2022-04-19 13:46:00', '2022-04-26 13:10:13', '<p class=\"MsoNormal\">Финансово &ndash; независимым лицам и членам их семей, предпринимателям и инвесторам. Всем, кто готов сделать инвестиционный вклад в обмен на один из самых статусных паспортов карибского региона.</p>', 'Гражданство Сент-Люсии'),
(13, 'Гражданство Черногории', 'Гражданство Черногории (через инвестиции)', 'Ещё в 2018 году Правительство Черногории окончательно утвердило условия предоставления своего гражданства в обмен на инвестиции.', 'citizenship/April2022/Xu7jQFicLgdr6lDfIBs4.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">На данный момент инвесторам предлагают инвестировать в проекты, которые были утверждены правительством. Речь идёт о суммах: 450&nbsp;000 евро для тех, кто инвестирует в проекты на территории столицы Подгорице или в южной части Черногории знаменитой своими курортами, либо 250&nbsp;000 евро в менее развитой северной части страны. Помимо этого, еще закладывается дотация в пользу государства в размере 200&nbsp;000 евро в обоих случаях. Эти условия являются главными в процессе получения гражданства Черногории за инвестиции.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Стоит упомянуть, что Черногория хоть и находится территориально на территории Европы, вступить в ЕС и стать участником Шенгенского соглашения она планирует только в 2025 году. На данный момент Черногория является членом ООН и НАТО.</span></p>', 'citizenship/April2022/qO4nmDMhifuj8rjZIP6b.jpeg', 'img', 'citizenship/April2022/2fhUAGfDh40QdQa5FtHt.jpg', 'img', '<p>Наши специалисты оценят ваши иммиграционные шансы и в зависимости от выбранного вами варианта получения гражданства Черногории предоставят вам полный перечень необходимых документов.</p>', 'citizenship/April2022/PRzBGttEyx96dFgHpFzK.jpg', 'img', NULL, NULL, NULL, NULL, NULL, NULL, '<ol>\r\n<li>Подписание соглашения и проверка благонадежности.</li>\r\n<li>Оплата государственных платежей и услуг компании.</li>\r\n<li>Выбор объекта инвестирования и подписание инвестиционной документации.</li>\r\n<li>Оплата суммы инвестиций и контрибуции на государственный &laquo;escrow&raquo; счет.</li>\r\n<li>Подача необходимых документов и заявления на получение гражданства (посредством Иммиграционного Центра RESIDENT).</li>\r\n<li>Получение положительного решения и сертификата о натурализации.</li>\r\n<li>Сдача биометрических данных непосредственно в Черногории.</li>\r\n<li>Получение паспорта гражданина Черногории (посредством Иммиграционного Центра RESIDENT).</li>\r\n</ol>\r\n<p>ВАЖНО: С момента подачи заявления, паспорт может быть получен уже через 3 месяца!</p>', 'citizenship/April2022/iQayzh2flGWPshbvPNVK.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'grazhdanstvo-chernogorii', 1, 0, 'Гражданство Черногории', 'Гражданство Черногории', 'Гражданство Черногории', '2022-04-19 13:51:00', '2022-04-28 08:10:12', '<p class=\"MsoNormal\">Финансово &ndash; независимым лицам и членам их семей, предпринимателям и инвесторам, не являющимся гражданами ЕС. Всем, кто соответствует критериям отбора и готов сделать инвестиционный вклад в обмен на паспорт. Необходимо быть свободным от персональных санкций, ограничений и запретов на въезд в страны ЕС, США, Великобритании и Канады. Также у заявителя не должно быть судимостей или открытого судебного производства. На все средства должны иметься подтверждения их законного происхождения.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Помимо всего во внимание берется ваша личная и деловая репутация, а также кредитная история, они должны быть безупречны. Во время процесса вам также необходимо будет показать, что у вас хорошее здоровье, и вы не нуждаетесь в лечении.</p>', 'Гражданство Черногории'),
(14, 'Гражданство Мальты CDI', 'Гражданство Мальты (за прямые инвестиции)', 'Если при выборе программы второго гражданства в мире вы руководствуетесь такими критериями, как респектабельность и безопасность, то инвестиционная программа Мальты (Мальта CDI), наиболее подходящий вариант! Одновременно вы становитесь гражданином ЕС и гражданином Британского Содружества (Содружества Наций).', 'citizenship/April2022/ieLsroOpVYg80WZ8m3PV.jpeg', '<p>В одно и то же время Мальта входит в Европейский Союз, Шенгенскую зону и Британское Содружество. С точки зрения политической и экономической стабильности Мальта находится в списке лидеров среди европейский государств. Безупречный кредитный рейтинг страны всегда имеет только позитивные прогнозы.</p>\r\n<p>Если вы готовы внести существенный вклад в экономику страны, то программа получения мальтийского гражданства за прямые инвестиции, как нельзя лучше подойдёт вам. В ответ на это вы можете рассчитывать на то, что члены вашей семьи также получат гражданство Мальты. Главным условием в процессе является успешное прохождение тщательной проверки самих заявителей и истории формирования их общего благосостояния</p>', 'citizenship/April2022/03e5oNvUK1CdB1eVWNeN.jpeg', NULL, 'citizenship/April2022/f3c0pDE8jh5iLqBD0zX1.jpeg', NULL, '<p><strong>Участнику программы получения гражданства Мальты за инвестиции, необходимо будет предъявить подтверждающие документы о выполнении следующих условий программы:</strong></p>\r\n<ol>\r\n<li>Оплата в Фонд национального и социального развития Мальты суммы в размере &euro;750 000 (опция V1) или &euro;600 000 (опция V2).</li>\r\n<li>Покупка недвижимости на Мальте стоимостью от &euro;700 000 сроком не менее чем на 5 лет, либоАренда недвижимости на Мальте за &euro;16 000 в год на 5 лет.</li>\r\n<li>Пожертвования в размерене менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n<li>Оформление международной медицинской страховки с покрытием от &euro;50 000.</li>\r\n</ol>', 'citizenship/April2022/aBX3BFR7k5XhQX9JWMde.jpeg', NULL, '<ul>\r\n<li>Подача заявления на этап резидентства.</li>\r\n<li>Взнос &euro;10 000 в Фонд национального и социального развития Мальты.</li>\r\n<li>Оплата в Malta Community Agency сбора за рассмотрение и обработку заявления на резидентство.\r\n<ol>\r\n<li>Основной заявитель: &euro;5 000.</li>\r\n<li>Каждый дополнительный заявитель: &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Оплата по &euro;27,50 за печать каждой резидентской карточки, которая будет выдана на 36 месяцев).</li>\r\n<li>Все заявители должны оставаться резидентами Мальты на протяжении 36 месяцев либо менее 36 месяцев (в зависимости от выбранной опции) с момента получения резидентских карточек.</li>\r\n</ul>', 'citizenship/April2022/fTb2IMWTey2K17TMjX5f.jpeg', NULL, '<ul>\r\n<li>Подача пакета подтверждающих документов на стадию Eligibility не позднее чем через 12 месяцев. Если документы не будут поданы в пределах указанного срока, государственное агентство обязано отозвать резидентский статус.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.\r\n<ol>\r\n<li>Due Diligence основного заявителя: &euro;15 000.</li>\r\n<li>Due Diligence каждого доп. заявителя: &euro;10 000.</li>\r\n<li>Benefactor Due Diligence: &euro;15 000.</li>\r\n<li>Административный сбор (за каждого заявителя): &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Трехуровневая проверка заявителя, членов его семьи и финансовых активов.</li>\r\n<li>Предварительное решение по результатам проверки принимается профильным министром на протяжении 120-150 дней с момента осуществления платежей EPRV.</li>\r\n<li>Предварительное решение профильного министра.</li>\r\n<li>В результате положительного решения заявление получает Letter of Approval for Eligibility.</li>\r\n</ul>', 'citizenship/April2022/lUatnVuPoI0kc7SopsvZ.jpeg', NULL, '<ul>\r\n<li>Этап гражданства Подача заявления на этап гражданства.<br />Для V1 &ndash; через 12 месяцев.<br />Для V2 &ndash; через 36 месяцев</li>\r\n<li>В случае корректно сформированного пакета требуемых документов заявление может быть повторно рассмотрено.</li>\r\n<li>После завершения повторного рассмотрения и второй фазы 3-уровневой проверки, Malta Community Agency выдает Investment Request Voucher (IRV) для оплаты инвестиций и остатков обязательных платежей.\r\n<ol>\r\n<li>Прямые инвестиции основного заявителя: &euro;740 000 (опция V1) / &euro;590 000 (опция V2)</li>\r\n<li>Прямые инвестиции каждого дополнительного заявителя: &euro;50 000</li>\r\n<li>Административный сбор за основного заявителя: &euro;5 000</li>\r\n<li>Административный сбор за каждого дополнительного заявителя: &euro;1 000</li>\r\n</ol>\r\n</li>\r\n<li>Letter of Approval in Principle.</li>\r\n<li>Подача в Malta Community Agency в течении 4 месяцев доказательств выполнения требований программы:\r\n<ol>\r\n<li>доказательства прочной связи со страной на протяжении 12 или 36 месяцев;</li>\r\n<li>копию договора аренды/договора купли-продажи недвижимости стоимостью &euro;16 000 в год/ &euro;700 000 соответственно + заявление основного заявителя, подтверждающее понимание им обязанности сохранять в аренде/собственности указанную недвижимость на протяжении следующих 5 лет;</li>\r\n<li>заключение мальтийского архитектора о соответствии заявленной стоимости реальной рыночной стоимости;</li>\r\n<li>подтверждение оплаты полной суммы Investment Request Voucher (IRV);</li>\r\n<li>подтверждение оплаты пожертвования в размере не менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n</ol>\r\n</li>\r\n<li>Финальная проверка в Malta Community Agency (5 дней). Приглашение на присягу от Malta Community Agency (действует 6 месяцев с даты выдачи Letter of Approval in Principle и касается заявителей от 18 лет).</li>\r\n</ul>', 'citizenship/April2022/DSB993zemlrWlQoNlULK.jpeg', NULL, 'citizenship/April2022/0R1BU808JeEbALtkSTq5.jpeg', NULL, '<ul>\r\n<li>После присяги и выполнения оставшихся нормативных процедур, основной заявитель получает сертификат о натурализации, включающий всех участников его заявления.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.</li>\r\n</ul>\r\n<h2>Ежегодный мониторинг</h2>\r\n<ul>\r\n<li>На протяжении первых 5 лет агент, сопровождающий заявление, обязан ежегодно подавать Annual Compliance Form по лицам, участвующим в заявлении.</li>\r\n</ul>', 'citizenship/April2022/Gh9betQ5HTaFAf6YfaSt.jpeg', NULL, 'grazhdanstvo-malty-cdi', 1, 0, 'Гражданство Мальты', 'Гражданство Мальты', 'Гражданство Мальты', '2022-04-25 14:32:00', '2022-05-04 06:35:44', '<p>Финансово &ndash; независимые лица и члены их семей. Программа предусматривает получение гражданства Мальты непосредственно для самого инвестора, а также его супруги (а), детей инвестора, родителей и прародителей. Это делает программу уникальной в своем роде.</p>', 'Гражданство Мальты');
INSERT INTO `citizenship` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `fifth_content`, `fifth_img`, `alt_fifth_img`, `sixth_content`, `sixth_img`, `alt_sixth_img`, `sixth_o_img`, `alt_sixth_o_img`, `seventh_content`, `seventh_img`, `alt_seventh_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `who`, `help`) VALUES
(15, 'Гражданство Мальты CDI', 'Гражданство Мальты (за прямые инвестиции)', 'Если при выборе программы второго гражданства в мире вы руководствуетесь такими критериями, как респектабельность и безопасность, то инвестиционная программа Мальты (Мальта CDI), наиболее подходящий вариант! Одновременно вы становитесь гражданином ЕС и гражданином Британского Содружества (Содружества Наций).', 'citizenship/April2022/QMG4tK6fUJxba8pvhLkG.jpeg', '<p>В одно и то же время Мальта входит в Европейский Союз, Шенгенскую зону и Британское Содружество. С точки зрения политической и экономической стабильности Мальта находится в списке лидеров среди европейский государств. Безупречный кредитный рейтинг страны всегда имеет только позитивные прогнозы.</p>\r\n<p>Если вы готовы внести существенный вклад в экономику страны, то программа получения мальтийского гражданства за прямые инвестиции, как нельзя лучше подойдёт вам. В ответ на это вы можете рассчитывать на то, что члены вашей семьи также получат гражданство Мальты. Главным условием в процессе является успешное прохождение тщательной проверки самих заявителей и истории формирования их общего благосостояния</p>', 'citizenship/April2022/2Vp2M8FDTpc1Hah4N3iy.jpeg', NULL, 'citizenship/April2022/eSNZLDl0Z60Ro8cSAj7h.jpeg', NULL, '<p><strong>Участнику программы получения гражданства Мальты за инвестиции, необходимо будет предъявить подтверждающие документы о выполнении следующих условий программы:</strong></p>\r\n<ol>\r\n<li>Оплата в Фонд национального и социального развития Мальты суммы в размере &euro;750 000 (опция V1) или &euro;600 000 (опция V2).</li>\r\n<li>Покупка недвижимости на Мальте стоимостью от &euro;700 000 сроком не менее чем на 5 лет, либоАренда недвижимости на Мальте за &euro;16 000 в год на 5 лет.</li>\r\n<li>Пожертвования в размерене менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n<li>Оформление международной медицинской страховки с покрытием от &euro;50 000.</li>\r\n</ol>', 'citizenship/April2022/3MoNBxeStiEdZu8Hk3ma.jpeg', NULL, '<ul>\r\n<li>Подача заявления на этап резидентства.</li>\r\n<li>Взнос &euro;10 000 в Фонд национального и социального развития Мальты.</li>\r\n<li>Оплата в Malta Community Agency сбора за рассмотрение и обработку заявления на резидентство.\r\n<ol>\r\n<li>Основной заявитель: &euro;5 000.</li>\r\n<li>Каждый дополнительный заявитель: &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Оплата по &euro;27,50 за печать каждой резидентской карточки, которая будет выдана на 36 месяцев).</li>\r\n<li>Все заявители должны оставаться резидентами Мальты на протяжении 36 месяцев либо менее 36 месяцев (в зависимости от выбранной опции) с момента получения резидентских карточек.</li>\r\n</ul>', 'citizenship/April2022/iEhiP0Bmc6fo34zKm3GW.jpeg', NULL, '<ul>\r\n<li>Подача пакета подтверждающих документов на стадию Eligibility не позднее чем через 12 месяцев. Если документы не будут поданы в пределах указанного срока, государственное агентство обязано отозвать резидентский статус.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.\r\n<ol>\r\n<li>Due Diligence основного заявителя: &euro;15 000.</li>\r\n<li>Due Diligence каждого доп. заявителя: &euro;10 000.</li>\r\n<li>Benefactor Due Diligence: &euro;15 000.</li>\r\n<li>Административный сбор (за каждого заявителя): &euro;1 000.</li>\r\n</ol>\r\n</li>\r\n<li>Трехуровневая проверка заявителя, членов его семьи и финансовых активов.</li>\r\n<li>Предварительное решение по результатам проверки принимается профильным министром на протяжении 120-150 дней с момента осуществления платежей EPRV.</li>\r\n<li>Предварительное решение профильного министра.</li>\r\n<li>В результате положительного решения заявление получает Letter of Approval for Eligibility.</li>\r\n</ul>', 'citizenship/April2022/BdqUhEiW1RFP7gn6g7Qc.jpeg', NULL, '<ul>\r\n<li>Этап гражданства Подача заявления на этап гражданства.<br />Для V1 &ndash; через 12 месяцев.<br />Для V2 &ndash; через 36 месяцев</li>\r\n<li>В случае корректно сформированного пакета требуемых документов заявление может быть повторно рассмотрено.</li>\r\n<li>После завершения повторного рассмотрения и второй фазы 3-уровневой проверки, Malta Community Agency выдает Investment Request Voucher (IRV) для оплаты инвестиций и остатков обязательных платежей.\r\n<ol>\r\n<li>Прямые инвестиции основного заявителя: &euro;740 000 (опция V1) / &euro;590 000 (опция V2)</li>\r\n<li>Прямые инвестиции каждого дополнительного заявителя: &euro;50 000</li>\r\n<li>Административный сбор за основного заявителя: &euro;5 000</li>\r\n<li>Административный сбор за каждого дополнительного заявителя: &euro;1 000</li>\r\n</ol>\r\n</li>\r\n<li>Letter of Approval in Principle.</li>\r\n<li>Подача в Malta Community Agency в течении 4 месяцев доказательств выполнения требований программы:\r\n<ol>\r\n<li>доказательства прочной связи со страной на протяжении 12 или 36 месяцев;</li>\r\n<li>копию договора аренды/договора купли-продажи недвижимости стоимостью &euro;16 000 в год/ &euro;700 000 соответственно + заявление основного заявителя, подтверждающее понимание им обязанности сохранять в аренде/собственности указанную недвижимость на протяжении следующих 5 лет;</li>\r\n<li>заключение мальтийского архитектора о соответствии заявленной стоимости реальной рыночной стоимости;</li>\r\n<li>подтверждение оплаты полной суммы Investment Request Voucher (IRV);</li>\r\n<li>подтверждение оплаты пожертвования в размере не менее &euro;10 000 в любую местную благотворительную организацию, которая зарегистрирована Комиссаром по благотворительным организациям Мальты.</li>\r\n</ol>\r\n</li>\r\n<li>Финальная проверка в Malta Community Agency (5 дней). Приглашение на присягу от Malta Community Agency (действует 6 месяцев с даты выдачи Letter of Approval in Principle и касается заявителей от 18 лет).</li>\r\n</ul>', 'citizenship/April2022/mcUvdVCuSnj6g53MgH6H.jpeg', NULL, 'citizenship/April2022/PHHRNx1zRvadesgR6UfE.jpeg', NULL, '<ul>\r\n<li>После присяги и выполнения оставшихся нормативных процедур, основной заявитель получает сертификат о натурализации, включающий всех участников его заявления.</li>\r\n<li>Оплата Eligibility Payment Request Voucher (EPRV) в Malta Community Agency за рассмотрение и обработку заявления на стадии Eligibility.</li>\r\n</ul>\r\n<h2>Ежегодный мониторинг</h2>\r\n<ul>\r\n<li>На протяжении первых 5 лет агент, сопровождающий заявление, обязан ежегодно подавать Annual Compliance Form по лицам, участвующим в заявлении.</li>\r\n</ul>', 'citizenship/April2022/yW8pUNNDwPKqWY5PsWit.jpeg', NULL, 'grazhdanstvo-malty-cdi3', 0, 0, 'гражданство Мальты', 'гражданство Мальты', 'гражданство Мальты', '2022-04-25 14:32:00', '2022-04-25 14:39:09', '<p>Финансово &ndash; независимые лица и члены их семей. Программа предусматривает получение гражданства Мальты непосредственно для самого инвестора, а также его супруги (а), детей инвестора, родителей и прародителей. Это делает программу уникальной в своем роде.</p>', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `citizenship_document`
--

CREATE TABLE `citizenship_document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT 0,
  `citizenship_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `citizenship_document`
--

INSERT INTO `citizenship_document` (`id`, `document_id`, `citizenship_id`, `created_at`, `updated_at`) VALUES
(18, 3, 1, '2022-05-17 10:38:15', '2022-05-17 10:38:15'),
(19, 3, 5, '2022-05-17 10:38:15', '2022-05-17 10:38:15'),
(20, 3, 14, '2022-05-17 10:38:15', '2022-05-17 10:38:15'),
(21, 3, 15, '2022-05-17 10:38:15', '2022-05-17 10:38:15'),
(22, 4, 1, '2022-05-17 10:38:31', '2022-05-17 10:38:31'),
(23, 4, 14, '2022-05-17 10:38:31', '2022-05-17 10:38:31'),
(24, 4, 15, '2022-05-17 10:38:31', '2022-05-17 10:38:31'),
(25, 2, 1, '2022-05-17 10:38:42', '2022-05-17 10:38:42'),
(26, 2, 5, '2022-05-17 10:38:42', '2022-05-17 10:38:42'),
(27, 2, 14, '2022-05-17 10:38:42', '2022-05-17 10:38:42'),
(28, 2, 15, '2022-05-17 10:38:42', '2022-05-17 10:38:42'),
(29, 1, 1, '2022-05-17 10:38:53', '2022-05-17 10:38:53'),
(30, 1, 5, '2022-05-17 10:38:53', '2022-05-17 10:38:53'),
(31, 1, 14, '2022-05-17 10:38:53', '2022-05-17 10:38:53'),
(32, 1, 15, '2022-05-17 10:38:53', '2022-05-17 10:38:53');

-- --------------------------------------------------------

--
-- Структура таблицы `citizenship_give`
--

CREATE TABLE `citizenship_give` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `give_id` bigint(20) UNSIGNED DEFAULT 0,
  `citizenship_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `citizenship_give`
--

INSERT INTO `citizenship_give` (`id`, `give_id`, `citizenship_id`, `created_at`, `updated_at`) VALUES
(25, 11, 4, '2022-04-12 13:13:51', '2022-04-12 13:13:51'),
(26, 12, 4, '2022-04-12 13:14:27', '2022-04-12 13:14:27'),
(27, 13, 4, '2022-04-12 13:17:28', '2022-04-12 13:17:28'),
(28, 14, 6, '2022-04-12 14:29:29', '2022-04-12 14:29:29'),
(29, 15, 6, '2022-04-12 14:30:03', '2022-04-12 14:30:03'),
(30, 16, 6, '2022-04-12 14:30:44', '2022-04-12 14:30:44'),
(31, 17, 6, '2022-04-12 14:32:32', '2022-04-12 14:32:32'),
(32, 18, 7, '2022-04-17 19:52:25', '2022-04-17 19:52:25'),
(33, 19, 7, '2022-04-17 19:52:59', '2022-04-17 19:52:59'),
(34, 20, 7, '2022-04-17 19:53:21', '2022-04-17 19:53:21'),
(35, 21, 13, '2022-04-19 13:52:25', '2022-04-19 13:52:25'),
(36, 22, 13, '2022-04-19 13:52:47', '2022-04-19 13:52:47'),
(37, 23, 13, '2022-04-19 13:53:09', '2022-04-19 13:53:09'),
(38, 24, 13, '2022-04-19 13:53:32', '2022-04-19 13:53:32'),
(40, 26, 8, '2022-04-19 14:03:11', '2022-04-19 14:03:11'),
(42, 28, 8, '2022-04-19 14:03:38', '2022-04-19 14:03:38'),
(43, 29, 8, '2022-04-19 14:03:52', '2022-04-19 14:03:52'),
(44, 30, 9, '2022-04-19 14:04:24', '2022-04-19 14:04:24'),
(46, 32, 9, '2022-04-19 14:05:06', '2022-04-19 14:05:06'),
(47, 31, 9, '2022-04-19 14:05:16', '2022-04-19 14:05:16'),
(48, 33, 9, '2022-04-19 14:05:28', '2022-04-19 14:05:28'),
(49, 34, 9, '2022-04-19 14:05:37', '2022-04-19 14:05:37'),
(50, 35, 9, '2022-04-19 14:05:47', '2022-04-19 14:05:47'),
(51, 36, 9, '2022-04-19 14:05:56', '2022-04-19 14:05:56'),
(54, 39, 10, '2022-04-19 14:07:27', '2022-04-19 14:07:27'),
(56, 41, 11, '2022-04-19 14:08:09', '2022-04-19 14:08:09'),
(57, 42, 11, '2022-04-19 14:08:19', '2022-04-19 14:08:19'),
(58, 43, 11, '2022-04-19 14:08:30', '2022-04-19 14:08:30'),
(59, 44, 11, '2022-04-19 14:08:40', '2022-04-19 14:08:40'),
(60, 45, 12, '2022-04-19 14:09:04', '2022-04-19 14:09:04'),
(61, 46, 12, '2022-04-19 14:09:28', '2022-04-19 14:09:28'),
(62, 47, 12, '2022-04-19 14:09:40', '2022-04-19 14:09:40'),
(63, 48, 12, '2022-04-19 14:09:51', '2022-04-19 14:09:51'),
(64, 27, 8, '2022-04-22 11:26:53', '2022-04-22 11:26:53'),
(67, 8, 1, '2022-04-25 14:43:11', '2022-04-25 14:43:11'),
(68, 8, 14, '2022-04-25 14:43:11', '2022-04-25 14:43:11'),
(69, 8, 15, '2022-04-25 14:43:11', '2022-04-25 14:43:11'),
(70, 4, 1, '2022-04-25 15:00:35', '2022-04-25 15:00:35'),
(71, 4, 14, '2022-04-25 15:00:35', '2022-04-25 15:00:35'),
(72, 4, 15, '2022-04-25 15:00:35', '2022-04-25 15:00:35'),
(73, 5, 1, '2022-04-25 15:00:56', '2022-04-25 15:00:56'),
(74, 5, 14, '2022-04-25 15:00:56', '2022-04-25 15:00:56'),
(75, 5, 15, '2022-04-25 15:00:56', '2022-04-25 15:00:56'),
(76, 6, 1, '2022-04-25 15:01:13', '2022-04-25 15:01:13'),
(77, 6, 14, '2022-04-25 15:01:13', '2022-04-25 15:01:13'),
(78, 6, 15, '2022-04-25 15:01:13', '2022-04-25 15:01:13'),
(79, 7, 1, '2022-04-25 15:01:29', '2022-04-25 15:01:29'),
(80, 7, 14, '2022-04-25 15:01:29', '2022-04-25 15:01:29'),
(81, 7, 15, '2022-04-25 15:01:29', '2022-04-25 15:01:29'),
(82, 1, 1, '2022-04-25 15:01:56', '2022-04-25 15:01:56'),
(83, 1, 14, '2022-04-25 15:01:56', '2022-04-25 15:01:56'),
(84, 1, 15, '2022-04-25 15:01:56', '2022-04-25 15:01:56'),
(85, 2, 1, '2022-04-25 15:02:18', '2022-04-25 15:02:18'),
(86, 2, 14, '2022-04-25 15:02:18', '2022-04-25 15:02:18'),
(87, 2, 15, '2022-04-25 15:02:18', '2022-04-25 15:02:18'),
(88, 3, 1, '2022-04-25 15:02:37', '2022-04-25 15:02:37'),
(89, 3, 14, '2022-04-25 15:02:37', '2022-04-25 15:02:37'),
(90, 3, 15, '2022-04-25 15:02:37', '2022-04-25 15:02:37'),
(91, 10, 4, '2022-04-26 12:21:50', '2022-04-26 12:21:50'),
(94, 37, 10, '2022-04-28 08:04:04', '2022-04-28 08:04:04'),
(95, 40, 10, '2022-04-28 08:04:49', '2022-04-28 08:04:49'),
(96, 38, 10, '2022-04-28 08:05:19', '2022-04-28 08:05:19');

-- --------------------------------------------------------

--
-- Структура таблицы `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `consultations`
--

INSERT INTO `consultations` (`id`, `title`, `subtitle`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Нужна консультация?', 'Оставьте свой номер и наш эксперт перезвонит Вам в ближайшее время и ответит на все волнующие Вас вопросы.', '<h3>Заголовок под SEO</h3>\r\n<p>Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>\r\n<h3>Lorem Ipsum не только успешно пережил</h3>\r\n<p>без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>\r\n<h3>Заголовок под SEO</h3>\r\n<p>Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>\r\n<h3>Lorem Ipsum не только успешно пережил</h3>\r\n<p>без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>\r\n<h3>Заголовок под SEO</h3>\r\n<p>Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>\r\n<h3>Lorem Ipsum не только успешно пережил</h3>\r\n<p>без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', '2022-03-30 09:59:00', '2022-03-30 10:08:08');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 1,
  `type` enum('phone','graph','social','address','email','map') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phone',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `is_main`, `type`, `icon`, `value`, `link`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'phone', NULL, '+7 707 854 70 45', '+77078547045', 1, 1, '2022-03-29 05:37:00', '2022-04-28 09:04:43'),
(2, 1, 'email', NULL, 'rimmc@inbox.ru', 'rimmc@inbox.ru', 1, 1, '2022-03-29 05:38:11', '2022-03-29 05:38:11'),
(3, 1, 'address', NULL, 'Казахстан, г. Караганда, БЦ POINT, пр-т Бухар-Жырау 75/3 Офис 501', NULL, 1, 1, '2022-03-29 05:38:44', '2022-03-29 05:38:44'),
(4, 1, 'map', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10301.325629735644!2d73.08936943971312!3d49.79863687975308!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xeb149402cb978319!2z0JHQuNC30L3QtdGBINGG0LXQvdGC0YAgItCm0LXQvdGC0YAgUG9pbnQi!5e0!3m2!1sru!2skz!4v1648096637909!5m2!1sru!2skz\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 1, 1, '2022-03-29 05:40:14', '2022-03-29 05:40:14'),
(5, 1, 'social', 'contacts\\March2022\\IoUBzH4oE4pxh9cU2jOn.svg', 'whatsapp2', 'https://wa.me/77078547045', 1, 1, '2022-03-29 05:41:00', '2022-04-25 13:39:22'),
(6, 1, 'social', 'contacts\\March2022\\Bc7zX2fJqu9zxibsub3o.svg', 'instagram', 'https://instagram.com/resident_immigration?igshid=YmMyMTA2M2Y=', 1, 2, '2022-03-29 05:42:00', '2022-04-25 13:32:03'),
(7, 1, 'social', 'contacts\\March2022\\D20yDESnAZ63GOvv8uou.svg', 'telegram', 'https://t.me/RESIDENT_IMMIGRATION_CENTER', 1, 3, '2022-03-29 05:42:00', '2022-04-25 13:51:01');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 0, 0, 0, 0, '{}', 6),
(48, 6, 'body', 'rich_text_box', 'Контент', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 6, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(50, 6, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 11),
(51, 6, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 12),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"\\u041e\\u0422\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\",\"ACTIVE\":\"\\u0412\\u041a\\u041b\\u042e\\u0427\\u0415\\u041d\\u041e\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, '{}', 13),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(55, 6, 'image', 'image', 'Изображения', 0, 0, 0, 0, 0, 0, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(56, 6, 'type', 'select_dropdown', 'Тип страницы', 1, 1, 1, 1, 1, 1, '{\"default\":\"simple\",\"options\":{\"home\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"contacts\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\"about\":\"\\u041e \\u043d\\u0430\\u0441\",\"faqs\":\"\\u0427\\u0430\\u0441\\u0442\\u044b\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b\",\"partners\":\"\\u041f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u0441\\u0442\\u0432\\u043e\",\"policy\":\"\\u041f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043a\\u043e\\u043d\\u0444\\u0438\\u0434\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438\",\"services\":\"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438\",\"reviews\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b\",\"education\":\"\\u041e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\",\"work\":\"\\u0420\\u0430\\u0431\\u043e\\u0442\\u0430\",\"status\":\"\\u041d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u0443\\u0441\\u044b\",\"residency\":\"\\u0420\\u0435\\u0437\\u0438\\u0434\\u0435\\u043d\\u0442\\u0441\\u0442\\u0432\\u043e\",\"citizenship\":\"\\u0413\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e\",\"simple\":\"\\u0414\\u0440\\u0443\\u0433\\u043e\\u0435\"}}', 3),
(57, 6, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 10),
(58, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 7, 'is_main', 'checkbox', 'Главная', 1, 0, 1, 1, 1, 1, '{\"on\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439\",\"off\":\"\\u0412\\u0442\\u043e\\u0440\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u044b\\u0439\",\"checked\":true}', 2),
(60, 7, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"phone\",\"options\":{\"phone\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"graph\":\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b\",\"social\":\"\\u0421\\u043e\\u0446\\u0441\\u0435\\u0442\\u044c\",\"address\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"email\":\"Email\",\"map\":\"\\u041a\\u0430\\u0440\\u0442\\u0430 (JS)\"}}', 3),
(61, 7, 'icon', 'image', 'Иконка (svg)', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(62, 7, 'value', 'text_area', 'Значение', 0, 0, 1, 1, 1, 1, '{}', 5),
(63, 7, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 6),
(64, 7, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 7),
(65, 7, 'sort_id', 'number', 'Порядковый номер', 1, 0, 1, 1, 1, 1, '{}', 8),
(66, 7, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 9),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(68, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(71, 8, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(73, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 9, 'question', 'text_area', 'Вопрос', 0, 1, 1, 1, 1, 1, '{}', 2),
(75, 9, 'answer', 'rich_text_box', 'Ответ', 0, 0, 1, 1, 1, 1, '{}', 3),
(76, 9, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'excerpt', 'text_area', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 10, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 10, 'adv_first_image', 'image', 'Иконка №1', 0, 0, 1, 1, 1, 1, '{}', 5),
(83, 10, 'adv_first_title', 'text', 'Заголовок №1', 0, 0, 1, 1, 1, 1, '{}', 6),
(84, 10, 'adv_first_excerpt', 'text_area', 'Краткое описание №1', 0, 0, 1, 1, 1, 1, '{}', 7),
(85, 10, 'adv_second_image', 'image', 'Иконка №2', 0, 0, 1, 1, 1, 1, '{}', 8),
(86, 10, 'adv_second_title', 'text', 'Заголовок №2', 0, 0, 1, 1, 1, 1, '{}', 9),
(87, 10, 'adv_second_excerpt', 'text_area', 'Краткое описание №2', 0, 0, 1, 1, 1, 1, '{}', 10),
(88, 10, 'adv_third_image', 'image', 'Иконка №3', 0, 0, 1, 1, 1, 1, '{}', 11),
(89, 10, 'adv_third_title', 'text', 'Заголовок №3', 0, 0, 1, 1, 1, 1, '{}', 12),
(90, 10, 'adv_third_excerpt', 'text_area', 'Краткое описание №3', 0, 0, 1, 1, 1, 1, '{}', 13),
(91, 10, 'adv_fouth_image', 'image', 'Иконка №4', 0, 0, 1, 1, 1, 1, '{}', 14),
(92, 10, 'adv_fouth_title', 'text', 'Заголовок №4', 0, 0, 1, 1, 1, 1, '{}', 15),
(93, 10, 'adv_fouth_excerpt', 'text_area', 'Краткое описание №4', 0, 0, 1, 1, 1, 1, '{}', 16),
(94, 10, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 17),
(95, 10, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 18),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(97, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 11, 'image', 'image', 'Аватар', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 11, 'name', 'text', 'ФИО', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 11, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 11, 'content', 'rich_text_box', 'Отзыв', 0, 0, 1, 1, 1, 1, '{}', 5),
(102, 11, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 6),
(103, 11, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 7),
(104, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(105, 12, 'id', 'text', 'Номер', 1, 1, 0, 0, 0, 0, '{}', 1),
(106, 12, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 12, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 12, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 6),
(109, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(110, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 13, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 2),
(112, 13, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(113, 13, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 4),
(114, 13, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 5),
(115, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(116, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 14, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 14, 'title', 'text_area', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 3),
(119, 14, 'subtitle', 'rich_text_box', 'Подзаголовок', 0, 0, 1, 1, 1, 1, '{}', 4),
(120, 14, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 5),
(121, 14, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 6),
(122, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(123, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 15, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 15, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(126, 15, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(127, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(128, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 16, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(130, 16, 'subtitle', 'text_area', 'Подзаголовок', 0, 0, 1, 1, 1, 1, '{}', 3),
(131, 16, 'content', 'rich_text_box', 'Контент', 0, 0, 0, 0, 0, 0, '{}', 4),
(132, 16, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 5),
(133, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(134, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 17, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 17, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 17, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 4),
(138, 17, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 5),
(139, 17, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 6),
(140, 17, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 7),
(141, 17, 'meta_description', 'text_area', 'Meta Описание', 1, 0, 1, 1, 1, 1, '{}', 8),
(142, 17, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 1, 0, 1, 1, 1, 1, '{}', 9),
(143, 17, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 10),
(144, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(145, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(146, 19, 'education_id', 'text', 'Education Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(147, 19, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 4),
(148, 19, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 5),
(149, 19, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 6),
(150, 19, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 7),
(151, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(152, 19, 'education_content_belongsto_education_relationship', 'relationship', 'Образование', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Education\",\"table\":\"education\",\"type\":\"belongsTo\",\"column\":\"education_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(153, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(154, 21, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(155, 21, 'image', 'image', 'Изображения', 0, 1, 1, 1, 1, 1, '{}', 3),
(156, 21, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 4),
(157, 21, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 5),
(158, 21, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 6),
(159, 21, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 7),
(160, 21, 'meta_description', 'text_area', 'Meta Описание', 1, 0, 1, 1, 1, 1, '{}', 8),
(161, 21, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 1, 0, 1, 1, 1, 1, '{}', 9),
(162, 21, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 10),
(163, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(164, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(165, 22, 'work_id', 'text', 'Work Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(166, 22, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 4),
(167, 22, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 5),
(168, 22, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 6),
(169, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(170, 22, 'work_content_belongsto_work_relationship', 'relationship', 'Страны', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Work\",\"table\":\"work\",\"type\":\"belongsTo\",\"column\":\"work_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(171, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(172, 23, 'title', 'text', 'Заголовок №2', 0, 0, 1, 1, 1, 1, '{}', 3),
(173, 23, 'description', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 4),
(174, 23, 'flag_img', 'image', 'Изображение Флага', 0, 1, 1, 1, 1, 1, '{}', 5),
(175, 23, 'first_content', 'rich_text_box', 'Контент №1', 0, 0, 1, 1, 1, 1, '{}', 6),
(176, 23, 'bg_img', 'image', 'Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 7),
(177, 23, 'alt_bg_img', 'text', 'Alt Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 8),
(178, 23, 'second_content', 'rich_text_box', 'Кто может учавствовать в программе?', 0, 0, 1, 1, 1, 1, '{}', 9),
(179, 23, 'second_img', 'image', 'Изображения №2', 0, 0, 1, 1, 1, 1, '{}', 10),
(180, 23, 'alt_second_img', 'text', 'Alt Изображения №2', 0, 0, 1, 1, 1, 1, '{}', 11),
(181, 23, 'third_content', 'rich_text_box', 'Необходимые документы', 0, 0, 1, 1, 1, 1, '{}', 16),
(182, 23, 'third_img', 'image', 'Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 17),
(183, 23, 'alt_third_img', 'text', 'Alt Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 18),
(184, 23, 'fourth_content', 'rich_text_box', 'Процесс подачи', 0, 0, 1, 1, 1, 1, '{}', 21),
(185, 23, 'fourth_img', 'image', 'Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 22),
(186, 23, 'alt_fourth_img', 'text', 'Alt Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 23),
(187, 23, 'slug', 'text', 'Ссылка (Уникальная)', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nav_title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 27),
(188, 23, 'status', 'checkbox', 'Статус', 1, 0, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 28),
(189, 23, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 29),
(190, 23, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 30),
(191, 23, 'meta_description', 'text_area', 'Meta Описание', 1, 0, 1, 1, 1, 1, '{}', 31),
(192, 23, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 1, 0, 1, 1, 1, 1, '{}', 32),
(193, 23, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 33),
(194, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 34),
(195, 23, 'nav_title', 'text', 'Заголовок №1', 0, 1, 1, 1, 1, 1, '{}', 2),
(196, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(197, 24, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(198, 24, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(199, 24, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(200, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(201, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 25, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(203, 25, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(204, 25, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(205, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(206, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(207, 26, 'nav_title', 'text', 'Заголовок №1', 0, 1, 1, 1, 1, 1, '{}', 2),
(208, 26, 'title', 'text', 'Заголовок №2', 0, 0, 1, 1, 1, 1, '{}', 3),
(209, 26, 'description', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 4),
(210, 26, 'flag_img', 'image', 'Изображение Флага', 0, 1, 1, 1, 1, 1, '{}', 5),
(211, 26, 'first_content', 'rich_text_box', 'Контент №1', 0, 0, 1, 1, 1, 1, '{}', 6),
(212, 26, 'bg_img', 'image', 'Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 7),
(213, 26, 'alt_bg_img', 'text', 'Alt Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 8),
(214, 26, 'first_var_content', 'rich_text_box', '1 ВАРИАНТ:', 0, 0, 1, 1, 1, 1, '{}', 9),
(215, 26, 'second_var_content', 'rich_text_box', '2 ВАРИАНТ:', 0, 0, 1, 1, 1, 1, '{}', 10),
(216, 26, 'third_var_content', 'rich_text_box', '3 ВАРИАНТ:', 0, 0, 1, 1, 1, 1, '{}', 11),
(217, 26, 'var_img', 'image', 'Изображение вариантов', 0, 0, 1, 1, 1, 1, '{}', 12),
(218, 26, 'alt_var_img', 'text', 'Alt Изображение вариантов', 0, 0, 1, 1, 1, 1, '{}', 13),
(219, 26, 'second_content', 'rich_text_box', 'Преимущества', 0, 0, 1, 1, 1, 1, '{}', 14),
(220, 26, 'second_img', 'image', 'Изображения Преимущества', 0, 0, 1, 1, 1, 1, '{}', 15),
(221, 26, 'alt_second_img', 'text', 'Alt Изображения Преимущества', 0, 0, 1, 1, 1, 1, '{}', 16),
(222, 26, 'third_content', 'rich_text_box', 'Кто может учавствовать', 0, 0, 1, 1, 1, 1, '{}', 19),
(223, 26, 'third_img', 'image', 'Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 20),
(224, 26, 'alt_third_img', 'text', 'Alt Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 21),
(225, 26, 'fourth_content', 'rich_text_box', 'Необходимые документы', 0, 0, 1, 1, 1, 1, '{}', 24),
(226, 26, 'fourth_img', 'image', 'Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 25),
(227, 26, 'alt_fourth_img', 'text', 'Alt Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 26),
(228, 26, 'fifth_content', 'rich_text_box', 'Процесс подачи', 0, 0, 1, 1, 1, 1, '{}', 29),
(229, 26, 'fifth_img', 'image', 'Изображения №5', 0, 0, 1, 1, 1, 1, '{}', 30),
(230, 26, 'alt_fifth_img', 'text', 'Alt Изображения №5', 0, 0, 1, 1, 1, 1, '{}', 31),
(231, 26, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nav_title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 35),
(232, 26, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 36),
(233, 26, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 37),
(234, 26, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 38),
(235, 26, 'meta_description', 'text_area', 'Meta Описание', 1, 0, 1, 1, 1, 1, '{}', 39),
(236, 26, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 1, 0, 1, 1, 1, 1, '{}', 40),
(237, 26, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 41),
(238, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 42),
(239, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(240, 27, 'nav_title', 'text', 'Заголовок №1', 0, 1, 1, 1, 1, 1, '{}', 2),
(241, 27, 'title', 'text', 'Заголовок №2', 0, 0, 1, 1, 1, 1, '{}', 3),
(242, 27, 'description', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{}', 4),
(243, 27, 'flag_img', 'image', 'Изображение Флага', 0, 1, 1, 1, 1, 1, '{}', 5),
(244, 27, 'first_content', 'rich_text_box', 'Контент №1', 0, 0, 1, 1, 1, 1, '{}', 6),
(245, 27, 'bg_img', 'image', 'Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 7),
(246, 27, 'alt_bg_img', 'text', 'Alt Изображения Фона', 0, 0, 1, 1, 1, 1, '{}', 8),
(247, 27, 'second_img', 'image', 'Изображения №2', 0, 0, 1, 1, 1, 1, '{}', 10),
(248, 27, 'alt_second_img', 'text', 'Alt Изображения №2', 0, 0, 1, 1, 1, 1, '{}', 11),
(249, 27, 'third_content', 'rich_text_box', 'Необходимые документы', 0, 0, 1, 1, 1, 1, '{}', 12),
(250, 27, 'third_img', 'image', 'Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 13),
(251, 27, 'alt_third_img', 'text', 'Alt Изображения №3', 0, 0, 1, 1, 1, 1, '{}', 14),
(252, 27, 'fourth_content', 'rich_text_box', 'Этап резидентства', 0, 0, 1, 1, 1, 1, '{}', 15),
(253, 27, 'fourth_img', 'image', 'Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 16),
(254, 27, 'alt_fourth_img', 'text', 'Alt Изображения №4', 0, 0, 1, 1, 1, 1, '{}', 17),
(255, 27, 'fifth_content', 'rich_text_box', 'Этап правомочности', 0, 0, 1, 1, 1, 1, '{}', 18),
(256, 27, 'fifth_img', 'image', 'Изображения №5', 0, 0, 1, 1, 1, 1, '{}', 19),
(257, 27, 'alt_fifth_img', 'text', 'Alt Изображения №5', 0, 0, 1, 1, 1, 1, '{}', 20),
(258, 27, 'sixth_content', 'rich_text_box', 'Этап гражданства', 0, 0, 1, 1, 1, 1, '{}', 21),
(259, 27, 'sixth_img', 'image', 'Изображения №6', 0, 0, 1, 1, 1, 1, '{}', 22),
(260, 27, 'alt_sixth_img', 'text', 'Alt Изображения №6', 0, 0, 1, 1, 1, 1, '{}', 23),
(261, 27, 'sixth_o_img', 'image', 'Изображения №7', 0, 0, 1, 1, 1, 1, '{}', 24),
(262, 27, 'alt_sixth_o_img', 'text', 'Alt Изображения №7', 0, 0, 1, 1, 1, 1, '{}', 25),
(263, 27, 'seventh_content', 'rich_text_box', 'Присяга', 0, 0, 1, 1, 1, 1, '{}', 26),
(264, 27, 'seventh_img', 'image', 'Изображения №8', 0, 0, 1, 1, 1, 1, '{}', 27),
(265, 27, 'alt_seventh_img', 'text', 'Alt Изображения №8', 0, 0, 1, 1, 1, 1, '{}', 28),
(266, 27, 'slug', 'text', 'Ссылка (Уникальная)', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nav_title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 30),
(267, 27, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e\",\"checked\":true}', 31),
(268, 27, 'sort_id', 'number', 'Порядковый номер', 0, 0, 0, 0, 0, 0, '{}', 32),
(269, 27, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 33),
(270, 27, 'meta_description', 'text_area', 'Meta Описание', 1, 0, 1, 1, 1, 1, '{}', 34),
(271, 27, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 1, 0, 1, 1, 1, 1, '{}', 35),
(272, 27, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 1, 0, 1, '{}', 36),
(273, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 37),
(274, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(275, 28, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(276, 28, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(277, 28, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(278, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(279, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(280, 29, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(281, 29, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(282, 29, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 4),
(283, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(284, 27, 'who', 'rich_text_box', 'Кто может учавствовать', 0, 1, 1, 1, 1, 1, '{}', 9),
(285, 27, 'help', 'text', 'Хотите получить', 0, 0, 1, 1, 1, 1, '{}', 29),
(286, 26, 'help', 'text', 'Хотите получить', 0, 0, 1, 1, 1, 1, '{}', 34),
(287, 23, 'help', 'text', 'Хотите получить', 0, 0, 1, 1, 1, 1, '{}', 26),
(288, 12, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 5),
(289, 12, 'url', 'text', 'Адресс Страницы', 0, 1, 1, 1, 1, 1, '{}', 4),
(290, 23, 'first_third_img', 'image', 'Изображения №3.1', 0, 0, 1, 1, 1, 1, '{}', 19),
(291, 23, 'alt_first_third_img', 'text', 'Alt Изображения №3.1', 0, 0, 1, 1, 1, 1, '{}', 20),
(292, 23, 'first_fourth_img', 'image', 'Изображения №4.1', 0, 0, 1, 1, 1, 1, '{}', 24),
(293, 23, 'alt_first_fourth_img', 'text', 'Alt Изображения №4.1', 0, 0, 1, 1, 1, 1, '{}', 25),
(294, 23, 'first_second_img', 'image', 'Изображения №2.1', 0, 0, 1, 1, 1, 1, '{}', 12),
(295, 23, 'alt_first_second_img', 'text', 'Alt Изображения №2.1', 0, 0, 1, 1, 1, 1, '{}', 13),
(296, 23, 'second_second_img', 'image', 'Изображения №2.2', 0, 0, 1, 1, 1, 1, '{}', 14),
(297, 23, 'alt_second_second_img', 'text', 'Alt Изображения №2.2', 0, 0, 1, 1, 1, 1, '{}', 15),
(298, 26, 'first_second_img', 'image', 'Изображения №2.1', 0, 0, 1, 1, 1, 1, '{}', 17),
(299, 26, 'alt_first_second_img', 'text', 'Alt Изображения №2.1', 0, 0, 1, 1, 1, 1, '{}', 18),
(300, 26, 'first_third_img', 'image', 'Изображения №3.1', 0, 0, 1, 1, 1, 1, '{}', 22),
(301, 26, 'alt_first_fourth_img', 'text', 'Alt Изображения №4.1', 0, 0, 1, 1, 1, 1, '{}', 28),
(302, 26, 'first_fourth_img', 'image', 'Изображения №4.1', 0, 0, 1, 1, 1, 1, '{}', 27),
(303, 26, 'alt_first_third_img', 'text', 'Alt Изображения №3.1', 0, 0, 1, 1, 1, 1, '{}', 23),
(304, 26, 'first_fifth_img', 'image', 'Изображения №5.1', 0, 0, 1, 1, 1, 1, '{}', 32),
(305, 26, 'alt_first_fivth_img', 'text', 'Alt Изображения №5.1', 0, 0, 1, 1, 1, 1, '{}', 33);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-28 22:18:08', '2022-04-04 04:39:33'),
(7, 'contacts', 'contacts', 'Контакт', 'Контакты', 'voyager-location', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(8, 'partners', 'partners', 'Партнер', 'Партнеры', 'voyager-people', 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(9, 'f_a_q_s', 'f-a-q-s', 'Частые вопросы', 'Частые вопросы', 'voyager-question', 'App\\Models\\FAQ', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(10, 'abouts', 'abouts', 'О нас', 'О нас', 'voyager-company', 'App\\Models\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-29 11:01:43', '2022-03-29 11:05:17'),
(11, 'reviews', 'reviews', 'Отзыв', 'Отзывы', 'voyager-chat', 'App\\Models\\Review', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 03:41:10', '2022-03-30 03:43:42'),
(12, 'orders', 'orders', 'Заказать консультацию', 'Заказать консультацию', 'voyager-pen', 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 06:26:36', '2022-04-05 11:32:10'),
(13, 'services', 'services', 'Услуга', 'Услуги', 'voyager-star-two', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 07:34:06', '2022-03-30 07:36:04'),
(14, 'sliders', 'sliders', 'Слайдер', 'Слайдеры', 'voyager-images', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 08:25:10', '2022-03-30 08:27:01'),
(15, 'policies', 'policies', 'Политика без.', 'Политика без.', 'voyager-warning', 'App\\Models\\Policy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(16, 'consultations', 'consultations', 'Консультация', 'Консультация', 'voyager-sound', 'App\\Models\\Consultation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 09:57:08', '2022-04-08 11:56:50'),
(17, 'education', 'education', 'Образование', 'Образование', 'voyager-edit', 'App\\Models\\Education', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(19, 'education_content', 'education-content', 'Университет', 'Университеты', 'voyager-pen', 'App\\Models\\EducationContent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 05:31:57', '2022-04-04 05:34:44'),
(21, 'work', 'work', 'Страна', 'Страны', 'voyager-boat', 'App\\Models\\Work', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 08:17:53', '2022-04-04 08:24:31'),
(22, 'work_content', 'work-content', 'Работа', 'Работы', 'voyager-tools', 'App\\Models\\WorkContent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 08:21:55', '2022-04-04 08:27:24'),
(23, 'status', 'status', 'Налоговые статусы', 'Налоговые статусы', 'voyager-check', 'App\\Models\\Status', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 10:52:24', '2022-04-25 14:33:14'),
(24, 'st_document', 'st-document', 'Что дает гражданство', 'Что дает гражданство', 'voyager-question', 'App\\Models\\StDocument', NULL, 'App\\Http\\Controllers\\Voyager\\Controllers\\VoyagerStatusController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 11:13:19', '2022-04-04 11:41:28'),
(25, 'what', 'what', 'Что дает гражданство', 'Что дает гражданство', 'voyager-question', 'App\\Models\\What', NULL, '\\App\\Http\\Controllers\\Voyager\\Controllers\\VoyagerStatusController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 13:47:53', '2022-04-04 14:18:04'),
(26, 'residency', 'residency', 'Резидентство', 'Резидентство', 'voyager-people', 'App\\Models\\Residency', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-05 04:36:19', '2022-04-25 14:52:12'),
(27, 'citizenship', 'citizenship', 'Гражданство', 'Гражданство', 'voyager-person', 'App\\Models\\Citizenship', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-05 06:35:34', '2022-04-05 11:00:05'),
(28, 'document', 'document', 'Документ', 'Документы', 'voyager-documentation', 'App\\Models\\Document', NULL, '\\App\\Http\\Controllers\\Voyager\\Controllers\\VoyagerDocumentController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-05 07:29:51', '2022-04-05 07:44:16'),
(29, 'give', 'give', 'Что дает гражданство', 'Что дает гражданство', 'voyager-question', 'App\\Models\\Give', NULL, '\\App\\Http\\Controllers\\Voyager\\Controllers\\VoyagerGiveController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-05 07:33:55', '2022-04-05 07:52:27');

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

CREATE TABLE `document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `document`
--

INSERT INTO `document` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'основной заявитель', '<p>Чтобы претендовать на гражданство за инвестиции, основной заявитель должен быть в возрасте от 18 лет и соответствовать требованиям подачи заявления, изложенным ниже.</p>', '2022-04-05 08:01:00', '2022-04-12 14:08:10'),
(2, 'НЕСОВЕРШЕННОЛЕТНИЕ ДЕТИ', '<p>Чтобы претендовать на гражданство за инвестиции, основной заявитель должен быть в возрасте от 18 лет и соответствовать требованиям подачи заявления, изложенным ниже.</p>', '2022-04-05 08:05:00', '2022-04-12 14:06:53'),
(3, 'супруг(А)', '<p>Чтобы претендовать на гражданство за инвестиции, основной заявитель должен быть в возрасте от 18 лет и соответствовать требованиям подачи заявления, изложенным ниже.</p>', '2022-04-05 08:06:00', '2022-04-12 14:06:11'),
(4, 'Родители заявителя', '<p>Чтобы претендовать на гражданство Мальты за инвестиции, основной заявитель должен быть в возрасте от 18 лет и соответствовать требованиям подачи заявления, изложенным ниже.</p>', '2022-04-05 08:06:00', '2022-04-05 08:28:04');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `title`, `image`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Образование в Австрии', 'education/April2022/tmNxzioYxfde3DYqsvEe.jpeg', 'obrazovanie-v-avstrii', 1, 0, 'Австрия', 'Австрия', 'Австрия', '2022-04-04 05:22:00', '2022-04-27 08:13:14'),
(2, 'Образование в Великобритании', 'education/April2022/jruvMfuT4gplIYpQjkTp.jpeg', 'obrazovanie-v-velikobritanii', 1, 0, 'Великобритания', 'Великобритания', 'Великобритания', '2022-04-27 08:14:00', '2022-04-28 08:14:18'),
(3, 'Образование в Германии', 'education/April2022/seKE61o8MVCpt1Xv3PTc.jpeg', 'obrazovanie-v-germanii', 1, 0, 'Германия', 'Германия', 'Германия', '2022-04-27 08:16:52', '2022-04-27 08:16:52'),
(4, 'Образование в Греции', 'education/April2022/WWsXtJhtDezz8x5ZIFYl.jpeg', 'obrazovanie-v-grecii', 1, 0, 'Греция', 'Греция', 'Греция', '2022-04-27 08:27:25', '2022-04-27 08:27:25'),
(5, 'Образование в Италии', 'education/April2022/i0Ns8TYkk5Qy7nlchkKD.jpeg', 'obrazovanie-v-italii', 1, 0, 'Италия', 'Италия', 'Италия', '2022-04-27 08:34:49', '2022-04-27 08:34:49'),
(6, 'Образование в Канаде', 'education/April2022/Y7cWoxG3yWW8CkCgSCr4.jpeg', 'obrazovanie-v-kanade', 1, 0, 'Канада', 'Канада', 'Канада', '2022-04-27 08:35:00', '2022-04-27 08:36:00'),
(7, 'Образование в Польше', 'education/April2022/9TThhpArfcnQhqLqmwVX.jpeg', 'obrazovanie-v-polshe', 1, 0, 'Польша', 'Польша', 'Польша', '2022-04-27 08:37:29', '2022-04-27 08:37:29'),
(8, 'Образование в США', 'education/April2022/ovukMxdB4LdmH7rCIz8A.jpeg', 'obrazovanie-v-ssha', 1, 0, 'США', 'США', 'США', '2022-04-27 08:39:41', '2022-04-27 08:39:41'),
(9, 'Образование в Финляндии', 'education/April2022/Xn20wR8uDkC3hvUtbCoU.jpeg', 'obrazovanie-v-finlyandii', 1, 0, 'Финляндия', 'Финляндия', 'Финляндия', '2022-04-27 08:41:18', '2022-04-27 08:41:18'),
(10, 'Образование в Чехии', 'education/April2022/4jwLLof1mNHJR3YaRfE9.jpeg', 'obrazovanie-v-chehii', 1, 0, 'Чехия', 'Чехия', 'Чехия', '2022-04-27 08:42:23', '2022-04-27 08:42:23'),
(11, 'Образование в Южной Кореи', 'education/April2022/fu3l68N3pTBGk1O68yYb.jpeg', 'obrazovanie-v-yuzhnoj-korei', 1, 0, 'Южная Корея', 'Южная Корея', 'Южная Корея', '2022-04-27 08:45:44', '2022-04-27 08:45:44');

-- --------------------------------------------------------

--
-- Структура таблицы `education_content`
--

CREATE TABLE `education_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `education_content`
--

INSERT INTO `education_content` (`id`, `education_id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 1, 'education-content/April2022/S9zJo8wJq83na7pCn7Y4.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 07:02:45', '2022-04-29 07:02:45'),
(3, 1, 'education-content/April2022/SrrRM61PDU8eYTbVdc5E.jpeg', 'Существуют следующие ступени высшего образования в Австрии:', '<p>- Бакалавр. На него учатся 6 семестров.</p>\r\n<p>- Затем Мастер, еще 4 семестра, это образование получают на основании бакалавриата.</p>\r\n<p>- После Мастера следует Доктор, еще 6 семестров, с последующим присвоением степени доктора наук.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:09:00', '2022-04-29 07:11:19'),
(4, 1, 'education-content/April2022/nhRadqwFVxkSeCc7WFUj.jpeg', 'Высшее образование в Австрии дает иностранному студенту следующие преимущества:', '<p>&bull; Получение австрийского ВНЖ и посещение стран, входящих в Евросоюз, без оформления визы;</p>\r\n<p>&bull; Проживание в Австрии по ВНЖ в течение полугода после окончания учебы;</p>\r\n<p>&bull; Возможность подрабатывать в свободное от учебы время;&nbsp;</p>\r\n<p>&bull; Прохождение стажировок в европейских фирмах;&nbsp;</p>\r\n<p>&bull; Диплом, открывающий массу карьерных возможностей в Австрии и других европейских государствах.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:10:00', '2022-04-29 07:10:58'),
(5, 2, 'education-content/April2022/gmiLhtJzzIr6MLQ72LnM.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 07:22:16', '2022-04-29 07:22:16'),
(6, 2, 'education-content/April2022/25Hexmv4RaNw5rLi3FBV.jpeg', 'Поступление в британский вуз', '<p>Поступление в британский вуз многоэтапное, и из-за этого сложное. Сначала нужно пройти на подготовительную программу A-level, IB, Foundation или International Year One, пройти обучение, сдать выпускные экзамены, и только затем можно подавать документы в вуз. На бесплатной консультации специалисты Иммиграционного Центра &laquo;Resident&raquo; подробно объяснят, какие требования предъявляются к абитуриенту. Мы полностью курируем процесс поступления: подбираем вуз и программу, помогаем собрать пакет документов и подать заявление. Все для того, чтобы у вас освободилось время на самое важное: учебу и подготовку к экзаменам.</p>', '2022-04-29 07:23:37', '2022-04-29 07:23:37'),
(7, 2, 'education-content/April2022/KnxxNFV21HSZPiKPez8a.jpeg', 'Бакалавриат в Великобритании — Undergraduate', '<p>Бакалавриат (Bachelor&rsquo;s degree) &ndash; это первая ступень высшего образования в Британии. В Англии, Уэльсе и Северной Ирландии почти все программы бакалавриата, за исключением медицины и архитектуры, длятся 3 года. Базовые знания, которые составляют основу первого курса европейских и американских университетов, британские студенты получают на подготовительных курсах. А в Шотландии обучение может длиться 4 года. На бакалавриате студенты проводят как самостоятельные, так и групповые исследования. Преподаватели вовлекают учащихся в дискуссии, и этим способствуют развитию критического мышления. Бакалаврское образование в значительной степени ориентировано на практику, отвечающую запросам современного рынка труда.</p>', '2022-04-29 07:24:29', '2022-04-29 07:24:29'),
(8, 2, 'education-content/April2022/36cLCM9076hyBbJfaftl.jpeg', 'Магистратура в Великобритании — Postgraduate', '<p><strong>Магистратура (Master&rsquo;s degree)</strong> в вузах Великобритании представлена академическими программами и практико-ориентированными последипломными курсами. Для освоения большинства из них потребуется 1 год обучения (90 ECTS).</p>\r\n<p>Типы магистерских квалификаций:</p>\r\n<p>&bull;<strong> Academic master&rsquo;s degrees</strong>. На этих программах студенты углубленно изучают предметную область, которой занимались на бакалавриате. Подходят для построения как академической, так и профессиональной карьеры.</p>\r\n<p>&bull;<strong> Professional master&rsquo;s degrees.</strong> Отличаются узкой специализацией. Студенты приобретают профессиональные навыки, необходимые для будущей карьеры, зачастую с последующим трудоустройством. Сюда также можно отнести последипломные курсы переподготовки (conversion courses), позволяющие сменить специальность.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:26:39', '2022-04-29 07:26:39'),
(9, 2, 'education-content/April2022/hlHvbc9d0ZtOARzTBrPN.jpeg', 'Докторантура в Великобритании — Postgraduate', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 8pt; line-height: 15.6933px; font-size: 11pt; font-family: Calibri, sans-serif; color: #000000; text-align: justify;\"><span lang=\"RU\">Докторантура (PhD, DPhil) &mdash; это третья и заключительная ступень в системе высшего образования Великобритании, эквивалент кандидата наук. Существуют программы PhD по всем предметам. Длительность большинства из них составляет 3 года, в течение которых студенты занимаются собственным исследованием, консультируются с научным руководителем, публикуют статьи, участвуют в конференциях, иногда преподают для бакалавров. На завершающем этапе их ждет написание диссертации с последующей устной защитой. В некоторых случаях (New Route PhD scheme, Wellcome Trust Four year PhD scheme) программы докторантуры дополняются учебными курсами, что увеличивает срок обучения до 4 лет.</span></p>', '2022-04-29 07:28:43', '2022-04-29 07:28:43'),
(10, 3, 'education-content/April2022/XhjKsjjWNAK4T0bi5Xa7.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>\r\n<p>Бесплатное обучение и признанная репутация немецкого образования влечет за собой стабильно высокий конкурс. Для поступления нужны хорошие или отличные оценки. Самый строгий отбор &mdash; на медицинских и юридических направлениях.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:36:03', '2022-04-29 07:36:03'),
(11, 3, 'education-content/April2022/qKi4MYbSrDLTtdTDUdr3.jpeg', 'Foundation — Подготовительные программы в Германии', '<p>В Германии созданы специальные подготовительные учебные заведения для иностранных студентов &mdash; Studienkollegs. В случае, если система образования в родной стране учащегося не эквивалентна немецкой, посещение штудиенколлег до поступления в университет обязательно.&nbsp;</p>\r\n<p>Существует два типа таких учреждений: Universit&auml;tskollegs готовят к поступлению в любое высшее учебное заведение, Fachhochschulkollegs &mdash; только к поступлению в университеты прикладных наук.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:36:53', '2022-04-29 07:36:53'),
(12, 3, 'education-content/April2022/pfRLFFhTF0kZKBL9cRiR.jpeg', 'Колледж — профессиональное образование в Германии', '<p>&bull;<strong> Berufsakademien / Hochschulen dual</strong> предлагают студентам практически-ориентированные программы, состоящие из теоретического обучения и стажировок на рабочем месте в конкретной компании. Основное отличие от университета состоит в том, что трудовая практика студента напрямую включена в учебный процесс: план лекций и теоретических занятий разрабатывается совместно с работодателем. Обучение в среднем занимает три года. Теоретическая часть длится около трех месяцев, остальное время посвящено практике на рабочем месте. Помимо возможных стипендий, студенты получают зарплату в размере от 454 USD до 1,814 USD в месяц. После финального экзамена выпускники получают диплом о профессиональной подготовке или диплом бакалавра, если вуз имеет соответствующую аккредитацию.</p>\r\n<p>&bull; <strong>Fachschulen / Fachakademien</strong> обеспечивают продолжение профессионального образования для студентов, уже окончивших специализированный колледж. Некоторые вузы также требуют наличие опыта работы в выбранной сфере. Fachschulen предлагают программы следующих направлений: сельскохозяйственная экономика, дизайн, технологии, бизнес, социальная работа. Обучение обычно длится четыре года, бывает очным и заочным. Fachschulen выдает дипломы, эквивалентные магистерским и бакалаврским.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:38:00', '2022-04-29 07:57:27'),
(13, 3, 'education-content/April2022/haYH98Bevpry4ImKjxy4.jpeg', 'Бакалавриат — Undergraduate в Германии', '<p>Поступить на программы бакалавриата могут студенты, обладающие специальным разрешением &mdash; Hochschulzugangsberechtigung. Существует несколько путей поступления на бакалавриат после окончания полного среднего образования в РФ или СНГ: если обучение планируется на немецком языке, логичнее закончить годовую подготовку в Studienkolleg в Германии. Эквивалентом штудиенколлег является год учебы по релевантной специальности в вузе на родине, после которого можно поступать на первый курс бакалавриата в Германии на немецком или английском языках. Выпускникам российских колледжей в вузе придется отучиться два года.</p>', '2022-04-29 07:41:27', '2022-04-29 07:41:27'),
(14, 3, 'education-content/April2022/8cnH5lYPuDilbvRHdBzB.jpeg', 'Магистратура — Graduate/Postgraduate в Германии', '<p>Магистратура в немецких университетах обычно занимает 2 года. В Германии существует два вида магистратур: &laquo;последовательные&raquo; (consecutive) и &laquo;непоследовательные&raquo; (non-consecutive). Под первым вариантом понимается классическая модель обучения после бакалавриата в той же или смежной области, а под вторым &mdash; специализированные профессиональные курсы с целью повышения квалификации. Помимо этого, большинство немецких университетов предлагает программы на английском языке. Для поступления в магистратуру также необходимо пройти процедуру признания имеющегося диплома бакалавра. В случае отказа студенту необходимо пройти годовой курс подготовки в Studienkolleg.</p>', '2022-04-29 07:42:10', '2022-04-29 07:42:10'),
(15, 3, 'education-content/April2022/Q82RbpQ53K39b3ATmEkr.jpeg', 'Докторантура — Postgraduate в Германии', '<p>&bull; <strong>Традиционная докторантура</strong> предполагает работу над исследовательским проектом под руководством наставника (Doktorvater / Doktomutter) в университете, исследовательском институте или любой другой аккредитованной организации. Научная работа в конце обучения защищается устно перед комиссией из двух специалистов.</p>\r\n<p>&bull; <strong>Структурированная докторантура</strong> преподается в основном на английском языке и чаще предлагается частными университетами и международными компаниями. Здесь написание научной диссертации сопровождается дополнительными теоретическими занятиями и работой в других научных центрах. Для успешного завершения такой докторантуры необходимо набрать 180-240 кредитов. Помимо защиты диссертации, студенты сдают выпускные экзамены.</p>', '2022-04-29 07:43:09', '2022-04-29 07:43:09'),
(16, 4, 'education-content/April2022/lx2jAeL7fpGicyQC7GWe.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы</p>', '2022-04-29 07:45:13', '2022-04-29 07:45:13'),
(17, 4, 'education-content/April2022/Zgf7Yl7fIZOGvK5H2umB.jpeg', NULL, '<p>&bull; На момент поступления нет требования к владению греческого языка (первый год - языковой, потом экзамен по греческому языку).&nbsp;</p>\r\n<p>&bull; Любой иностранец, независимо от гражданства, и наличия высшего образования, может поступить учиться в ВУЗ в Греции бесплатно. Единственные условия - не иметь греческие корни (папа или мама), проучиться как минимум 2 последних класса в школе, которая выдала аттестат, окончить школу той страны, гражданство которой имеет иностранец (напр. гражданин США должен иметь аттестат американской школы в США, или американской школы в России, или другой стране)! Не распространяется на магистратуру и докторантуру.</p>\r\n<p>&bull; На момент поступления нет требования к владению греческого языка (первый год - языковой, потом экзамен по греческому языку). Любой иностранец, независимо от гражданства, и наличия высшего образования, может поступить учиться в ВУЗ в Греции бесплатно. Единственные условия - не иметь греческие корни (папа или мама), проучиться как минимум 2 последних класса в школе, которая выдала аттестат, окончить школу той страны, гражданство которой имеет иностранец (напр. гражданин США должен иметь аттестат американской школы в США, или американской школы в России, или другой стране)! Не распространяется на магистратуру и докторантуру.</p>\r\n<p>&nbsp;</p>', '2022-04-29 07:45:00', '2022-04-29 07:46:42'),
(18, 5, 'education-content/April2022/NHRuR6D9eXx7OcDQtbU0.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:00:04', '2022-04-29 08:00:04'),
(19, 5, 'education-content/April2022/nDWRO5lDc1exEJzCtDKz.jpeg', 'Программа Foundation', '<p>Foundation &ndash; это программа, которую необходимо пройти выпускнику российской школы, чтобы поступить в итальянский вуз. Программа соответствует 12-му году обучения и готовит будущего студента к новой системе образования. Бывает, как при государственных университетах, так и при частных.</p>', '2022-04-29 08:01:26', '2022-04-29 08:01:26'),
(20, 5, 'education-content/April2022/HhpnB7Z4RahiXIQvsdNx.jpeg', 'Высшее образование', '<p>Для получения высшего образование в Италии не обязательно знать итальянский, можно обучаться на английском языке. В качестве вступительного экзамена по английскому языку в Италии предпочтительным является экзамен</p>', '2022-04-29 08:09:00', '2022-04-29 08:09:38'),
(21, 6, 'education-content/April2022/v66E1er2pE11uGMSZ3AZ.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:11:52', '2022-04-29 08:11:52'),
(22, 6, 'education-content/April2022/vGdN2rl8uRg0V7wlk8sd.jpeg', 'Foundation — Подготовительные программы в Канаде', '<p>В случае, если квалификации студента недостаточно для поступления в колледж или на первый курс бакалавриата, ему рекомендуется пройти подготовку к вузу сроком до 1 года. Основная цель &mdash; помочь студенту в адаптации и изучении языка. Некоторые университеты предлагают собственные подготовительные курсы для иностранцев, но существуют также и независимые программы.</p>\r\n<p>Требования для Foundation в целом те же, что и при поступлении в колледж или университет. Разница лишь в том, что языковой критерий значительно ниже. Минимальный уровень владения английским или французским &mdash; B1 (Intermediate / Interm&eacute;diaire).</p>', '2022-04-29 08:12:58', '2022-04-29 08:12:58'),
(23, 6, 'education-content/April2022/AwHB8gegRfar37o4nv58.jpeg', 'Колледж — Профессиональное образование', '<p>В отличие от университетов, присваивающих студентам степени бакалавра, магистра или доктора, профессиональные колледжи выдают выпускникам дипломы или сертификаты о прохождении обучения или присвоении квалификации. Их главная особенность &mdash; полностью практико-ориентированное обучение, нацеленное на подготовку специалистов в таких сферах, как инжиниринг, информационные технологии, бухгалтерский учет, бизнес-администрирование, здравоохранение, архитектура и юриспруденция. Некоторые университетские колледжи также предлагают программы бакалавриата, в рамках которых студент проходит курсы и получает кредиты, учитываемые при поступлении в вуз. Однако образования на уровне колледжа уже достаточно, чтобы устроиться на работу, не требующую углубленного четырехгодичного курса обучения.</p>', '2022-04-29 08:16:12', '2022-04-29 08:16:12'),
(24, 6, 'education-content/April2022/178JLh8Tyd0mIL9nRC0C.jpeg', 'Бакалавриат в Канаде — Undergraduate', '<p>Бакалавриат является первой ступенью классического университетского образования, которая длится 3-4 года в зависимости от провинции. Поступить сюда можно как напрямую по окончании 11-летней школы, так и после канадского колледжа. Для иностранных абитуриентов также предусмотрена возможность провести первый год обучения в отдельном учреждении &mdash; международном колледже (international college) &mdash; с последующим зачислением на второй курс бакалавриата.</p>', '2022-04-29 08:17:55', '2022-04-29 08:17:55'),
(25, 6, 'education-content/April2022/ExzWEPHzWQFWrAlm0Mkj.jpeg', 'Магистратура в Канаде — Graduate / Postgraduate', '<p>Магистратура, в отличие от бакалавриата, предполагает более узкий предметный фокус. Абитуриент может выбрать между двумя типами магистерских программ: первый ориентирован на научную деятельность, второй &mdash; на освоение определенной профессии. В зависимости от программы обучение длится от 1 до 3 лет, после чего студенту присваивается степень магистра.</p>\r\n<p>Большинство программ предусматривают написание диссертации, обеспечивающей значительную часть кредитов. По окончании обучения магистранты сдают всесторонний экзамен (comprehensive examination), включающий как письменную, так и устную часть. Экзамен из-за своего объема может проходить в несколько дней. Каждая часть оценивается по принципу pass/fail (сдал/не сдал).</p>', '2022-04-29 08:18:00', '2022-04-29 08:19:48'),
(26, 6, 'education-content/April2022/j9n18vzNsDCaQhi6i4iu.jpeg', 'Докторантура в Канаде — Postgraduate', '<p>Как и во многих странах, наивысшим уровнем академической квалификации в Канаде считается степень PhD, которая приравнивается к степени кандидата наук в России и странах СНГ. При этом, помимо традиционного Academic PhD, доступны также профессиональные программы докторантуры: DBA и EdD. Обычно обучение занимает 3 года, но может доходить и до 6 лет.</p>\r\n<p>В отличие от США, докторантура в Канаде изначально сфокусирована на исследовательской деятельности. На первом году обучения студент прослушивает общие курсы по части техник и методологии исследований, педагогики и публикационной деятельности, сдает экзамен (comprehensive exam), а затем полностью сосредотачивается на диссертационном исследовании. В свою очередь, профессиональные программы включают много практики и тематических исследований и также завершаются защитой диссертацией.</p>', '2022-04-29 08:20:55', '2022-04-29 08:20:55'),
(27, 7, 'education-content/April2022/UZTiY4AMnq9k4JkVELwR.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>\r\n<p><strong>Языковые курсы в Польше.</strong></p>\r\n<p><strong>Зачисление в Лицеи в Варшаве (школьное образование).</strong></p>\r\n<p><strong>Зачисление в техникумы в Варшаве.</strong></p>\r\n<p><strong>Зачисление в Полицеальную школу.</strong></p>\r\n<p><strong>Зачисление в высшее учебное заведение в Польше.</strong></p>\r\n<p>&nbsp;</p>', '2022-04-29 08:25:02', '2022-04-29 08:25:02'),
(28, 8, 'education-content/April2022/LI7i71Hnjv3zA6iFzjB8.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:27:22', '2022-04-29 08:27:22'),
(29, 8, 'education-content/April2022/BTyStGELBw1qvJ3IcWGE.jpeg', 'Виза F-1', '<p>Это наиболее распространенный тип студенческих виз. Виза F-1 выдается лицам, желающим пройти академическое обучение в определенных образовательных учреждениях США, например, в аккредитованных колледжах и университетах, частных средних школах, или же заняться изучением английского языка в рамках соответствующих программ.</p>', '2022-04-29 08:28:02', '2022-04-29 08:28:02'),
(30, 8, 'education-content/April2022/967uB5FUgyDHhjJhraa9.jpeg', 'Виза M-1', '<p>Если планируется неакадемическое обучение, например, с целью повышения квалификации в США, понадобится виза M-1.</p>', '2022-04-29 08:28:41', '2022-04-29 08:28:41'),
(31, 8, 'education-content/April2022/rYvgOI1nvfhMCueNUgSo.jpeg', 'Профессиональное образование в США', '<p>Профессиональное образование в США получают в двухгодичных (муниципальных) колледжах. У них множество названий: two-year / community / junior / technical / city colleges. По окончании студентам вручают сертификаты, дипломы и степень ассоциата (associate degrees). Четырехгодичные колледжи отличаются тем, что в них присваивают и степень ассоциата, и бакалавра.</p>', '2022-04-29 08:30:06', '2022-04-29 08:30:06'),
(32, 8, 'education-content/April2022/4Cb757NphJubkn4xMlmy.jpeg', 'Бакалавриат в США', '<p>Бакалавриат &mdash; первая ступень высшего образования. Бакалаврскую степень (Bachelor&rsquo;s degree) в США можно получить в четырехгодичных учебных заведениях &mdash; колледжах и университетах. Каждый год на бакалавриате имеет свое название: freshman, sophomore, junior и senior years. После двух лет общеобразовательных курсов студент фокусируется на своей специальности &mdash; major. По итогам обучения выпускникам присваивают степени Bachelor of Arts (BA), Bachelor of Science (BS), или специализированные BFA, BSW, BEng, BSPA, BSN, BPhil, BArch, BDes.</p>', '2022-04-29 08:31:36', '2022-04-29 08:31:36'),
(33, 8, 'education-content/April2022/bn2GC8yt1HOHIfKb0JBw.jpeg', 'Graduate schools', '<p>В большинстве стран магистратуру и докторантуру называют postgraduate studies, но в США этот термин почти не используется. После окончания бакалавриата можно продолжить обучение в рамках graduate programs на базе graduate (grad) schools. Это высшие профессиональных учреждения, входящие в состав университета. Словом, postgraduate в Америке обычно называют выпускника докторантуры, который планирует строить дальнейшую академическую карьеру.</p>', '2022-04-29 08:32:05', '2022-04-29 08:32:05'),
(34, 8, 'education-content/April2022/sSROP403MKUARmGyr3s3.jpeg', 'Магистратура в США', '<p>Магистратура (Master&rsquo;s degree) &mdash; следующая за бакалавриатом ступень высшего образования. В США она существует в рамках graduate schools. В отличие от Великобритании, здесь нет чисто исследовательских магистерских программ. В Америке они имеют четкую структуру: студенты должны проходить курсы и регулярный контроль знаний &mdash; continuous assessment. В течение двух лет они выполняют различные задания, сдают экзамены, пишут эссе и получают оценки, из которых складывается средний балл диплома &mdash; GPA.</p>', '2022-04-29 08:34:27', '2022-04-29 08:34:27'),
(35, 8, 'education-content/April2022/nVtLlEEjqPZJDer1OdOQ.jpeg', 'Докторантура в США', '<p>Докторантура (Doctoral degree) в США &mdash; завершающая ступень высшего образования. Она, как и магистратура, не основывается только на исследовательской работе. Full-time программы в среднем длятся от 4 до 6 лет.</p>\r\n<p>&bull; <strong>The coursework stage (1-4 года).</strong> Первый этап посвящен привычным занятиям на курсах, которые делятся на основные (core classes) и факультативные (elective classes). Некоторые PhD программы также включают волонтерские и профессиональные стажировки, тренинги личностного роста, курсы иностранного языка. По завершении занятий студента ждет квалификационный экзамен &mdash; comprehensive exam.</p>\r\n<p>&bull; <strong>The dissertation stage (2-4 года)</strong>. Вторая часть программы начинается с утверждения темы исследования и написания dissertation prospectus &mdash; своего рода аннотации. Ее оценивает университет. За каждым студентом закрепляется несколько советников (committee of supervisors / advisors) со схожими научными интересами, один из которых назначается научным руководителем диссертации (principal advisor / dissertation director). На некоторых программах обязательно выполнять административную или преподавательскую работу и публиковаться в научных журналах. На завершающем этапе проходит презентация и устная защита диссертации.</p>\r\n<p>&nbsp;</p>', '2022-04-29 08:35:24', '2022-04-29 08:35:24'),
(36, 9, 'education-content/April2022/vwuSPtpXTiVDKF2t1tY9.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:39:33', '2022-04-29 08:39:33'),
(37, 9, 'education-content/April2022/vso4mHszEEaKOkJi8TVu.jpeg', 'Профессиональный колледж в Финляндии', '<p>Самые популярные профессии в колледже: машинист лесозаготовительной техники, автослесарь, слесарь по ремонту и обслуживанию оборудования, строитель домов, электромонтажник, младший медицинский работник, уборщик помещений, повар и другие. Сегодня в колледже учится около 14 тысяч студентов, из них больше шестисот человек русскоговорящих. Обучение длится 2-3 года. После учебы хорошие выпускники быстро находят применение своим навыкам.</p>\r\n<p>Университет прикладных наук.</p>\r\n<p>&bull; Специальности бакалавриата.</p>\r\n<p>&bull; Специальности магистратуры.</p>\r\n<p>&nbsp;</p>', '2022-04-29 08:43:13', '2022-04-29 08:43:13'),
(38, 10, 'education-content/April2022/5gMWSIhdyubjBOJ0h1Sl.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:47:11', '2022-04-29 08:47:11'),
(39, 10, 'education-content/April2022/zTqPRjvmd0JyDbdVHbbF.jpeg', 'Программа для творческих учеников средних школ после 9 класса', '<p>Выпускники 9-х классов средних школ, имеющие талант к рисунку, графике, дизайну, моделированию, могут продолжить специализированное обучение в средних творческих школах в Чехии. В рамках программы вы можете подать заявку в одну из нижеперечисленных школ.</p>\r\n<p>&bull; ШКОЛА ХУДОЖЕСТВЕННОГО И ПРОМЫШЛЕННОГО ДИЗАЙНА В ГОРОДЕ БЕХИНЕ.</p>\r\n<p>&bull; СРЕДНЯЯ ХУДОЖЕСТВЕННО-ПРОМЫШЛЕННАЯ ШКОЛА В СВЕТЛА-НАД- САЗАВОЙ.</p>\r\n<p>&nbsp;</p>', '2022-04-29 08:47:45', '2022-04-29 08:47:45'),
(40, 10, 'education-content/April2022/1o4LTGx0cV4be0jDw5y2.jpeg', 'Годовой курс чешского языка STUDUJ ONLINE 2022/2023', '<p>Хотите изучать чешский язык, но нет возможности приехать на год в Чехию? С нами эта проблема решается легко. За год вы научитесь говорить и думать по-чешски, и Чехия станет вам гораздо ближе! Программа включает изучение чешского языка с нуля до уровня B1 формой онлайн обучения.</p>', '2022-04-29 08:48:19', '2022-04-29 08:48:19'),
(41, 10, 'education-content/April2022/DLnE3qkNRFUXAk5KTJvE.jpeg', 'Годовой курс (фаундейшн) чешского языка с 1 сентября 2022/2023', '<p>Комплексное изучение чешского языка с квалифицированными преподавателями ВУЗа в чешской среде. Годовой курс языковой и профильной подготовки готовит иностранцев к поступлению на экономические и технические специальности, и дальнейшему обучению в чешских ВУЗах.</p>', '2022-04-29 08:52:57', '2022-04-29 08:52:57'),
(42, 10, 'education-content/April2022/DrKZo8nXkTAIyhWBzme0.jpeg', 'Программа «СТУДЕНТ» в Чехии', '<p>Подробную информацию о данной программе вы можете получить записавшись на консультацию к нашему специалисту.</p>', '2022-04-29 08:53:41', '2022-04-29 08:53:41'),
(43, 11, 'education-content/April2022/4FkTfjvNnrqBhlueKK7O.jpeg', NULL, '<p>Языковые курсы за границей, а также получение профильного образования - один из самых доступных способов въезда в страну. Процент одобрения студенческих виз довольно высок при соблюдении кандидатом всех требований к заявителю. Местное образование, полученное в той или иной стране, дает иностранцу ряд преимуществ при поиске работодателя по сравнению с другими кандидатами. Например, выпускникам ВУЗов часто дается право легального пребывания в стране на протяжении года (иногда больше), чтобы найти работу, а также снижаются требования по зарплате по сравнению с иностранцами, ищущими работодателя из-за границы.</p>', '2022-04-29 08:58:57', '2022-04-29 08:58:57'),
(44, 11, 'education-content/April2022/YWuWS2TNGxdN1XMHxrAL.jpeg', 'Виза С-3', '<p>Краткосрочная виза на три месяца. Эту визу необходимо оформлять, если планируется языковая стажировка только на один семестр. Продлить эту визу не возможно.</p>', '2022-04-29 09:02:00', '2022-04-29 09:03:12'),
(45, 11, 'education-content/April2022/0J7pMkuMdlnT6ip0Vw7A.jpeg', 'Виза С-3-1', '<p>Краткосрочная гостевая виза сроком от 61 до 90 дней, распространяется на краткосрочные языковые курсы.</p>\r\n<p>Срок рассмотрения от 5 рабочих дней.</p>', '2022-04-29 09:04:22', '2022-04-29 09:04:22'),
(46, NULL, 'education-content/April2022/jDnDNsw7jWICMPONFoxT.jpeg', 'Виза D-2', '<p>Долгосрочная учебная виза для студентов бакалавриата\\магистратуры\\докторантуры\\по обмену. Обычно выдается на год с дальнейшим продлением. Визу можно продлить, не выезжая из Корее.</p>', '2022-04-29 09:05:24', '2022-04-29 09:05:24'),
(47, 11, 'education-content/April2022/7RsYyxkytGk9I7y8gpat.jpeg', 'Виза D-4', '<p>Долгосрочная учебная виза, сроком от 90 дней, для студентов языковых курсов при университетах и студентов академических программ. При оформлении на два семестра или более получаете визу на полгода с возможностью последующего продления. Виза выдается по срокам, указанным в приглашении, на срок от 90 дней до 6 месяцев. При обучении более 6 месяцев виза продлевается. Срок действия студенческой визы определяется сроком обучения, подтвержденным со стороны учебного заведения. Однако при многолетнем обучении виза выдается на год и затем продлевается (это можно сделать без выезда из страны).</p>', '2022-04-29 09:06:49', '2022-04-29 09:06:49'),
(48, 11, 'education-content/April2022/2X0MOhATv6fKEHQRvSgi.jpeg', 'Виза D-10', '<p>Виза D-10 поиск работы после окончания Корейского университета или &laquo;Start-Up&raquo; виза. Выдается на 6 месяцев с возможностью дальнейшего продления. Для продления визы по поиску работы (если не нашлось подходящего места работы) необходимо предоставить документы, подтверждающие, что был на собеседованиях, проходил стажировку / получил отказ.</p>', '2022-04-29 09:07:23', '2022-04-29 09:07:23'),
(49, 11, 'education-content/April2022/pQu9DxWOigQLfsRBVeDq.jpeg', 'Языковые курсы в при университете', '<p>На языковые курсы при университете могут претендовать кандидаты в возрасте до 21 года либо если прошло не более 2х лет с момента окончания учебного заведения. Если клиент старше, то подбор происходит в индивидуальном порядке, и цена будет больше. Так же для кандидатов старшего возраста желательно наличие бакалавра у заявителя</p>', '2022-04-29 09:08:17', '2022-04-29 09:08:17'),
(50, 11, 'education-content/April2022/3io9gRbt5Hn0SP1a8x8l.jpeg', 'Обучение в университете', '<p>Зачисление в университет происходит 2 раза в год: 1 марта и 1 сентября. Срок рассмотрения документов ВУЗом в среднем составляет 5-6 мес.</p>\r\n<p>Требования к кандидату.</p>\r\n<p>&bull; владение корейским языком не ниже уровня топик 3 ИЛИ, если обучение на английском языке, IELTS не ниже 5,5.</p>\r\n<p>&bull; возрастных ограничений нет.</p>\r\n<p>&nbsp;</p>', '2022-04-29 09:09:33', '2022-04-29 09:09:33'),
(51, 11, 'education-content/April2022/XZLNiWgRO2sPnNK6zRzn.jpeg', 'Легализация в Корее после обучения', '<p>Как получить ВНЖ B Южной Корее студенту? Для тех, кто решил остаться жить B Корее после учёбы. Если кандидат не имеет 300.000-500.000$ для открытия бизнеса и инвестиций, не собирается стать супругой(ом) гражданина Кореи, не хочет получать докторскую степень, не является этническим корейцем, не обладает особыми талантами и тд. Есть вариант получения вида на жительство (F2-7) через бальную систему. Раньше это называли получением \"Golden Card\" Смена D2 на F2-7:1.</p>', '2022-04-29 09:10:19', '2022-04-29 09:10:19');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Можно ли оформиться в рассрочку?', '<p>Да, по ряду программ предоставляется рассрочка.</p>', '2022-03-29 10:39:00', '2022-04-12 10:09:58'),
(2, 'Есть ли у вас лицензия?', '<p>Да. Наши зарубежные партнеры &ndash; это лицензированные специалисты в сфере иммиграции.</p>\r\n<p>&nbsp;</p>', '2022-03-29 10:40:00', '2022-04-12 10:10:40'),
(3, 'Возможно ли оплатить после переезда или получения виз?', '<p>Да. Мы информационно поддерживаем клиента в течении первых 6 месяцев для успешной адаптации. Также предусмотрены и отдельные виды дополнительных услуг.</p>', '2022-03-29 10:40:00', '2022-04-12 10:11:44'),
(4, 'Работаете ли вы с лицами без гражданства (ЛБГ)?', '<p>К сожалению, нет.</p>', '2022-03-29 10:40:00', '2022-04-12 10:12:58'),
(5, 'Возможно ли оплатить после переезда или получения виз?', '<p>Да, по некоторым программа предусмотрен такой вид взаиморасчетов. Как правило это не более 20% от стоимости услуги.</p>', '2022-04-12 10:13:00', '2022-04-12 10:15:33');

-- --------------------------------------------------------

--
-- Структура таблицы `give`
--

CREATE TABLE `give` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `give`
--

INSERT INTO `give` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Свобода передвижения практически по всему миру для Вас и для Вашей семьи.', '<p>С паспортом Мальты Вы сможете свободно передвигаться по всем странам ЕС, США, Канада, Австралия, Новая Зеландия, Япония и т. д.</p>', '2022-04-05 08:03:00', '2022-04-05 08:29:56'),
(2, '«Запасной аэродром» в Европе.', '<p>С паспортом Мальты, как гражданин ЕС, Вы имеете право неограниченное количество времени проживать в любой стране ЕС.</p>', '2022-04-05 08:03:00', '2022-04-05 08:29:19'),
(3, 'Отсутствие персональных налогов.', '<p>Для тех, кто проживает на Мальте менее 183 дней в году и получает доходы с зарубежных источников на зарубежные банковские счета.</p>', '2022-04-05 08:03:00', '2022-04-05 08:29:51'),
(4, 'Спокойствие и уверенность в завтрашнем дне.', '<p>Полный набор прав гражданина ЕС &ndash; экономическая и политическая стабильность, социальные гарантии.</p>', '2022-04-05 08:04:00', '2022-04-05 08:29:43'),
(5, 'Удобные сроки.', '<p>Ускоренный процесс получения гражданства до 36 месяцев (далее опция V1), или стандартный процесс получения гражданства за 36 месяцев + (далее опция V2).</p>', '2022-04-05 08:04:00', '2022-04-05 08:29:47'),
(6, 'Пожизненный статус.', '<p>Получение пожизненного статуса гражданства сразу всеми членами семьи, включая родителей и прародителей.</p>', '2022-04-05 08:04:00', '2022-04-05 08:29:39'),
(7, 'Нет обязательств к проживанию.', '<p>Отсутствие обязательств к проживанию на Мальте (исключением является выполнение условий резидентства, то есть демонстрация прочной связи со страной на протяжении 36 месяцев или менее 36 месяцев &ndash; в зависимости от выбранной опции).</p>', '2022-04-05 08:04:00', '2022-04-05 08:29:35'),
(8, 'Стоимость.', '<p>Невысокаястоимость оформления.</p>', '2022-04-05 08:05:00', '2022-04-12 12:01:29'),
(10, 'БЕЗВИЗОВЫЙ В БОЛЕЕ ЧЕМ 100 СТРАН МИРА', '<p>Безвизовое посещение ста с лишним стран мира, включая Гонконг, Таиланд, Бразилию, Японию и другие развитые страны.</p>', '2022-04-12 13:11:00', '2022-04-26 12:21:50'),
(11, 'ГРАЖДАНСТВО ДЛЯ ВСЕЙ СЕМЬИ', '<p>Вместе с основным заявителем, выступающим в роли инвестора, гражданство одновременно получат и члены его семьи.</p>', '2022-04-12 13:13:51', '2022-04-12 13:13:51'),
(12, 'УДОБНЫЕ УСЛОВИЯ ДЛЯ ИНВЕСТИРОВАНИЯ', '<p>Все инвестиции проводятся в долларах США без риска использования национальной валюты и без необходимости подтверждения происхождения средств</p>', '2022-04-12 13:14:27', '2022-04-12 13:14:27'),
(13, 'ВЫГОДА ДЛЯ ВАШЕГО БИЗНЕСА', '<p>Созданные правительством Турции специальные торгово-промышленные зоны, пониженные налоговые ставки и другие щедрые бонусы, государственные программы по развитию и поддержке бизнеса делают программу гражданства Турции выгодной как лично для инвестора, так и с точки зрения структурирования бизнеса</p>', '2022-04-12 13:17:28', '2022-04-12 13:17:28'),
(14, 'Безвизовый въезд в 147 стран мира', '<p>Безвизовый въезд в Европу &ndash; страны шенгенской зоны, а также Великобританию, Болгарию, Хорватию, Кипр, Румынию, Россию и другие страны мира</p>', '2022-04-12 14:29:29', '2022-04-12 14:29:29'),
(15, 'Получает сразу вся семья', '<p>Одновременно с основным заявителем гражданство получат и члены его семьи, включая супругу и несовершеннолетних детей</p>', '2022-04-12 14:30:03', '2022-04-12 14:30:03'),
(16, 'Лучшая в мире медицина', '<p>Знаменитая израильская медицина самого высокого уровня бесплатна для граждан Израиля.</p>', '2022-04-12 14:30:00', '2022-04-12 14:30:44'),
(17, 'Комфорт для бизнеса и безопасность для семьи', '<p>Возможности налогового планирования для новых граждан Израиля. Безопасное будущее для всей семьи.</p>', '2022-04-12 14:32:32', '2022-04-12 14:32:32'),
(18, NULL, '<p>Паспорт Антигуа и Барбуда даёт возможность путешествовать не открывая виз виз по 149 странам мира, включая страны Европейского Союза, Великобританию, Ирландию, Карибы и большую часть стран Содружества Наций.</p>', '2022-04-17 19:52:25', '2022-04-17 19:52:25'),
(19, NULL, '<p>Ваши доходы не облагаются налогами, в том числе имеющееся состояние или наследство</p>', '2022-04-17 19:52:59', '2022-04-17 19:52:59'),
(20, NULL, '<p>Срок рассмотрения заявления на гражданство Антигуа и Барбуда - 5 месяцев</p>', '2022-04-17 19:53:21', '2022-04-17 19:53:21'),
(21, 'Безвизовый въезд в 124 страны мира', '<p>Безвизовый̆ въезд в страны ЕС, входящие в шенгенскую зону, Болгарию, Хорватию, Кипр, Румынию, Россию, Турцию и другие государства.</p>', '2022-04-19 13:52:25', '2022-04-19 13:52:25'),
(22, 'Сразу для всей семьи', '<p>Вместе с инвестором гражданство одновременно получат и члены его семьи.</p>', '2022-04-19 13:52:47', '2022-04-19 13:52:47'),
(23, 'Лояльные условия', '<p>Отсутствуют требования к проживанию в Черногории и знанию языка. Не требуется отказ от имеющегося гражданства.</p>', '2022-04-19 13:53:09', '2022-04-19 13:53:09'),
(24, 'Налоговые преимущества', '<p>Налоги уплачиваются только с доходов, полученных на территории Черногории. Нет налога на наследство, подарки и доход от страхования жизни и имущества.</p>', '2022-04-19 13:53:32', '2022-04-19 13:53:32'),
(25, NULL, NULL, '2022-04-19 14:02:00', '2022-04-22 11:29:46'),
(26, 'Вануату не облагает налогами доход, богатство или наследство.', NULL, '2022-04-19 14:03:11', '2022-04-19 14:03:11'),
(27, 'Чтобы получить паспорт Вануату, нет необходимости посещать Вануату, тем не менее, все претенденты являются объектами строгой проверки данных.', NULL, '2022-04-19 14:03:00', '2022-04-22 11:26:53'),
(28, 'Наиболее выгодная программа инвестиционного гражданства.', NULL, '2022-04-19 14:03:38', '2022-04-19 14:03:38'),
(29, 'Возможность получения паспорта за 60 дней.', NULL, '2022-04-19 14:03:52', '2022-04-19 14:03:52'),
(30, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Паспорт Гренады позволяет путешествовать без виз по 137 странам, включая страны Европейского Союза, Россию, Великобританию, Ирландию, Карибы и большую часть стран Содружества Наций, а также Китай.</p>', '2022-04-19 14:04:24', '2022-04-19 14:04:24'),
(31, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Гренада не облагает налогами доход, богатство или наследство.</p>', '2022-04-19 14:04:00', '2022-04-19 14:05:16'),
(32, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Для того чтобы получить паспорт Гренады, нет необходимости посещать Гренаду, тем не менее, все претенденты являются объектами строгой проверки данных.</p>', '2022-04-19 14:05:06', '2022-04-19 14:05:06'),
(33, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Наиболее выгодная программа для большой семьи.</p>', '2022-04-19 14:05:28', '2022-04-19 14:05:28'),
(34, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Возможность получения визы в США по категории <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">E</span>2.</p>', '2022-04-19 14:05:37', '2022-04-19 14:05:37'),
(35, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Одна из 5 стран в мире, граждане которой имеют право на безвизовый въезд в Китай.</p>', '2022-04-19 14:05:47', '2022-04-19 14:05:47'),
(36, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Период рассмотрения заявления на гражданство - 3 месяца.</p>', '2022-04-19 14:05:56', '2022-04-19 14:05:56'),
(37, NULL, '<p>Паспорт Доминики даёт возможность путешествовать без виз по 136 странам, включая Великобританию, Карибы и страны Содружества наций. Доминика имеет безвизовый доступ к Шенгену и ЕС.</p>', '2022-04-19 14:06:00', '2022-04-28 08:04:04'),
(38, NULL, '<p>Доминика, не требует постоянного проживания и не облагает налогами доход, богатство или наследство.</p>', '2022-04-19 14:06:00', '2022-04-28 08:05:19'),
(39, NULL, '<p>Новая процедура избавляет от необходимости проходить интервью, но Правительство оставляет за собой право пригласить на &laquo;online&raquo; собеседование отдельных кандидатов на экономическое гражданство.</p>', '2022-04-19 14:07:27', '2022-04-19 14:07:27'),
(40, NULL, '<p>Период рассмотрения заявления на гражданство &ndash; 90 дней.</p>', '2022-04-19 14:07:00', '2022-04-28 08:04:49'),
(41, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Путешествия без визы в 153 страны, включая все страны Европейского Союза, Россию, Великобританию, Ирландию, Карибы и большую часть стран Содружества Наций. Граждане Сент-Китс и Невис легко получают долгосрочные визы в Соединенные Штаты Америки.</p>', '2022-04-19 14:08:09', '2022-04-19 14:08:09'),
(42, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Нет требований по проживанию, и нет налогов на частную прибыль, налога на богатство и налога на наследство.</p>', '2022-04-19 14:08:19', '2022-04-19 14:08:19'),
(43, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Для того чтобы претендовать на гражданство, необязательно лично посещать Сент-Китс и Невис, хотя все претенденты являются субъектом всесторонней проверки данных.</p>', '2022-04-19 14:08:30', '2022-04-19 14:08:30'),
(44, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Период рассмотрения заявления на гражданство - 3 месяца.</p>', '2022-04-19 14:08:40', '2022-04-19 14:08:40'),
(45, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Путешествия без визы в 121 страну, включая все страны Европейского Союза, Великобританию, Ирландию, Карибы и большую часть стран Содружества Наций. Граждане Сент-Люсии легко получают долгосрочные визы в Соединенные Штаты Америки.</p>', '2022-04-19 14:09:04', '2022-04-19 14:09:04'),
(46, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Нет требований по проживанию, и нет налогов на частную прибыль, налога на богатство и налога на наследство.</p>', '2022-04-19 14:09:28', '2022-04-19 14:09:28'),
(47, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Для того чтобы претендовать на гражданство, необязательно лично посещать Сент-Люсию, хотя все претенденты являются субъектом всесторонней проверки данных.</p>', '2022-04-19 14:09:40', '2022-04-19 14:09:40'),
(48, NULL, '<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Период рассмотрения заявления на гражданство - 3 месяца</p>', '2022-04-19 14:09:51', '2022-04-19 14:09:51');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(2, 'top_header_menu', '2022-03-29 07:46:12', '2022-03-29 07:46:12'),
(3, 'header_menu', '2022-03-30 07:49:08', '2022-03-30 07:49:08');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель Управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-03-28 22:18:07', '2022-03-29 04:31:42', 'voyager.dashboard', 'null'),
(2, 1, 'Медиа файлы', '', '_self', 'voyager-images', '#000000', 5, 6, '2022-03-28 22:18:07', '2022-04-05 07:54:08', 'voyager.media.index', 'null'),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', 5, 5, '2022-03-28 22:18:07', '2022-04-05 07:54:08', 'voyager.users.index', 'null'),
(4, 1, 'Роли', '', '_self', 'voyager-lock', '#000000', 5, 4, '2022-03-28 22:18:07', '2022-04-05 07:54:08', 'voyager.roles.index', 'null'),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 16, '2022-03-28 22:18:07', '2022-04-05 07:54:14', NULL, ''),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', '#000000', NULL, 13, '2022-03-28 22:18:07', '2022-04-05 07:54:14', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-03-28 22:18:07', '2022-04-05 07:27:09', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-03-28 22:18:07', '2022-04-05 07:54:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-03-28 22:18:07', '2022-04-05 07:54:08', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', 15, 5, '2022-03-28 22:18:07', '2022-03-30 09:59:03', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 5, 8, '2022-03-28 22:18:08', '2022-04-05 07:54:08', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 5, 7, '2022-03-28 22:18:08', '2022-04-05 07:54:08', 'voyager.posts.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', 15, 3, '2022-03-28 22:18:08', '2022-03-30 09:59:03', 'voyager.pages.index', 'null'),
(14, 1, 'Контакты', '', '_self', 'voyager-location', NULL, 15, 4, '2022-03-29 04:41:32', '2022-03-30 09:59:03', 'voyager.contacts.index', NULL),
(15, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 15, '2022-03-29 04:42:11', '2022-04-05 07:54:14', NULL, ''),
(16, 2, 'Главная', '/', '_self', NULL, '#000000', NULL, 5, '2022-03-29 07:46:37', '2022-03-29 07:46:37', NULL, ''),
(17, 2, 'О нас', 'about', '_self', NULL, '#000000', NULL, 6, '2022-03-29 07:46:52', '2022-03-29 07:46:52', NULL, ''),
(18, 2, 'Партнерство', 'partners', '_self', NULL, '#000000', NULL, 7, '2022-03-29 07:48:27', '2022-03-29 07:48:27', NULL, ''),
(19, 2, 'Частые вопросы', '/#questions', '_self', NULL, '#000000', NULL, 8, '2022-03-29 07:48:46', '2022-04-28 13:55:05', NULL, ''),
(20, 2, 'Отзывы', 'reviews', '_self', NULL, '#000000', NULL, 9, '2022-03-29 07:48:59', '2022-03-29 07:48:59', NULL, ''),
(21, 2, 'Контакты', 'contacts', '_self', NULL, '#000000', NULL, 10, '2022-03-29 07:49:13', '2022-03-29 07:49:13', NULL, ''),
(22, 1, 'Партнеры', '', '_self', 'voyager-people', NULL, NULL, 12, '2022-03-29 10:24:31', '2022-04-05 07:54:14', 'voyager.partners.index', NULL),
(23, 1, 'Частые вопросы', '', '_self', 'voyager-question', NULL, NULL, 11, '2022-03-29 10:38:26', '2022-04-05 07:54:14', 'voyager.f-a-q-s.index', NULL),
(24, 1, 'О нас', '', '_self', 'voyager-company', NULL, NULL, 10, '2022-03-29 11:01:43', '2022-04-05 07:54:14', 'voyager.abouts.index', NULL),
(25, 1, 'Отзывы', '', '_self', 'voyager-chat', NULL, NULL, 8, '2022-03-30 03:41:10', '2022-04-05 07:54:14', 'voyager.reviews.index', NULL),
(26, 1, 'Заказать консультацию', '', '_self', 'voyager-pen', NULL, 27, 1, '2022-03-30 06:26:36', '2022-03-30 06:28:15', 'voyager.orders.index', NULL),
(27, 1, 'Почта', '', '_self', 'voyager-mail', '#000000', NULL, 14, '2022-03-30 06:28:11', '2022-04-05 07:54:14', NULL, ''),
(28, 1, 'Услуги', '', '_self', 'voyager-star-two', NULL, NULL, 9, '2022-03-30 07:34:06', '2022-04-05 07:54:14', 'voyager.services.index', NULL),
(29, 3, 'Гражданство', 'citizenship', '_self', NULL, '#000000', NULL, 1, '2022-03-30 07:49:33', '2022-04-04 04:41:54', NULL, ''),
(30, 3, 'Резидентство', 'residency', '_self', NULL, '#000000', NULL, 2, '2022-03-30 07:49:42', '2022-04-26 11:18:57', NULL, ''),
(31, 3, 'Налоговые статусы', 'status', '_self', NULL, '#000000', NULL, 3, '2022-03-30 07:49:53', '2022-04-26 11:47:35', NULL, ''),
(32, 3, 'Работа', 'work', '_self', NULL, '#000000', NULL, 4, '2022-03-30 07:50:05', '2022-04-26 11:47:35', NULL, ''),
(33, 3, 'Образование', 'education', '_self', NULL, '#000000', NULL, 5, '2022-03-30 07:50:14', '2022-04-26 11:47:35', NULL, ''),
(34, 3, 'Доп услуги', 'services', '_self', NULL, '#000000', NULL, 6, '2022-03-30 07:50:28', '2022-04-26 11:47:35', NULL, ''),
(35, 1, 'Главная страница', '', '_self', 'voyager-home', '#000000', NULL, 2, '2022-03-30 08:20:10', '2022-03-30 08:20:19', NULL, ''),
(36, 1, 'Слайдеры', '', '_self', 'voyager-images', NULL, 35, 1, '2022-03-30 08:25:10', '2022-03-30 08:25:39', 'voyager.sliders.index', NULL),
(37, 1, 'Политика без.', '', '_self', 'voyager-warning', NULL, 15, 2, '2022-03-30 08:54:23', '2022-03-30 09:59:03', 'voyager.policies.index', NULL),
(38, 1, 'Консультация', '', '_self', 'voyager-sound', NULL, 15, 1, '2022-03-30 09:57:08', '2022-03-30 09:59:03', 'voyager.consultations.index', NULL),
(39, 1, 'Образование', '', '_self', 'voyager-edit', NULL, 42, 1, '2022-04-04 05:21:42', '2022-04-04 05:35:18', 'voyager.education.index', NULL),
(41, 1, 'Университеты', '', '_self', 'voyager-pen', NULL, 42, 2, '2022-04-04 05:31:57', '2022-04-04 05:35:19', 'voyager.education-content.index', NULL),
(42, 1, 'Образование', '', '_self', 'voyager-edit', '#000000', NULL, 7, '2022-04-04 05:35:14', '2022-04-05 07:54:01', NULL, ''),
(44, 1, 'Страны', '', '_self', 'voyager-boat', '#000000', 46, 1, '2022-04-04 08:17:53', '2022-04-04 08:25:26', 'voyager.work.index', 'null'),
(45, 1, 'Работы', '', '_self', 'voyager-tools', NULL, 46, 2, '2022-04-04 08:21:55', '2022-04-04 08:25:33', 'voyager.work-content.index', NULL),
(46, 1, 'Работа', '', '_self', 'voyager-boat', '#000000', NULL, 6, '2022-04-04 08:24:54', '2022-04-05 07:27:19', NULL, ''),
(47, 1, 'Налоговые статусы', '', '_self', 'voyager-check', NULL, 49, 2, '2022-04-04 10:52:24', '2022-04-05 07:27:18', 'voyager.status.index', NULL),
(49, 1, 'Налоговые статусы', '', '_self', 'voyager-check', '#000000', NULL, 5, '2022-04-04 11:16:12', '2022-04-05 07:27:19', NULL, ''),
(50, 1, 'Что дает гражданство', '', '_self', 'voyager-question', NULL, 49, 1, '2022-04-04 13:47:53', '2022-04-05 07:27:18', 'voyager.what.index', NULL),
(51, 1, 'Резидентство', '', '_self', 'voyager-people', NULL, NULL, 4, '2022-04-05 04:36:19', '2022-04-05 07:27:19', 'voyager.residency.index', NULL),
(52, 1, 'Гражданство', '', '_self', 'voyager-person', NULL, 53, 3, '2022-04-05 06:35:34', '2022-04-05 07:54:18', 'voyager.citizenship.index', NULL),
(53, 1, 'Гражданство', '', '_self', 'voyager-person', '#000000', NULL, 3, '2022-04-05 07:27:02', '2022-04-05 07:27:18', NULL, ''),
(54, 1, 'Документы', '', '_self', 'voyager-documentation', NULL, 53, 2, '2022-04-05 07:29:51', '2022-04-05 07:54:18', 'voyager.document.index', NULL),
(55, 1, 'Что дает гражданство', '', '_self', 'voyager-question', NULL, 53, 1, '2022-04-05 07:33:55', '2022-04-05 07:54:18', 'voyager.give.index', NULL),
(56, 3, 'Канада', 'citizenship/grazhdanstvo-kanady', '_self', NULL, '#000000', 29, 1, '2022-04-26 09:18:33', '2022-04-26 11:51:48', NULL, ''),
(57, 3, 'Турция', 'citizenship/grazhdanstva-turcii', '_self', NULL, '#000000', 29, 2, '2022-04-26 11:17:35', '2022-04-26 11:52:08', NULL, ''),
(58, 3, 'Чили', 'citizenship/grazhdanstvo-chili', '_self', NULL, '#000000', 29, 3, '2022-04-26 11:18:23', '2022-04-26 11:52:17', NULL, ''),
(59, 3, 'Израиль', 'citizenship/grazhdanstvo-izrailya', '_self', NULL, '#000000', 29, 4, '2022-04-26 11:18:52', '2022-04-26 11:52:37', NULL, ''),
(60, 3, 'Антигуа и Барбуда', 'citizenship/grazhdanstvo-antigua-i-barbuda', '_self', NULL, '#000000', 29, 5, '2022-04-26 11:19:23', '2022-04-26 11:52:57', NULL, ''),
(61, 3, 'Вануату', 'citizenship/grazhdanstvo-vanuatu', '_self', NULL, '#000000', 29, 6, '2022-04-26 11:19:56', '2022-04-26 11:53:26', NULL, ''),
(62, 3, 'Гренада', 'citizenship/grazhdanstvo-grenady', '_self', NULL, '#000000', 29, 7, '2022-04-26 11:20:25', '2022-04-26 11:53:38', NULL, ''),
(63, 3, 'Доминика', 'citizenship/grazhdanstvo-dominiki', '_self', NULL, '#000000', 29, 8, '2022-04-26 11:21:01', '2022-04-26 11:53:50', NULL, ''),
(65, 3, 'Сент-Китс и Невис', 'citizenship/grazhdanstvo-sent-kits-i-nevis', '_self', NULL, '#000000', 29, 9, '2022-04-26 11:22:10', '2022-04-26 11:54:07', NULL, ''),
(66, 3, 'Сент-Люсия', 'citizenship/grazhdanstvo-sent-lyusii', '_self', NULL, '#000000', 29, 10, '2022-04-26 11:22:39', '2022-04-26 11:54:31', NULL, ''),
(67, 3, 'Черногория', 'citizenship/grazhdanstvo-chernogorii', '_self', NULL, '#000000', 29, 11, '2022-04-26 11:23:05', '2022-04-26 11:54:49', NULL, ''),
(68, 3, 'Мальта CDI', 'citizenship/grazhdanstvo-malty-cdi', '_self', NULL, '#000000', 29, 12, '2022-04-26 11:23:38', '2022-04-29 09:25:48', NULL, ''),
(69, 3, 'Австрия', 'residency/rezidentstvo-avstrii', '_self', NULL, '#000000', 30, 1, '2022-04-26 11:25:28', '2022-04-29 09:28:05', NULL, ''),
(70, 3, 'Андорра', 'residency/rezidentstvo-andorry', '_self', NULL, '#000000', 30, 2, '2022-04-26 11:25:48', '2022-04-29 09:28:29', NULL, ''),
(71, 3, 'Великобритания', 'residency/rezidentstvo-velikobritanii', '_self', NULL, '#000000', 30, 3, '2022-04-26 11:26:18', '2022-04-29 09:28:40', NULL, ''),
(72, 3, 'Греция', 'residency/rezidentstvo-grecii', '_self', NULL, '#000000', 30, 5, '2022-04-26 11:26:40', '2022-04-29 09:28:53', NULL, ''),
(73, 3, 'Испания', 'residency/rezidentstvo-ispanii', '_self', NULL, '#000000', 30, 7, '2022-04-26 11:27:00', '2022-04-29 09:29:07', NULL, ''),
(74, 3, 'Италия', 'residency/rezidentstvo-italii', '_self', NULL, '#000000', 30, 8, '2022-04-26 11:27:18', '2022-04-29 09:29:19', NULL, ''),
(75, 3, 'Канада', 'residency/rezidentstvo-kanady', '_self', NULL, '#000000', 30, 9, '2022-04-26 11:27:34', '2022-04-29 09:29:40', NULL, ''),
(76, 3, 'Кипр', 'residency/rezidentstvo-kipra', '_self', NULL, '#000000', 30, 10, '2022-04-26 11:30:01', '2022-04-29 09:30:38', NULL, ''),
(77, 3, 'Мальта (MGRP)', 'residency/rezidentstvo-malty-mgrp', '_self', NULL, '#000000', 30, 12, '2022-04-26 11:30:22', '2022-04-26 12:22:30', NULL, ''),
(78, 3, 'Мальта', 'residency/rezidentstvo-malty', '_self', NULL, '#000000', 30, 11, '2022-04-26 11:30:51', '2022-04-29 09:30:51', NULL, ''),
(80, 3, 'Монако', 'residency/rezidentstvo-monako', '_self', NULL, '#000000', 30, 13, '2022-04-26 11:31:51', '2022-04-29 09:31:22', NULL, ''),
(81, 3, 'ОАЭ (для пенсионеров)', 'residency/rezidentstvo-oae-dlya-pensionerov', '_self', NULL, '#000000', 30, 15, '2022-04-26 11:32:23', '2022-04-29 09:31:51', NULL, ''),
(82, 3, 'ОАЭ', 'residency/rezidentstvo-oae', '_self', NULL, '#000000', 30, 14, '2022-04-26 11:42:54', '2022-04-29 09:31:38', NULL, ''),
(83, 3, 'Португалия', 'residency/rezidentstvo-portugalii', '_self', NULL, '#000000', 30, 16, '2022-04-26 11:43:09', '2022-04-29 09:32:02', NULL, ''),
(84, 3, 'США (программа L-1)', 'residency/rezidentstvo-ssha-programma-l-1', '_self', NULL, '#000000', 30, 17, '2022-04-26 11:43:28', '2022-04-29 09:32:16', NULL, ''),
(85, 3, 'США (программа E-2)', 'residency/rezidentstvo-ssha-programma-e-2', '_self', NULL, '#000000', 30, 18, '2022-04-26 11:44:02', '2022-04-29 09:32:35', NULL, ''),
(86, 3, 'США (программа ЕВ-5)', 'residency/rezidentstvo-ssha-programma-ev-5', '_self', NULL, '#000000', 30, 20, '2022-04-26 11:44:29', '2022-05-24 07:20:52', NULL, ''),
(87, 3, 'Таиланда', 'residency/rezidentstvo-tailanda', '_self', NULL, '#000000', 30, 21, '2022-04-26 11:44:45', '2022-05-24 07:20:52', NULL, ''),
(88, 3, 'Франция', 'residency/rezidentstvo-francii', '_self', NULL, '#000000', 30, 22, '2022-04-26 11:45:02', '2022-05-24 07:20:52', NULL, ''),
(89, 3, 'Чили', 'residency/rezidentstvo-chili', '_self', NULL, '#000000', 30, 23, '2022-04-26 11:45:27', '2022-05-24 07:20:52', NULL, ''),
(90, 3, 'Швейцария', 'residency/rezidentstvo-shvejcarii', '_self', NULL, '#000000', 30, 24, '2022-04-26 11:45:43', '2022-05-24 07:20:52', NULL, ''),
(91, 3, 'Эстония', 'residency/rezidentstvo-estonii', '_self', NULL, '#000000', 30, 25, '2022-04-26 11:46:09', '2022-05-24 07:20:32', NULL, ''),
(92, 3, 'Греция (ПМЖ)', 'residency/rezidentstvo-grecii-pmzh', '_self', NULL, '#000000', 30, 6, '2022-04-26 11:46:27', '2022-04-29 09:30:22', NULL, ''),
(93, 3, 'Новой Зеландия', 'residency/rezidentstvo-novoj-zelandii', '_self', NULL, '#000000', 30, 26, '2022-04-26 11:46:47', '2022-05-24 07:20:32', NULL, ''),
(94, 3, 'Великобритания Tier 1', 'residency/rezidentstvo-velikobritanii-tier-1', '_self', NULL, '#000000', 30, 4, '2022-04-26 11:47:17', '2022-04-26 12:21:49', NULL, ''),
(95, 3, 'Мальта', 'status/nalogovye-statusy-malty', '_self', NULL, '#000000', 31, 1, '2022-04-26 11:48:31', '2022-05-04 06:42:00', NULL, ''),
(96, 3, 'Андорра', 'status/nalogovye-statusy-andorry', '_self', NULL, '#000000', 31, 2, '2022-04-26 11:48:45', '2022-05-04 06:42:10', NULL, ''),
(97, 3, 'Великобритания', 'status/nalogovye-statusy-velikobritanii', '_self', NULL, '#000000', 31, 3, '2022-04-26 11:49:43', '2022-05-04 06:42:26', NULL, ''),
(98, 3, 'Италия', 'status/nalogovye-statusy-italii', '_self', NULL, '#000000', 31, 4, '2022-04-26 11:49:58', '2022-05-04 06:42:37', NULL, ''),
(99, 3, 'Кипр', 'status/nalogovye-statusy-kipra', '_self', NULL, '#000000', 31, 5, '2022-04-26 11:50:15', '2022-05-04 06:42:53', NULL, ''),
(100, 3, 'ОАЭ', 'status/nalogovye-statusy-oae', '_self', NULL, '#000000', 31, 6, '2022-04-26 11:50:32', '2022-05-04 06:43:12', NULL, ''),
(101, 3, 'Швейцария', 'status/nalogovye-statusy-shvejcarii', '_self', NULL, '#000000', 31, 7, '2022-04-26 11:50:51', '2022-05-04 06:41:23', NULL, ''),
(102, 3, 'США (программа ЕВ-3)', 'https://resident-center.kz/residency/rezidentstvo-ssha-programma-ev-3', '_self', NULL, '#000000', 30, 19, '2022-05-24 07:20:20', '2022-05-24 07:21:00', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2022_03_29_103752_create_contacts_table', 3),
(30, '2022_03_29_162130_create_partners_table', 4),
(31, '2022_03_29_163638_create_f_a_q_s_table', 5),
(32, '2022_03_29_165358_create_abouts_table', 6),
(33, '2022_03_30_093613_create_reviews_table', 7),
(34, '2022_03_30_122422_create_orders_table', 8),
(35, '2022_03_30_132703_create_services_table', 9),
(36, '2022_03_30_142305_create_sliders_table', 10),
(37, '2022_03_30_144809_create_policies_table', 11),
(38, '2022_03_30_155351_create_consultations_table', 12),
(39, '2022_04_04_111214_create_education_table', 13),
(40, '2022_04_04_112438_create_education_content_table', 14),
(41, '2022_04_04_141002_create_work_table', 15),
(42, '2022_04_04_141844_create_work_content_table', 16),
(44, '2022_04_04_162407_create_status_table', 17),
(48, '2022_04_04_194416_create_what_table', 18),
(49, '2022_04_04_195232_create_status_what_table', 19),
(50, '2022_04_05_102621_create_residency_table', 20),
(52, '2022_04_05_122658_create_citizenship_table', 21),
(53, '2022_04_05_132750_create_document_table', 22),
(54, '2022_04_05_133028_create_citizenship_document_table', 23),
(55, '2022_04_05_133202_create_give_table', 24),
(56, '2022_04_05_133440_create_citizenship_give_table', 25),
(58, '2022_04_05_154635_add_who_to_citizenship_table', 26),
(59, '2022_04_05_171456_add_help_to_residency_table', 27),
(60, '2022_04_05_171912_add_help_to_status_table', 28),
(61, '2022_04_05_173010_add_title_to_orders_table', 29);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `created_at`, `updated_at`, `title`, `url`) VALUES
(1, 'Игорь', '+7 (775) 659-65-23', '2022-04-30 07:16:21', '2022-04-30 07:16:21', 'Форма заявки из меню', 'https://resident-center.kz'),
(2, 'Гульмира', '+7 (702) 432-04-39', '2022-04-30 11:20:44', '2022-04-30 11:20:44', 'Форма заявки', 'https://resident-center.kz/work'),
(3, 'Mariana', '+7 (337) 379-16-30', '2022-04-30 13:18:08', '2022-04-30 13:18:08', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(4, 'Данияр Жaндосов', '+7 (705) 691-36-89', '2022-05-01 14:53:33', '2022-05-01 14:53:33', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(5, 'Мухамат Али Мамазов', '+7 (747) 458-44-54', '2022-05-01 15:05:36', '2022-05-01 15:05:36', 'Форма заявки', 'https://resident-center.kz/work'),
(6, 'Мухамат Али Мамазов', '+7 (747) 458-44-54', '2022-05-01 15:05:37', '2022-05-01 15:05:37', 'Форма заявки', 'https://resident-center.kz/work'),
(7, 'Мухибжон', '+7 (707) 808-56-01', '2022-05-01 16:12:54', '2022-05-01 16:12:54', 'Форма заявки', 'https://resident-center.kz/work'),
(8, 'Мухибжон', '+7 (707) 808-56-01', '2022-05-01 16:12:56', '2022-05-01 16:12:56', 'Форма заявки', 'https://resident-center.kz/work'),
(9, 'хомид', '+7 (776) 777-01-04', '2022-05-01 17:04:50', '2022-05-01 17:04:50', 'Форма заявки', 'https://resident-center.kz/contacts'),
(10, 'Берик', '+7 (777) 668-80-01', '2022-05-01 19:23:29', '2022-05-01 19:23:29', 'Форма заявки', 'https://resident-center.kz/citizenship'),
(11, 'максим', '+7 (068) 740-66-72', '2022-05-01 20:37:16', '2022-05-01 20:37:16', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(12, 'Nılufar', '+7 (905) 319-83-17', '2022-05-01 22:27:27', '2022-05-01 22:27:27', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(13, 'Nılufar', '+7 (905) 319-83-17', '2022-05-01 22:27:29', '2022-05-01 22:27:29', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(14, 'Максат', '+7 (996) 708-73-87', '2022-05-02 10:49:08', '2022-05-02 10:49:08', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(15, 'Махмудчон', '+7 (747) 576-25-00', '2022-05-02 15:45:34', '2022-05-02 15:45:34', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(16, 'Muhamadjon ergashev', '+7 (', '2022-05-03 07:53:47', '2022-05-03 07:53:47', 'Рабочие на брусчатку.', 'https://resident-center.kz/work/vakansii-v-latvii'),
(17, 'Илхом', '+7 (747) 526-00-91', '2022-05-03 10:49:45', '2022-05-03 10:49:45', 'Форма заявки', 'https://resident-center.kz/citizenship'),
(18, 'Майрамбек', '+7 (909) 664-19-89', '2022-05-03 22:20:39', '2022-05-03 22:20:39', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(19, 'Нурдаулет Аухатов', '+7 (778) 009-11-83', '2022-05-04 01:45:39', '2022-05-04 01:45:39', 'Форма заявки', 'https://resident-center.kz/work'),
(20, '+48538940582', '+7 (', '2022-05-04 10:46:49', '2022-05-04 10:46:49', NULL, 'https://resident-center.kz/education/obrazovanie-v-kanade'),
(21, '+48538940582', '+7 (', '2022-05-04 10:46:51', '2022-05-04 10:46:51', NULL, 'https://resident-center.kz/education/obrazovanie-v-kanade'),
(22, '+48538940582', '+7 (', '2022-05-04 10:46:52', '2022-05-04 10:46:52', NULL, 'https://resident-center.kz/education/obrazovanie-v-kanade'),
(23, '+48538940582', '+7 (', '2022-05-04 10:46:58', '2022-05-04 10:46:58', NULL, 'https://resident-center.kz/education/obrazovanie-v-kanade'),
(24, 'Виталий', '+7 (777) 847-41-77', '2022-05-04 15:01:55', '2022-05-04 15:01:55', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(25, 'Бейшенали', '+7 (996) 778-00-75', '2022-05-04 15:31:59', '2022-05-04 15:31:59', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(26, 'Сая тест', '+7 (', '2022-05-04 16:07:19', '2022-05-04 16:07:19', NULL, 'https://resident-center.kz/education/obrazovanie-v-kanade'),
(27, 'Леила', '+7 (093) 484-43-53', '2022-05-04 21:43:29', '2022-05-04 21:43:29', NULL, 'https://resident-center.kz/work/vakansii-v-germanii'),
(28, 'Артас', '+7 (705) 454-54-66', '2022-05-05 03:29:43', '2022-05-05 03:29:43', 'Форма заявки из меню', 'https://resident-center.kz'),
(29, 'Тест', '+7 (704) 854-97-45', '2022-05-05 03:30:52', '2022-05-05 03:30:52', 'Форма заявки из меню', NULL),
(30, 'Тест', '+7 (705) 546-56-65', '2022-05-05 03:34:28', '2022-05-05 03:34:28', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(31, 'Test', '+7 (705) 465-46-56', '2022-05-05 03:35:53', '2022-05-05 03:35:53', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(32, 'Test', '+7 (705) 465-46-56', '2022-05-05 03:35:54', '2022-05-05 03:35:54', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(33, 'Test', '+7 (705) 465-46-56', '2022-05-05 03:35:56', '2022-05-05 03:35:56', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(34, 'Test', '+7 (705) 465-46-56', '2022-05-05 03:35:58', '2022-05-05 03:35:58', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(35, 'Test', '+7 (705) 465-46-56', '2022-05-05 03:35:58', '2022-05-05 03:35:58', 'Форма заявки', 'https://resident-center.kz/education/obrazovanie-v-chehii'),
(36, 'Test', '+7 (708) 546-46-54', '2022-05-05 03:44:49', '2022-05-05 03:44:49', 'Форма заявки из меню', 'https://resident-center.kz/education'),
(37, 'Test123', '+7 (078) 546-54-64', '2022-05-05 03:45:01', '2022-05-05 03:45:01', 'Форма заявки из меню', NULL),
(38, 'Тест', '+7 (708) 545-46-54', '2022-05-05 03:48:06', '2022-05-05 03:48:06', 'Форма заявки из меню', 'https://resident-center.kz/education'),
(39, 'Artas', '+7 (708) 546-54-64', '2022-05-05 03:54:36', '2022-05-05 03:54:36', 'Форма заявки из меню', 'https://resident-center.kz/education'),
(40, 'Test', '+7 (870) 564-65-45', '2022-05-05 04:08:15', '2022-05-05 04:08:15', 'Форма заявки из меню', 'https://resident-center.kz/education'),
(41, 'Тетс', '+7 (705) 454-65-45', '2022-05-05 04:15:10', '2022-05-05 04:15:10', NULL, 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(42, 'Тетс123', '+7 (705) 465-46-54', '2022-05-05 04:15:22', '2022-05-05 04:15:22', NULL, NULL),
(43, 'Тест', '+7 (705) 465-46-54', '2022-05-05 04:18:50', '2022-05-05 04:18:50', 'Поступление в британский вуз', 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(44, 'Иван', '+7 (705) 465-46-54', '2022-05-05 04:19:14', '2022-05-05 04:19:14', 'Докторантура в Великобритании — Postgraduate', 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(45, 'Иван', '+7 (705) 465-45-66', '2022-05-05 04:19:58', '2022-05-05 04:19:58', 'Магистратура в Великобритании — Postgraduate', 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(46, 'Сая', '+7 (056) 465-13-23', '2022-05-05 04:21:30', '2022-05-05 04:21:30', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(47, 'Тест', '+7 (777) 777-77-77', '2022-05-05 04:21:31', '2022-05-05 04:21:31', NULL, 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(48, 'Тест', '+7 (705) 645-66-66', '2022-05-05 04:36:38', '2022-05-05 04:36:38', 'Поступление в британский вуз', 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(49, 'Тест', '+7 (705) 456-46-46', '2022-05-05 04:50:10', '2022-05-05 04:50:10', 'Форма заявки из меню', 'https://resident-center.kz/education/obrazovanie-v-velikobritanii'),
(50, 'Стас', '+7 (777) 777-77-77', '2022-05-05 05:09:48', '2022-05-05 05:09:48', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(51, 'Жандос', '+7 (708) 582-10-14', '2022-05-09 06:54:41', '2022-05-09 06:54:41', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(52, 'Абубакр', '+7 (705) 213-92-59', '2022-05-09 07:58:18', '2022-05-09 07:58:18', 'Форма заявки', 'https://resident-center.kz/about'),
(53, 'Абубакр', '+7 (705) 213-92-59', '2022-05-09 08:02:35', '2022-05-09 08:02:35', 'Куриное производство', 'https://resident-center.kz/work/vakansii-v-polshe'),
(54, 'тимур', '+7 (707) 206-91-41', '2022-05-13 13:16:58', '2022-05-13 13:16:58', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(55, 'тимур', '+7 (707) 206-91-41', '2022-05-13 13:17:01', '2022-05-13 13:17:01', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(56, 'Наран', '+7 (707) 180-13-19', '2022-05-14 05:38:34', '2022-05-14 05:38:34', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(57, 'Баатыр', '+7 (996) 559-11-21', '2022-05-14 08:03:01', '2022-05-14 08:03:01', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(58, 'Баатыр', '+7 (996) 559-11-21', '2022-05-14 08:03:04', '2022-05-14 08:03:04', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(59, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:27:45', '2022-05-18 04:27:45', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(60, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:27:47', '2022-05-18 04:27:47', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(61, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:27:48', '2022-05-18 04:27:48', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(62, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:30', '2022-05-18 04:28:30', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(63, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:34', '2022-05-18 04:28:34', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(64, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:35', '2022-05-18 04:28:35', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(65, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:36', '2022-05-18 04:28:36', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(66, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:36', '2022-05-18 04:28:36', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(67, 'Шухрат', '+7 (701) 306-26-42', '2022-05-18 04:28:37', '2022-05-18 04:28:37', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(68, 'Галия', '+7 (701) 333-79-10', '2022-05-18 05:11:27', '2022-05-18 05:11:27', 'Форма заявки', 'https://resident-center.kz/work/vakansii-v-velikobritanii'),
(69, 'Балзу', '+7 (747) 092-82-31', '2022-05-18 07:52:38', '2022-05-18 07:52:38', 'Форма заявки', 'https://resident-center.kz/work/vakansii-v-germanii'),
(70, 'Балзу', '+7 (747) 092-82-31', '2022-05-18 07:52:43', '2022-05-18 07:52:43', 'Форма заявки', 'https://resident-center.kz/work/vakansii-v-germanii'),
(71, 'Нурлис', '+7 (925) 416-26-78', '2022-05-18 19:58:41', '2022-05-18 19:58:41', 'Куриное производство', 'https://resident-center.kz/work/vakansii-v-polshe'),
(72, 'Олеся', '+7 (747) 550-03-24', '2022-05-19 11:38:41', '2022-05-19 11:38:41', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(73, 'Войис', '+7 (795) 220-67-82', '2022-05-22 10:25:47', '2022-05-22 10:25:47', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(74, 'Войис', '+7 (795) 220-67-82', '2022-05-22 10:25:49', '2022-05-22 10:25:49', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(75, 'ВОЙИС', '+7 (952) 206-78-28', '2022-05-22 10:27:06', '2022-05-22 10:27:06', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(76, 'ВОЙИС', '+7 (952) 206-78-28', '2022-05-22 10:27:08', '2022-05-22 10:27:08', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(77, 'Сохиб', '+7 (707) 126-27-72', '2022-05-24 05:37:06', '2022-05-24 05:37:06', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(78, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:36', '2022-05-24 11:28:36', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(79, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:39', '2022-05-24 11:28:39', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(80, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:41', '2022-05-24 11:28:41', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(81, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:42', '2022-05-24 11:28:42', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(82, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:43', '2022-05-24 11:28:43', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(83, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:28:51', '2022-05-24 11:28:51', 'Гражданство Канады', 'https://resident-center.kz/citizenship/grazhdanstvo-kanady'),
(84, 'Арман Арман', '+7 (777) 777-77-77', '2022-05-24 11:33:40', '2022-05-24 11:33:40', 'Вид на жительство Австрии', 'https://resident-center.kz/residency/rezidentstvo-avstrii'),
(85, 'Олжас', '+7 (777) 777-77-77', '2022-05-24 11:57:50', '2022-05-24 11:57:50', 'Подача заявления в ЕСПЧ в Страсбурге', 'https://resident-center.kz/services'),
(86, 'Тест', '+7 (705) 646-54-66', '2022-05-24 12:08:10', '2022-05-24 12:08:10', 'Форма заявки из меню', 'https://resident-center.kz'),
(87, 'Туст', '+7 (704) 545-64-65', '2022-05-24 12:08:36', '2022-05-24 12:08:36', 'Форма заявки из меню', 'https://resident-center.kz'),
(88, 'Тест', '+7 (704) 545-45-65', '2022-05-25 04:48:53', '2022-05-25 04:48:53', 'Консультация по вопросам иммиграции в любую страну мира', 'https://resident-center.kz/services'),
(89, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:16:27', '2022-05-26 09:16:27', 'Форма заявки из меню', 'https://resident-center.kz'),
(90, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:18:23', '2022-05-26 09:18:23', 'Форма заявки из меню', 'https://resident-center.kz'),
(91, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:20:54', '2022-05-26 09:20:54', 'Форма заявки из меню', 'https://resident-center.kz'),
(92, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:22:46', '2022-05-26 09:22:46', 'Форма заявки из меню', 'https://resident-center.kz'),
(93, 'тест', '+7 (888) 888-88-88', '2022-05-26 09:26:58', '2022-05-26 09:26:58', 'Форма заявки из меню', 'https://resident-center.kz'),
(94, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:27:14', '2022-05-26 09:27:14', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(95, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:27:16', '2022-05-26 09:27:16', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(96, 'тест', '+7 (888) 888-88-88', '2022-05-26 09:27:33', '2022-05-26 09:27:33', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(97, 'тест', '+7 (888) 888-88-88', '2022-05-26 09:27:48', '2022-05-26 09:27:48', 'Форма заявки из меню', 'https://resident-center.kz'),
(98, 'тест', '+7 (777) 777-77-77', '2022-05-26 09:28:19', '2022-05-26 09:28:19', 'Консультация по вопросам иммиграции в любую страну мира', 'https://resident-center.kz/services'),
(99, 'тест', '+7 (888) 888-88-88', '2022-05-26 09:28:36', '2022-05-26 09:28:36', 'Открытие счета за рубежом', 'https://resident-center.kz/services'),
(100, 'тест', '+7 (888) 888-88-88', '2022-05-26 09:28:53', '2022-05-26 09:28:53', 'Форма заявки', 'https://resident-center.kz/services'),
(101, 'Мурод Халилов', '+7 (965) 212-22-02', '2022-05-26 13:49:17', '2022-05-26 13:49:17', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(102, 'Мурод Халилов', '+7 (965) 212-22-02', '2022-05-26 13:49:18', '2022-05-26 13:49:18', 'Форма заявки из мобильной меню', 'https://resident-center.kz'),
(103, 'Жасур', '+7 (707) 206-06-46', '2022-05-28 18:35:51', '2022-05-28 18:35:51', 'Вид на жительство в США', 'https://resident-center.kz/residency/rezidentstvo-ssha-programma-e-2'),
(104, 'Жасур', '+7 (707) 206-06-46', '2022-05-28 18:35:53', '2022-05-28 18:35:53', 'Вид на жительство в США', 'https://resident-center.kz/residency/rezidentstvo-ssha-programma-e-2'),
(105, 'Жасур', '+7 (707) 206-06-46', '2022-05-28 18:40:49', '2022-05-28 18:40:49', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(106, 'Жасур', '+7 (707) 206-06-46', '2022-05-28 18:40:51', '2022-05-28 18:40:51', 'Форма заявки с главной страницы', 'https://resident-center.kz'),
(107, 'Снежана', '+7 (708) 825-08-24', '2022-05-29 05:08:14', '2022-05-29 05:08:14', NULL, 'https://resident-center.kz/work/vakansii-v-chehii'),
(108, 'Снежана', '+7 (708) 825-08-24', '2022-05-29 05:08:14', '2022-05-29 05:08:14', NULL, 'https://resident-center.kz/work/vakansii-v-chehii');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `type`, `title`, `excerpt`, `body`, `image`, `slug`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'Главная страница', NULL, NULL, NULL, 'home', 'Главная страница', 'Главная страница', 'Главная страница', 'ACTIVE', '2022-03-29 04:34:19', '2022-03-29 04:34:19'),
(2, 1, 'contacts', 'Контакты', NULL, NULL, NULL, 'contacts', 'Контакты', 'Контакты', 'Контакты', 'ACTIVE', '2022-03-29 05:51:25', '2022-03-29 05:51:25'),
(3, 1, 'about', 'О нас', NULL, NULL, NULL, 'about', 'О нас', 'О нас', 'О нас', 'ACTIVE', '2022-03-29 08:31:44', '2022-03-29 08:31:44'),
(4, 1, 'faqs', 'Частые вопросы', NULL, NULL, NULL, 'faqs', 'Частые вопросы', 'Частые вопросы', 'Частые вопросы', 'ACTIVE', '2022-03-29 08:32:03', '2022-03-29 09:02:47'),
(5, 1, 'partners', 'Партнерство', NULL, NULL, NULL, 'partners', 'Партнерство', 'Партнерство', 'Партнерство', 'ACTIVE', '2022-03-29 08:32:29', '2022-03-29 08:32:29'),
(6, 1, 'reviews', 'Отзывы', NULL, NULL, NULL, 'reviews', 'Отзывы', 'Отзывы', 'Отзывы', 'ACTIVE', '2022-03-29 08:32:53', '2022-03-29 08:32:53'),
(7, 1, 'services', 'Дополнительные услуги', NULL, NULL, NULL, 'services', 'Дополнительные услуги', 'Дополнительные услуги', 'Дополнительные услуги', 'ACTIVE', '2022-03-30 07:29:10', '2022-03-30 07:29:10'),
(8, 1, 'policy', 'Политика конфиденциальности', NULL, NULL, NULL, 'policy', 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности', 'ACTIVE', '2022-03-30 08:43:35', '2022-03-30 08:43:35'),
(9, 1, 'education', 'Образование', NULL, NULL, NULL, 'education', 'Образование', 'Образование', 'Образование', 'ACTIVE', '2022-04-04 03:54:44', '2022-04-04 03:54:44'),
(10, 1, 'work', 'Работа', NULL, NULL, NULL, 'work', 'Работа', 'Работа', 'Работа', 'ACTIVE', '2022-04-04 04:33:02', '2022-04-04 04:33:02'),
(11, 1, 'status', 'Налоговые статусы', NULL, NULL, NULL, 'status', 'Налоговые статусы', 'Налоговые статусы', 'Налоговые статусы', 'ACTIVE', '2022-04-04 04:40:11', '2022-04-04 04:40:11'),
(12, 1, 'residency', 'Резидентство', NULL, NULL, NULL, 'residency', 'Резидентство', 'Резидентство', 'Резидентство', 'ACTIVE', '2022-04-04 04:40:52', '2022-04-04 04:40:52'),
(13, 1, 'citizenship', 'Гражданство', NULL, NULL, NULL, 'citizenship', 'Гражданство', 'Гражданство', 'Гражданство', 'ACTIVE', '2022-04-04 04:41:27', '2022-04-04 04:41:27');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Варианты сотрудничества', '<p>Компания &laquo;Иммиграционный Центр RESIDENT&raquo;предлагает два варианта партнерства: 1) специалист и 2) агент. Если вы оказываете услуги в сфере иммиграции, трудоустройства, образования или &laquo;роды за рубежом&raquo;, то вам подойдет вариант &ndash; специалист. Если же вы умеете привлекать новых клиентов и продавать услуги, то вы &ndash; агент. Для того чтобы узнать подробности о партнерстве оставьте заявку, и наши менеджеры свяжутся с вами в ближайшее время.</p>', '2022-03-29 10:25:55', '2022-03-29 10:25:55'),
(2, 'Мы помогаем многим', '<p>Мы активно развиваем партнерскую сеть, что помогает нам более качественно и профессионально оказывать услуги и помогать наибольшему количеству людей! Сотни семей оставили свои отзывы о нашей компании в интернете и личной переписке с менеджерами. Поэтому наши партнеры &ndash; это только компетентные и высококвалифицированные специалисты!</p>', '2022-03-29 10:26:13', '2022-03-29 10:26:13'),
(3, 'Начните свое дело с нами', '<p>Партнерство с нашей компанией &ndash; это также возможность начать свой бизнес с нуля, просто предлагая наши услуги. Вам не обязательно иметь свой офис или делать большие финансовые вложения. Можно начать с узкого круга друзей и знакомых. С каждой проданной услуги вы будете получать свой процент согласно партнерской тарифной сетке, которую мы отправим вам для ознакомления в самом начале нашей совместной работы.</p>', '2022-03-29 10:32:40', '2022-03-29 10:32:40'),
(4, 'Критерии', '<p>Для того, чтобы стать партнером как &laquo;специалист&raquo; вы должны иметь реальный опыт работы в сфере оказания иммиграционных услуг. Необходимо будет продемонстрировать ваши результаты, предоставив нам отзывы о вас или примеры полученных виз, а также ссылки на страницы вашей компании в социальных сетях или на сайт.<br /><br />Если вы планируете стать нашим &laquo;агентом&raquo;, вам не обязательно иметь для этого специальное образование или предыдущий опыт продаж. Достаточно вашего желания присоединиться к нашей команде и желания помогать нам в привлечении новых клиентов. Вас приятно удивят наши партнерские ставки вознаграждения!</p>', '2022-03-29 10:33:01', '2022-03-29 10:33:01');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(2, 'browse_bread', NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(3, 'browse_database', NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(4, 'browse_media', NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(5, 'browse_compass', NULL, '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(6, 'browse_menus', 'menus', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(7, 'read_menus', 'menus', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(8, 'edit_menus', 'menus', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(9, 'add_menus', 'menus', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(10, 'delete_menus', 'menus', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(11, 'browse_roles', 'roles', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(12, 'read_roles', 'roles', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(13, 'edit_roles', 'roles', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(14, 'add_roles', 'roles', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(15, 'delete_roles', 'roles', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(16, 'browse_users', 'users', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(17, 'read_users', 'users', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(18, 'edit_users', 'users', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(19, 'add_users', 'users', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(20, 'delete_users', 'users', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(21, 'browse_settings', 'settings', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(22, 'read_settings', 'settings', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(23, 'edit_settings', 'settings', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(24, 'add_settings', 'settings', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(25, 'delete_settings', 'settings', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(26, 'browse_categories', 'categories', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(27, 'read_categories', 'categories', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(28, 'edit_categories', 'categories', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(29, 'add_categories', 'categories', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(30, 'delete_categories', 'categories', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(31, 'browse_posts', 'posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(32, 'read_posts', 'posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(33, 'edit_posts', 'posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(34, 'add_posts', 'posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(35, 'delete_posts', 'posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(36, 'browse_pages', 'pages', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(37, 'read_pages', 'pages', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(38, 'edit_pages', 'pages', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(39, 'add_pages', 'pages', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(40, 'delete_pages', 'pages', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(41, 'browse_contacts', 'contacts', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(42, 'read_contacts', 'contacts', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(43, 'edit_contacts', 'contacts', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(44, 'add_contacts', 'contacts', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(45, 'delete_contacts', 'contacts', '2022-03-29 04:41:32', '2022-03-29 04:41:32'),
(46, 'browse_partners', 'partners', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(47, 'read_partners', 'partners', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(48, 'edit_partners', 'partners', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(49, 'add_partners', 'partners', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(50, 'delete_partners', 'partners', '2022-03-29 10:24:31', '2022-03-29 10:24:31'),
(51, 'browse_f_a_q_s', 'f_a_q_s', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(52, 'read_f_a_q_s', 'f_a_q_s', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(53, 'edit_f_a_q_s', 'f_a_q_s', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(54, 'add_f_a_q_s', 'f_a_q_s', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(55, 'delete_f_a_q_s', 'f_a_q_s', '2022-03-29 10:38:26', '2022-03-29 10:38:26'),
(56, 'browse_abouts', 'abouts', '2022-03-29 11:01:43', '2022-03-29 11:01:43'),
(57, 'read_abouts', 'abouts', '2022-03-29 11:01:43', '2022-03-29 11:01:43'),
(58, 'edit_abouts', 'abouts', '2022-03-29 11:01:43', '2022-03-29 11:01:43'),
(59, 'add_abouts', 'abouts', '2022-03-29 11:01:43', '2022-03-29 11:01:43'),
(60, 'delete_abouts', 'abouts', '2022-03-29 11:01:43', '2022-03-29 11:01:43'),
(61, 'browse_reviews', 'reviews', '2022-03-30 03:41:10', '2022-03-30 03:41:10'),
(62, 'read_reviews', 'reviews', '2022-03-30 03:41:10', '2022-03-30 03:41:10'),
(63, 'edit_reviews', 'reviews', '2022-03-30 03:41:10', '2022-03-30 03:41:10'),
(64, 'add_reviews', 'reviews', '2022-03-30 03:41:10', '2022-03-30 03:41:10'),
(65, 'delete_reviews', 'reviews', '2022-03-30 03:41:10', '2022-03-30 03:41:10'),
(66, 'browse_orders', 'orders', '2022-03-30 06:26:36', '2022-03-30 06:26:36'),
(67, 'read_orders', 'orders', '2022-03-30 06:26:36', '2022-03-30 06:26:36'),
(68, 'edit_orders', 'orders', '2022-03-30 06:26:36', '2022-03-30 06:26:36'),
(69, 'add_orders', 'orders', '2022-03-30 06:26:36', '2022-03-30 06:26:36'),
(70, 'delete_orders', 'orders', '2022-03-30 06:26:36', '2022-03-30 06:26:36'),
(71, 'browse_services', 'services', '2022-03-30 07:34:06', '2022-03-30 07:34:06'),
(72, 'read_services', 'services', '2022-03-30 07:34:06', '2022-03-30 07:34:06'),
(73, 'edit_services', 'services', '2022-03-30 07:34:06', '2022-03-30 07:34:06'),
(74, 'add_services', 'services', '2022-03-30 07:34:06', '2022-03-30 07:34:06'),
(75, 'delete_services', 'services', '2022-03-30 07:34:06', '2022-03-30 07:34:06'),
(76, 'browse_sliders', 'sliders', '2022-03-30 08:25:10', '2022-03-30 08:25:10'),
(77, 'read_sliders', 'sliders', '2022-03-30 08:25:10', '2022-03-30 08:25:10'),
(78, 'edit_sliders', 'sliders', '2022-03-30 08:25:10', '2022-03-30 08:25:10'),
(79, 'add_sliders', 'sliders', '2022-03-30 08:25:10', '2022-03-30 08:25:10'),
(80, 'delete_sliders', 'sliders', '2022-03-30 08:25:10', '2022-03-30 08:25:10'),
(81, 'browse_policies', 'policies', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(82, 'read_policies', 'policies', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(83, 'edit_policies', 'policies', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(84, 'add_policies', 'policies', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(85, 'delete_policies', 'policies', '2022-03-30 08:54:23', '2022-03-30 08:54:23'),
(86, 'browse_consultations', 'consultations', '2022-03-30 09:57:08', '2022-03-30 09:57:08'),
(87, 'read_consultations', 'consultations', '2022-03-30 09:57:08', '2022-03-30 09:57:08'),
(88, 'edit_consultations', 'consultations', '2022-03-30 09:57:08', '2022-03-30 09:57:08'),
(89, 'add_consultations', 'consultations', '2022-03-30 09:57:08', '2022-03-30 09:57:08'),
(90, 'delete_consultations', 'consultations', '2022-03-30 09:57:08', '2022-03-30 09:57:08'),
(91, 'browse_education', 'education', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(92, 'read_education', 'education', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(93, 'edit_education', 'education', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(94, 'add_education', 'education', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(95, 'delete_education', 'education', '2022-04-04 05:21:42', '2022-04-04 05:21:42'),
(101, 'browse_education_content', 'education_content', '2022-04-04 05:31:57', '2022-04-04 05:31:57'),
(102, 'read_education_content', 'education_content', '2022-04-04 05:31:57', '2022-04-04 05:31:57'),
(103, 'edit_education_content', 'education_content', '2022-04-04 05:31:57', '2022-04-04 05:31:57'),
(104, 'add_education_content', 'education_content', '2022-04-04 05:31:57', '2022-04-04 05:31:57'),
(105, 'delete_education_content', 'education_content', '2022-04-04 05:31:57', '2022-04-04 05:31:57'),
(111, 'browse_work', 'work', '2022-04-04 08:17:53', '2022-04-04 08:17:53'),
(112, 'read_work', 'work', '2022-04-04 08:17:53', '2022-04-04 08:17:53'),
(113, 'edit_work', 'work', '2022-04-04 08:17:53', '2022-04-04 08:17:53'),
(114, 'add_work', 'work', '2022-04-04 08:17:53', '2022-04-04 08:17:53'),
(115, 'delete_work', 'work', '2022-04-04 08:17:53', '2022-04-04 08:17:53'),
(116, 'browse_work_content', 'work_content', '2022-04-04 08:21:55', '2022-04-04 08:21:55'),
(117, 'read_work_content', 'work_content', '2022-04-04 08:21:55', '2022-04-04 08:21:55'),
(118, 'edit_work_content', 'work_content', '2022-04-04 08:21:55', '2022-04-04 08:21:55'),
(119, 'add_work_content', 'work_content', '2022-04-04 08:21:55', '2022-04-04 08:21:55'),
(120, 'delete_work_content', 'work_content', '2022-04-04 08:21:55', '2022-04-04 08:21:55'),
(121, 'browse_status', 'status', '2022-04-04 10:52:24', '2022-04-04 10:52:24'),
(122, 'read_status', 'status', '2022-04-04 10:52:24', '2022-04-04 10:52:24'),
(123, 'edit_status', 'status', '2022-04-04 10:52:24', '2022-04-04 10:52:24'),
(124, 'add_status', 'status', '2022-04-04 10:52:24', '2022-04-04 10:52:24'),
(125, 'delete_status', 'status', '2022-04-04 10:52:24', '2022-04-04 10:52:24'),
(126, 'browse_st_document', 'st_document', '2022-04-04 11:13:19', '2022-04-04 11:13:19'),
(127, 'read_st_document', 'st_document', '2022-04-04 11:13:19', '2022-04-04 11:13:19'),
(128, 'edit_st_document', 'st_document', '2022-04-04 11:13:19', '2022-04-04 11:13:19'),
(129, 'add_st_document', 'st_document', '2022-04-04 11:13:19', '2022-04-04 11:13:19'),
(130, 'delete_st_document', 'st_document', '2022-04-04 11:13:19', '2022-04-04 11:13:19'),
(131, 'browse_what', 'what', '2022-04-04 13:47:53', '2022-04-04 13:47:53'),
(132, 'read_what', 'what', '2022-04-04 13:47:53', '2022-04-04 13:47:53'),
(133, 'edit_what', 'what', '2022-04-04 13:47:53', '2022-04-04 13:47:53'),
(134, 'add_what', 'what', '2022-04-04 13:47:53', '2022-04-04 13:47:53'),
(135, 'delete_what', 'what', '2022-04-04 13:47:53', '2022-04-04 13:47:53'),
(136, 'browse_residency', 'residency', '2022-04-05 04:36:19', '2022-04-05 04:36:19'),
(137, 'read_residency', 'residency', '2022-04-05 04:36:19', '2022-04-05 04:36:19'),
(138, 'edit_residency', 'residency', '2022-04-05 04:36:19', '2022-04-05 04:36:19'),
(139, 'add_residency', 'residency', '2022-04-05 04:36:19', '2022-04-05 04:36:19'),
(140, 'delete_residency', 'residency', '2022-04-05 04:36:19', '2022-04-05 04:36:19'),
(141, 'browse_citizenship', 'citizenship', '2022-04-05 06:35:34', '2022-04-05 06:35:34'),
(142, 'read_citizenship', 'citizenship', '2022-04-05 06:35:34', '2022-04-05 06:35:34'),
(143, 'edit_citizenship', 'citizenship', '2022-04-05 06:35:34', '2022-04-05 06:35:34'),
(144, 'add_citizenship', 'citizenship', '2022-04-05 06:35:34', '2022-04-05 06:35:34'),
(145, 'delete_citizenship', 'citizenship', '2022-04-05 06:35:34', '2022-04-05 06:35:34'),
(146, 'browse_document', 'document', '2022-04-05 07:29:51', '2022-04-05 07:29:51'),
(147, 'read_document', 'document', '2022-04-05 07:29:51', '2022-04-05 07:29:51'),
(148, 'edit_document', 'document', '2022-04-05 07:29:51', '2022-04-05 07:29:51'),
(149, 'add_document', 'document', '2022-04-05 07:29:51', '2022-04-05 07:29:51'),
(150, 'delete_document', 'document', '2022-04-05 07:29:51', '2022-04-05 07:29:51'),
(151, 'browse_give', 'give', '2022-04-05 07:33:55', '2022-04-05 07:33:55'),
(152, 'read_give', 'give', '2022-04-05 07:33:55', '2022-04-05 07:33:55'),
(153, 'edit_give', 'give', '2022-04-05 07:33:55', '2022-04-05 07:33:55'),
(154, 'add_give', 'give', '2022-04-05 07:33:55', '2022-04-05 07:33:55'),
(155, 'delete_give', 'give', '2022-04-05 07:33:55', '2022-04-05 07:33:55');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `policies`
--

INSERT INTO `policies` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Политика конфиденциальности', '<p><strong>Настоящее Пользовательское соглашение (далее также &ndash; &laquo;Соглашение&raquo;) регулирует отношения по использованию функций Сайта и общие условия возможного оказания Услуг между Исполнителем (далее также - &laquo;Владелец Сайта&raquo;), с одной стороны, и физическим или юридическим лицом Заказчиком, принявшим условия настоящего Соглашения путём присоединения к настоящему Соглашению в целом и безоговорочно (далее также &ndash; &laquo;Пользователь сайта&raquo;), с другой стороны, далее при совместном упоминании именуемые &laquo;Стороны&raquo;, а по отдельности &ndash; &laquo;Сторона&raquo;.</strong><br /><br />Настоящее Соглашение и отношения Сторон, возникшие из настоящего Соглашения, регулируются законодательством.<br /><br />&nbsp;<br /><br /><strong>Общие положения Пользовательского соглашения</strong><br /><br />В настоящем документе и вытекающих или связанным с ним отношениях Сторон применяются следующие термины и определения:<br /><br />а) Сайт Владельца/ Сайт &mdash; интернет-сайт, размещенные в домене Владельца сайта и его поддоменах.<br /><br />б) Соглашение &mdash; настоящее соглашение со всеми дополнениями и изменениями.<br /><br />в) Администрация/представитель Сайта, Владельца Сайта &ndash; лицо уполномоченное Владельцем сайта на действия предусмотренные Соглашением.<br /><br />г) Посетитель - любое лицо, которое перешло на Сайт и находится на нем, используя его свойства для ознакомления с контентом размещенным на Сайте.<br /><br />д) Пользователь &mdash; дееспособное физическое лицо, присоединившееся к настоящему Соглашению в собственном интересе либо выступающее от имени и в интересах представляемого им юридического лица.<br /><br />Любой посетитель Сайта по собственной воле может заполнить предоставленную для этого форму и стать Пользователем.<br /><br />Сайт содержит информацию и материалы о товарах и услугах, которые в последующем могут быть предоставлены Пользователю в случае заключения реального Договора. Если какое-то физическое лицо зарегистрировалось в качестве Пользователя от имени уполномочившего его на то юридического лица, это означает, что юридическое лицо принимает Соглашение в полном объеме с последующими из этого последствиями.<br /><br />В частности, при использовании Сайта, Пользователь не вправе выдавать себя за другого человека или представителя организации и/или сообщества без достаточных на то прав, в том числе за сотрудников Сайта, а также применять любые другие формы и способы незаконного представительства других лиц в сети Интернет, а также вводить Пользователей, Сайт и его представителей в заблуждение относительно свойств и характеристик каких- либо субъектов или объектов.<br /><br />В случае обнаружения нарушения прав и/или интересов в связи с использованием Сайта, в том числе иным Пользователем, следует сообщить об этом Владельцу сайта, путем направления письменного уведомления, сообщения по телефону с подробным изложением обстоятельств нарушения и/или гипертекстовой ссылкой на страницу, содержащую материалы, которыми нарушаются соответствующие права и/или интересы Сайта.<br /><br />&nbsp;<br /><br /><strong>Интеллектуальные права</strong><br /><br />Все объекты, доступные при помощи Сайта, в том числе элементы дизайна, текст, графические изображения, иллюстрации, видео, компьютерные программы, базы данных, музыка, звуки и другие объекты, размещенные в рамках Сайта, являются объектами исключительных прав Сайта и других правообладателей. Сайт предоставляет Пользователю право его функционального использования в пределах его общих функциональных возможностей.<br /><br />Использование Сайта иными способами, в том числе путем копирования (воспроизведения) размещенного на Сайте Контента, а также входящих в состав Сайта элементов дизайна, компьютерных программ и баз данных, их декомпиляция, модификация, и последующее распространение, публичный показ, доведение до всеобщего сведения, строго запрещены, если иное не предусмотрено настоящим Соглашением и заключенными Договорами.<br /><br />Пользователь не вправе воспроизводить, повторять и копировать, продавать, а также использовать для каких-либо коммерческих целей какие-либо части Сайта (включая Контент, доступный Пользователю посредством Приложений), или доступ к ним, кроме тех случаев, когда Пользователь получил такое разрешение от Сайта/Владельцев Сайта, либо когда это прямо предусмотрено дополнительными документами (Договорами, Приложениями и т.п.).<br /><br />Использование Пользователем Сайта, а также размещенного в нем Контента для личного некоммерческого использования допускается при условии соблюдения всех законов охраны авторского права, смежных прав, товарных знаков, других уведомлений об авторстве, сохранения имени (или псевдонима) автора/наименования правообладателя в неизменном виде, сохранении соответствующего объекта в неизменном виде. Исключение составляют случаи, прямо предусмотренные законодательством, регулирующее общую защиту данных или дополнительными документами на использование Сайта.<br /><br />Сайт может содержать ссылки на сайты в сети Интернет (сайты третьих лиц). Указанные третьи лица и их контент не проверяются Сайтом на соответствие тем или иным требованиям (достоверности, полноты и т.п.). Сайт не несет ответственности за любую информацию, материалы, размещенные на сайтах третьих лиц, к которым Пользователь получает доступ в связи с использованием Сайта, а также за доступность таких сайтов или информации и последствия их использования Пользователем.<br /><br />Ссылка (в любой форме) на любой сайт, продукт, услугу, любую информацию коммерческого или некоммерческого характера, размещенная на Сайте, не является одобрением или рекомендацией данных продуктов (услуг, деятельности) со стороны Сайта, за исключением случаев, когда Сайт на это прямо указывает.<br /><br />&nbsp;<br /><br /><strong>Уведомления</strong><br /><br />Владелец Сайта/Администрация/Представитель сайта и лица, представителями которых является Сайт, вправе посылать Пользователю на указанный им электронный адрес, телефон, ссылку на страничку в социальных сетях информационные электронные сообщения о событиях, происходящих в рамках Сайта или в связи с ним и лиц которых он представляет.<br /><br />&nbsp;<br /><br /><strong>Заключительные положения</strong><br /><br />Данное Соглашение регулируется и толкуется в соответствии с действующим законодательством, регулирующее общую защиту данных . Вопросы, не урегулированные настоящим Соглашением, подлежат разрешению в соответствии с законодательством. Все возможные споры, вытекающие из отношений, регулируемые настоящим Соглашением, разрешаются в порядке, установленном действующим законодательством.<br /><br />Если по тем или иным причинам одно или несколько положений настоящего Соглашения будут признаны недействительными или не имеющими юридической силы, это не означает что остальные положения Соглашения являются не действительными или не применимыми.<br /><br />Временное бездействие со стороны Сайта в случае нарушения Пользователем либо иными Пользователями положений Соглашений не лишает Сайт права предпринять соответствующие действия в защиту своих интересов позднее, а также не означает, что Сайт отказался от своих прав в случае совершения в последующем подобных либо сходных нарушений.<br /><br />Все споры по Соглашению или в связи с ним подлежат рассмотрению в суде по месту нахождения Сайта в соответствии с действующим законодательством.<br /><br />Данное ПОЛЬЗОВАТЕЛЬСКОЕ СОГЛАШЕНИЕ разработано и действует в рамках действующего Законодательства о защите физических лиц в отношении обработки персональных данных и о свободном перемещении таких данных.<br /><br />&nbsp;<br /><br /><strong>Политика конфиденциальности</strong><br /><br />Настоящая Политика является неотъемлемой частью Пользовательского соглашения (далее &mdash; &laquo;Соглашение&raquo;), размещенного и/или доступного в сети Интернет на домене Сайта, а также иных заключенных с Пользователем договоров, или договоров которые могут быть заключены с Пользователем.<br /><br />Пользуясь услугами Сайта, Пользователь выражает свое согласие с Политикой конфиденциальности персональных данных сайта (далее - Политикой Конфиденциальности), и по своей воле и в своих интересах дает письменное согласие на следующие способы обработки Персональной информации: сбор, запись, систематизация, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение в установленных настоящей Политикой целях с использованием средств автоматизации или без использования таких средств по усмотрению. В случае несогласия с условиями Политики конфиденциальности Клиент/Пользователь не должен передавать персональные данные путем заполнения соответствующих форм.<br /><br />Политика конфиденциальности действует в отношении всей персональной информации, которую Сайт, может получить о Клиенте/Пользователе во время использования сайта, программ и продуктов сайта.<br /><br />&nbsp;<br /><br /><strong>Цели сбора персональной информации пользователя</strong><br /><br />Сайта может использовать персональные данные Клиента/Пользователя в целях:<br /><br />Идентификации Пользователя, зарегистрированного на Сайте.<br />Предоставления Пользователю доступа к ресурсам Сайта и партнеров Сайта.<br />Установления с Пользователем обратной связи, включая телефонный звонок, направление уведомлений, запросов, касающихся использования Сайта, оказания услуг, обработка запросов и заявок от Пользователя, направления рекламной и другой информации об акциях и других услугах Сайта.<br />Определения места нахождения Пользователя для обеспечения безопасности, предотвращения мошенничества.<br />Подтверждения достоверности и полноты персональных данных, предоставленных Пользователем.<br />Предоставления Пользователю эффективной клиентской и технической поддержки при возникновении проблем связанных с использованием Сайта.<br />Предоставления Пользователю обновлений услуг, специальных предложений, информации о ценах, новостной рассылки и иных сведений от имени Сайта или от имени партнеров Сайта.<br />Осуществления рекламной деятельности Сайта.<br />Предоставления доступа Пользователю на сайты или сервисы партнеров Сайта с целью получения продуктов, обновлений и услуг.<br /><br />&nbsp;<br /><br /><strong>Собираемая информация (Персональная информация)</strong><br /><br />Мы собираем следующую информацию:<br /><br />Техническая информация, автоматически собираемая программным обеспечением Сайта во время его посещения.<br />Персональная информация, предоставляемая Вами при заполнении соответствующей формы или информация получаемая Сайтом с использованием Пользователем социальных сетей.<br />Иная информация предоставляется пользователем на его усмотрение.<br /><br />&nbsp;<br /><br /><strong>Техническая информация</strong><br /><br />Во время посещения вами Сайта, администрации Сайта автоматически становится доступной информация из стандартных журналов регистрации сервера (server logs). Сюда включается IP-адрес Вашего компьютера (или прокси-сервера, если он используется для выхода в Интернет), имя Интернет-провайдера, имя домена, тип браузера и операционной системы, информация о сайте/странице в социальных сетях, с которого Вы совершили переход на Сайт, страницах Сайта, которые Вы посещаете, дате и времени этих посещений, файлах, Cookie. Это информация анализируется нами в агрегированном (обезличенном) виде для анализа посещаемости Сайта, и используется при разработке предложений по его улучшению и развитию. Связь между Вашим IP-адресом и Вашей персональной информацией никогда не раскрывается третьим лицам, за исключением тех случаев, когда это на это получено согласие и /или требует законодательство.<br /><br />Техническую информацию о посещении Сайта (обезличенную) также собирают установленные на сайте счетчики статистики.<br /><br />&nbsp;<br /><br /><strong>Лично предоставленная информация</strong><br /><br />В целях заключения Договоров Пользователь также может предоставить следующие персональные данные о себе или об организации и её представителях в интересах которой он действует: имя, отчество, фамилия, должность, телефонный номер, дополнительно могут предоставляться наименование, корпоративные регистрационные данные (код предприятия, налоговый номер, адрес регистрации и почтовый адрес такой организации, корпоративный телефонный номер, расчетный счет, наименование обслуживающего банка, и корреспондентский счет и т.п.).Указанные сведения об организации не относятся к персональным данным.<br /><br />&nbsp;<br /><br /><strong>Обязательства сторон</strong><br /><br />Пользователь обязан:<br /><br />Предоставить информацию о персональных данных, необходимую для пользования Сайтом в рамках Пользовательского соглашения или заключения Договора.<br /><br />В случае заключения Договора с Владельцем Сайта обновить, дополнить предоставленную информацию о персональных данных в случае изменения данной информации. Администрация/представитель Сайта / Владелец сайта обязан:<br /><br />Использовать полученную информацию исключительно для целей, указанных в настоящей Политики конфиденциальности.<br /><br />Обеспечить хранение конфиденциальной информации, не разглашать без предварительного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя. Персональные данные Пользователя могут храниться в сроки и/или быть переданы уполномоченным органам государственной власти только по основаниям и в порядке, установленным законодательством.<br /><br />Принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.<br /><br />Осуществить уничтожение или блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.<br /><br />&nbsp;<br /><br /><strong>Защита собираемой информации.</strong><br /><br />Сайт принимает все необходимые и достаточно организационные, технические меры предосторожности для защиты конфиденциальности данных Пользователей.Только те сотрудники Сайта, которым необходимо выполнять рабочие функции, для которых требуется доступ к персональным данным, имеют доступ к информации о Пользователях.<br /><br />Пользователь признает, что в случае халатного отношения самим Пользователем к безопасному хранению персональных данных дающим доступ к ним, третьи лица могут получить несанкционированный доступ к ним. Сайт не несет ответственность за убытки причиненные таким доступом. Мы рекомендуем Пользователям использовать сложные пароли, состоящие из цифр и букв.<br /><br />&nbsp;<br /><br /><strong>Дополнительные условия</strong><br /><br />Администрация/представитель Сайта / Владелец сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия и без уведомления Пользователя. Пользователь берет на себя ответственность за ознакомление с обновленной версией Политики Конфиденциальности, в соответствии с которой регулируются правила пользования Сайтом. Изменения в Политику конфиденциальности вступает в силу с момента ее размещения на Сайте, если иное не предусмотрено новой редакцией Политики конфиденциальности.<br /><br />Действующая редакция Политики находится на Сайте Исполнителя и его поддоменах в сети Интернет.<br /><br />Данная ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ разработана и действует в рамках действующего Законодательства ЕС о защите физических лиц в отношении обработки персональных данных и о свободном перемещении таких данных.</p>', '2022-03-30 08:57:18', '2022-03-30 08:57:18');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-28 22:18:08', '2022-03-28 22:18:08');

-- --------------------------------------------------------

--
-- Структура таблицы `residency`
--

CREATE TABLE `residency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_var_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_var_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_var_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `var_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_var_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_fifth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `help` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_fifth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_fivth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `residency`
--

INSERT INTO `residency` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `first_var_content`, `second_var_content`, `third_var_content`, `var_img`, `alt_var_img`, `second_content`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `fifth_content`, `fifth_img`, `alt_fifth_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `help`, `first_second_img`, `alt_first_second_img`, `first_third_img`, `alt_first_fourth_img`, `first_fourth_img`, `alt_first_third_img`, `first_fifth_img`, `alt_first_fivth_img`) VALUES
(1, 'Резидентство Мальты', 'Гражданство Мальты (за прямые инвестиции)', 'Если при выборе программы второго гражданства в мире вы руководствуетесь такими критериями, как респектабельность и безопасность, то инвестиционная программа Мальты (Мальта CDI), наиболее подходящий вариант! Одновременно вы становитесь гражданином ЕС и гражданином Британского Содружества (Содружества Наций).', 'residency\\April2022\\bDRjaWGyeX5TFPytd5yB.jpg', '<p>В одно и то же время Мальта входит в Европейский Союз, Шенгенскую зону и Британское Содружество. С точки зрения политической и экономической стабильности Мальта находится в списке лидеров среди европейский государств. Безупречный кредитный рейтинг страны всегда имеет только позитивные прогнозы.</p>\r\n<p>Если вы готовы внести существенный вклад в экономику страны, то программа получения мальтийского гражданства за прямые инвестиции, как нельзя лучше подойдёт вам. В ответ на это вы можете рассчитывать на то, что члены вашей семьи также получат гражданство Мальты. Главным условием в процессе является успешное прохождение тщательной проверки самих заявителей и истории формирования их общего благосостояния.</p>', 'residency\\April2022\\h65miCfuuZRnW6sUjZJn.jpg', 'Фон', '<p><strong>12.000 &euro;</strong> в год пятилетняя аренда недвижимости;</p>\r\n<p><strong>58.000 &euro;</strong> контрибуция;</p>\r\n<p><strong>40.000 &euro;</strong> официальные платежи.</p>', '<p><strong>300.000 &euro;</strong> покупка недвижимости на юге Мальты / Гозо;</p>\r\n<p><strong>28.000 &euro;</strong> контрибуция;</p>\r\n<p><strong>40.000 &euro;</strong> официальные платежи.</p>', '<p><strong>350.000</strong> &euro; покупка недвижимости на территории Мальты;</p>\r\n<p><strong>28.000 &euro;</strong> контрибуция;</p>\r\n<p><strong>40.000 &euro;</strong> официальные платежи.</p>', 'residency\\April2022\\9nBqpFy6PE1ydGaudSxk.jpg', 'Фон', '<ol>\r\n<li>Свобода передвижения и нахождения в странах Шенгенского соглашения для вас и вашей семьи.</li>\r\n<li>Отсутствие налогов на персональные доходы, полученные за пределами Мальты.</li>\r\n<li>Экономическая и политическая стабильность.</li>\r\n<li>Социальные гарантии для резидентов.</li>\r\n<li>Ускоренный процесс получения ВНЖ и ПМЖ.</li>\r\n<li>Государственные гарантии для предпринимателей и инвесторов.</li>\r\n<li>Получение статуса резидента сразу всеми членами семьи, включая родителей и прародителей на всю жизнь.</li>\r\n<li>Отсутствие обязательств к проживанию на Мальте.</li>\r\n<li>Передача в наследство.</li>\r\n<li>Невысокая стоимость оформления.</li>\r\n<li>Первая ступень к гражданству Мальты.</li>\r\n</ol>', 'residency\\April2022\\WCrwSq8KHdQzpoyzeKC1.jpg', 'Фон', '<ol>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга.</li>\r\n<li>Дети до 18 лет без ограничений (в т. ч. дети от иного бракакаждого из супругов).</li>\r\n<li>Дети после 18 лет без ограничений(если находятся на иждивении у инвестораи не состоят в браке).</li>\r\n<li>Родители* инвестора, и родители супруга/супруги инвестора.</li>\r\n<li>Прародители* инвестора, и прародители супруга/супруги инвестора (* Родители и прародители имеют право на участие в программе, если находятся на иждивении у инвестора).</li>\r\n</ol>', 'residency\\April2022\\Lxx1LCPHmvLimWmLqJCy.jpg', 'Фон', '<ol>\r\n<li>действующий заграничный паспорт;</li>\r\n<li>свидетельство о рождении;</li>\r\n<li>свидетельство о браке (если применимо);</li>\r\n<li>существующие резидентские карточки или удостоверения личности, выданные другими странами;</li>\r\n<li>обязательство выполнения квалификационных требований;</li>\r\n<li>справка о состоянии здоровья;</li>\r\n<li>справка из полиции Мальты и справки из полиции, выданные компетентными органами страны происхождения, а также страной или странами проживания, где заявитель проживал в течение более шести месяцев за последние десять лет;</li>\r\n<li>аффидавит о поддержке каждого иждивенца старше восемнадцати лет (если применимо);</li>\r\n<li>подтверждение наличия средств (банковские выписки, подтверждение доходов, инвестиции и т. д.);</li>\r\n<li>резюме;</li>\r\n<li>официально заверенные переводы любых документов, которые были выданы не на английском языке.</li>\r\n</ol>', 'residency\\April2022\\6547kcVekKcNjF6aP56a.jpg', 'Фон', '<ol>\r\n<li>Заключение договора с официальной уполномоченной компанией на участие в программе.</li>\r\n<li>Оплата юридических услуг.</li>\r\n<li>Формирование досье.</li>\r\n<li>Подача уполномоченной компанией заявления на ПМЖ Мальты.</li>\r\n<li>Оплата первой части государственных сборов за обработку заявления (10 000 евро).</li>\r\n<li>Рассмотрение заявления на ПМЖ Мальты.</li>\r\n<li>Оплата второй части государственных сборов за обработку заявления (30 000 евро).</li>\r\n<li>Выполнение условий программы: контрибуция, покупка или аренда недвижимости на Мальте.</li>\r\n<li>Визит на Мальту для сдачи биометрических данных.</li>\r\n<li>Получение резидентских карточек (сроком на 5 лет) посредством уполномоченной компании.</li>\r\n</ol>', 'residency\\April2022\\NnlSOPpYqwb5QOSndDHu.jpg', 'Фон', 'rezidentstvo-malty5', 0, 0, 'Резидентство Мальты', 'Резидентство Мальты', 'Резидентство Мальты', '2022-04-05 05:10:00', '2022-05-04 06:32:01', 'гражданство Мальты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Резидентство Австрии', 'Вид на жительство Австрии (для финансово независимых)', 'Австрия предлагает несколько вариантов получения ВНЖ, но мы рассмотрим наиболее простой вариант получения вида на жительство – это ВНЖ для финансово-независимых людей. Данный вид ВНЖ распространяется не только на заявителя, но и на всех членов его семьи. Если вы инвестор или собственник бизнеса, то вы идеальный претендент на получения ВНЖ Австрии.', 'residency/April2022/DOkYeBxaait0KJdcbOd0.png', '<p>По данной резидентской программе правительство выделяет квоты, которые распределены между отдельными территориальными субъектами страны (регионами). При этом для каждой земли квота может быть разной и чем популярнее регион, тем быстрее исчерпывается квота. Так, быстрее всего исчерпываются квоты в Вене, значительно больше свободных мест остаётся для желающих проживать в Нижней Австрии и некоторых других землях.</p>', 'residency/April2022/YyePemAPu244eU5CnzRS.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Безвизовые перемещения.</strong></li>\r\n</ul>\r\n<p>ВНЖ Австрии дает право постоянно проживать в Австрии, а также без визы посещать страны Европы включая страны-участницы Шенгенского соглашения.</p>\r\n<ul>\r\n<li><strong>Вид на жительство для всей семьи.</strong></li>\r\n</ul>\r\n<p>ВНЖ получит не только основной инвестор, но и члены семьи одновременно, в том числе зависимые взрослые дети.</p>\r\n<ul>\r\n<li><strong>Нет обязательств проживания и налогового резидентства.</strong></li>\r\n</ul>\r\n<p>ВНЖ Австрии для финансово независимых граждан не обязывает проживать в Австрии, а, следовательно, можно выбирать в какой стране быть налоговым резидентом.&nbsp;</p>\r\n<ul>\r\n<li><strong>Перспектива получения ПМЖ и Гражданства.</strong></li>\r\n</ul>\r\n<p>Проживание в Австрии на основании вида на жительство даст возможность в будущем получить право на ПМЖ и гражданство Австрии.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/cKyztwkkPOC8MbY7ZqKo.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям имеющим пассивный или иной доход за пределами Австрии.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p>Также вам необходимо соблюсти следующие условия:</p>\r\n<ul>\r\n<li><strong>Финансовая независимость</strong></li>\r\n</ul>\r\n<p>Необходимо иметь на банковском счету сумму от &euro;400 000 либо иметь на счёту сумму от &euro;20 000 на каждого взрослого члена семьи и от &euro;10 000 на каждого ребёнка в семье плюс подтвержденный доход &mdash; от &euro;2000 в месяц на каждого члена семьи.</p>\r\n<ul>\r\n<li><strong>Наличие недвижимости для проживания.</strong></li>\r\n</ul>\r\n<p>Резидент должен иметь постоянный адрес проживания, закреплённый за ним на основании документов о собственности, либо договора аренды.</p>\r\n<ul>\r\n<li><strong>Знание немецкого языка.</strong></li>\r\n</ul>\r\n<p>Нужно подтвердить базовый уровень A1.</p>\r\n<ul>\r\n<li><strong>Отсутствие судимостей и заболеваний.</strong></li>\r\n</ul>\r\n<p>Подтверждается справкой из органов внутренних дел и медицинского учреждения соответственно.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/IVdXFVrjVLE17l9lI9Wz.jpg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить документы, которые подтверждают следующие факты и обстоятельства:</p>\r\n<ul>\r\n<li>свидетельство о рождении;</li>\r\n<li>цветные копии страниц загранпаспорта;</li>\r\n<li>две фотографии, как на шенгенскую визу;</li>\r\n<li>банковская выписка и/или подтверждения доходов;</li>\r\n<li>свидетельства о браке/разводе (если применимо);</li>\r\n<li>справка об отсутствии судимости (выданная не ранее чем за 3 месяца до подачи заявления);</li>\r\n<li>справка об отсутствии опасных заболеваний, выданная признаваемым в Австрии медучреждением.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/rXnWJFjQYRlfbsDYy1Fy.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp;</p>\r\n<ol>\r\n<li>Консультация по вопросам подготовки досье и выбору земли для попадания в квоту</li>\r\n<li>Сбор и подготовка необходимых документов.</li>\r\n<li>Сопровождение в покупке/аренде недвижимости. Оформление мед. страховки. Помощь в открытии банковского счета.</li>\r\n<li>Подача заявления в австрийское консульство и получение положительного решения.</li>\r\n<li>Прибытие в Австрию, регистрация по месту жительства и получение карты резидента.</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'residency/April2022/BvB5aKMgC206ufIvakU7.jpg', 'img', 'rezidentstvo-avstrii', 1, 0, 'Резидентство Австрии', 'Резидентство Австрии', 'Резидентство Австрии', '2022-04-18 08:01:00', '2022-05-04 06:24:47', 'Вид на жительство Австрии', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Резидентство Андорры', 'Вид на жительство Андорры (на основании инвестиции в государственные облигации)', 'Сравнительно низкие налоги отличают Андорру от других европейских стран.', 'residency/April2022/NtXh1RD5dAtxYg2BUfBA.jpg', '<p>Вместе с видом на жительство вы получаете статус налогового резидентства, вместе с которым и все его преимущества, такие как возможность пользования банковской системой. В Андорре полностью отсутствуют налоги на дивиденд, дарение, наследование и налог на богатство.</p>', 'residency/April2022/i40nr4DdG2ENVk2BToos.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p><strong>Постоянное проживание и безвизовые перемещения.</strong></p>\r\n<p>ВНЖ Андорры дает право постоянно проживать в Андорре (минимальное количество - 90 дней в году), а также без визы посещать три европейских страны &mdash; это Франция, Испания и Португалия.</p>\r\n<p><strong>ВНЖ для всей семья.</strong></p>\r\n<p>Вид на жительство получит не только основной заявитель, но и супруг/супруга и несовершеннолетние дети одновременно с заявителем.</p>\r\n<p><strong>Удобное налоговое резидентство.</strong></p>\r\n<p>В Андорре одни из самых низких налоговых ставок корпоративного и подоходного налога, а налоги на наследование, дарение и богатство вообще отсутствуют.</p>\r\n<p><strong>Возможность в будущем получения ПМЖ и Гражданства.</strong></p>\r\n<p>Проживание в Андорре на основании вида на жительство даст право в будущем получить право на получение гражданства Андорры для всех членов семьи основного заявителя.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/RE50eqFRObn89ZcEspSr.jpg', 'img', '<p>Одна из наиболее простых возможностей получить статус резидента в Европе для финансово-независимых аппликантов.&nbsp; Критерии участия максимально простые:</p>\r\n<ul>\r\n<li><strong>Наличие банковского счета в одном из банков Андорры.</strong></li>\r\n</ul>\r\n<p>и размещение минимум 150 000 евро на данном счете.</p>\r\n<ul>\r\n<li><strong>Инвестиции в государственные облигации Андорры.</strong></li>\r\n</ul>\r\n<p>суммы в размере 320 000 евро на весь срок наличия вашего резидентства.</p>\r\n<ul>\r\n<li><strong>Размещение на депозитном счете Министерства Финансов Андорры суммы 50 000 евро.</strong></li>\r\n</ul>\r\n<p>для основного заявителя и по 10 000 евро на каждого последующего члена семьи.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/DFKL29rqx944MFkefAKR.jpg', 'img', '<ul>\r\n<li><strong>Действующий заграничный паспорт;</strong></li>\r\n<li><strong>Выписки с банковских счетов;</strong></li>\r\n<li><strong>Документы, подтверждающие стабильный доход;</strong></li>\r\n<li><strong>Документ из страны постоянного проживания об отсутствии задолженности по уплате налогов;</strong></li>\r\n<li><strong>Справка об отсутствии судимостей;</strong></li>\r\n<li><strong>Документы, подтверждающие наличие недвижимости;</strong></li>\r\n<li><strong>Свидетельство о заключении брака (если имеется);</strong></li>\r\n<li><strong>Свидетельство о рождении детей (если есть несовершеннолетние дети).</strong></li>\r\n</ul>\r\n<p>Все документы должны быть в виде нотариальной копии, заверены Апостилем и переведены. Документы под номером 2-4 должны быть не старше 30 дней. Документы под номером 5-8 должны быть не старше 90 дней.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/p79TxOnUd9qzzWXej5Sq.jpg', 'img', '<p>Обращаясь в нашу компанию вы можете рассчитывать, что уже на первой консультации вам будет озвучен подробный алгоритм действий необходимых для получения ВНЖ Андорры. Мы действуем максимально в пользу ваших интересов. Доверьте процесс нашим специалистам, и вы получите самый комфортный и профессиональный сервис.&nbsp;</p>', 'residency/April2022/98M84Uhv2H4hSjkkk4eB.jpg', 'img', 'rezidentstvo-andorry', 1, 0, 'Резидентство Андорры', 'Резидентство Андорры', 'Резидентство Андорры', '2022-04-18 08:14:00', '2022-05-04 06:22:42', 'Вид на жительство Андорры', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Резидентство Великобритании', 'Вид на жительство в Великобритании «UK Tier 1 Interpreneur Visa»', 'Программа «TIER 1 ENTREPRENEUR ВИЗА» предоставляет возможность получения временного вида на жительства (ВНЖ) с перспективой получения в дальнейшем статуса постоянного резидента (ПМЖ) и получением гражданства.', 'residency/April2022/e0an6b6Lgi0ROiJI2NMG.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Данная программа в большей степени была создана для привлечения людей с предпринимательским мышлением и навыками ведения бизнеса. Если другие программы делают упор на привлечение инвестиций в экономику страны, то данная программа обязывает предпринимателя прежде всего продемонстрировать серьёзность своих намерений по ведению бизнеса и дальнейшего его развития на территории Великобритании.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Есть два варианта получения данного статуса, а именно: 1) присоединиться к уже существующему бизнесу; 2) открыть свое дело на территории королевства.</p>', 'residency/April2022/GbatZHBV2S5lSGY78MOR.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Постоянное проживание в стране.</strong></p>\r\n<p class=\"MsoNormal\">Инвестор вместе с семьёй может пользоваться всеми доступными правами резидентов Великобритании на образование, работу и ведение бизнеса в этой стране.</p>\r\n<p class=\"MsoNormal\"><strong>Перспектива получения ПМЖ и Гражданства.</strong></p>\r\n<p class=\"MsoNormal\">Временный вид на жительство выдается на 2 года, затем можно получить постоянный вид на жительство и после 3 лет гражданство.</p>\r\n<p class=\"MsoNormal\"><strong>Небольшие первоначальные инвестиции</strong></p>\r\n<p class=\"MsoNormal\">Это прежде всего не столько инвестиционная программ, сколько программа, рассчитанная на привлечение средней прослойки предпринимателей. В связи с этим входной порог составляет всего &pound; 200&nbsp;000.</p>\r\n<p class=\"MsoNormal\"><strong>Различные формы участия в бизнесе.</strong></p>\r\n<p class=\"MsoNormal\">Подойдёт любая форма участия в бизнесе: активная или пассивная. Вам не обязательно напрямую принимать участие в бизнес процессах для того, чтобы получить статус.</p>', 'residency/April2022/zjaDhbdcGGdxJdlDy8Kk.jpg', 'img', '<p class=\"MsoNormal\"><strong>Получить визу &laquo;UK Tier 1 Interpeneur&raquo; могут:</strong></p>\r\n<ul>\r\n<li class=\"MsoNormal\"><strong>основной инвестор</strong></li>\r\n<li class=\"MsoNormal\"><strong>супруг/супруга</strong></li>\r\n<li class=\"MsoNormal\"><strong>несовершеннолетние дети</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/o9Webw1xa2GdEkxEHMdR.jpg', 'img', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты помогут определиться вам с вариантом получения желаемого статуса и списком необходимых для начала процесса документами. </span></p>', 'residency/April2022/CxzOB1oRL9JtTPmMnSqh.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной. Наша компания готова предложить вам следующие услуги после подписания договора:</p>\r\n<p class=\"MsoNormal\"><strong>ПОМОЩЬ С ВЫБОРОМ БИЗНЕСА.</strong></p>\r\n<p class=\"MsoNormal\">Одной из основных сложностей в процессе получении ВИЗЫ является необходимость доказать иммиграционной службе Великобритании реальность предпринимательских намерений заявителя. Мы легко решаем эту задачу, подбирая компанию того рода деятельности, который максимально соответствует академическому и профессиональному опыту клиента.</p>\r\n<p class=\"MsoNormal\"><strong>ПОДГОТОВКА ДОКУМЕНТОВ ДЛЯ ПОЛУЧЕНИЯ ВИЗЫ.</strong></p>\r\n<p class=\"MsoNormal\">Одной из основных сложностей в процессе получении ВИЗЫ является необходимость доказать иммиграционной службе Великобритании реальность предпринимательских намерений заявителя. Мы легко решаем эту задачу, подбирая компанию того рода деятельности, который максимально соответствует академическому и профессиональному опыту клиента.</p>\r\n<p class=\"MsoNormal\"><strong>СОПРОВОЖДЕНИЕ ПРОЦЕССА ПРИОБРЕТЕНИЯ ДОЛЕЙ.</strong></p>\r\n<p class=\"MsoNormal\">Участие клиента в бизнесе обеспечивается через покупку акций компании (долей). Мы представляем интересы клиента в ходе ведения переговоров с владельцами бизнеса и обеспечиваем всестороннюю защиту клиента, а также наиболее выгодные условия для будущего выхода из бизнеса, если потребуется.</p>\r\n<p class=\"MsoNormal\"><strong>СОЗДАНИЕ РАБОЧИХ МЕСТ.</strong></p>\r\n<p class=\"MsoNormal\">Принимая инвестиции, компания берет на себя обязательства по сбору необходимых документов, подтверждающих участие клиента в бизнесе, созданию 2-х рабочих мест и предоставлению клиенту позиции директора. Все это необходимо для положительного результата.</p>\r\n<p class=\"MsoNormal\"><strong>ОБЕСПЕЧЕНИЕ УСЛОВИЙ ДЛЯ ПРОДЛЕНИЯ.</strong></p>\r\n<p class=\"MsoNormal\">Наши юристы контролируют соблюдение компанией требований, необходимых с точки зрения иммиграционного процесса для продления визы вплоть до момента получения клиентом постоянного вида на жительство (ПМЖ).</p>\r\n<p class=\"MsoNormal\"><strong>ВСЕСТОРОННЯЯ ПОДДЕРЖКА.</strong></p>\r\n<p class=\"MsoNormal\">Мы понимаем, что при переезде в новую страну неизбежно возникновение множества вопросов, связанных, например, с налоговым планированием, покупкой или арендой недвижимости, выбором образовательного учреждения.<br />Стремясь помочь клиенту, мы предоставляем в его распоряжение нашу партнерскую программу, избавляющую от необходимости самостоятельного поиска решений.</p>', 'residency/April2022/K7aD38l1zBXOERYYgfxu.jpg', 'img', 'rezidentstvo-velikobritanii', 1, 0, 'Резидентство Великобритании', 'Резидентство Великобритании', 'Резидентство Великобритании', '2022-04-18 08:25:00', '2022-05-04 06:19:55', 'Вид на жительство в Великобритании', NULL, NULL, NULL, NULL, NULL, NULL, 'residency/April2022/WWufoYPkHwf1GHKtVB6P.jpeg', NULL),
(5, 'Резидентство Греции', 'Вид на жительство в Греции (для финансово независимых заявителей)', 'Эта программа идеально подходит тем, у кого есть стабильный и регулярный доход за пределами Греции, и кто не претендует на поддержку от государства или предоставлении рабочего места на территории Греции.', 'residency/April2022/u53xRSXdO356yfoP5dnx.jpg', '<p>ВНЖ выдается на 2 года с возможностью его продления каждые 2 года. Главным условием сохранения и продления ВНЖ является тот факт, что вы не должны потерять ваш доход. Таким образом вы сможете рассчитывать на продление статуса и его сохранность.</p>', 'residency/April2022/0QkECD1bEkmKdiTIltGW.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Не нужны визы в Шенген и ЕС для путешествий и проживания.</strong></p>\r\n<p class=\"MsoNormal\">Основной заявитель и члены его семьи могут постоянно находиться и путешествовать по Европе без каких-либо ограничений.</p>\r\n<p class=\"MsoNormal\"><strong>Широкий спектр возможностей для жизни и бизнеса.</strong></p>\r\n<p class=\"MsoNormal\">Для вас доступны все опции резидентов ЕС кроме права голоса на выборах и участия в политических действиях. Вы можете жить, вести бизнес, обучать детей и получать образование.</p>\r\n<p class=\"MsoNormal\"><strong>Постоянное проживание не требуется.</strong></p>\r\n<p class=\"MsoNormal\">Нет требований к наличию недвижимости, приобретению бизнеса или постоянному нахождению в стране.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">П<span style=\"mso-bidi-font-weight: bold;\">олучение ПМЖ и гражданства ЕС.</span></strong></p>\r\n<p class=\"MsoNormal\">Если вы получили статус ВНЖ, то в дальнейшем сможете претендовать на получение ПМЖ и гражданства.</p>', 'residency/April2022/SxbjVjJzd27NahyyNqNr.jpg', 'img', '<ul>\r\n<li><strong>Основной инвестор с доходом не менее 2 000 Евро ежемесячно.</strong></li>\r\n<li><strong>Супруг/супруга с учётом суммы + 20 % к основному доходу заявителя. </strong></li>\r\n<li><strong>Дети до 18 лет с учётом суммы + 15 % к основному доходу заявителя на каждого последующего ребёнка.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/BjWskHupgtPTh8EaIfKs.jpg', 'img', '<ul>\r\n<li>Действующий заграничный паспорт;</li>\r\n<li>Справка об отсутствии судимости для лиц старше 14 лет;</li>\r\n<li>Справка о состоянии здоровья;</li>\r\n<li>Доказательства постоянного дохода или финансового обеспечения. Это могут быть: налоговая декларация, справка о доходах, справка о получении дивидендов, банковская выписка о наличии минимум 48 000 евро (в зависимости от состава семьи);</li>\r\n<li>Страховой медицинский полис;</li>\r\n<li>Свидетельства о заключении брака и рождении детей &ndash; в случае оформления членов семьи вместе с основным заявителем;</li>\r\n<li>Подтверждение наличия места жительства в Греции (собственное или арендованное жилье) или регистрационный адрес, который может быть предоставлен по цене 2000 евро / год;</li>\r\n<li>Все документы должны быть официально переведены на греческий или английский язык.</li>\r\n<li>Срок рассмотрения заявления на ВНЖ &ndash; 3 месяца.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/pOMe4OnjUp2ZBg3jePWN.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации вам подробно расскажут об этапах получении ВНЖ Греции для финансово-независимых людей. Таким образом вам сразу станет понятен весь процесс и алгоритм необходимых действий.</p>', 'residency/April2022/U0icgBfpqw6kUrneAquq.jpg', 'img', 'rezidentstvo-grecii', 1, 0, 'Резидентство Греции', 'Резидентство Греции', 'Резидентство Греции', '2022-04-18 08:33:00', '2022-05-04 06:19:28', 'Вид на жительство в Греции', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Резидентство Испании', 'Вид на жительство Испании (золотая виза на основании инвестиций)', 'В 2013 году в Испании был принят закон о поддержке инвесторов и их интернационализации. Согласно этому закону для получения ВНЖ в Испании предусмотрен ряд новых оснований, в частности инвестирование в недвижимость или экономику Испании.', 'residency/April2022/DCTj6iflb3TR8LYA4GlH.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Этот тип вида на жительство в Испании возможно получить не покидая Испанию всего за 20 дней. А отсутствие требований проживания в стране дает возможность не становиться налоговым резидентом Испании. Также &laquo;<span style=\"mso-bidi-font-weight: bold;\">золотая виза&raquo; или ВНЖ инвестора дает право на работу<br />в Испании всем членам семьи инвестора.</span></p>', 'residency/April2022/r1Dcg9CkQZkRqdz56XZS.jpg', 'img', '<p class=\"MsoNormal\">Инвестиции в жилую или коммерческую недвижимость <strong>от 500 000 евро.</strong></p>', '<p class=\"MsoNormal\">Инвестиции в акции или размещение депозита в банке <strong>от 1 000 000 евро.</strong></p>', '<p class=\"MsoNormal\">Инвестиции в облигации государственного займа <strong>от 2 000 000 евро.</strong></p>\r\n<p class=\"MsoNormal\">Также под действие нового закона попадают инвесторы, подготовившие инвестиционный проект, предусматривающий создание рабочих мест, либо инвестиции в социально-экономической сфере, либо инновации в сфере науки и технологий.</p>', 'residency/April2022/fSOhmrqWnqnNipdpY7Z9.jpg', 'img', '<p class=\"MsoNormal\"><strong>Постоянное проживание и безвизовые перемещения.</strong></p>\r\n<p class=\"MsoNormal\">ВНЖ Испании дает право постоянно проживать в Испании, а также без визы посещать страны Шенгенского соглашения.</p>\r\n<p class=\"MsoNormal\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">Вид на жительство получит не только основной инвестор, но и члены семьи одновременно, в том числе зависимые взрослые дети и родители.</p>\r\n<p class=\"MsoNormal\"><strong>Нет обязательств проживания.</strong></p>\r\n<p class=\"MsoNormal\">ВНЖ на основании инвестиций не обязывает проживать в Испании, достаточно посещать страну всего на 1 день за период действия ВНЖ.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность в будущем получения ПМЖ и Гражданства.</strong></p>\r\n<p class=\"MsoNormal\">Проживание в Испании на основании вида на жительство даст право в будущем получить право на получение ПМЖ и гражданства ЕС.</p>', 'residency/April2022/cLCUQawesaEAcmnkmBLV.jpg', 'img', '<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n<li>Зависимые взрослые дети и родители.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/R8gL7f7KGOiu3tnp28XF.jpg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить документы, которые подтверждают следующие факты и обстоятельства:</p>\r\n<ul>\r\n<li>Наличие места жительства в Испании (можно использовать инвестиционную жилую недвижимость);</li>\r\n<li>Достаточное количество денежных средств на банковском счету в Испании;</li>\r\n<li>Страхование вашего здоровья;</li>\r\n<li>Отсутствие судимостей и криминального прошлого.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/PUmJKfXFuimIkOijWwZL.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной. Процесс подачи может изменяться в зависимости от выбранного варианта:</p>\r\n<p>1.<strong> ЗОЛОТАЯ ВИЗА ИНВЕСТОРА:</strong></p>\r\n<ul>\r\n<li>Оформляется в консульстве Испании;</li>\r\n<li>Выдается за 10 дней;</li>\r\n<li>На 1 год с последующим продлением на 2 года.</li>\r\n</ul>\r\n<p>2.<strong> ВНЖ ИНВЕСТОРА:</strong></p>\r\n<ul>\r\n<li>Оформляется на территории Испании;</li>\r\n<li>Выдается за 20-30 дней;</li>\r\n<li>На 2 года с последующим продлением на 5 лет.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/Nnfa3vV3HtaxB4rgiSJT.jpg', 'img', 'rezidentstvo-ispanii', 1, 0, 'Резидентство Испании', 'Резидентство Испании', 'Резидентство Испании', '2022-04-18 08:43:00', '2022-05-04 06:19:05', 'Вид на жительство Испании', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Резидентство Италии', 'Специальный налоговый режим и ПМЖ Италии (через налоговое соглашение)', 'Благодаря изменениям в итальянском налоговом законодательстве, был введён дополнительный налоговый режим.', 'residency/April2022/POplnxwj9l4WpFytnwd5.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">По требованиям данного режима предусмотрена оплата так называемого альтернативного налога с фиксированной суммой 100.000 евро в год. Таким образом иностранцы с высокой чистой стоимостью активов (</span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">HNWI</span><span style=\"mso-bidi-font-weight: bold;\">) имеют возможность перенести своё налоговое резидентство в Италию получив при этом право на проживание через налоговое соглашение. Данный тип налогового соглашения не подразумевает обязательного физического проживания в Италии.<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>', 'residency/April2022/47XjYjk5549c6u9Thqqu.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p>Преимущества ПМЖ Италии через налоговое соглашение:</p>\r\n<ul>\r\n<li><strong>Постоянное проживание и безвизовые перемещения по Европе.</strong></li>\r\n</ul>\r\n<p>ПМЖ Италии дает право постоянно проживать в Италии, а также без визы посещать другие страны, входящие в Шенгенское соглашение.</p>\r\n<ul>\r\n<li><strong>Особый налоговый режим.</strong></li>\r\n</ul>\r\n<p>При котором не действует прогрессивная шкала налогообложения, а на весь иностранный доход платится только фиксированная сумма налога - 100 000 евро в год.</p>\r\n<ul>\r\n<li><strong>Нет обязательств по проживанию.</strong></li>\r\n</ul>\r\n<p>Получить специальное налоговое резидентство можно и без постоянного проживания в Италии.</p>\r\n<ul>\r\n<li><strong>Быстрый путь к получению ПМЖ.</strong></li>\r\n</ul>\r\n<p>Заключение налогового соглашения дает право получения разрешения на постоянное проживание в Италии для всей семьи.</p>\r\n<ul>\r\n<li><strong>Освобождение от стандартной итальянской системы финансового мониторинга.</strong></li>\r\n<li><strong>ОСВОБОЖДЕНИЕ ОТ IVIE.</strong></li>\r\n</ul>\r\n<p>Освобождение от IVIE (налога на недвижимое имущество за рубежом) и IVAFE (налога на имущество и финансовые активы за рубежом).</p>\r\n<ul>\r\n<li><strong>ОСВОБОЖДЕНИЕ ОТ НАЛОГОВ НА НАСЛЕДОВАНИЕ И ДАРЕНИЕ.</strong></li>\r\n</ul>\r\n<p>Освобождение от налогов на наследование и дарение в случае передачи в связи с кончиной, дарением и другой̆ безвозмездной̆ передачей̆ активов, находящихся за рубежом (в том числе передачу активов в траст), независимо от отношений̆ между новым итальянским резидентом который̆ передает и его правопреемником.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/YMB3oI4VVaR3ga7yNhpG.jpeg', 'img', '<p>Идеально подойдёт предпринимателям, которые желают вести свой бизнес на территории Европы. Заявитель может заключить &laquo;налоговое соглашение&raquo; на следующих условиях:</p>\r\n<p><strong>Фиксированная сумма для дохода за пределами Италии:</strong></p>\r\n<ul>\r\n<li>100 000 евро за каждый налоговый год.</li>\r\n<li>25 000 евро за каждого дополнительного члена семьи.</li>\r\n</ul>\r\n<p><strong>Обычный режим налогообложения для дохода из источника на территории Италии:</strong></p>\r\n<ul>\r\n<li>прогрессивная шкала налогообложения до 43%.</li>\r\n</ul>\r\n<p><strong>Исключены из налогового соглашения в течении первых пяти лет:</strong></p>\r\n<ul>\r\n<li>Доходы на прирост капитала от продажи квалифицированных холдингов.</li>\r\n<li>Доходы от прироста капитала на &laquo;существенные доли&raquo; (более 2% / 20% права голоса и более 5% / 25% капитала).</li>\r\n</ul>\r\n<p><strong>Что покрывает налоговое соглашение:</strong></p>\r\n<ul>\r\n<li>Доход от зарубежных недвижимых активов.</li>\r\n<li>Доход от занятости и самозанятости, осуществляемой за рубежом.</li>\r\n<li>Дивиденды и проценты от иностранных юридических лиц.</li>\r\n<li>Деловые доходы от зарубежных операций.</li>\r\n<li>Прочие доходы в т.ч. на прирост капитала от активов и деятельности, находящихся за рубежом.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/gW283qpiDhi8g1SDqiep.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты предложат вам ознакомиться с основными требованиями к претендентам и первичным списком необходимых документов. </span></p>', 'residency/April2022/gb6agW0v0Y14rHgymr87.jpg', 'img', '<ul>\r\n<li>Для того чтобы подать заявление на получение благоприятной ставки налога в Италии, физические лица должны предоставить решение (interpello) в итальянский̆ налоговый̆ орган в течение до 30 сентября налогового периода, следующего за изменением места жительства.</li>\r\n<li>В выбранном варианте необходимо указать последнюю страну налогового резидентства и членов семьи, которые сменили свое место жительства на Италию.</li>\r\n<li>Выбранный̆ вариант может быть отменен и, как бы там ни было, утратит свое действие спустя 15 налоговых периодов. В случае пропущенной̆, частичной̆ или поздней̆ оплаты обязательного налога, благоприятный налоговый̆ режим теряет свои силу. Воздействие на предыдущие налоговые периоды сохраняются в силе.</li>\r\n<li>Как аннулирование, так и истечение срока действия не допускают подачу физическим лицом заявки на новый̆ период благоприятного налогового режима.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/gFRiVkA79Y9D49zpP7Xa.jpg', 'img', 'rezidentstvo-italii', 1, 0, 'Резидентство Италии', 'Резидентство Италии', 'Резидентство Италии', '2022-04-18 09:01:00', '2022-05-04 06:18:38', 'Вид на жительство в Италии', 'residency/April2022/eVXkvbDDNmOeCaVuz8am.jpeg', NULL, 'residency/April2022/CkZBTOJIae6hF0qzg2ON.jpeg', NULL, NULL, NULL, NULL, NULL),
(8, 'Резидентство Канады', 'Резидентство Канады (Иммиграционные программы)', 'Канада – крупнейшее государство Североамериканского континента с сильной экономикой и высоким уровнем жизни.', 'residency/April2022/fPbORCXoFe3ouzNpnXCL.jpg', '<p class=\"MsoNormal\">В Канаде действует сильная политическая система, качественная система образования и здравоохранения, невысокие и выгодные ставки налогообложения физических и юридических лиц. По этой причине Канаду часто выбирают для проживания, ведения бизнеса, воспитания детей, трудоустройства и инвестиций. В стране действует большое количество программ предоставления видов на жительство. На данный момент наша компания предлагает варианты получения резидентства Канады посредством регистрации в региональных и федеральных программах, таких как \"Express Entry\", \"Provincial Nominee Program\", \"Pilot Immigration Program\" и многие другие. Сейчас Канада предлагает более 80 вариантов программ и около 120 легальных путей иммиграции. Обращаясь к нам вы можете расчитывать на квалифицированную помощь специалистов!</p>', 'residency/April2022/ubjuhs6RSao3sRBARWa9.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\">Благоприятный бизнес-климат, доступные социальные программы, первоклассные образование и медицина, все это привлекает в Канаду людей со всего мира. Из-за высокого количества иммигрантов в стране много этнических групп, но государственными считаются английский и французский. Безвизовый въезд в 188 стран мира. После получения вида на жительство уже через три года вы сможете претендовать на гражданство.</p>', 'residency/April2022/pitEx1AB4YYdJMW190w0.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Программы Канады хорошо подойдут финансово-независимым людям, инвесторам, квалифицированным специалистам, студентам, получившим образование в Канаде и ещё нескольким категориям людей. Основные критерии это: возраст до 45 лет; наличие образования и/или профессии; подтверждение рабочего статжа (помогаем с подготовкой документов для подтверждения); хорошее здоровье (необходимо будет пройти медицинское обследование); наличие необходимых средств для иммиграции и продемонстрировать хорошие языковые навыки (английский и/или французский языки).</p>', 'residency/April2022/6W72nSfmJ5VdQITY4EeP.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Уже на первой консультации вы получите перечень необходимых документов в зависимости от выбранного вами варианта получения резиденства Канады.</p>', 'residency/April2022/o0uykEfDWjxXqCidntyy.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Процесс подачи документов напрямую зависит от выбранной программы, на данный момент существует несколько десятков направлений по которым можно иммигрировать в Канаду и получить вид на жительство. На первой же консультации мы оценим ваши иммиграционные шансы и поможем определиться с иммиграционной стратегией. Наши специалисты &mdash; это лицензированные консультанты с многолетним опытом работы.</p>', 'residency/April2022/HpVP7nBsIiqqm1a2Qspb.jpg', 'img', 'rezidentstvo-kanady', 1, 0, 'Резидентство Канады', 'Резидентство Канады', 'Резидентство Канады', '2022-04-18 09:06:00', '2022-05-24 06:13:11', 'Резидентство Канады', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Резидентство Кипра', 'Постоянное место жительства на Кипре (через инвестиции в недвижимость)', 'В каждой европейской стране есть свое налоговое законодательство, Кипр выгодно отличается от других стран Евросоюза тем, что если вы наряду с бизнес интересами преследуете цель получить право на постоянное проживание на Кипре, то вы можете получить всё это через покупку недвижимости.', 'residency/April2022/c8httJCSfe23qEGcXGQm.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Также особенностью программы является тот факт, что иностранный гражданин, инвестировавший средства в покупку недвижимость на Кипре, получает уникальную возможность получить статус постоянного резидента всего за 2 месяца.</span></p>', 'residency/April2022/JVulFeTQsJiviSxciHUS.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong>Статус</strong><span style=\"mso-bidi-font-weight: bold;\"> <strong>ПМЖ страны, входящей в Европейский Союз.</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">ПМЖ Кипра позволяет постоянно проживать на Кипре и после завершения вступления Кипра в Шенгенскую зону позволит перемещаться по всему Шенгенскому пространству.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong>Статус ПМЖ для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Вместе с основным заявителем ПМЖ получат и члены его семьи: супруга, дети, в т.ч. совершеннолетние дети в возрасте до 28 лет и финансово зависимые родители</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong>Нет требований к проживанию и оплате налогов.</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Обладатели статуса ПМЖ Кипра за покупку недвижимости не становятся автоматически налоговыми резидентами Кипра при этом они не обязаны проживать на Кипре.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong>Возможность получения гражданства страны Евросоюза.</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Статус ПМЖ Кипра через инвестиции в недвижимость при проживании на Кипре предусматривает в будущем возможность получения гражданства Кипра.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><strong>Получение налогового резидентства Кипра.</strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">При проживании на территории Кипра всего 60 дней, резидент Кипра, в праве также получить налоговое резидентство Кипра и пользоваться всеми преимуществами налоговой системы Кипра.</span></p>', 'residency/April2022/mumcw4DcLf6UlBKNWYLL.jpg', 'img', '<p>Наиболее простая возможность получить статус резидента в Европе для финансово-независимых аппликантов.&nbsp; На данный момент претендовать на ВНЖ вместе с основным заявителем могут:</p>\r\n<ul>\r\n<li>Супруга и несовершеннолетние дети;</li>\r\n<li>Дети от 18 до 25 лет.</li>\r\n<li>(при условии обучения на очной форме и финансовой зависимости от основного заявителя). При этом после 25 лет они не утрачивают полученный статус.</li>\r\n<li>Финансово-зависимые родители заявителя и/или финансово-зависимые родители супруги/супруга.</li>\r\n</ul>\r\n<p>Обязательным условием будет финансовая состоятельность основного заявителя, выраженная в следующих действиях:</p>\r\n<p><strong>1) Приобретение недвижимости на Кипре на сумму от 300.000 Евро, которая бы соответствовала следующим критериям:</strong></p>\r\n<ul>\r\n<li>Приобретена на первичном рынке у застройщика;</li>\r\n<li>Собственные средства инвестора составляют как минимум 200 000 евро;</li>\r\n<li>Покупка должна быть осуществлена за счет средств, поступивших из источников вне Кипра.</li>\r\n</ul>\r\n<p><strong>2) Годовой доход должен составлять не менее 30.000 Евро и должен быть получен из-за пределов Кипра.</strong></p>\r\n<p>Размер дохода должен быть больше при оформлении членов семи на 5000 евро для супруги и каждого ребенка и на 8000 евро на каждого финансово-зависимого родителя, включенного в заявлении на резидентство.</p>\r\n<p><strong>3) Размещение суммы не менее 30.000 Евро в одном из банков Кипра сроком на три года.</strong></p>\r\n<p><strong>Возможности при покупке недвижимости на Кипре:</strong></p>\r\n<ul>\r\n<li>Вы можете приобрести один объект жилой недвижимости на Кипре;</li>\r\n<li>Вы можете приобрести два объекта жилой недвижимости, например, это может быть покупка дома + апартаментов;</li>\r\n<li>Вы можете приобрести жилую недвижимость + складское или торговое помещение площадью до 100 квадратных метров.</li>\r\n<li>Вы можете приобрести жилое помещение, плюс офис площадью до 250 квадратных метров.</li>\r\n<li>Совокупная стоимость двух объектов должна быть не меньше 300 000 евро.</li>\r\n<li>Оба объекта недвижимости должны принадлежать одному застройщику.</li>\r\n<li>Объекты могут находиться в разных частях Кипра.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/7rnYkPBFkYfRobmM3zKY.jpeg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты расскажут вам о том, какой пакет документов требуется для получения налогового статуса на Кипре и получения ВНЖ.</span></p>', 'residency/April2022/B7lP4xePIoDgikrDrNqv.jpg', 'img', '<p class=\"MsoNormal\"><strong>ВЫБОР НАДЕЖНЫХ ИНВЕСТИЦИОННЫХ ПРОЕКТОВ.</strong></p>\r\n<p class=\"MsoNormal\">Специалисты Иммиграционного Центра &laquo;<span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">RESIDENT</span>&raquo; постоянно проводят обширные аналитические исследования рынка недвижимости Кипра. Мы с уверенностью можем предоставить Вам самые выгодные инвестиционные варианты, которые успешно прошли нашу независимую экспертизу.</p>\r\n<p class=\"MsoNormal\"><strong>СБОР И ПОДГОТОВКА НЕОБХОДИМЫХ ДОКУМЕНТОВ.</strong></p>\r\n<p class=\"MsoNormal\">Юристы Иммиграционного Центра &laquo;<span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">RESIDENT</span>&raquo; помогут подготовить все необходимые документы, помогут оформить государственные формы, благодаря чему к подаче на резидентство будет подготовлено максимально качественное досье клиента. Данный этап очень важен, так как проверка досье заявителя, наряду с проверкой благонадежности напрямую влияет на ожидаемый результат.</p>\r\n<p class=\"MsoNormal\"><strong>ПОДАЧА И РАССМОТРЕНИЕ ЗАЯВЛЕНИЯ.</strong></p>\r\n<p class=\"MsoNormal\">Подготовленное досье заявителей подается при сопровождении нашими специалистами в правительственные органы, которые уже собственно проводят анализ клиентского досье, проводят проверку благонадежности заявителей и принимают решение о присвоении последним резидентства Кипра, подтверждающим документом чему будет являться карточка постоянного резидента Кипра.</p>', 'residency/April2022/hxVpnkJmr5Gp0TvpQ86g.jpg', 'img', 'rezidentstvo-kipra', 1, 0, 'Резидентство Кипра', 'Резидентство Кипра', 'Резидентство Кипра', '2022-04-18 09:14:00', '2022-05-04 06:17:45', 'Постоянное место жительства на Кипре', NULL, NULL, 'residency/April2022/PUuTztvUP0dS1CfDbJrZ.jpeg', NULL, NULL, NULL, NULL, NULL),
(10, 'Резидентство Мальты (MGRP)', 'Malta Global Residency Program (вид на жительство и особый налоговый статус)', 'Республика Мальта является членом Европейского Союза, начиная с 2004 года и входит в Шенгенскую зону, начиная с 2007 года.', 'residency/April2022/V4dFSCsUmtHOJAy27nWT.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Особенностью этого региона является постоянный экономический рост и отсутствие каких-либо политических волнений, что делает Мальту политически и экономически стабильной страной, что безусловно создаёт благоприятный климат для инвестиций и бизнеса. На данный момент ВНЖ Мальты это наиболее привлекательный вариант для предпринимателей.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Особый налоговый статус является одним из основных факторов привлекающих предпринимателей со всего мира. Его преимущества &mdash; это отсутствие налогов на доходы полученные за пределами Республики Мальта, а также наличие большого количества Соглашений об избежании двойного налогообложения. Статус сохраняется без прямой необходимости проживания на территории Республики Мальта определённое количество времени. </span></p>', 'residency/April2022/Mia36w4lDsCiOFsF9VCx.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoListParagraphCxSpFirst\"><strong>ВНЖ Мальты.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Вид на жительство Мальты позволяет не только постоянно проживать на Мальте, но и без виз и ограничений перемещаться и пребывать в странах Шенгенского соглашения и Европейского Союза.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Особый налоговый статус.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Помимо вышеперечисленных преимуществ есть еще одно. У вас есть уникальная возможность передавать статус по наследству. Таким образом вы передаете своим наследникам все те привилегии, которые получили с приобретением мальтийского вида на жительство.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Отсутствие двойного налогообложения.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Мальта имеет договора об избежании двойного налогообложения с большинством стран мира.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Не требуется проживание на Мальте определенное количество времени.</strong></p>\r\n<p class=\"MsoListParagraphCxSpLast\">Для сохранения статуса резидента и особого налогового статуса не требуется проживание на Мальте определенное количество времени, но пребывание в любой одной другой стране не должно превышать 183 дня.</p>', 'residency/April2022/09PeElFW2v02ATVBMAXn.jpg', 'img', '<ul>\r\n<li>Заявитель должен быть гражданином страны, которая не входит ЕС, ЕЭС, а также Швейцарии.</li>\r\n<li>Наличие недвижимости на Мальте: 1) собственная недвижимость стоимостью от 220/275 тыс. евро ИЛИ 2) арендная недвижимость стоимостью не менее 8.750/9.600 евро/год.</li>\r\n<li>Наличие&nbsp; подтвержденного стабильного постоянного дохода.</li>\r\n<li>Минимальное владение любым официальным языком Мальты (английский, мальтийский).</li>\r\n<li>Соответствие требованиям благонадежности.</li>\r\n<li>Наличие полиса медицинского страхования.</li>\r\n<li>Не принимать гражданство Мальты, стран ЕС, ЕЭС или Швейцарии.</li>\r\n<li>Постоянное наличие недвижимости (собственность или аренда).</li>\r\n<li>Не получать статус постоянного резидента Мальты.</li>\r\n<li>Максимальный срок пребывания в одной другой стране не более 183 дней в году.</li>\r\n<li>Ежегодная подача налоговой отчетности.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/A2XYxNfwrRS2okmZGq5S.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты предложат вам ознакомиться с основными требованиями к претендентам и первичным списком необходимых документов. </span></p>', 'residency/April2022/uP5b9YPl64JzW4A8kmbz.jpg', 'img', '<p class=\"MsoNormal\">Вы можете рассчитывать на подробный и понятный алгоритм действий уже на перовой консультации.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Многолетний опыт наших специалистов гарантирует безошибочный план действий для каждого клиента.</p>', 'residency/April2022/CVWI30RSJ6M5TryvRbLa.jpg', NULL, 'rezidentstvo-malty-mgrp', 1, 0, 'Резидентство Мальты (MGRP)', 'Резидентство Мальты (MGRP)', 'Резидентство Мальты (MGRP)', '2022-04-18 09:36:00', '2022-05-04 06:17:21', 'Вид на жительство Мальты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `residency` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `first_var_content`, `second_var_content`, `third_var_content`, `var_img`, `alt_var_img`, `second_content`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `fifth_content`, `fifth_img`, `alt_fifth_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `help`, `first_second_img`, `alt_first_second_img`, `first_third_img`, `alt_first_fourth_img`, `first_fourth_img`, `alt_first_third_img`, `first_fifth_img`, `alt_first_fivth_img`) VALUES
(11, 'Резидентство Мальты', 'Постоянное место жительства Мальты (за инвестиции)', 'Мальта давно уже считается наиболее привлекательным регионом для инвесторов. Причина в том, что помимо экономических причин есть и другие, например, свобода передвижения для резидентов Мальты.', 'residency/April2022/fZqT0WUsfDuouPVUNPXy.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Республика Мальта входит в Евросоюз, Шенгенскую зону и Британское Содружество.<span style=\"mso-spacerun: yes;\">&nbsp; </span>Учитывая эти факторы в стране всегда политическая и экономическая стабильность. Постоянно наблюдается экономический рост. Для тех, кто хотел бы жить в мягком средиземноморском климате эта страна предлагает не только комфортное проживание, но и безопасность, развитую инфраструктуру. А приятным бонусом для резидентов являются налоговые льготы.</span></p>', 'residency/April2022/2VV09bvZO49XvEhkwZfv.jpg', 'img', '<p class=\"MsoNormal\"><strong>12.000 &euro; / год </strong>пятилетняя аренда недвижимости;</p>\r\n<p class=\"MsoNormal\"><strong>58.000 &euro; </strong>контрибуция;</p>\r\n<p class=\"MsoNormal\"><strong>40.000 &euro; </strong>официальные платежи.</p>', '<p class=\"MsoNormal\"><strong>300.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">покупка недвижимости на юге Мальты / Гозо;</span></p>\r\n<p class=\"MsoNormal\"><strong>28.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">контрибуция;</span></p>\r\n<p class=\"MsoNormal\"><strong>40.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">официальные платежи.</span></p>', '<p class=\"MsoNormal\"><strong>350.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">покупка недвижимости на остальной территории Мальты;</span></p>\r\n<p class=\"MsoNormal\"><strong>28.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">контрибуция;</span></p>\r\n<p class=\"MsoNormal\"><strong>40.000 &euro; </strong><span style=\"mso-bidi-font-weight: bold;\">официальные платежи.</span></p>', 'residency/April2022/0UnozdxdFCa3R87KngNb.jpg', 'img', '<ul>\r\n<li><strong>Свобода передвижения и нахождения в странах Шенгенского соглашения для вас и вашей семьи.</strong></li>\r\n<li><strong>Отсутствие налогов на персональные доходы, полученные за пределами Мальты.</strong></li>\r\n<li><strong>Экономическая и политическая стабильность.</strong></li>\r\n<li><strong>Социальные гарантии для резидентов.</strong></li>\r\n<li><strong>Ускоренный процесс получения ВНЖ и ПМЖ.</strong></li>\r\n<li><strong>Государственные гарантии для предпринимателей и инвесторов.</strong></li>\r\n<li><strong>Получение статуса резидента сразу всеми членами семьи, включая родителей и прародителей на всю жизнь.</strong></li>\r\n<li><strong>Отсутствие обязательств к проживанию на Мальте.</strong></li>\r\n<li><strong>Передача в наследство.</strong></li>\r\n<li><strong>Невысокая стоимость оформления.</strong></li>\r\n<li><strong>Первая ступень к гражданству Мальты.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/5DwFjaBFwk93xaqJXQvo.jpg', 'img', '<ul>\r\n<li><strong>Основной инвестор.</strong></li>\r\n<li><strong>Супруг/супруга.</strong></li>\r\n<li><strong>Дети до 18 лет без ограничений</strong> (в т. ч. дети от иного брака каждого из супругов).</li>\r\n<li><strong>Дети после 18 лет без ограничений</strong> (если находятся на иждивении у инвестора и не состоят в браке).</li>\r\n<li><strong>Родители* инвестора, и родители супруга/супруги инвестора.</strong></li>\r\n<li><strong>Прародители* инвестора, и прародители супруга/супруги инвестора</strong> (* Родители и прародители имеют право на участие в программе, если находятся на иждивении у инвестора).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/JMEczfx5LJd9ufh3BPbT.jpg', 'img', '<ul>\r\n<li>действующий заграничный паспорт;</li>\r\n<li>свидетельство о рождении;</li>\r\n<li>свидетельство о браке (если применимо);</li>\r\n<li>существующие резидентские карточки или удостоверения личности, выданные другими странами;</li>\r\n<li>обязательство выполнения квалификационных требований;</li>\r\n<li>справка о состоянии здоровья;</li>\r\n<li>справка из полиции Мальты и справки из полиции, выданные компетентными органами страны происхождения, а также страной или странами проживания, где заявитель проживал в течение более шести месяцев за последние десять лет;</li>\r\n<li>аффидавит о поддержке каждого иждивенца старше восемнадцати лет (если применимо);</li>\r\n<li>подтверждение наличия средств (банковские выписки, подтверждение доходов, инвестиции и т. д.);</li>\r\n<li>резюме;</li>\r\n<li>официально заверенные переводы любых документов, которые были выданы не на английском языке.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/45y1UYzt2jQ9pmpkq3Js.jpg', 'img', '<ol>\r\n<li>Заключение договора с официальной уполномоченной компанией на участие в программе.</li>\r\n<li>Оплата юридических услуг.</li>\r\n<li>Формирование досье.</li>\r\n<li>Подача уполномоченной компанией заявления на ПМЖ Мальты.</li>\r\n<li>Оплата первой части государственных сборов за обработку заявления (10 000 евро).</li>\r\n<li>Рассмотрение заявления на ПМЖ Мальты.</li>\r\n<li>Оплата второй части государственных сборов за обработку заявления (30 000 евро).</li>\r\n<li>Выполнение условий программы: контрибуция, покупка или аренда недвижимости на Мальте.</li>\r\n<li>Визит на Мальту для сдачи биометрических данных.</li>\r\n<li>Получение резидентских карточек (сроком на 5 лет) посредством уполномоченной компании.</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'residency/April2022/6rIuwHRd06r1DtjOquRK.jpg', 'img', 'rezidentstvo-malty', 1, 0, 'Резидентство Мальты', 'Резидентство Мальты', 'Резидентство Мальты', '2022-04-18 09:45:00', '2022-05-04 06:16:53', 'Постоянное место жительства Мальты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Резидентство Монако', 'Вид на жительство Монако (для финансово независимых граждан)', 'Чем славится Княжество Монако? Это конечно гонки «Формула-1», яхты, многочисленные казино и роскошные приёмы. Однако это не всё, что может предложить Монако.', 'residency/April2022/fkymrKseYAL5IOTqMbG3.png', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">На данный момент быть резидентом этого Княжества означает иметь уникальные возможности жизни и ведения своего бизнеса. Получив резидентство вы попадаете в элитный клуб и вместе с этим получаете широкие возможности для комфортного проживания в Европе. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы финансово-независимый человек с достатком, то вам не сложно будет получить ВНЖ Монако. Всё что вам для этого понадобится это лишь показать наличие необходимых средств на вашем счету и стабильный доход, который вы получаете за пределами Монако. Если вы обрели свою финансовую независимость самостоятельно без поддержки государства, то вы идеальный заявитель на получение ВНЖ Монако.</span></p>', 'residency/April2022/eJJGVkV7NIlNN39lhJtM.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Свобода передвижения по Европе.</strong></li>\r\n</ul>\r\n<p>Вы сможете не только проживать на территории Княжества Монако, но и без каких-либо ограничений путешествовать по территории Шенгена.</p>\r\n<ul>\r\n<li><strong>Не сложная процедура оформления.</strong></li>\r\n</ul>\r\n<p>Вам совершенно не потребуется вести бизнес в Монако, делать какие-либо инвестиции, официально работать или платить дополнительные налоги. Программа ВНЖ освобождает вас от всего этого.</p>\r\n<ul>\r\n<li><strong>Никаких неудобств.</strong></li>\r\n</ul>\r\n<p>Весь процесс до момента получения статуса резидента Княжества Монако можно вести из своей страны используя возможность делать это через Консульство Франции.</p>\r\n<ul>\r\n<li><strong>Автоматическое продление статуса.</strong></li>\r\n</ul>\r\n<p>Для того чтобы продление вашего статуса проходило в автоматическом порядке, вам необходимо прожить на территории Княжества Монако более 183 дней в году и предоставить подтверждение наличия оснований.&nbsp;</p>\r\n<p>&nbsp;</p>', 'residency/April2022/jSRqCmxIMieIwLOZYbqp.jpg', 'img', '<p>Наиболее простая возможность получить статус резидента в Европе для финансово-независимых аппликантов.&nbsp; Критерии участия максимально простые:</p>\r\n<ol>\r\n<li>Открыть счёт в Монако и пополнить его достаточной суммой денежных средств.</li>\r\n<li>Иметь счёт за пределами Монако и также иметь на нём достаточное количество денежных средств.</li>\r\n<li>Предоставить подтверждение регулярного дохода за пределами Княжества Монако.</li>\r\n<li>Иметь арендованную или собственную недвижимость в Монако.</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'residency/April2022/aLufJDX7jvX9RosQieLP.jpg', 'img', '<ul>\r\n<li>Заграничный паспорт.</li>\r\n<li>Свидетельство о рождении.</li>\r\n<li>Свидетельство о браке (если применимо).</li>\r\n<li>Свидетельство о рождении детей (если применимо).</li>\r\n<li>Справка об отсутствии судимостей.</li>\r\n<li>Свидетельство о собственности или договор аренды недвижимости в Монако.</li>\r\n<li>Справка об открытии банковского счета в Монако.</li>\r\n<li>Банковская выписка о наличии требуемой суммы на банковском счету в Монако.</li>\r\n<li>Банковская выписка о наличии требуемой суммы за пределами Монако.</li>\r\n<li>Подтверждение постоянного дохода за пределами Монако.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/TITC0VTh54dUZDhSAHr5.jpg', 'img', '<ol>\r\n<li>Заключение договора.</li>\r\n<li>Предоставление первоначального пакета документов для подготовки досье.</li>\r\n<li>Внесение предварительной оплаты в размере 50% от стоимости услуги.</li>\r\n<li>Заказ и оплата дополнительных услуг.</li>\r\n<li>Получение полного досье, а также подготовка для визита в консульство Франции для прохождения собеседования + оплата 40% от стоимости услуги.</li>\r\n<li>Прохождение собеседования в консульстве Франции (при необходимости с сопровождением).</li>\r\n<li>Рассмотрение заявления (по закону до 30 дней).</li>\r\n<li>Получение положительного решения и визы D для возможности посещения Монако для получения ВНЖ.</li>\r\n<li>Визит в Монако для открытия банк. счета и подача документов на ВНЖ + получение выписок и иных документов, для получения которых требуется личное присутствие.</li>\r\n<li>Визит в Монако для получения карты ВНЖ + оплата оставшихся 10% стоимости услуги.</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'residency/April2022/C0yjdfXqNzPruiE2AqxR.jpg', 'img', 'rezidentstvo-monako', 1, 0, 'Резидентство Монако', 'Резидентство Монако', 'Резидентство Монако', '2022-04-18 11:10:00', '2022-05-04 06:16:23', 'Вид на жительство Монако', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Резидентство ОАЭ (для пенсионеров)', 'Специальная программа резидентства в ОАЭ для заявителей пенсионного возраста. Сразу на 5 лет', 'Обеспеченные люди в возрасте старше 55 лет могут рассчитывать на получение резидентства в ОАЭ по программе «Retirement in Dubai».', 'residency/April2022/AylRHbI5Q9Ls0seXYOJM.jpg', '<p>Данный вид резидентства может быть продлён через 5 лет. Тёплый климат, высокие технологии, наивысшая безопасность, отличная медицина и забота о людях &ndash; это те факторы, которые привлекают в страну обеспеченных людей со всего мира.&nbsp;</p>', 'residency/April2022/KW8tcxgIQvuf4daoCQyk.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Простые условия получения и продления.</strong></p>\r\n<p class=\"MsoNormal\">Достаточно выполнить одно из трех условий: показать стабильный доход, иметь достаточное количество средств на счету или владеть недвижимостью &ndash; и получить резидентство сразу на 5 лет.</p>\r\n<p class=\"MsoNormal\"><strong>Уникальный образ жизни.</strong></p>\r\n<p class=\"MsoNormal\">Дубай &ndash; это идеальное место для любого отдыха, вы можете удовлетворить ваши культурные запросы или провести активно время в одном из многочисленных мест. Сотни <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">SPA</span> салонов, где вы сможете поправить свое здоровье благодаря процедурам, которые отличаются высоким уровнем эффективности и хорошим сервисом.</p>\r\n<p class=\"MsoNormal\"><strong>Удобства всегда рядом.</strong></p>\r\n<p class=\"MsoNormal\">Максимально удобный доступ к медицинским услугам, услугам на дому и индивидуальному обслуживанию. Все что вам необходимо может быть доставлено, либо вы будете иметь возможность максимально комфортно воспользоваться сервисом вне дома.</p>\r\n<p class=\"MsoNormal\"><strong>Всегда на связи.</strong></p>\r\n<p class=\"MsoNormal\">Развитая инфраструктура и логистика позволяют легко общаться с друзьями как в самом Дубае, так и навещать друзей и родственников в любой точке мира.</p>', 'residency/April2022/VgsmtkfCuZV3xIssWaQl.jpeg', 'img', '<p>Программа подойдёт финансово-независимым людям, возрастом старше 55 лет.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/FBwp6cvey9EtZSZoTHMO.jpg', 'img', '<p>Для получения статуса резидента необходимо соответствовать одному из трех критериев:</p>\r\n<ul>\r\n<li>Ежемесячный доход от 5 500 USD.</li>\r\n<li>Наличие средств на банковском счету в размере от 275 000 USD.</li>\r\n<li>Приобретение недвижимости в Дубае стоимостью от 550 000 USD.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/JpGogptuns7mAiGxE9TZ.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.</p>', 'residency/April2022/UUeT9nhm97gpPk4EFJLU.jpg', 'img', 'rezidentstvo-oae-dlya-pensionerov', 1, 0, 'Резидентство ОАЭ (для пенсионеров)', 'Резидентство ОАЭ (для пенсионеров)', 'Резидентство ОАЭ (для пенсионеров)', '2022-04-18 11:17:00', '2022-05-04 06:16:00', 'Резидентство в ОАЭ для заявителей пенсионного возраста', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Резидентство ОАЭ', 'Резидентство в Объединенных Арабских Эмиратах (через регистрацию бизнеса)', 'Что привлекательного в ОАЭ для предпринимателей? Наиболее интересен тот факт, что ни физические, ни юридические лица не облагаются налогами. Да-да! Поэтому ВНЖ Объединённых Арабских Эмиратов существенно облегчает жизнь бизнесменам.', 'residency/April2022/xWjSLTFjguKRfE9IEen5.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Если вы хотите, чтобы процедура получения вида на жительство была максимально простой, то лучше всего воспользоваться возможностью регистрации компании с получением лицензии на видение коммерческой деятельности. Это не сложно и достаточно быстро.</span></p>', 'residency/April2022/dngIhMr8AByHlHcUINh3.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Что даёт налоговое резидентство.</strong></li>\r\n</ul>\r\n<p>Объединенные Арабские Эмираты &ndash; смело можно назвать налоговым раем, так как в этой стране отсутствуют налоги для налоговых резидентов и бизнеса.</p>\r\n<ul>\r\n<li><strong>Резидентство для все членов семьи.</strong></li>\r\n</ul>\r\n<p>С первого раза вы уже можете рассчитывать на получение резидентства сроком на 3 года. Ваш супруг/супруга также получают ВНЖ, как и несовершеннолетние дети.</p>\r\n<ul>\r\n<li><strong>Нет требований проживания на территории страны.</strong></li>\r\n</ul>\r\n<p>Если вы резидент ОАЭ это не обязывает вас постоянно проживать в стране и вести активную деятельность в вашей компании.</p>\r\n<ul>\r\n<li><strong>Возможность открытия банковских счетов и покупки недвижимости.</strong></li>\r\n</ul>\r\n<p>Вам доступны такие привилегии, как открытие счетов в надежных банках мирового уровня и приобретение недвижимости в этой стране. Кстати говоря банки гарантируют вам полную конфиденциальность.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/fea3PWL7UvcvLfbQpd8L.jpeg', 'img', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Хорошо подойдёт для финансово-независимых людей, предпринимателей и инвесторов. Получение ВНЖ ОАЭ расширит возможности вашего бизнеса за счет достаточно лояльной процедуры регистрации вашей компании и отсутствии налогов.</span></p>\r\n<p class=\"MsoNormal\"><strong>СУЩЕСТВУЕТ ТРИ КАТЕГОРИИ ЛИЦЕНЗИЙ:</strong></p>\r\n<p class=\"MsoNormal\">1 Коммерческая.</p>\r\n<p class=\"MsoNormal\">2 Сервисная.</p>\r\n<p class=\"MsoNormal\">3 General Trading.</p>\r\n<p class=\"MsoNormal\">Самой распространённой категорией лицензии юридического лица в ОАЭ для тех, кто желает получить резидентство ОАЭ, является лицензия General Trading, так как исключительно данная лицензия предусматривает выдачу резидентства до трех владельцев компании.</p>\r\n<p class=\"MsoNormal\">Часто, желающие получить ВНЖ ОАЭ руководствуются данным критерием, не обращая внимание на деятельность которую на самом деле будет осуществлять регистрируемое юридическое лицо. Правильный выбор лицензии регистрируемого юридического лица, для обеспечения сохранности резидентства и беспроблемного ведения коммерческой̆ деятельности, должен быть первым критерием при регистрации компании</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Затраты на регистрацию компании для получения резидентства в ОАЭ.</strong></p>\r\n<p class=\"MsoNormal\">- &laquo;КОММЕРЧЕСКАЯ&raquo; лицензия: до 3-х видов товаров;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 20,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 8,450</p>\r\n<p class=\"MsoNormal\">- &laquo;КОНСАЛТИНГОВАЯ&raquo; (сервисная) лицензия: до 2-х видов услуг;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 20,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 8,450</p>\r\n<p class=\"MsoNormal\">- &laquo;GENERAL TRADING&raquo; лицензия: неограниченное количество видов товаров;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 22,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 10,450</p>', 'residency/April2022/mma8OQtNUR4DAfiDJMCG.jpeg', 'img', '<ul>\r\n<li><strong>Копии заграничных паспортов</strong> (срок действия должен быть не менее 6 месяцев на момент подачи документов на визу);</li>\r\n<li><strong>Копия предыдущих виз ОАЭ</strong> (если имелись);</li>\r\n<li><strong>Utility bill</strong> (счет за коммунальные услуги) не старше 6 месяцев;</li>\r\n<li><strong>Фото паспортного образца на белом фоне;</strong></li>\r\n<li>Полные имена родителей</li>\r\n<li>Адрес в стране проживания;</li>\r\n<li>Адрес в ОАЭ (если имеется);</li>\r\n<li>Контактные данные (e-mail и телефон);</li>\r\n<li>Резюме с описанием опыта (только для сервисных/консалтинговых лицензий).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/Uefnb8xKFlbmqsvybLlR.jpg', 'img', '<ol>\r\n<li class=\"MsoNormal\">Предоставление клиентом / клиентами необходимых документов и данных;</li>\r\n<li class=\"MsoNormal\">Подготовка нашими специалистами регистрационных форм для подписания клиентом/клиентами;</li>\r\n<li class=\"MsoNormal\">Подписание клиентом/клиентами регистрационных форм и предоставление нам посредством курьерской службы для подачи досье на регистрацию компании;</li>\r\n<li class=\"MsoNormal\">Регистрация компании (до трех дней);</li>\r\n<li class=\"MsoNormal\">Подача документов клиента/клиентов на получение иммиграционной карточки и визы (Entry Permit);</li>\r\n<li class=\"MsoNormal\">Ожидание получения иммиграционной карточки и визы (Entry Permit) (15-20 дней);</li>\r\n<li class=\"MsoNormal\">Предоставление клиенту/клиентам копии визы + предоставление пограничным службам ОАЭ в аэропорту прибытия, оригинала визы клиента/клиентов;</li>\r\n<li class=\"MsoNormal\">Приезд в ОАЭ для вклейки визы в паспорт; прохождения мед теста; подачи на Emirates ID.</li>\r\n</ol>\r\n<ul>\r\n<li class=\"MsoNormal\">Entry Permit &ndash; действителен всего 60 дней с момента выдачи, и для получения резидентства ОАЭ необходимо въехать в ОАЭ в период действия Entry Permit.</li>\r\n<li class=\"MsoNormal\">Визит в ОАЭ необходимо планировать не меньше чем на 5 рабочих дней.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'residency/April2022/4ZQ0pFbYFIWCHdANN569.jpg', 'img', 'rezidentstvo-oae', 1, 0, 'Резидентство ОАЭ', 'Резидентство ОАЭ', 'Резидентство ОАЭ', '2022-04-18 12:17:00', '2022-05-04 06:15:22', 'Резидентство в Объединенных Арабских Эмиратах', NULL, NULL, 'residency/April2022/HywL5gbeh1uL6HigXacS.jpeg', NULL, NULL, NULL, NULL, NULL),
(15, 'Резидентство Португалии', 'Вид на жительство Португалии – Portugal Golden Visa (через инвестиции в недвижимость)', 'Программа «PORTUGAL GOLDEN VISA» (Золотая виза Португалии) - это программа, через которую нерезидент Португалии может благодаря средствам, инвестированным в покупку недвижимости получить статус резидента страны.', 'residency/April2022/P6UYC5sl2xcd9FKo9Ouc.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если со стороны инвестора будут соблюдены все условия программы, то он сможет рассчитывать в дальнейшем на получения статуса постоянного резидента и гражданина Португалии. С момента получения гражданства он получает полную свободу передвижения доступную для граждан Евросоюза. Данная программа сравнительно выгоднее других подобных европейских программ получения ВНЖ и гражданства, через покупку недвижимости.</span></p>', 'residency/April2022/nR2o5PIQ2s9rCToaNuPP.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Безвизовое перемещение или пребывание в странах Европы</strong>.</p>\r\n<p class=\"MsoNormal\">Уже с момента получения ВНЖ вы можете беспрепятственно путешествовать по Европе и находится неограниченное количество времени в любой стране Евросоюза включая Шенгенскую зону.</p>\r\n<p class=\"MsoNormal\"><strong>ВНЖ для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">В одном инвестиционном пакете вид на жительство в Португалии может получить супруг/супруга, дети до 18 лет и зависимые совершеннолетние дети, проходящие стационарное обучение. Таким образом ВНЖ получает сразу вся семья.</p>\r\n<p class=\"MsoNormal\"><strong>Необходимость пребывания всего 7 дней в году.</strong></p>\r\n<p class=\"MsoNormal\">Для сохранения статуса резидента вы можете приезжать один раз в год на отдых в Португалию и таким образом сохранять ваш статус.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность получения ПМЖ и Гражданства ЕС.</strong></p>\r\n<p class=\"MsoNormal\">Сохранение инвестиций и выполнение условий пребывания позволят в будущем получить ПМЖ и Гражданство Португалии (для получения гражданства необходимо пройти языковой экзамен).</p>', 'residency/April2022/8OTB3znYDvSCUvpMZNgX.jpg', 'img', '<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга.</li>\r\n<li>Дети до 18 лет.</li>\r\n<li>Дети после 18 лет (если они зависимые студенты).</li>\r\n</ul>\r\n<p>Условия для участия:</p>\r\n<p>Для участия в программе &laquo;Золотая Виза Португалии&raquo; инвестору необходимо приобрести один или несколько объектов недвижимости общей стоимостью 500 000 &euro;. Инвестор может владеть не всей недвижимостью, а лишь какой-то её частью, главное, чтобы покупка была стоимостью 500 000 &euro;.</p>\r\n<p>Для тех, кто не владеет всей суммой необходимой для покупки столь дорогой недвижимости есть опция заключения долгового контракта. Таким образом необходимое условие участия в программе может быть подтверждено долговым контрактом с депозитом в размере 500 000 &euro; и более. Это означает, что получить ВНЖ можно имея всего лишь долговой контракт, который должен быть зарегистрирован в Бюро Регистрации Земельной Собственности.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/0NOlBGDKSLUDk57LyDmP.jpeg', 'img', '<ul>\r\n<li>Подтверждение права собственности на недвижимое имущество, выданное в Бюро Регистрации Земельной Собственности;</li>\r\n<li>Декларация об отсутствии задолженностей перед государственной таможенно-налоговой службой и фондом социального страхования;</li>\r\n<li>Паспорт для поездок за границу;</li>\r\n<li>Подтверждение адреса постоянного проживания в стране гражданства;</li>\r\n<li>Справка о наличии/отсутствии судимости из страны гражданства, а также из страны, где заявитель прожил не менее года в течении последних 5 лет;</li>\r\n<li>Подтверждение наличия медицинского страхования;</li>\r\n<li>Подписанная заявка, позволяющая СЕФ проводить проверки в Реестре Судимостей Португалии.</li>\r\n</ul>\r\n<p><strong>При оформлении семьи:</strong></p>\r\n<ul>\r\n<li>Паспорта для поездок за границу членов семьи;</li>\r\n<li>Свидетельства о браке и рождении детей;</li>\r\n<li>Подтверждение наличия места жительства семьи в Португалии;</li>\r\n<li>Подтверждение дохода выше 12,000 евро в год на каждого взрослого и 6,000 евро в год на каждого ребенка.</li>\r\n</ul>\r\n<p>Подписанная заявителем декларация о честных намерениях сохранять инвестиции как минимум 5 лет.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'residency/April2022/kSNhY7R2oI3EzNgsLCBn.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.</p>', 'residency/April2022/rUI1yY4uGXDNU9NbwXow.jpg', NULL, 'rezidentstvo-portugalii', 1, 0, 'Резидентство Португалии', 'Резидентство Португалии', 'Резидентство Португалии', '2022-04-18 12:27:00', '2022-05-04 06:14:54', 'Вид на жительство Португалии', NULL, NULL, 'residency/April2022/hAbZKfUOIB1SagoxoobZ.jpeg', NULL, NULL, NULL, NULL, NULL),
(16, 'Резидентство США (программа L-1)', 'Вид на жительство в США (программа L-1 неимииграционная виза предпринимателя)', 'Страна, которая привлекает к себе все слои населения со всего мира, прежде всего открыта для деловых людей, таких как инвесторы и предприниматели. Комфортный стиль жизни, гарантии со стороны государства, стабильная экономика и многие другие факторы делают Соединенные Штаты Америки лидирующей страной по уровню привлекательности.', 'residency/April2022/S022tvLqdJYgupx8f7Ps.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Иммиграционное законодательство США предлагает несколько программ для бизнесменов и инвесторов, которые позволяют получить право на проживание в США.<br />Но не каждая программа позволяет получить Грин Карту (ПМЖ США). Разобраться в законодательстве и выбрать лучшую возможность эмиграции в США вам помогут специалисты Иммиграционного Центра </span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">RESIDENT</span><span style=\"mso-bidi-font-weight: bold;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Мы рассмотрим неиммиграционную визу </span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">L</span><span style=\"mso-bidi-font-weight: bold;\">-1 в США для руководителей зарубежных компаний при переводе или открытии компании в США для продолжения работы руководителем или менеджером.</span></p>', 'residency/April2022/oo3hzXdyZeY9mkf0541a.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Постоянное проживание в США.</strong></p>\r\n<p class=\"MsoNormal\">Постоянно жить, работать, вести бизнес, получать образование и пользоваться иными преимуществами на правах резидента.</p>\r\n<p class=\"MsoNormal\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">Вид на жительство получит не только основной инвестор, но и члены семьи одновременно, в том числе зависимые дети до 21 года.</p>\r\n<p class=\"MsoNormal\"><strong>Комбинирование эмиграционных программ.</strong></p>\r\n<p class=\"MsoNormal\">Возможно использование более простой программы для первоначальной эмиграции с возможностью перехода на постоянный статус.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность получения постоянной Грин Карты и Гражданства США.</strong></p>\r\n<p class=\"MsoNormal\">Инвестиционные программы эмиграции дают возможность в короткие сроки получить постоянную Грин Карту и в будущем стать гражданином США.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Возможность пребывания в статусе L-1 на период до 7-и лет при выполнении условий программы.</li>\r\n<li>Возможность жить, работать и учиться в США для всех членов семьи.</li>\r\n<li>Небольшой объем инвестиций без необходимости подтверждать происхождение средств.</li>\r\n<li>Члены семьи заявителя (супруги и дети до 21 года) также получают визу.</li>\r\n<li>Возможность ускоренного рассмотрения (в срок до 15 дней).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/7ik6V3MTa2Ht08AuwW92.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям, предпринимателям и инвесторам, желающим получить ВНЖ Соединённых Штатов Америки.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p><strong>Основные требования программы:</strong></p>\r\n<ul>\r\n<li>Инвестиции от 100 000 $ для открытия компании и аренды офиса.</li>\r\n<li>Создание 3-4 рабочих мест в течение первого года работы.</li>\r\n<li>Ведение деятельности не только в США, но и за рубежом в головной компании.</li>\r\n<li>Бизнес-план и наличие как минимум $50 000 на счету компании.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/MU2gbsj5shv7Foyu9vxi.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты помогут вам сориентироваться, какие документы будут необходимы для начала процесса. Многолетний опыт наших консультантов позволяет нам создавать уникальные иммиграционные стратегии для вашего бизнеса или инвестиций.</span></p>', 'residency/April2022/uZ46vbFmgYiky3fXy5lz.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp; В стоимость наших услуг входит:</p>\r\n<ul>\r\n<li>Подбор оптимального варианта получения визы или Грин Карты;</li>\r\n<li>Подготовка документов и сопровождение в иммиграционные органы США;</li>\r\n<li>Предложение альтернативных решений в случае отказа;</li>\r\n<li>Коммерческое сопровождение сделок и инвестиций.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/bsEXDwjFVcgD0MaOwCQc.jpg', 'img', 'rezidentstvo-ssha-programma-l-1', 1, 0, 'Резидентство США (программа L-1)', 'Резидентство США (программа L-1)', 'Резидентство США (программа L-1)', '2022-04-18 12:35:00', '2022-05-04 06:14:22', 'Вид на жительство в США', 'residency/April2022/Ayvd1rCnTb1Dy3n9lwC5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Резидентство США (программа E-2)', 'Вид на жительство в США (программа E-2 – неимииграционная виза инвестора)', 'Страна, которая привлекает к себе все слои населения со всего мира, прежде всего открыта для деловых людей, таких как инвесторы и предприниматели. Комфортный стиль жизни, гарантии со стороны государства, стабильная экономика и многие другие факторы делают Соединенные Штаты Америки лидирующей страной по уровню привлекательности.', 'residency/April2022/mKlkIpVbaVwimdUoJ7It.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Иммиграционное законодательство США предлагает несколько программ для бизнесменов и инвесторов, которые позволяют получить право на проживание в США.<br />Но не каждая программа позволяет получить Грин Карту (ПМЖ США). Разобраться в законодательстве и выбрать лучшую возможность эмиграции в США вам помогут специалисты Иммиграционного Центра </span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">RESIDENT</span><span style=\"mso-bidi-font-weight: bold;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Мы рассмотрим неиммиграционную визу в США на основании инвестиций в новую или существующую компанию, относящуюся к малому бизнесу. </span></p>', 'residency/April2022/KjqXedvQEZaXgkpXMgYD.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Постоянное проживание в США.</strong></p>\r\n<p class=\"MsoNormal\">Постоянно жить, работать, вести бизнес, получать образование и пользоваться иными преимуществами на правах резидента.</p>\r\n<p class=\"MsoNormal\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">Вид на жительство получит не только основной инвестор, но и члены семьи одновременно, в том числе зависимые дети до 21 года.</p>\r\n<p class=\"MsoNormal\"><strong>Комбинирование эмиграционных программ.</strong></p>\r\n<p class=\"MsoNormal\">Возможно использование более простой программы для первоначальной эмиграции с возможностью перехода на постоянный статус.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность получения постоянной Грин Карты и Гражданства США.</strong></p>\r\n<p class=\"MsoNormal\">Инвестиционные программы эмиграции дают возможность в короткие сроки получить постоянную Грин Карту и в будущем стать гражданином США.</p>\r\n<ul>\r\n<li>Пребывание по визе ограниченно лишь сроком работы компании и может быть продлено сколько угодно долго, пока компания генерирует прибыль.</li>\r\n<li>Нет требований к наличию действующего бизнеса за рубежом или работы на руководящей должности.</li>\r\n<li>Небольшой объем инвестиций и отсутствие требований к минимальному количеству созданных рабочих мест.</li>\r\n<li>Члены семьи заявителя (супруги и дети до 21 года) также получают визу Е-2.</li>\r\n<li>Возможность ускоренного рассмотрения (в срок до 1 месяца).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/uRfiG1SiYEha6Akn5XMV.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям, предпринимателям и инвесторам, желающим получить ВНЖ Соединённых Штатов Америки.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p><strong>Основные требования программы:</strong></p>\r\n<ul>\r\n<li>Инвестиции в компанию от 80 000 $ и владение контрольным пакетом акций.</li>\r\n<li>Доказательство законного происхождения инвестиционных средств.</li>\r\n<li>Наличие гражданства страны участницы договора Е-2 с США.</li>\r\n<li>Бизнес-план на 5 лет, показывающий способность бизнеса генерировать прибыль.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'residency/April2022/HUJ4DUX1rsk43iTlgpJX.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты помогут вам сориентироваться, какие документы будут необходимы для начала процесса. Многолетний опыт наших консультантов позволяет нам создавать уникальные иммиграционные стратегии для вашего бизнеса или инвестиций.</span></p>', 'residency/April2022/nzVcDUPaZ6JUvhmWVkoO.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp; В стоимость наших услуг входит:</p>\r\n<ul>\r\n<li>Подбор оптимального варианта получения визы или Грин Карты;</li>\r\n<li>Подготовка документов и сопровождение в иммиграционные органы США;</li>\r\n<li>Предложение альтернативных решений в случае отказа;</li>\r\n<li>Коммерческое сопровождение сделок и инвестиций.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/y4UJVMUvLCuIROknUQ4N.jpg', 'img', 'rezidentstvo-ssha-programma-e-2', 1, 0, 'Резидентство США (программа E-2)', 'Резидентство США (программа E-2)', 'Резидентство США (программа E-2)', '2022-04-18 12:40:00', '2022-05-04 06:13:57', 'Вид на жительство в США', 'residency/April2022/R6Fgn6owisSbkmqUxbEq.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Резидентство США (программа ЕВ-5)', 'Вид на жительство в США (программа ЕВ-5 грин карта инвестора)', 'Страна, которая привлекает к себе все слои населения со всего мира, прежде всего открыта для деловых людей, таких как инвесторы и предприниматели. Комфортный стиль жизни, гарантии со стороны государства, стабильная экономика и многие другие факторы делают Соединенные Штаты Америки лидирующей страной по уровню привлекательности.', 'residency/April2022/tNBQ88CXipaqUiD8UZcL.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Иммиграционное законодательство США предлагает несколько программ для бизнесменов и инвесторов, которые позволяют получить право на проживание в США.<br />Но не каждая программа позволяет получить Грин Карту (ПМЖ США). Разобраться в законодательстве и выбрать лучшую возможность эмиграции в США вам помогут специалисты Иммиграционного Центра </span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">RESIDENT</span><span style=\"mso-bidi-font-weight: bold;\">.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Мы рассмотрим иммиграционную визу в США на основании инвестиций в развитие собственного бизнеса или один из крупных проектов Регионального центра.</span></p>', 'residency/April2022/0yxDrQtdWMYFnBbqvMxV.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Постоянное проживание в США.</strong></p>\r\n<p class=\"MsoNormal\">Постоянно жить, работать, вести бизнес, получать образование и пользоваться иными преимуществами на правах резидента.</p>\r\n<p class=\"MsoNormal\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">Вид на жительство получит не только основной инвестор, но и члены семьи одновременно, в том числе зависимые дети до 21 года.</p>\r\n<p class=\"MsoNormal\"><strong>Комбинирование эмиграционных программ.</strong></p>\r\n<p class=\"MsoNormal\">Возможно использование более простой программы для первоначальной эмиграции с возможностью перехода на постоянный статус.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность получения постоянной Грин Карты и Гражданства США.</strong></p>\r\n<p class=\"MsoNormal\">Инвестиционные программы эмиграции дают возможность в короткие сроки получить постоянную Грин Карту и в будущем стать гражданином США.</p>\r\n<ul>\r\n<li><strong>Получение миграционной визы (Грин Карта) на 2 года</strong>, затем получение постоянного резидентства и в последующем гражданства США (весь процесс занимает 5-6 лет).</li>\r\n<li><strong>Наиболее надежная возможность</strong> (более 85% одобренных заявлений, а при использовании проектов нашего партнерского Регионального центра 95% одобренных заявлений).</li>\r\n<li><strong>Нет никаких требований к заявителю</strong>, кроме наличия средств для инвестирования и подтверждения их законного происхождения.</li>\r\n<li><strong>Члены семьи заявителя (супруги и дети до 21 года) также получают Грин Карту.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/eYO29OIEKdoRzqrYPcMI.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям, предпринимателям и инвесторам, желающим получить ВНЖ Соединённых Штатов Америки.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p><strong>Основные требования программы:</strong></p>\r\n<ul>\r\n<li>Инвестиции 900 000 $ или 1 800 000 $</li>\r\n<li>Доказательство законного происхождения инвестиционных средств.</li>\r\n<li>Бизнес-план по созданию не менее 10-ти рабочих мест в течение 2,5 лет от даты подачи заявления.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/ADJhyt6pBKf5d2NGWkMB.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты помогут вам сориентироваться, какие документы будут необходимы для начала процесса. Многолетний опыт наших консультантов позволяет нам создавать уникальные иммиграционные стратегии для вашего бизнеса или инвестиций.</span></p>', 'residency/April2022/3BGfQBPsiGQMflvjTvBL.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp; В стоимость наших услуг входит:</p>\r\n<ul>\r\n<li>Подбор оптимального варианта получения визы или Грин Карты;</li>\r\n<li>Подготовка документов и сопровождение в иммиграционные органы США;</li>\r\n<li>Предложение альтернативных решений в случае отказа;</li>\r\n<li>Коммерческое сопровождение сделок и инвестиций.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/VnSBKMmF8TY1EqFj8uUd.jpg', 'img', 'rezidentstvo-ssha-programma-ev-5', 1, 0, 'Резидентство США (программа ЕВ-5)', 'Резидентство США (программа ЕВ-5)', 'Резидентство США (программа ЕВ-5)', '2022-04-18 12:53:00', '2022-05-04 06:13:36', 'Вид на жительство в США', 'residency/April2022/kLFAqamTdw70G6wP2mdU.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Резидентство Таиланда', 'Вид на жительство в Таиланде для состоятельных граждан по программе «Thailand Elite»', 'Таиланд расположен в юго-западной части полуострова Индокитай и является одним из самых востребованных туристических направлений Юго- Восточной Азии.', 'residency/April2022/XQkFF8IMlxCiAyc9Pu45.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Благодаря миролюбивому нраву местных жителей Таиланд часто называют &laquo;страной улыбок&raquo;. За последние четыре десятилетия Таиланд добился значительного социально-экономического развития. Благодаря благоприятному климату и возможностям комфортного проживания, Таиланд все чаще становится объектом пожеланий для получения права на долгосрочное пребывание. В связи с этим </span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">Thailand</span> <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">Privilege</span> <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">Card</span> <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">Company</span> <span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">Limited</span><span style=\"mso-bidi-font-weight: bold;\"> (</span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">TPC</span><span style=\"mso-bidi-font-weight: bold;\">) что при Министерстве туризма и спорта Таиланда была разработана программа &laquo;Thailand Elite&raquo;, которая позволяет получить долгосрочное резидентство в стране на срок от 5 до 20 лет.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Thailand Elite &mdash; первая и единственная в мире государственная программа, которая позволяет иностранным гражданам получить долгосрочное резидентство на срок от 5 до 20 лет.</span></p>', 'residency/April2022/zbEf72NPyvayV42rcOz3.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoListParagraphCxSpFirst\"><strong>Постоянное проживание в Таиланде.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Долгосрочное резидентство дает право неограниченного въезда/выезда и пребывания в Таиланде в течение всего срока действия без обязательного проживания в течение какого бы то ни было времени</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Долгосрочное резидентство в Таиланде может быть получено на всех членов семьи, в т.ч. родителями, гражданской супругой/супругом и детьми</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Выдается сразу на срок от 5 до 20 лет.</strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\">Различные условия программы Thailand Elite позволяют получить долгосрочное резидентство на срок до 20 лет с возможностью передачи статуса</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Бонусы, привилегии и налоговые льготы.</strong></p>\r\n<p class=\"MsoListParagraphCxSpLast\">Бонусы и привилегии, включая доступ в VIP-залы ожидания, трансфер из аэропорта, многоязычный консьерж- сервис в режиме 24 / 7.</p>', 'residency/April2022/ctv4IdwkMlbIxxc95pmY.jpg', 'img', '<p>Программа &laquo;Elite Ultimate Privilege&raquo; рассчитана на состоятельных иностранцев, желающих получить ВНЖ сразу на 20 лет.&nbsp; Критерии участия:</p>\r\n<ul>\r\n<li><strong>Разовый вступительный взнос: 60 000$</strong></li>\r\n<li><strong>Ежегодный членский взнос: 600$</strong></li>\r\n<li><strong>Услуги персонального ассистента:</strong> помощь в решении иммиграционных и паспортных формальностей̆, доступ в VIP-зал ожидания в аэропортах и неограниченное количество трансферов из аэропорта (50&ndash;80 км) для всех международных рейсов.</li>\r\n<li><strong>Развлекательно-оздоровительные услуги:</strong> посещение пятизвездочного гольф-клуба и СПА 24 раза за календарный̆ год, а также ежегодный̆ медицинский̆ осмотр в частной̆ клинике Таиланда</li>\r\n<li><strong>Государственный̆ консьерж-сервис:</strong> иммиграция, водительские права, разрешение на работу</li>\r\n<li><strong>Возможность однократной передачи членства</strong> Elite Ultimate Privilege при условии уплаты 20% от действующих ставок</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/Vipvas36n5uPsJ2QF62F.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации вы получите полный перечень документов, которые будут необходимы для получения ВНЖ Тайланда.</span></p>', 'residency/April2022/XgxKdL4mtwotkNTGgc9u.jpg', 'img', '<ol>\r\n<li>Решение о выдаче долгосрочного резидентства занимает не более 30 дней. Вклейка долгосрочной визы в паспорт и выдача карточки Thailand Elite осуществляется в международных аэропортах Таиланда.</li>\r\n<li>Долгосрочное резидентство выдается через две недели после того, как компания TPC подтверждает получение полной оплаты</li>\r\n<li>Перед фактическим получением долгосрочного резидентства успешный заявитель и зависимые лица должны за семь дней до прилета в Таиланд уведомить компанию TPC о времени и аэропорте прибытия</li>\r\n<li>Долгосрочное резидентство, полученное по программе Thailand Elite, не позволяет работать в стране.</li>\r\n<li>Участники программы Thailand Elite могут проживать или находиться в Таиланде неограниченное время в течение срока действия долгосрочного резидентства.</li>\r\n<li>Долгосрочное резидентство, приобретенное по программе Thailand Elite, не дает права на получение ПМЖ (постоянного места жительства) или гражданства.</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'residency/April2022/bTqIDgdWRBp70uQYwM7v.jpg', 'img', 'rezidentstvo-tailanda', 1, 0, 'Резидентство Таиланда', 'Резидентство Таиланда', 'Резидентство Таиланда', '2022-04-18 12:59:00', '2022-05-04 06:13:10', 'Вид на жительство в Таиланде', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `residency` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `first_var_content`, `second_var_content`, `third_var_content`, `var_img`, `alt_var_img`, `second_content`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `fifth_content`, `fifth_img`, `alt_fifth_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `help`, `first_second_img`, `alt_first_second_img`, `first_third_img`, `alt_first_fourth_img`, `first_fourth_img`, `alt_first_third_img`, `first_fifth_img`, `alt_first_fivth_img`) VALUES
(20, 'Резидентство Франции', 'Вид на жительство во Франции (для финансово-независимых)', 'Данное разрешение (виза визитера - “visiteur”) выдается Министерством внутренних дел по месту регистрации иностранца.', 'residency/April2022/O4yDj1g0HG5yx1brNwtM.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Этот статус позволяет гражданину, который не является выходцем из стран ЕС, непрерывно проживать на территории Франции 365 дней в году. Через 5 лет владения статусом ВНЖ, заявитель может получить ПМЖ. После этого необходимо прожить в принимающей стране еще 5 лет и у вас появится возможность подать документы на гражданство. Также через 1</span><span style=\"font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\'; mso-bidi-font-weight: bold;\">‑</span><span style=\"mso-bidi-font-weight: bold;\">2 </span><span style=\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-bidi-font-weight: bold;\">года</span> <span style=\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-bidi-font-weight: bold;\">после</span> <span style=\"mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-bidi-font-weight: bold;\">оформлени</span><span style=\"mso-bidi-font-weight: bold;\">я ВНЖ, вы сможете получить разрешение на трудоустройство во Франции.</span></p>', 'residency/April2022/7TM9RBpXhPNFmuONdDit.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Легальность процесса получения ВНЖ.</strong></li>\r\n</ul>\r\n<p>Для получения данного типа ВНЖ за основание берется французское иммиграционное законодательство. Эта программа не является какой-то брешью в законе которую используют предприимчивые иммиграционные консультанты, а вполне имеет законные основания.</p>\r\n<ul>\r\n<li><strong>Доступность получения статуса ВНЖ.</strong></li>\r\n</ul>\r\n<p>Каждый заявитель, способный доказать свою самодостаточность, имеет право получить ВНЖ Франции, предоставив доказательства в виде необходимого пакета документов.</p>\r\n<ul>\r\n<li><strong>Удобство оформления.</strong></li>\r\n</ul>\r\n<p>Всю процедуру до момента получения решения о предоставлении ВНЖ заявитель имеет возможность проходить в своей стране, через посольство Франции.</p>\r\n<ul>\r\n<li><strong>Нет требований проживания.</strong></li>\r\n</ul>\r\n<p>Программа ВНЖ Франции не обязывает заявителей вести бизнес, делать инвестиции, работать, находиться в стране.</p>\r\n<ul>\r\n<li><strong>Простота продления.</strong></li>\r\n</ul>\r\n<p>Прожив во Франции более 183 дней в году, подтвердив наличие оснований, по которым ВНЖ был предоставлен, заявитель может оформить продление практически в автоматическом порядке.</p>\r\n<ul>\r\n<li><strong>Свобода передвижения в странах ЕС.</strong></li>\r\n</ul>\r\n<p>Будучи резидентом страны Евросоюза и участницы Шенгенского договора вы беспрепятственно сможете посещать все страны Европы.</p>\r\n<ul>\r\n<li><strong>Обучение Ваших детей в Европе.</strong></li>\r\n</ul>\r\n<p>Для ваших детей, как для резидентов ЕС станет доступным европейское образование.</p>\r\n<ul>\r\n<li><strong>Расширение вашего бизнеса в ЕС.</strong></li>\r\n</ul>\r\n<p>Вы на легальных основаниях сможете заключать контракты в Европе, открывать компанию и вести бизнес.</p>\r\n<ul>\r\n<li><strong>Гражданство.</strong></li>\r\n</ul>\r\n<p>Уже через 5 лет вы сможете претендовать на получение французского паспорта.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/Hn6ULi870efmsnOBcqde.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям имеющим пассивный или иной доход за пределами Франции.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/SGXt8FMbVUqKMOvfP1ON.jpg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить документы, которые подтверждают следующие факты и обстоятельства:</p>\r\n<ul>\r\n<li>Заграничный паспорт;</li>\r\n<li>Национальный паспорт;</li>\r\n<li>Свидетельство о рождении;</li>\r\n<li>Справка об отсутствии судимостей;</li>\r\n<li>Адрес проживания во Франции;</li>\r\n<li>Документы, подтверждающие финансовую независимость;</li>\r\n<li>Обязательство не осуществлять профессиональную деятельность во Франции;</li>\r\n<li>Европейская медицинская страховка;</li>\r\n<li>Мотивационное письмо;</li>\r\n<li>Анкеты-заявления;</li>\r\n<li>Фотографии паспортного образца.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/0E19H7AgYpzyRP6bziYk.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.</p>\r\n<p class=\"MsoNormal\"><strong>1 ШАГ.</strong></p>\r\n<p class=\"MsoNormal\">Подписание договора. Предоставление первоначального пакета документов для подготовки досье.</p>\r\n<p class=\"MsoNormal\"><strong>2 ШАГ.</strong></p>\r\n<p class=\"MsoNormal\">Получение полного досье и подготовка визита в консульство Франции для прохождения собеседования.</p>\r\n<p class=\"MsoNormal\"><strong>3 ШАГ.</strong></p>\r\n<p class=\"MsoNormal\">Собеседование в Консульстве Франции (при необходимости с сопровождением).</p>\r\n<p class=\"MsoNormal\"><strong>4 ШАГ.</strong></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Рассмотрение заявления</span> (согласно закону до 30 дней).</p>\r\n<p class=\"MsoNormal\"><strong>5 ШАГ.</strong></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Получение положительного решения </span>и Visa D для возможности посещения Франции и получения Carte de s&eacute;jour.</p>\r\n<p class=\"MsoNormal\"><strong>6 ШАГ.</strong></p>', 'residency/April2022/ydFrktrnF6ZDLbYQfN2f.jpg', 'img', 'rezidentstvo-francii', 1, 0, 'Резидентство Франции', 'Резидентство Франции', 'Резидентство Франции', '2022-04-18 13:56:00', '2022-05-04 06:12:45', 'Вид на жительство во Франции', 'residency/April2022/fi1Ip00Se0LyYPP0vLaB.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Резидентство Чили', 'Вид на жительство Чили (через визу для финансово- независимых людей)', 'Уже несколько десятилетий подряд Чили является центром притяжения иммигрантов со всего мира, в том числе из России, Казахстана и других стран СНГ.', 'residency/April2022/VxpAmRltdxejjo6AuMLB.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Этому способствуют лояльное иммиграционное законодательство, безвизовое сообщение, а также приемлемые сроки получения первичного вида на жительство, разрешения на ПМЖ и гражданства. Рассмотрим наиболее простой вариант получения гражданства в Чили. ВНЖ для финансово-независимых людей это начало процесса, который далее приведет к получению ПМЖ и гражданства.</span></p>', 'residency/April2022/YYHDELRbunhu1jk8Gt25.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Медицина на уровне США.</strong></li>\r\n</ul>\r\n<p>Чили на 33 месте из 169 стран по Healthiest Country Index (Индекс Самой Здоровой Страны). Частные клиники с современным оборудованием, многие врачи с европейским медицинским образованием и говорят на английском.</p>\r\n<ul>\r\n<li><strong>Отсутствие криминала.</strong></li>\r\n</ul>\r\n<p>Согласно данным Crime Index и Safety Index (преступность и безопасность) в Чили безопаснее, чем США. Чили, после Канады, на 2-ом месте по безопасности на Американских материках.</p>\r\n<ul>\r\n<li><strong>Низкий уровень коррупции.</strong></li>\r\n</ul>\r\n<p>Согласно данным Transparency International Чили занимает одно из ведущих мест в мире, как страна с низким уровнем коррупции.</p>\r\n<ul>\r\n<li><strong>Отсутствие рисков при въезде.</strong></li>\r\n</ul>\r\n<p>Безвизовый режим с Чили, в отличие от США и Канады, обеспечивает гарантии въезда в страну будущей маме. Россиянам и украинцам виза не нужна и можно находится в стране до 180 дней.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/ZjLrhBWTjEz4rU8RdjnK.jpg', 'img', '<p>Начало процесса в котором мы готовы поддержать наиболее хорошо подходит для финансово-независимых людей, имеющих постоянный пассивный доход за пределами Чили.&nbsp;</p>\r\n<p>ВНЖ, ПМЖ и Гражданство получают:</p>\r\n<p>1) основной заявитель;</p>\r\n<p>2) супруг/супруга;</p>\r\n<p>3) дети до 18 лет.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/bOFjxr7k935S80KjjEsc.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации вы узнаете с чего начинать и какой пакет документов вам необходимо подготовить. Мы готовы помочь вам со сбором всех требуемых подтверждений.</span></p>', 'residency/April2022/nw4MOEmtZ9aHDaqLH4C2.jpg', 'img', '<p class=\"MsoNormal\">Обращаясь в нашу компанию вы можете рассчитывать, что уже на первой консультации вам будет озвучен подробный алгоритм действий необходимых для получения Гражданства Чили. Мы действуем максимально в пользу ваших интересов. Доверьте процесс нашим специалистам, и вы получите самый комфортный и профессиональный сервис.</p>', 'residency/April2022/F5zJUVq86j6v94Pau9Rv.jpg', 'img', 'rezidentstvo-chili', 1, 0, 'Резидентство Чили', 'Резидентство Чили', 'Резидентство Чили', '2022-04-18 14:02:00', '2022-05-04 06:12:13', 'Вид на жительство Чили', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Резидентство Швейцарии', 'Вид на жительство Швейцарии (через регистрацию бизнеса или налоговое соглашение)', 'Что мы знаем о Швейцарии? Например, то что там самые надёжные банки, часы и вкусный сыр конечно. Экономика Швейцарии известна во всем мире своею стабильностью. Хоть территориально она находится в Европе, она не входи в ЕС и Шенген.', 'residency/April2022/35bNdwUYiumbXdvg58Nf.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы захотите посетить Швейцарию имея Шенгенскую визу, вы сможете это сделать без проблем. Финансово-независимая страна и сильная экономика, всё это еще и потому, что она не зависит от Евросоюза так как не входит в Европейский Экономический Союз, что несомненно является большим плюсом для ведения бизнеса в этой стране, так как никакие экономические колебания в Европе не отражаются на положение дел в Швейцарии. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы хотите иметь право на долговременное проживание в Швейцарии, то вам доступны два варианта. Первый &ndash; если вы владеете компанией и второй, если вы подписали налоговое соглашение.</span></p>', 'residency/April2022/HwMCn6icGxju24yEuGtV.jpeg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Возможность безвизового передвижения по Европе.</strong></li>\r\n</ul>\r\n<p>После получения ВНЖ Швейцарии вы сможете проживать в этой стране и без виз передвигаться по европейским странам.</p>\r\n<ul>\r\n<li><strong>ВНЖ получает вся семья.</strong></li>\r\n</ul>\r\n<p>Вид на жительство выдается не только основному заявителю, но и супругу/супруге, а также детям, не достигшим совершеннолетнего возраста.</p>\r\n<ul>\r\n<li><strong>Престижный образ жизни.</strong></li>\r\n</ul>\r\n<p>Жизнь в Швейцарии приятна, комфортна и престижна. Уникальная природа, высокий уровень безопасности, политическая и экономическая стабильность.</p>\r\n<ul>\r\n<li><strong>ВНЖ &ndash; первый шаг к ПМЖ и Гражданству.</strong></li>\r\n</ul>\r\n<p>Следующие этапы после получения вида на жительства, это получение постоянного вида на жительства и затем гражданства.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/2WAEfb5JHMUIZkfqfIIu.jpg', 'img', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Хорошо подойдёт для финансово-независимых людей, предпринимателей и инвесторов. Получение ВНЖ Швейцарии можно рассматривать, как вложение в будущую свободу передвижения и ведения предпринимательской деятельности на территории ЕС.</span></p>', 'residency/April2022/lAcpNsaBsCVNmQ4PgoDV.jpg', 'img', '<p>Рассматриваются два способа получения ВНЖ Швейцарии, это:</p>\r\n<p><strong>Через регистрацию компании:</strong></p>\r\n<ul>\r\n<li>Действующий паспорт.</li>\r\n<li>2 цветные фотографии.</li>\r\n<li>Детальное резюме.</li>\r\n<li>Страховой медицинский полис.</li>\r\n<li>Наличие юридического адреса.</li>\r\n<li>Бизнес план, описание деятельности и предполагаемый бюджет компании.</li>\r\n<li>Доказательства безуспешного поиска работы на местном и европейском рынке труда.</li>\r\n<li>Копии рабочего контракта, дипломов/сертификатов, подтверждающих наличие у кандидата образования, опыта работы и достаточных квалификаций.</li>\r\n<li>Справка об отсутствии судимостей.</li>\r\n</ul>\r\n<p><strong>На основании налогового соглашения:</strong></p>\r\n<ul>\r\n<li>Действующий паспорт.</li>\r\n<li>2 цветные фотографии.</li>\r\n<li>Заполненная и подписанная анкета.</li>\r\n<li>Доказательство наличия места жительства в Швейцарии.</li>\r\n<li>Справка об отсутствии судимостей.</li>\r\n<li>Страховой медицинский полис.</li>\r\n<li>Детальное резюме.</li>\r\n<li>Заявление о том, что заявитель не будет осуществлять предпринимательскую деятельность на территории Швейцарии.</li>\r\n<li>Соглашение с налоговой администрацией.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'residency/April2022/xZ3LbxEhYYaRb7FlhdQl.jpeg', 'img', '<p><strong>Через регистрацию компании:</strong></p>\r\n<ol>\r\n<li>Регистрация швейцарской компании (в форме акционерного общества).</li>\r\n<li>Бизнес-проект должен носить инновационный характер и предусматривать крупные инвестиции (около 1-6 миллионов швейцарских франков).</li>\r\n<li>Создание рабочих мест для граждан Швейцарии.</li>\r\n<li>Заявитель назначается директором компании на основании трудового договора с зарплатой и условиями найма, соответствующими местным общепринятым условиям, занимаемой должности и сектору занятости *</li>\r\n<li>Заявитель должен обладать необходимым опытом, образованием/квалификацией, знаниями языка и иными навыками, достаточными для осуществления функция на занимаемой им позиции в компании.</li>\r\n</ol>\r\n<p>*Иностранные граждане могут быть допущены к работе только в случае, если будет доказано, что на местном и европейском рынке рабочей силы не нашлось соответствующего работника на данную должность.</p>\r\n<p><strong>На основании налогового соглашения:</strong></p>\r\n<ol>\r\n<li>Заключение соглашения с налоговой администрацией одного из кантонов Швейцарии *</li>\r\n<li>Заявитель не должен являться гражданином ЕС-ЕАСТ.</li>\r\n<li>Заявитель не должен вести предпринимательскую деятельность на территории Швейцарии.</li>\r\n<li>Обязательная ежегодная оплата фиксированной суммы налога, размер которой зависит от расходов на проживание заявителя в Швейцарии.</li>\r\n<li>Фиксированная сумма налога на федеральном уровне составляет 400 000 швейцарских франков и может изменяться в зависимости от кантона.</li>\r\n</ol>\r\n<p>*Для принятия положительного решения о предоставлении вида на жительства миграционными органами, прежде всего, учитывается наличие у заявителя значительного капитала и активное участие в социальной, экономической и культурной жизни страны.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/yeXlDCtrJQU2yNmS0iwX.jpg', 'img', 'rezidentstvo-shvejcarii', 1, 0, 'Резидентство Швейцарии', 'Резидентство Швейцарии', 'Резидентство Швейцарии', '2022-04-18 14:09:00', '2022-05-04 06:11:51', 'Вид на жительство Швейцарии', 'residency/April2022/ieuWNheL0TBHQEmO6ZVa.jpeg', NULL, NULL, NULL, 'residency/April2022/OhmPET0l3NiC4efxYYCU.jpeg', NULL, 'residency/April2022/rWX7PfUqMa1452h19CcX.jpeg', NULL),
(23, 'Резидентство Эстонии', 'Долгосрочный вид на жительство Эстонии через регистрацию компании категории «STARTUP»', 'Эстония является членом ЕС и на данный момент она создала наиболее благоприятный климат для инновационных и startup-компаний:', 'residency/April2022/yM0JmOgmhDPM6HOnai5u.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">удаленное управление, налоговые льготы и лояльная банковская система привлекают все больше владельцев бизнеса и предпринимателей, которые регистрируют или переносят свои компании в Эстонию.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">При регистрации новой startup-компании или инвестиции в существующую позволяют владельцу компании и членам его семьи получить ВНЖ Эстонии сразу на 5 лет, минуя квоты на выдачу ВНЖ по другим основаниям, без необходимости ежегодной пролонгации.</span></p>', 'residency/April2022/aqUXqOff3N5bFgmbWhDY.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>Безвизовое передвижение или проживание в Европе.</strong></li>\r\n</ul>\r\n<p>Вам и членам вашей семьи предоставляется право постоянно проживать не только в Эстонии, но и находиться без ограничений по времени в странах Шенгена.</p>\r\n<ul>\r\n<li><strong>Для всей семьи сразу на 5 лет.</strong></li>\r\n</ul>\r\n<p>ВНЖ Эстонии получит вся семья (супруги и дети до 18 лет). Также есть возможность включения одного дополнительного взрослого.</p>\r\n<ul>\r\n<li><strong>Без необходимости проживания.</strong></li>\r\n</ul>\r\n<p>Обладатели данного типа ВНЖ Эстонии не обязаны проживать в Эстонии определенный период времени.</p>\r\n<ul>\r\n<li><strong>Возможность получения ПМЖ и гражданства ЕС.</strong></li>\r\n</ul>\r\n<p>По истечении 5-ти лет обладатели ВНЖ могут получить ПМЖ Эстонии, а в будущем и гражданство страны Евросоюза.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/eZgB3ZhaQTdlTQA2stk0.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям и преследуете следующие цели:</p>\r\n<ul>\r\n<li>получить ВНЖ в Европе сразу на 5 лет без необходимости ежегодной пролонгации.</li>\r\n<li>без крупных инвестиций в недвижимость или экономику.</li>\r\n<li>свободу передвижения без необходимости проживания в стране выдачи ВНЖ.</li>\r\n<li>перенести свой бизнес в удобную юрисдикцию и использовать нулевую ставку корпоративного налога на нераспределенную прибыл.</li>\r\n</ul>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/hK8C4X0sgmrFNB7r4FNg.jpeg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить документы, которые подтверждают следующие факты и обстоятельства:</p>\r\n<ul>\r\n<li>Действительный заграничный паспорт;</li>\r\n<li>Подробное CV для каждого взрослого заявителя;</li>\r\n<li>Цифровое фото;</li>\r\n<li>Нотариальная доверенность;</li>\r\n<li>Справка о доходах за последние 6 месяцев;</li>\r\n<li>Туристическая страховка для посещения стран Шенгена;</li>\r\n<li>Свидетельство о браке (если применимо);</li>\r\n<li>Свидетельства о рождении детей (если применимо).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/o59I2Gqtp8w7ORqj2Aw3.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp;</p>\r\n<ul>\r\n<li>Предварительная проверка благонадежности;</li>\r\n<li>Подписание договора и оплата услуг;</li>\r\n<li>Предоставление необходимых документов и доверенности;</li>\r\n<li>Регистрация компании;</li>\r\n<li>Получение решения комиссии по стартапам;</li>\r\n<li>Оформление карты e-резидента;</li>\r\n<li>Первый визит в консульство и подача файла на ВНЖ;</li>\r\n<li>Ожидание решения;</li>\r\n<li>Второй визит в консульство и получение резидентских карт.</li>\r\n</ul>\r\n<p>Наша услуга включает:&nbsp;</p>\r\n<ul>\r\n<li>Регистрация компании с уставным капиталом;</li>\r\n<li>Регистрационный адрес и контактное лицо в Эстонии;</li>\r\n<li>Разработка бизнес-плана, экономического и юридического обоснования проекта;</li>\r\n<li>Подготовка досье для подачи на ВНЖ и карту электронного резидента;</li>\r\n<li>Запись на подачу и получение карточек ВНЖ;</li>\r\n<li>Юридическая поддержка в процессе рассмотрения заявления.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/wh9MgjhLzEaQb5tWQs82.jpg', 'img', 'rezidentstvo-estonii', 1, 0, 'Резидентство Эстонии', 'Резидентство Эстонии', 'Резидентство Эстонии', '2022-04-18 14:15:00', '2022-05-04 06:10:06', 'Вид на жительство Эстонии', NULL, NULL, NULL, NULL, NULL, NULL, 'residency/April2022/Ewx5H6PWFstaX54NHaHC.jpeg', NULL),
(24, 'Резидентство Греции (ПМЖ)', 'Постоянное место жительства в Греции (на основании инвестиции в недвижимость)', 'Если бы вы хотели минуя этап получения ВНЖ сразу получить статус ПМЖ, то законодательство Греции даёт вам такую возможность при условии, что вы покупаете недвижимость в стране на общую оценочную стоимость не менее 250 000 Евро.', 'residency/April2022/Me2J0FFAUZUlJgcvxGJ4.jpg', '<p>Данная возможность уникальна еще и тем, что вы можете приобрести не один объект недвижимости, а сразу несколько на общую оценочную стоимость не менее 250 000 Евро, что значительно повышает ликвидность вашей покупки.</p>\r\n<p>ПМЖ при покупке недвижимости оценочной стоимостью не менее 250 000 евро на 5 лет.</p>\r\n<p>1) Владение физическим лицом или единоличным собственником юридического лица недвижимости в Греции оценочной стоимостью не менее 250 000 евро, либо подписанный с риэлтором или адвокатом договор о намерениях покупки недвижимости на эту сумму.&nbsp;</p>\r\n<p>2) Заключенный не менее, чем на 15 лет договор аренды коммерческой недвижимости туристического назначения на территории Греции от имени единоличного собственника юридического лица.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/KCXUMd7GuqLhFCTw0dEX.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>В РАССЧЁТ ИДЁТ СТОИМОСТЬ ОДНОЙ ПОКУПКИ ИЛИ НЕСКОЛЬКИХ ОБЪЕКТОВ НЕДВИЖИМОСТИ.</strong></li>\r\n</ul>\r\n<p>Целью инвестирования может быть несколько объектов недвижимости совокупная оценочная стоимость которых будет больше 250 000 Евро.</p>\r\n<ul>\r\n<li><strong>НЕТ ПРИВЯЗКИ К РЫНОЧНОЙ СТОИМОСТИ НЕДВИЖИМОСТИ.</strong></li>\r\n</ul>\r\n<p>Разница между оценочной и рыночной стоимостью недвижимости достигает суммы 100 000 Евро.</p>\r\n<ul>\r\n<li><strong>ВЫ МОЖЕТЕ СДАВАТЬ НЕДВИЖИМОСТЬ В АРЕНДУ.</strong></li>\r\n</ul>\r\n<p>Таким образом, если вы не проживаете в Греции постоянно, то за счет сдачи недвижимости в аренду вы можете частично или полностью покрыть свои расходы.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/oeg4YsSQEsGnidNeN7kg.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям, имеющим возможность инвестировать имеющиеся средства в приобретение недвижимости или использовать другие варианты получения ПМЖ Греции.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/rdoEO6H2DBrD1uMbTl64.jpg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить документы, которые подтверждают следующие факты и обстоятельства:</p>\r\n<ul>\r\n<li>Нотариальный контракт о покупке недвижимости;</li>\r\n<li>Справка о регистрации контракта в Земельном регистре;</li>\r\n<li>Справка от нотариуса о соответствии недвижимости требованиям закона (включая оценку);</li>\r\n<li>Квитанция об оплате государственного тарифа согласно ст. 132 закона 4251/2014;</li>\r\n<li>Действующий паспорт для поездок за границу (заграничный паспорт);</li>\r\n<li>Свидетельство о заключении брака (в случае оформления супругов);</li>\r\n<li>Свидетельства о рождении детей (в случае оформления вместе с детьми);</li>\r\n<li>Страховой медицинский полис.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/pFfi9NaM4DJ2yQ21cuE9.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной. Процесс подачи может изменяться в зависимости от выбранного варианта:</p>\r\n<p>1. Обращение в консульство Греции с оформлением визы D. Общий срок оформления ПМЖ - 3 месяца.</p>\r\n<p>2. Обращение в Департамент по делам иностранцев непосредственно в Греции. Общий срок оформления ПМЖ - 1 месяц.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/O08IRNYfFu8b0o6QbWTP.jpg', NULL, 'rezidentstvo-grecii-pmzh', 1, 0, 'Резиденство Греции (ПМЖ)', 'Резиденство Греции (ПМЖ)', 'Резиденство Греции (ПМЖ)', '2022-04-18 14:22:00', '2022-05-04 06:11:16', 'Вид на жительство в Греции', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Резидентство Новой Зеландии', 'ПМЖ Новой Зеландии по программе «INVESTOR» и «INVESTOR PLUS»', 'Как и любая друга страна с высоким уровнем жизни Новая Зеландия также известна хорошей медициной, безопасностью, политической и экономической стабильностью.', 'residency/April2022/X6I6e6rXqQcCDDrMfyoi.jpg', '<p>Многие иностранцы приезжающие в эту страну рано или поздно задумываются о получении ПМЖ и гражданства. На данный момент в этой стране функционируют две наиболее привлекательные программы для инвесторов, это &laquo;INVESTOR&raquo; и &laquo;INVESTOR PLUS&raquo;.</p>\r\n<p><strong>INVESTOR</strong> (Всего 300 заявок в год):</p>\r\n<ul>\r\n<li>инвестиции 1,5 миллиона NZD;</li>\r\n<li>дополнительные свободные средства/активы - 1 миллион NZD;</li>\r\n<li>проживание минимально 146 дней в году.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>INVESTOR PLUS</strong> (Высший приоритет):</p>\r\n<ul>\r\n<li>Инвестиции 10 миллионов NZD;</li>\r\n<li>Проживание минимально 44 дня в году.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/tXRYm8KhgXXKvmRLsj0X.jpg', 'img', NULL, NULL, NULL, NULL, NULL, '<ul>\r\n<li><strong>ПМЖ в Новой Зеландии.</strong></li>\r\n</ul>\r\n<p>ПМЖ Новой Зеландии дает право на постоянное проживание, ведение бизнеса, обучение и другие преимущества.</p>\r\n<ul>\r\n<li><strong>Сразу для всей семьи.</strong></li>\r\n</ul>\r\n<p>Право на проживание может получить вся семья одновременно.</p>\r\n<ul>\r\n<li><strong>Комфортные условия проживания.</strong></li>\r\n</ul>\r\n<p>Обладатели ПМЖ Новой Зеландии обладают теми же правами, что и граждане, за исключением избирательного права.</p>\r\n<ul>\r\n<li><strong>Возможность получить гражданство.</strong></li>\r\n</ul>\r\n<p>Всего через три с половиной года проживания можно претендовать на получение гражданства Новой Зеландии.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/HNScm4pxd5IqWvMfZOun.jpg', 'img', '<p>Программа подойдёт финансово-независимым людям имеющим пассивный или иной доход за пределами Австрии.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n</ul>\r\n<ol>\r\n<li>Возраст до 65 лет;</li>\r\n<li>Опыт не менее 3-х лет ведения бизнеса (для основного инвестора);</li>\r\n<li>Хорошее состояние здоровья (отсутствуют серьезные заболевания и не требуется уход и социальная помощь);</li>\r\n<li>Свидетельство хорошей репутации.</li>\r\n</ol>\r\n<ul>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/PfFBtv6WmzK6Nu1F4uuI.jpg', 'img', '<p>Для получения статуса резидента необходимо будет предоставить подтверждение ваших инвестиций. Обязательно должны быть соблюдены следующие условия:</p>\r\n<ul>\r\n<li>Ликвидные активы;</li>\r\n<li>Не находятся в личном пользовании;</li>\r\n<li>Не находятся в залоге или в форме кредитных обязательств;</li>\r\n<li>Принадлежат инвестору, и/или совместно с инвестором супруге или детям;</li>\r\n<li>Получены законным путем;</li>\r\n<li>Инвестируются в Новой Зеландии;</li>\r\n<li>Инвестируются в реально действующие компании или управляемые фонды;</li>\r\n<li>Несут в себе потенциал для улучшения экономики страны.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/sK1AJYOSlB6kCNfnkoZO.jpg', 'img', '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной. Цели инвестиций должны быть следующие:</p>\r\n<ul>\r\n<li>Облигации, выпущенные государственным или местным органом власти;</li>\r\n<li>Облигации, выпущенные новозеландскими компаниями, торгующиеся на новозеландском рынке ценных бумаг;</li>\r\n<li>Облигации, выпущенные Новозеландскими компаниями, по крайней̆ мере, по рейтингу BBB- или же по эквивалентному рейтингу всемирно-признанного кредитно-рейтингового агентства (например, Standart and Poor\'s);</li>\r\n<li>Облигации, выпущенные банками, зарегистрированными в Новой Зеландии;</li>\r\n<li>Акции банков, зарегистрированных в Новой Зеландии;</li>\r\n<li>Развитие сектора жилой̆ недвижимости;</li>\r\n<li>Облигации финансовых компаний;</li>\r\n<li><strong>Инвестиции должны быть переведены в безналичной̆ форме посредством банка или финансовой̆ компании, которая использует банковскую систему.</strong></li>\r\n</ul>\r\n<p>&nbsp;</p>', 'residency/April2022/JGhEykNVAKDUH1GSWIqf.jpg', NULL, 'rezidentstvo-novoj-zelandii', 1, 0, 'Резиденство Новой Зеландии', 'Резиденство Новой Зеландии', 'Резиденство Новой Зеландии', '2022-04-18 14:29:00', '2022-05-04 06:10:29', 'ПМЖ Новой Зеландии', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Резидентство Великобритании Tier 1', 'Вид на жительство в Великобритании «UK Tier 1 Investor Visa»', 'Программа «UK TIER 1 INVESTOR VISA» – это способ получения временного вида на жительство в Великобритании, предоставляющий возможность в будущем получить постоянный вид на жительство (ПМЖ) и гражданство Великобритании.', 'residency/April2022/kNJV2MsYegoNNUY7KrU9.jpeg', '<p>Виза &laquo;Tier 1 Investor&raquo; хороший способ получить ВНЖ Великобритании взамен на инвестиции, которые не должны быть менее &pound;2.000.000. Благоприятный иммиграционный климат Великобритании поощряет прямые инвестиции и предлагает максимально благоприятные условия для получения ВНЖ этой страны, а в дальнейшем ПМЖ и гражданства инвесторам-гражданам третьих стран.</p>', 'residency/April2022/2P8j7GCvqafdMFKnoVfg.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Постоянное проживание в стране.</strong></p>\r\n<p>Инвестор вместе с семьёй может пользоваться всеми доступными правами резидентов Великобритании на образование, работу и ведение бизнеса в этой стране.</p>\r\n<p><strong>Нет требований к знанию языка.</strong></p>\r\n<p>Не зависимо от уровня владения английским языком вы можете претендовать на получение статуса. Не требуется предъявлять сертификаты о прохождении курсов или обучении.</p>\r\n<p><strong>Не обязательно вести бизнес.</strong></p>\r\n<p>Поскольку вы инвестор вам не обязательно начинать какой-либо бизнес или открывать филиалы. Вам достаточно самого факта инвестиций для получения и сохранения статуса.</p>\r\n<p><strong>Перспектива получения ПМЖ и Гражданства.</strong></p>\r\n<p>Временный вид на жительство выдается на 2 года, затем можно получить постоянный вид на жительство и после 3 лет гражданство.</p>', 'residency/April2022/rVRjnkmh4BWWYbrU6RkF.jpg', NULL, '<p><strong>Получить визу &laquo;UK Tier 1 Investor&raquo; могут:</strong></p>\r\n<p>&bull; основной инвестор</p>\r\n<p>&bull; супруг/супруга</p>\r\n<p>&bull; несовершеннолетние дети</p>\r\n<p>Первоначально виза выдаётся на три года с последующим продлением на два года. Только основному заявителю необходимо находиться на территории Великобритании не менее 183 дней в году</p>\r\n<p>&nbsp;</p>', 'residency/April2022/3zm6YFkBB37k37e7fZmz.jpeg', NULL, '<p>Есть три варианта условий получения визы &laquo;UK Tier 1 Investor&raquo;:</p>\r\n<p>1. Британские правительственные или корпоративные облигации. Размер инвестиций: &pound;2.000.000 (ПМЖ через пять лет и гражданство Великобритании на шестой год).</p>\r\n<p>2. Акции британских компаний. Размер инвестиций: &pound;5.000.000 (ПМЖ через три года и гражданство Великобритании на пятый год).</p>\r\n<p>3. Инвестиции в капитал действующих компаний, зарегистрированных в Великобритании. Размер инвестиций: &pound;10.000.000 ПМЖ через два года и гражданство Великобритании на пятый год.</p>\r\n<p>&nbsp;</p>', 'residency/April2022/VRVlPCxqj8073ySElp4c.jpeg', NULL, '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp;</p>', 'residency/April2022/lnfjOS0rFyHUUvPOUHbc.jpeg', NULL, 'rezidentstvo-velikobritanii-tier-1', 1, 0, 'Резидентство Великобритании Tier 1', 'Резидентство Великобритании Tier 1', 'Резидентство Великобритании Tier 1', '2022-04-21 16:14:00', '2022-05-04 06:08:16', 'Вид на жительство в Великобритании', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Резидентство США (программа ЕВ-3)', 'Вид на жительство в США (программа ЕВ-3 грин карта через поддержку работодателя)', 'Данная программа помогает переехать в США через поддержку работодателя вместе со всеми членами семьи (возраст детей при этом до 21 года). Наша компания предоставляет на выбор вакансии и регионы для переезда, вы сами сможете выбрать рабочее место и Штат. Но важно понимать, что это иммиграционная программа, а не просто рабочая виза. В конце оформления вы получаете грин карты на 10 лет и номера социального страхования на 10 лет для всех членов семьи. Подробнее об условиях переезда вы сможете узнать у наших специалистов.', 'residency/May2022/QXXkyfh5DUUElGw11E7N.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\">Иммиграционное законодательство США предлагает несколько программ для бизнесменов и инвесторов, которые позволяют получить право на проживание в США.<br />Но не каждая программа позволяет получить Грин Карту (ПМЖ США). Разобраться в законодательстве и выбрать лучшую возможность иммиграции в США вам помогут специалисты Иммиграционного Центра&nbsp;<span lang=\"EN-US\">RESIDENT</span>.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Мы рассмотрим иммиграционную визу в США на основании трудоустройства.</p>', 'residency/May2022/PyVHpsu1INVvXH65SKjc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p class=\"MsoNormal\"><strong>Постоянное проживание в США.</strong></p>\r\n<p class=\"MsoNormal\">Постоянно жить, работать, вести бизнес, получать образование и пользоваться иными преимуществами на правах резидента.</p>\r\n<p class=\"MsoNormal\"><strong>Сразу для всей семьи.</strong></p>\r\n<p class=\"MsoNormal\">Вид на жительство получит не только основной заявитель, но и члены семьи одновременно, в том числе зависимые дети до 21 года.</p>\r\n<p class=\"MsoNormal\"><strong>Оформление на родине.</strong></p>\r\n<p class=\"MsoNormal\">Находясь у себя на родине вы уже получаете визу резидента вместе с членами семьи.</p>\r\n<p class=\"MsoNormal\"><strong>Возможность получения постоянной Грин Карты и Гражданства США.</strong></p>\r\n<p class=\"MsoNormal\">Иммиграционная программа ЕВ-3 даёт возможность в короткие сроки получить постоянную Грин Карту и в будущем стать гражданином США.</p>\r\n<ul>\r\n<li><strong>Получение миграционной визы (Грин Карта) на 10 лет</strong>&nbsp;и в последующем гражданства США (весь процесс занимает 5-6 лет).</li>\r\n<li><strong>Наиболее надежная возможность</strong>&nbsp;(более 85% одобренных заявлений, а при использовании проектов нашего партнерского Регионального центра 100% одобренных заявлений).</li>\r\n<li><strong>Минимальные требования к заявителю</strong>, кроме наличия средств для переезда вам должно быть не более 55 лет и наличие минимального английского.</li>\r\n<li><strong>Члены семьи заявителя (супруги и дети до 21 года) также получают Грин Карту.</strong></li>\r\n</ul>', 'residency/May2022/Nr3iVmTipFO2iEP5nxS1.jpg', NULL, '<p>Программа подойдёт финансово-поготовленым людям, желающим получить ВНЖ Соединённых Штатов Америки.</p>\r\n<p>Участники:</p>\r\n<ul>\r\n<li>Основной инвестор.</li>\r\n<li>Супруг/супруга (даже в случае гражданского брака).</li>\r\n<li>Дети до 18 лет.</li>\r\n</ul>\r\n<p><strong>Основные требования программы:</strong></p>\r\n<ul>\r\n<li>Возраст до 55 лет у основного заявителя.</li>\r\n<li>Наличие минимального английского языка.</li>\r\n<li>Наличие средств для переезда и адаптации в США.</li>\r\n<li>Готовность отработать один год у приглашающего работодателя (основной заявитель).</li>\r\n</ul>', 'residency/May2022/MkKMUl95ogrbEX1aYUkh.jpg', NULL, '<p><span style=\"text-align: justify;\">Уже на первой консультации наши специалисты помогут вам сориентироваться, какие документы будут необходимы для начала процесса. Многолетний опыт наших консультантов позволяет нам создавать уникальные иммиграционные стратегии для вашего бизнеса или инвестиций.</span></p>', 'residency/May2022/1PaG6ajqGA9qBbkIEapn.jpg', NULL, '<p>Уже на первой консультации вам расскажут о том, как будет выглядеть процесс оформления. Все этапы подробно обсуждаются с клиентами для того чтобы сделать процедуру оформления наиболее понятной и ясной.&nbsp; В стоимость наших услуг входит:</p>\r\n<ul>\r\n<li>Подбор работодателя в США;</li>\r\n<li>Подготовка документов и сопровождение в иммиграционные органы США;</li>\r\n<li>Предложение альтернативных решений в случае отказа;</li>\r\n<li>Помощь в получении резидентской карты ГРИН КАРД.</li>\r\n</ul>', 'residency/May2022/zQXLlGmET906epWwDhyK.jpg', NULL, 'rezidentstvo-ssha-programma-ev-3', 1, 0, 'Резидентство США (программа ЕВ-3)', 'Резидентство США (программа ЕВ-3)', 'Резидентство США (программа ЕВ-3)', '2022-05-24 06:57:00', '2022-05-24 07:06:02', 'Вид на жительство в США', 'residency/May2022/hkUTGHIpcfyOCfKIifkq.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `image`, `name`, `email`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Виктор Шац', NULL, '<p>Хочу поблагодарить всех, кто помогал нам переехать на постоянное место жительства в Испанию, а именно фирму &laquo;Иммиграционный Центр RESIDENT&raquo;. Нас с женой интересовала возможность переезда, через покупку недвижимости. Больше всего не хотелось покупать &laquo;кота в мешке&raquo;, поскольку мы не могли выехать на визит из-за COVID ограничений. Но благодаря менеджерам из фирмы нам удалось найти отличную недвижимость в Валенсии дистанционно. С нами постоянно выходили на связь и у нас была возможность смотреть варианты через выдеозвонок. Это было очень удобно для нас. Все оформление также прошло без препятствий, на данный момент мы уже на месте! Спасибо &laquo;Иммиграционному Центру RESIDENT&raquo;!</p>', 1, '2022-03-30 09:41:00', '2022-04-26 13:51:08'),
(2, NULL, 'Мария Волынец', NULL, '<p>Мы с мужем долго не решались начать процесс иммиграции в Канаду, поскольку не могли найти хороших специалистов, которые бы помогли нам с выбором программы и рассказали бы, что для этого требуется. Случайно вышли на Компанию &laquo;Иммиграционный Центр RESIDENT&raquo;. Оказалось, что у них есть офис в нашем городе. Сходили на консультацию и остались очень довольны. Оформление заняло полтора года после сдачи экзамена по английскому языку. Сейчас мы живем в Торонто. Большое спасибо команде из Иммиграционного Центра RESIDENT!</p>', 1, '2022-03-30 09:41:00', '2022-04-26 13:50:32'),
(4, NULL, 'Виталий Новосёлов', NULL, '<p>Всегда хотелось путешествовать без виз. После свадьбы мы с женой стали рассматривать возможность перемены гражданства, чтобы навсегда забыть про визовые ограничения и с уверенностью планировать свои путешествия. К сожалению получение иностранного гражданства всегда связано с огромными суммами денег в виде инвестиций или покупки бизнеса. Когда мы уже почти отчаялись, то решили с женой обратится за помощью в Компанию &laquo;Иммиграционный Центр RESIDENT&raquo; и не пожалели! На первой же консультации нам предложили получить гражданство Республики ЧИЛИ (никогда раньше мы не рассматривали этот вариант). Оказалось, что процедура получения максимально простая и затраты минимальные. Этот вариант нам сразу понравился. Сейчас мы уже четыре года путешествуем без виз по всему миру! Были в США, Канаде, Европе. И главное &ndash; без виз! Спасибо Иммиграционному Центру &laquo;RESIDENT&raquo;!</p>', 1, '2022-04-26 13:52:29', '2022-04-26 13:52:29'),
(5, NULL, 'Торун Мхатарян', NULL, '<p>Мне 24 года, и я всегда мечтал переехать в США на постоянное место жительства. Многие мои друзья уже давно жили в Америке, и я тоже мечтал попасть туда, чтобы жить и работать. Мне не хотелось использовать какие-то нелегальные схемы или рисковать своей визовой историей. Я решил обратится в Компанию &laquo;Иммиграционный Центр &laquo;RESIDENT&raquo; за помощью. Мне предложили вариант переезда через работодателя. Сначала меня смущали сроки, но потом я согласился. Сейчас живу в Сакраменто, по приезду сразу получил грин карту. Большое спасибо за помощь!</p>', 1, '2022-04-26 13:53:05', '2022-04-26 13:53:05'),
(6, NULL, 'Ирина Муратова', NULL, '<p>Мы с семьей живём в Анитигуа и Барбуда в городе Сент-Джонс, так как нашей мечтой с давнего времени были острова, а именно Карибский регион. Мой муж владелец строительной компании, мы всегда много путешествовали, занимались сёрфингом и решили, что жить хотим в стране вечного лета, поэтому обратились за помощью в агентство &laquo;Иммиграционный Центр RESIDENT&raquo;. Нас проконсультировали по программе получения гражданства за инвестиции. Все оформление заняло немного времени, и мы смогли переехать на новое место всей семьей. Спасибо Иммиграционному Центру &laquo;RESIDENT&raquo;! Рекомендуем!</p>', 1, '2022-04-26 13:53:45', '2022-04-26 13:53:45'),
(8, NULL, 'Олжас', 'ff@ff.kz', 'вввв', 0, '2022-05-24 12:31:52', '2022-05-24 12:31:52');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-28 22:18:07', '2022-03-28 22:18:07'),
(2, 'user', 'Normal User', '2022-03-28 22:18:07', '2022-03-28 22:18:07');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(5, 'services/April2022/8bPjVIUnIWh18nihrcFP.jpeg', 'Консультация по вопросам иммиграции в любую страну мира', '<p>1) оценим ваши иммиграционные шансы;</p>\r\n<p>2) обозначим ключевые критерии участия;</p>\r\n<p>3) дадим рекомендации для подготовки документов;</p>\r\n<p>4) дадим рекомендации для подачи заявки на участие.</p>\r\n<p>5) консультируем как очно, так и дистанционно.</p>\r\n<p>Стоимость услуги &ndash; 150$.</p>\r\n<p>&nbsp;</p>', '2022-03-30 07:37:00', '2022-04-21 16:29:12'),
(6, 'services/April2022/wVYiDljiCgpICJ9rsJOZ.jpeg', 'Открытие счета за рубежом', '<p>1)&nbsp; &nbsp; &nbsp;консультация;</p>\r\n<p>2)&nbsp; &nbsp; &nbsp;подготовка документов;</p>\r\n<p>3)&nbsp; &nbsp; &nbsp;дистанционное открытие счёта;</p>\r\n<p>4)&nbsp; &nbsp; &nbsp;предоставление всех реквизитов.</p>\r\n<p>&nbsp;</p>\r\n<p>Стоимость услуги варьируется в зависимости от страны.</p>', '2022-04-21 16:32:37', '2022-04-21 16:32:37'),
(7, 'services/April2022/9rEdvOMuievdamTxdg9O.jpeg', 'Подача заявления в ЕСПЧ в Страсбурге', '<p>1) консультация для оценки вашей ситуации;</p>\r\n<p>2) подготовка заявления и доказательной базы;</p>\r\n<p>3) подача заявления;</p>\r\n<p>4) сопровождение дела в суде.</p>\r\n<p>Стоимость услуги варьируется.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:35:58', '2022-04-21 16:35:58'),
(8, 'services/April2022/NiOSuddwdQOs9vp1ouU2.jpeg', 'Помощь в адаптации', '<p>1) встреча в аэропорте;</p>\r\n<p>2) открытие банковского счета;</p>\r\n<p>3) приобретение сим карты;</p>\r\n<p>4) помощь в аренде жилья;</p>\r\n<p>5) сопровождение в государственные учреждения.</p>\r\n<p>6) зачисление детей в школу или детский сад.</p>\r\n<p>Стоимость услуги варьируется в зависимости от выбранного направления.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:40:16', '2022-04-21 16:40:16'),
(9, 'services/April2022/FRjVL1ekIekyFns73MwY.jpeg', 'Помощь в подготовке резюме зарубежного образца', '<p>1) предоставим шаблон на русском языке;</p>\r\n<p>2) сделаем корректировку согласно требований страны назначения;</p>\r\n<p>3) дополним при необходимости согласно желаемой должности;</p>\r\n<p>4) переведём на иностранный язык;</p>\r\n<p>Стоимость услуги 150$</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:42:51', '2022-04-21 16:42:51'),
(10, 'services/April2022/0YN8snqAnrOJIZQvgFTg.jpeg', 'Регистрация брака в США для нерезидентов', '<p>1) первичная консультация для оценки необходимости;</p>\r\n<p>2) подготовка к интервью;</p>\r\n<p>3) запись на интервью;</p>\r\n<p>4) помощь в получении сертификата американского образца.</p>\r\n<p>Стоимость услуги 500$ не считая издержек процесса.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:44:36', '2022-04-21 16:44:36'),
(11, 'services/April2022/nTGlszIhhM0dEsudXf5m.jpeg', 'Регистрация в лотерее DV-Lottery (Green Card)', '<p>1) помощь в заполнении анкеты;</p>\r\n<p>2) рекомендации по подготовке документов;</p>\r\n<p>3) регистрация на официальном сайте.</p>\r\n<p>4) предоставление регистрационного номера участника сразу после регистрации;</p>\r\n<p>5) проверка результатов;</p>\r\n<p>6) помощь в заполнении последующих форм и подготовка к интервью.</p>\r\n<p>Стоимость услуги 35$.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:45:46', '2022-04-21 16:45:46'),
(12, 'services/April2022/0K01wQgyrR9xYsDgMG42.jpeg', 'Регистрация компании за рубежом', '<p>1) консультация;</p>\r\n<p>2) подготовка необходимых документов;</p>\r\n<p>3) подача заявки на открытие компании;</p>\r\n<p>4) предоставление всех реквизитов.</p>\r\n<p>Стоимость услуги варьируется в зависимости от типа компании и страны ее регистрации.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:47:06', '2022-04-21 16:47:06'),
(13, 'services/April2022/Bu1CPGrjERchXHUcADTI.jpeg', 'Услуга подбора юриста за рубежом для сопровождения вашего кейса при необходимости', '<p>1) помощь в выборе узкопрофильного специалиста;</p>\r\n<p>2) проверка на безупречность репутации;</p>\r\n<p>3) предоставление контактов для дальнейшего сотрудничества.</p>\r\n<p>&nbsp;</p>\r\n<p>Стоимость услуги 500$.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:48:15', '2022-04-21 16:48:15'),
(14, 'services/April2022/r40fL5adg970ZSrqPku7.jpg', 'Эвалюация и нострификация дипломов', '<p>1) убедимся в необходимости данной процедуры;</p>\r\n<p>2) подберем уполномоченную организацию;</p>\r\n<p>3) поможем подготовить документы к отправке;</p>\r\n<p>4) создадим личный кабинет и поможем пройти регистрацию;</p>\r\n<p>5) дадим рекомендации по упаковке и отправке документов;</p>\r\n<p>6) Вместе с вами будем отслеживать весь процесс до получения отчёта и возврата документов.</p>\r\n<p>Стоимость услуги 300$ не считая сопутствующих расходов.</p>\r\n<p>&nbsp;</p>', '2022-04-21 16:50:12', '2022-04-21 16:50:12');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2022\\J7YanoG63YZNtIUGLiUJ.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'RESIDENT', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Иммиграционный Центр', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2022\\krFbDB6jkj1l5NPO9FlR.svg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2022\\aS39I6APwD7X4gc1yvF9.svg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.favicon', 'FavIcon', 'settings/May2022/nGm3LRKbRNcxanoKdiHU.svg', NULL, 'image', 6, 'Site'),
(12, 'site.header_logo', 'Логотип в Шапке', 'settings\\March2022\\AYke5kLYFn85UEM5z7Aj.svg', NULL, 'image', 7, 'Site'),
(13, 'site.main_form', 'Форма заявки с главной страницы', 'Форма заявки с главной страницы', NULL, 'text_area', 8, 'Site'),
(14, 'site.other_form', 'Форма заявки c остальных страниц', 'Форма заявки', NULL, 'text_area', 9, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `subtitle`, `link`, `created_at`, `updated_at`) VALUES
(1, 'sliders\\March2022\\If6XLObUbvsTETFvMqNs.jpg', 'Иммиграционная <br> виза в США', '<p>Гарантирует:</p>\r\n<ul>\r\n<li>Трудоустройство в филиалах компаний- партнеров</li>\r\n<li>Возможность открыть собственный бизнес</li>\r\n<li>Получить вид на жительство для всей семьи (грин кард)</li>\r\n</ul>', '/residency/rezidentstvo-ssha-programma-e-2', '2022-03-30 08:26:00', '2022-05-24 11:44:52'),
(2, 'sliders\\March2022\\dursryJF3kn92je5cQzL.jpg', 'Работа за рубежом', '<p>Гарантирует:</p>\r\n<ul>\r\n<li>Трудоустройство в филиалах компаний-партнёров</li>\r\n<li>Возможность получения вида на жительство для всей семьи</li>\r\n<li>Поддержка на всех этапах оформления</li>\r\n</ul>', 'work', '2022-03-30 08:27:00', '2022-04-25 13:30:41'),
(3, 'sliders\\March2022\\35cwGkjWL0f1RIISVTas.jpg', 'Иммиграция в <br> Канаду', '<p>Гарантирует:</p>\r\n<ul>\r\n<li>Оценка ваших иммиграционных шансов и подбор программы</li>\r\n<li>Помощь в подготовке документов и регистрации в программе</li>\r\n<li>Помощь при прохождении всех этапов оформления</li>\r\n<li>Поддержка в период адаптации</li>\r\n</ul>', 'citizenship/grazhdanstvo-kanady', '2022-03-30 08:28:00', '2022-04-25 13:22:32');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_bg_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `help` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_third_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_fourth_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_first_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_second_second_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `nav_title`, `title`, `description`, `flag_img`, `first_content`, `bg_img`, `alt_bg_img`, `second_content`, `second_img`, `alt_second_img`, `third_content`, `third_img`, `alt_third_img`, `fourth_content`, `fourth_img`, `alt_fourth_img`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `help`, `first_third_img`, `alt_first_third_img`, `first_fourth_img`, `alt_first_fourth_img`, `first_second_img`, `alt_first_second_img`, `second_second_img`, `alt_second_second_img`) VALUES
(1, 'Налоговые статусы Мальты', 'Malta Global Residency Program (вид на жительство и особый налоговый статус).', 'Республика Мальта является членом Европейского Союза, начиная с 2004 года и входит в Шенгенскую зону, начиная с 2007 года. Особенностью этого региона является постоянный экономический рост и отсутствие каких-либо политических волнений, что делает Мальту политически и экономически стабильной страной, что безусловно создаёт благоприятный климат для инвестиций и бизнеса. На данный момент ВНЖ Мальты это наиболее привлекательный вариант для предпринимателей.', 'status\\April2022\\hd3lZ2lZs3NECPo9p2Tr.jpg', '<p>Особый налоговый статус является одним из основных факторов привлекающих предпринимателей со всего мира. Его преимущества &mdash; это отсутствие налогов на доходы полученные за пределами Республики Мальта, а также наличие большого количества Соглашений об избежании двойного налогообложения. Статус сохраняется без прямой необходимости проживания на территории Республики Мальта определённое количество времени.</p>', 'status\\April2022\\70NJUUvEB42Y9F5PUYSE.jpg', 'фон', '<ol>\r\n<li>Заявитель должен быть гражданином страны, которая не входит ЕС, ЕЭС, а также Швейцарии.</li>\r\n<li>Наличие недвижимости на Мальте: 1) собственная недвижимость стоимостью от 220/275 тыс. евро ИЛИ 2) арендная недвижимость стоимостью не менее 8.750/9.600 евро/год.</li>\r\n<li>Наличие подтвержденного стабильного постоянного дохода.</li>\r\n<li>Минимальное владение любым официальным языком Мальты (английский, мальтийский).</li>\r\n<li>Соответствие требованиям благонадежности.</li>\r\n<li>Наличие полиса медицинского страхования.</li>\r\n<li>Не принимать гражданство Мальты, стран ЕС, ЕЭС или Швейцарии.</li>\r\n<li>Постоянное наличие недвижимости (собственность или аренда).</li>\r\n<li>Не получать статус постоянного резидента Мальты.</li>\r\n<li>Максимальный срок пребывания в одной другой стране не более 183 дней в году.</li>\r\n<li>Ежегодная подача налоговой отчетности.</li>\r\n</ol>', 'status\\April2022\\zXOQy85XDqjUGLcKNOpK.jpg', 'фон', '<p><strong>Уже на первой консультации наши специалисты предложат вам ознакомиться с основными требованиями к претендентам и первичным списком необходимых документов.</strong></p>', 'status\\April2022\\q4gUvT7VUEqCsCmNrez6.jpg', 'фон', '<p><strong>Вы можете рассчитывать на подробный и понятный алгоритм действий уже на перовой консультации.&nbsp; Многолетний опыт наших специалистов гарантирует безошибочный план действий для каждого клиента.</strong></p>', 'status\\April2022\\kUW6sfRHMxAo7j46J9iv.jpg', 'фон', 'nalogovye-statusy-malty', 1, 0, 'Налоговые статусы Мальты', 'Налоговые статусы Мальты', 'Налоговые статусы Мальты', '2022-04-04 11:06:00', '2022-05-04 06:45:42', 'налоговый статус Мальты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Налоговые статусы Андорры', 'Вид на жительство Андорры (на основании инвестиции в государственные облигации)', 'Сравнительно низкие налоги отличают Андорру от других европейских стран.', 'status/April2022/HV6fKpyDE3Romcc7E0TM.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Вместе с видом на жительство вы получаете статус налогового резидентства, вместе с которым и все его преимущества, такие как возможность пользования банковской системой. В Андорре полностью отсутствуют налоги на дивиденд, дарение, наследование и налог на богатство.</span></p>', 'status/April2022/UUJ3aMz34Ef0zM1GyZKZ.jpg', 'img', '<p>Одна из наиболее простых возможностей получить статус резидента в Европе для финансово-независимых аппликантов.&nbsp; Критерии участия максимально простые:</p>\r\n<ul>\r\n<li><strong>Наличие банковского счета в одном из банков Андорры.</strong></li>\r\n</ul>\r\n<p>и размещение минимум 150 000 евро на данном счете.</p>\r\n<ul>\r\n<li><strong>Инвестиции в государственные облигации Андорры.</strong></li>\r\n</ul>\r\n<p>суммы в размере 320 000 евро на весь срок наличия вашего резидентства.</p>\r\n<ul>\r\n<li><strong>Размещение на депозитном счете Министерства Финансов Андорры суммы 50 000 евро.</strong></li>\r\n</ul>\r\n<p>для основного заявителя и по 10 000 евро на каждого последующего члена семьи.</p>\r\n<p>&nbsp;</p>', 'status/April2022/KyzpQfDHbdL8VwPJiFeI.jpg', 'img', '<ul>\r\n<li>Действующий заграничный паспорт;</li>\r\n<li>Выписки с банковских счетов;</li>\r\n<li>Документы, подтверждающие стабильный доход;</li>\r\n<li>Документ из страны постоянного проживания об отсутствии задолженности по уплате налогов;</li>\r\n<li>Справка об отсутствии судимостей;</li>\r\n<li>Документы, подтверждающие наличие недвижимости;</li>\r\n<li>Свидетельство о заключении брака (если имеется);</li>\r\n<li>Свидетельство о рождении детей (если есть несовершеннолетние дети).</li>\r\n</ul>\r\n<p>Все документы должны быть в виде нотариальной копии, заверены Апостилем и переведены. Документы под номером 2-4 должны быть не старше 30 дней. Документы под номером 5-8 должны быть не старше 90 дней.</p>', 'status/April2022/rlQyNsI2KwHeTProJIxQ.jpg', 'img', '<p class=\"MsoNormal\">Обращаясь в нашу компанию вы можете рассчитывать, что уже на первой консультации вам будет озвучен подробный алгоритм действий необходимых для получения ВНЖ Андорры. Мы действуем максимально в пользу ваших интересов. Доверьте процесс нашим специалистам, и вы получите самый комфортный и профессиональный сервис.</p>', 'status/April2022/IuCXRlm8gVg949EAL2FB.jpg', 'img', 'nalogovye-statusy-andorry', 1, 0, 'Налоговые статусы Андорры', 'Налоговые статусы Андорры', 'Налоговые статусы Андорры', '2022-04-19 06:41:00', '2022-05-04 06:45:19', 'Вид на жительство Андорры', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Налоговые статусы Великобритании', 'Постоянное место жительства Великобритании (UK Tier 1 Investor Visa)', 'Самый простой способ переехать в Великобританию и получить в последующем ПМЖ и Гражданство — это виза «UK TIER 1 INVESTOR VISA».  После получения временного вида на жительство по данной программе, в дальнейшем вы сможете претендовать на получение постоянного вида на жительства и британского гражданства.', 'status/April2022/BoDgCvPD0058jAU6uogk.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Данный тип визы рассчитан на тех инвесторов, которые готовы инвестировать не менее &pound;2.000.000 в экономику Великобритании. Приветствуются прямые инвестиции, для которых созданы максимально благоприятные условия с получением временного вида на жительства на начальном этапе и постоянного вида жительства в дальнейшем. В конечном итоге инвестор может претендовать на получение гражданства Великобритании.</span></p>', 'status/April2022/QxNURAW4BTsDcmbDyO2B.jpg', 'img', '<p>Получить визу &laquo;UK Tier 1 Investor&raquo; могут:</p>\r\n<ul>\r\n<li>основной инвестор</li>\r\n<li>супруг/супруга</li>\r\n<li>несовершеннолетние дети</li>\r\n</ul>\r\n<p>Первоначально виза выдаётся на три года с последующим продлением на два года. Только основному заявителю необходимо находиться на территории Великобритании не менее 183 дней в году.</p>\r\n<p>&nbsp;</p>', 'status/April2022/83sxb8umIxiP8Zj0gJLY.jpg', 'img', '<p class=\"MsoNormal\">Уже на первой консультации наши специалисты предложат вам несколько вариантов получения налогового резидентства Великобритании и предоставят вам список основных необходимых документов.</p>', 'status/April2022/LyZLC4KxLdt5OsvE2Gbd.jpg', 'img', '<p>Для того, чтобы получить налоговое резидентство Великобритании, а также вид на жительство, можно воспользоваться одной из трёх опций:</p>\r\n<p>1) <strong>Британские правительственные или корпоративные облигации.</strong></p>\r\n<p>&pound;2.000.000 ПМЖ через пять лет и гражданство Великобритании на шестой год.</p>\r\n<p>2) <strong>Акции британских компаний.</strong></p>\r\n<p>&pound;5.000.000 ПМЖ через три года и гражданство Великобритании на пятый год.</p>\r\n<p>3) <strong>Инвестиции в капитал действующих компаний, зарегистрированных в Великобритании.</strong></p>\r\n<p>&pound;10.000.000 ПМЖ через два года и гражданство Великобритании на пятый год.</p>\r\n<p>&nbsp;</p>', 'status/April2022/2FzvncTlLyxm6thWiOyC.jpeg', 'img', 'nalogovye-statusy-velikobritanii', 1, 0, 'Налоговые статусы Великобритании', 'Налоговые статусы Великобритании', 'Налоговые статусы Великобритании', '2022-04-19 06:48:00', '2022-05-04 06:44:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Налоговые статусы Италии', 'Специальный налоговый режим и ПМЖ Италии (через налоговое соглашение)', 'Благодаря изменениям в итальянском налоговом законодательстве, был введён дополнительный налоговый режим. По требованиям данного режима предусмотрена оплата так называемого альтернативного налога с фиксированной суммой 100.000 евро в год.', 'status/April2022/xIYUDoA8LPcGPFTEZ6NV.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Таким образом иностранцы с высокой чистой стоимостью активов (</span><span lang=\"EN-US\" style=\"mso-ansi-language: EN-US; mso-bidi-font-weight: bold;\">HNWI</span><span style=\"mso-bidi-font-weight: bold;\">) имеют возможность перенести своё налоговое резидентство в Италию получив при этом право на проживание через налоговое соглашение. Данный тип налогового соглашения не подразумевает обязательного физического проживания в Италии.<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>', 'status/April2022/koQzVPTSaFUmVNePTFYO.jpg', 'img', '<p>Идеально подойдёт предпринимателям, которые желают вести свой бизнес на территории Европы. Заявитель может заключить &laquo;налоговое соглашение&raquo; на следующих условиях:</p>\r\n<p><strong>Фиксированная сумма для дохода за пределами Италии:</strong></p>\r\n<ul>\r\n<li>100 000 евро за каждый налоговый год.</li>\r\n<li>25 000 евро за каждого дополнительного члена семьи.</li>\r\n</ul>\r\n<p><strong>Обычный режим налогообложения для дохода из источника на территории Италии:</strong></p>\r\n<ul>\r\n<li>прогрессивная шкала налогообложения до 43%.</li>\r\n</ul>\r\n<p><strong>Исключены из налогового соглашения в течении первых пяти лет:</strong></p>\r\n<ul>\r\n<li>Доходы на прирост капитала от продажи квалифицированных холдингов.</li>\r\n<li>Доходы от прироста капитала на &laquo;существенные доли&raquo; (более 2% / 20% права голоса и более 5% / 25% капитала).</li>\r\n</ul>\r\n<p><strong>Что покрывает налоговое соглашение:</strong></p>\r\n<ul>\r\n<li>Доход от зарубежных недвижимых активов.</li>\r\n<li>Доход от занятости и самозанятости, осуществляемой за рубежом.</li>\r\n<li>Дивиденды и проценты от иностранных юридических лиц.</li>\r\n<li>Деловые доходы от зарубежных операций.</li>\r\n<li>Прочие доходы в т.ч. на прирост капитала от активов и деятельности, находящихся за рубежом.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'status/April2022/UJgpwnTEonYP89FwJ48f.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты предложат вам ознакомиться с основными требованиями к претендентам и первичным списком необходимых документов. </span></p>', 'status/April2022/gs1wLzw1jZngz7vnhahv.jpg', 'img', '<ul>\r\n<li>Для того чтобы подать заявление на получение благоприятной ставки налога в Италии, физические лица должны предоставить решение (interpello) в итальянский̆ налоговый̆ орган в течение до 30 сентября налогового периода, следующего за изменением места жительства.</li>\r\n<li>В выбранном варианте необходимо указать последнюю страну налогового резидентства и членов семьи, которые сменили свое место жительства на Италию.</li>\r\n<li>Выбранный̆ вариант может быть отменен и, как бы там ни было, утратит свое действие спустя 15 налоговых периодов. В случае пропущенной̆, частичной̆ или поздней̆ оплаты обязательного налога, благоприятный налоговый̆ режим теряет свои силу. Воздействие на предыдущие налоговые периоды сохраняются в силе.</li>\r\n<li>Как аннулирование, так и истечение срока действия не допускают подачу физическим лицом заявки на новый̆ период благоприятного налогового режима.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'status/April2022/fDDfTZNWYR2kNovHEFRp.jpg', 'img', 'nalogovye-statusy-italii', 1, 0, 'Налоговые статусы Италии', 'Налоговые статусы Италии', 'Налоговые статусы Италии', '2022-04-19 06:57:00', '2022-05-04 06:44:31', 'ПМЖ Италии', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Налоговые статусы Кипра', 'Постоянное место жительства на Кипре (через инвестиции в недвижимость)', 'В каждой европейской стране есть свое налоговое законодательство, Кипр выгодно отличается от других стран Евросоюза тем, что если вы наряду с бизнес интересами преследуете цель получить право на постоянное проживание на Кипре, то вы можете получить всё это через покупку недвижимости.', 'status/April2022/X9oQqrmmYV2n4iQNGTpm.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Также особенностью программы является тот факт, что иностранный гражданин, инвестировавший средства в покупку недвижимость на Кипре, получает уникальную возможность получить статус постоянного резидента всего за 2 месяца.</span></p>', 'status/April2022/rPfsbCiRtXWT5efW93JQ.jpg', 'img', '<p>Наиболее простая возможность получить статус резидента в Европе для финансово-независимых аппликантов.&nbsp; На данный момент претендовать на ВНЖ вместе с основным заявителем могут:</p>\r\n<ul>\r\n<li>Супруга и несовершеннолетние дети;</li>\r\n<li>Дети от 18 до 25 лет.</li>\r\n<li>(при условии обучения на очной форме и финансовой зависимости от основного заявителя). При этом после 25 лет они не утрачивают полученный статус.</li>\r\n<li>Финансово-зависимые родители заявителя и/или финансово-зависимые родители супруги/супруга.</li>\r\n</ul>\r\n<p>Обязательным условием будет финансовая состоятельность основного заявителя, выраженная в следующих действиях:</p>\r\n<p><strong>1) Приобретение недвижимости на Кипре на сумму от 300.000 Евро, которая бы соответствовала следующим критериям:</strong></p>\r\n<ul>\r\n<li>Приобретена на первичном рынке у застройщика;</li>\r\n<li>Собственные средства инвестора составляют как минимум 200 000 евро;</li>\r\n<li>Покупка должна быть осуществлена за счет средств, поступивших из источников вне Кипра.</li>\r\n</ul>\r\n<p><strong>2) Годовой доход должен составлять не менее 30.000 Евро и должен быть получен из-за пределов Кипра.</strong></p>\r\n<p>Размер дохода должен быть больше при оформлении членов семи на 5000 евро для супруги и каждого ребенка и на 8000 евро на каждого финансово-зависимого родителя, включенного в заявлении на резидентство.</p>\r\n<p><strong>3) Размещение суммы не менее 30.000 Евро в одном из банков Кипра сроком на три года.</strong></p>\r\n<p><strong>Возможности при покупке недвижимости на Кипре:</strong></p>\r\n<ul>\r\n<li>Вы можете приобрести один объект жилой недвижимости на Кипре;</li>\r\n<li>Вы можете приобрести два объекта жилой недвижимости, например, это может быть покупка дома + апартаментов;</li>\r\n<li>Вы можете приобрести жилую недвижимость + складское или торговое помещение площадью до 100 квадратных метров.</li>\r\n<li>Вы можете приобрести жилое помещение, плюс офис площадью до 250 квадратных метров.</li>\r\n<li>Совокупная стоимость двух объектов должна быть не меньше 300 000 евро.</li>\r\n<li>Оба объекта недвижимости должны принадлежать одному застройщику.</li>\r\n<li>Объекты могут находиться в разных частях Кипра.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'status/April2022/sQGzijHEfNg3EGBpbrLq.jpg', 'img', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Уже на первой консультации наши специалисты расскажут вам о том, какой пакет документов требуется для получения налогового статуса на Кипре и получения ВНЖ.</span></p>', 'status/April2022/VAEYdYQUG3gac9EqXPUV.jpg', 'img', '<p class=\"MsoNormal\"><strong>ВЫБОР НАДЕЖНЫХ ИНВЕСТИЦИОННЫХ ПРОЕКТОВ.</strong></p>\r\n<p class=\"MsoNormal\">Специалисты Иммиграционного Центра &laquo;<span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">RESIDENT</span>&raquo; постоянно проводят обширные аналитические исследования рынка недвижимости Кипра. Мы с уверенностью можем предоставить Вам самые выгодные инвестиционные варианты, которые успешно прошли нашу независимую экспертизу.</p>\r\n<p class=\"MsoNormal\"><strong>СБОР И ПОДГОТОВКА НЕОБХОДИМЫХ ДОКУМЕНТОВ.</strong></p>\r\n<p class=\"MsoNormal\">Юристы Иммиграционного Центра &laquo;<span lang=\"EN-US\" style=\"mso-ansi-language: EN-US;\">RESIDENT</span>&raquo; помогут подготовить все необходимые документы, помогут оформить государственные формы, благодаря чему к подаче на резидентство будет подготовлено максимально качественное досье клиента. Данный этап очень важен, так как проверка досье заявителя, наряду с проверкой благонадежности напрямую влияет на ожидаемый результат.</p>\r\n<p class=\"MsoNormal\"><strong>ПОДАЧА И РАССМОТРЕНИЕ ЗАЯВЛЕНИЯ.</strong></p>\r\n<p class=\"MsoNormal\">Подготовленное досье заявителей подается при сопровождении нашими специалистами в правительственные органы, которые уже собственно проводят анализ клиентского досье, проводят проверку благонадежности заявителей и принимают решение о присвоении последним резидентства Кипра, подтверждающим документом чему будет являться карточка постоянного резидента Кипра.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 'status/April2022/rxpPXpAH4kQE5SZfbiu5.jpg', 'img', 'nalogovye-statusy-kipra', 1, 0, 'Налоговые статусы Кипра', 'Налоговые статусы Кипра', 'Налоговые статусы Кипра', '2022-04-19 07:06:00', '2022-05-04 06:44:06', 'Постоянное место жительства на Кипре', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Налоговые статусы ОАЭ', 'Резидентство в Объединенных Арабских Эмиратах (через регистрацию бизнеса)', 'Что привлекательного в ОАЭ для предпринимателей? Наиболее интересен тот факт, что ни физические, ни юридические лица не облагаются налогами. Да-да! Поэтому ВНЖ Объединённых Арабских Эмиратов существенно облегчает жизнь бизнесменам.', 'status/April2022/Vz3uEirwWDKQqNVfGZVU.jpg', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Если вы хотите, чтобы процедура получения вида на жительство была максимально простой, то лучше всего воспользоваться возможностью регистрации компании с получением лицензии на видение коммерческой деятельности. Это не сложно и достаточно быстро.</span></p>', 'status/April2022/ZD7RwuVS4vz8sOW2sCvE.jpg', 'img', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Хорошо подойдёт для финансово-независимых людей, предпринимателей и инвесторов. Получение ВНЖ ОАЭ расширит возможности вашего бизнеса за счет достаточно лояльной процедуры регистрации вашей компании и отсутствии налогов.</span></p>\r\n<p class=\"MsoNormal\"><strong>СУЩЕСТВУЕТ ТРИ КАТЕГОРИИ ЛИЦЕНЗИЙ:</strong></p>\r\n<p class=\"MsoNormal\">1 Коммерческая.</p>\r\n<p class=\"MsoNormal\">2 Сервисная.</p>\r\n<p class=\"MsoNormal\">3 General Trading.</p>\r\n<p class=\"MsoNormal\">Самой распространённой категорией лицензии юридического лица в ОАЭ для тех, кто желает получить резидентство ОАЭ, является лицензия General Trading, так как исключительно данная лицензия предусматривает выдачу резидентства до трех владельцев компании.</p>\r\n<p class=\"MsoNormal\">Часто, желающие получить ВНЖ ОАЭ руководствуются данным критерием, не обращая внимание на деятельность которую на самом деле будет осуществлять регистрируемое юридическое лицо. Правильный выбор лицензии регистрируемого юридического лица, для обеспечения сохранности резидентства и беспроблемного ведения коммерческой̆ деятельности, должен быть первым критерием при регистрации компании</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Затраты на регистрацию компании для получения резидентства в ОАЭ.</strong></p>\r\n<p class=\"MsoNormal\">- &laquo;КОММЕРЧЕСКАЯ&raquo; лицензия: до 3-х видов товаров;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 20,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 8,450</p>\r\n<p class=\"MsoNormal\">- &laquo;КОНСАЛТИНГОВАЯ&raquo; (сервисная) лицензия: до 2-х видов услуг;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 20,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 8,450</p>\r\n<p class=\"MsoNormal\">- &laquo;GENERAL TRADING&raquo; лицензия: неограниченное количество видов товаров;</p>\r\n<p class=\"MsoNormal\">ВСЕГО: &euro; 22,450</p>\r\n<p class=\"MsoNormal\">продление со второго года: &euro; 10,450</p>', 'status/April2022/ZrMkBtNzXBzCReBe4o03.jpg', 'img', '<ul>\r\n<li><strong>Копии заграничных паспортов</strong> (срок действия должен быть не менее 6 месяцев на момент подачи документов на визу);</li>\r\n<li><strong>Копия предыдущих виз ОАЭ</strong> (если имелись);</li>\r\n<li><strong>Utility bill</strong> (счет за коммунальные услуги) не старше 6 месяцев;</li>\r\n<li><strong>Фото паспортного образца на белом фоне</strong>;</li>\r\n<li>Полные имена родителей</li>\r\n<li>Адрес в стране проживания;</li>\r\n<li>Адрес в ОАЭ (если имеется);</li>\r\n<li>Контактные данные (e-mail и телефон);</li>\r\n<li>Резюме с описанием опыта (только для сервисных/консалтинговых лицензий).</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'status/April2022/297P5ns2PltOORj7kv6V.jpg', 'img', '<p>1. Предоставление клиентом / клиентами необходимых документов и данных;</p>\r\n<p>2. Подготовка нашими специалистами регистрационных форм для подписания клиентом/клиентами;</p>\r\n<p>3. Подписание клиентом/клиентами регистрационных форм и предоставление нам посредством курьерской службы для подачи досье на регистрацию компании;</p>\r\n<p>4. Регистрация компании (до трех дней);</p>\r\n<p>5. Подача документов клиента/клиентов на получение иммиграционной карточки и визы (Entry Permit);</p>\r\n<p>6. Ожидание получения иммиграционной карточки и визы (Entry Permit) (15-20 дней);</p>\r\n<p>7. Предоставление клиенту/клиентам копии визы + предоставление пограничным службам ОАЭ в аэропорту прибытия, оригинала визы клиента/клиентов;</p>\r\n<p>8. Приезд в ОАЭ для вклейки визы в паспорт; прохождения мед теста; подачи на Emirates ID.</p>\r\n<ul>\r\n<li>Entry Permit &ndash; действителен всего 60 дней с момента выдачи, и для получения резидентства ОАЭ необходимо въехать в ОАЭ в период действия Entry Permit.</li>\r\n<li>Визит в ОАЭ необходимо планировать не меньше чем на 5 рабочих дней.</li>\r\n<li>Для сохранения резидентства требуется посещать ОАЭ не реже чем 1 раз в 180 дней.</li>\r\n<li>Резидентство выдается сразу на три года.</li>\r\n<li>Для сохранения резидентства, зарегистрированную компанию необходимо ежегодно продлевать.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'status/April2022/Rk6myXt0LDlY6oEjd20q.jpg', 'img', 'nalogovye-statusy-oae', 1, 0, 'Налоговые статусы ОАЭ', 'Налоговые статусы ОАЭ', 'Налоговые статусы ОАЭ', '2022-04-19 07:26:00', '2022-05-04 06:43:45', 'Резидентство в Объединенных Арабских Эмиратах', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Налоговые статусы Швейцарии', 'Вид на жительство Швейцарии (через регистрацию бизнеса или налоговое соглашение)', 'Что мы знаем о Швейцарии? Например, то что там самые надёжные банки, часы и вкусный сыр конечно. Экономика Швейцарии известна во всем мире своею стабильностью. Хоть территориально она находится в Европе, она не входи в ЕС и Шенген.', 'status/April2022/ojxOwpkvJmdGrHELWVgw.jpg', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы захотите посетить Швейцарию имея Шенгенскую визу, вы сможете это сделать без проблем. Финансово-независимая страна и сильная экономика, всё это еще и потому, что она не зависит от Евросоюза так как не входит в Европейский Экономический Союз, что несомненно является большим плюсом для ведения бизнеса в этой стране, так как никакие экономические колебания в Европе не отражаются на положение дел в Швейцарии. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы хотите иметь право на долговременное проживание в Швейцарии, то вам доступны два варианта. Первый &ndash; если вы владеете компанией и второй, если вы подписали налоговое соглашение.</span></p>', 'status/April2022/JlByPcpBOpEGsBeWgty0.jpeg', 'img', '<p class=\"MsoNormal\"><span style=\"mso-bidi-font-weight: bold;\">Хорошо подойдёт для финансово-независимых людей, предпринимателей и инвесторов. Получение ВНЖ Швейцарии можно рассматривать, как вложение в будущую свободу передвижения и ведения предпринимательской деятельности на территории ЕС.</span></p>', 'status/April2022/4Dn4BCBD0CXpQqqbqH7F.jpg', 'img', '<p>Рассматриваются два способа получения ВНЖ Швейцарии, это:</p>\r\n<p><strong>Через регистрацию компании:</strong></p>\r\n<ul>\r\n<li>Действующий паспорт.</li>\r\n<li>2 цветные фотографии.</li>\r\n<li>Детальное резюме.</li>\r\n<li>Страховой медицинский полис.</li>\r\n<li>Наличие юридического адреса.</li>\r\n<li>Бизнес план, описание деятельности и предполагаемый бюджет компании.</li>\r\n<li>Доказательства безуспешного поиска работы на местном и европейском рынке труда.</li>\r\n<li>Копии рабочего контракта, дипломов/сертификатов, подтверждающих наличие у кандидата образования, опыта работы и достаточных квалификаций.</li>\r\n<li>Справка об отсутствии судимостей.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>На основании налогового соглашения:</strong></p>\r\n<ul>\r\n<li>Действующий паспорт.</li>\r\n<li>2 цветные фотографии.</li>\r\n<li>Заполненная и подписанная анкета.</li>\r\n<li>Доказательство наличия места жительства в Швейцарии.</li>\r\n<li>Справка об отсутствии судимостей.</li>\r\n<li>Страховой медицинский полис.</li>\r\n<li>Детальное резюме.</li>\r\n<li>Заявление о том, что заявитель не будет осуществлять предпринимательскую деятельность на территории Швейцарии.</li>\r\n<li>Соглашение с налоговой администрацией.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'status/April2022/BWkXfkZ7wNx6tzlmjNGp.jpg', 'img', '<p><strong>Через регистрацию компании:</strong></p>\r\n<ol>\r\n<li>Регистрация швейцарской компании (в форме акционерного общества).</li>\r\n<li>Бизнес-проект должен носить инновационный характер и предусматривать крупные инвестиции (около 1-6 миллионов швейцарских франков).</li>\r\n<li>Создание рабочих мест для граждан Швейцарии.</li>\r\n<li>Заявитель назначается директором компании на основании трудового договора с зарплатой и условиями найма, соответствующими местным общепринятым условиям, занимаемой должности и сектору занятости *</li>\r\n<li>Заявитель должен обладать необходимым опытом, образованием/квалификацией, знаниями языка и иными навыками, достаточными для осуществления функция на занимаемой им позиции в компании.</li>\r\n</ol>\r\n<p>*Иностранные граждане могут быть допущены к работе только в случае, если будет доказано, что на местном и европейском рынке рабочей силы не нашлось соответствующего работника на данную должность.</p>\r\n<p><strong>На основании налогового соглашения:</strong></p>\r\n<ol>\r\n<li>Заключение соглашения с налоговой администрацией одного из кантонов Швейцарии *</li>\r\n<li>Заявитель не должен являться гражданином ЕС-ЕАСТ.</li>\r\n<li>Заявитель не должен вести предпринимательскую деятельность на территории Швейцарии.</li>\r\n<li>Обязательная ежегодная оплата фиксированной суммы налога, размер которой зависит от расходов на проживание заявителя в Швейцарии.</li>\r\n<li>Фиксированная сумма налога на федеральном уровне составляет 400 000 швейцарских франков и может изменяться в зависимости от кантона.</li>\r\n</ol>\r\n<p>*Для принятия положительного решения о предоставлении вида на жительства миграционными органами, прежде всего, учитывается наличие у заявителя значительного капитала и активное участие в социальной, экономической и культурной жизни страны.</p>\r\n<p>&nbsp;</p>', 'status/April2022/aN6n269vjFqf25lfQZpK.jpg', 'img', 'nalogovye-statusy-shvejcarii', 1, 0, 'Налоговые статусы Швейцарии', 'Налоговые статусы Швейцарии', 'Налоговые статусы Швейцарии', '2022-04-19 07:33:00', '2022-05-04 06:40:33', 'Вид на жительство Швейцарии', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `status_what`
--

CREATE TABLE `status_what` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `what_id` bigint(20) UNSIGNED DEFAULT 0,
  `status_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status_what`
--

INSERT INTO `status_what` (`id`, `what_id`, `status_id`, `created_at`, `updated_at`) VALUES
(4, 3, 1, '2022-04-05 04:03:56', '2022-04-05 04:03:56'),
(5, 2, 1, '2022-04-05 04:08:09', '2022-04-05 04:08:09'),
(6, 4, 1, '2022-04-05 04:08:13', '2022-04-05 04:08:13'),
(7, 1, 1, '2022-04-05 04:08:17', '2022-04-05 04:08:17'),
(9, 6, 2, '2022-04-19 06:42:33', '2022-04-19 06:42:33'),
(10, 5, 2, '2022-04-19 06:42:41', '2022-04-19 06:42:41'),
(11, 7, 2, '2022-04-19 06:43:04', '2022-04-19 06:43:04'),
(12, 8, 2, '2022-04-19 06:43:19', '2022-04-19 06:43:19'),
(13, 9, 3, '2022-04-19 06:49:04', '2022-04-19 06:49:04'),
(14, 10, 3, '2022-04-19 06:49:32', '2022-04-19 06:49:32'),
(15, 11, 3, '2022-04-19 06:50:04', '2022-04-19 06:50:04'),
(16, 12, 3, '2022-04-19 06:50:37', '2022-04-19 06:50:37'),
(17, 13, 4, '2022-04-19 06:59:14', '2022-04-19 06:59:14'),
(18, 14, 4, '2022-04-19 06:59:43', '2022-04-19 06:59:43'),
(19, 15, 4, '2022-04-19 07:00:04', '2022-04-19 07:00:04'),
(20, 16, 4, '2022-04-19 07:00:31', '2022-04-19 07:00:31'),
(21, 17, 4, '2022-04-19 07:00:49', '2022-04-19 07:00:49'),
(22, 18, 4, '2022-04-19 07:01:19', '2022-04-19 07:01:19'),
(23, 19, 4, '2022-04-19 07:01:41', '2022-04-19 07:01:41'),
(24, 20, 5, '2022-04-19 07:08:57', '2022-04-19 07:08:57'),
(25, 21, 5, '2022-04-19 07:09:19', '2022-04-19 07:09:19'),
(26, 22, 5, '2022-04-19 07:09:34', '2022-04-19 07:09:34'),
(27, 23, 5, '2022-04-19 07:09:52', '2022-04-19 07:09:52'),
(28, 24, 5, '2022-04-19 07:10:07', '2022-04-19 07:10:07'),
(29, 25, 6, '2022-04-19 07:27:49', '2022-04-19 07:27:49'),
(30, 26, 6, '2022-04-19 07:28:08', '2022-04-19 07:28:08'),
(31, 27, 6, '2022-04-19 07:28:29', '2022-04-19 07:28:29'),
(32, 28, 6, '2022-04-19 07:28:51', '2022-04-19 07:28:51'),
(33, 29, 7, '2022-04-19 07:34:22', '2022-04-19 07:34:22'),
(34, 30, 7, '2022-04-19 07:34:51', '2022-04-19 07:34:51'),
(35, 31, 7, '2022-04-19 07:35:15', '2022-04-19 07:35:15'),
(36, 32, 7, '2022-04-19 07:35:37', '2022-04-19 07:35:37');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-28 22:18:08', '2022-03-28 22:18:08'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-28 22:18:08', '2022-03-28 22:18:08');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'rimmc@inbox.ru', 'users/May2022/QlwEziDPofNCZ2d7Q6ze.png', NULL, '$2y$10$Com/jzqGfhQGt2y/rWjAs.LeFNSWJ.cm7DyiWsMoJVkuSAfIqyaWy', 'W4uIthgACUZ7dfVqlGD7eoaqtr8nXnTGixfFuSs02iXr5lvNw73NhVxhbonA', '{\"locale\":\"ru\"}', '2022-03-28 22:18:08', '2022-05-24 07:26:47');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `what`
--

CREATE TABLE `what` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `what`
--

INSERT INTO `what` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Вид на жительство Мальты', '<p>Вид на жительство Мальтыпозволяет не только постоянно проживать на Мальте, но и без виз и ограничений перемещаться и пребывать в странах Шенгенского соглашения и Европейского Союза.</p>', '2022-04-04 13:50:00', '2022-04-05 04:08:17'),
(2, 'Особый налоговый статус.', '<p>Помимо вышеперечисленных преимуществ есть еще одно. У вас есть уникальная возможность передавать статус по наследству. Таким образом вы передаете своим наследникам все те привилегии, которые получили с приобретением мальтийского вида на жительство.</p>', '2022-04-04 13:51:00', '2022-04-04 14:19:24'),
(3, 'Отсутствие двойного налогообложения.', '<p>Мальта имеет договора об избежании двойного налогообложения с большинством стран мира.</p>', '2022-04-04 13:51:00', '2022-04-04 14:23:08'),
(4, 'Не требуется проживание на Мальте определенное количество времени.', '<p>Для сохранения статуса резидента и особого налогового статуса не требуется проживание на Мальте определенное количество времени, но пребывание в любой одной другой стране не должно превышать 183 дня.</p>', '2022-04-04 13:51:00', '2022-04-05 04:08:03'),
(5, 'Постоянное проживание и безвизовые перемещения', '<p class=\"MsoListParagraph\">ВНЖ Андорры дает право постоянно проживать в Андорре (минимальное количество - 90 дней в году), а также без визы посещать три европейских страны &mdash; это Франция, Испания и Португалия.</p>', '2022-04-19 06:42:00', '2022-04-19 06:42:41'),
(6, 'ВНЖ для всей семья', '<p class=\"MsoListParagraph\">Вид на жительство получит не только основной заявитель, но и супруг/супруга и несовершеннолетние дети одновременно с заявителем.</p>', '2022-04-19 06:42:33', '2022-04-19 06:42:33'),
(7, 'Удобное налоговое резидентство', '<p class=\"MsoListParagraph\">В Андорре одни из самых низких налоговых ставок корпоративного и подоходного налога, а налоги на наследование, дарение и богатство вообще отсутствуют.</p>', '2022-04-19 06:43:04', '2022-04-19 06:43:04'),
(8, 'Возможность в будущем получения ПМЖ и Гражданства', '<p class=\"MsoListParagraph\">Проживание в Андорре на основании вида на жительство даст право в будущем получить право на получение гражданства Андорры для всех членов семьи основного заявителя.</p>', '2022-04-19 06:43:19', '2022-04-19 06:43:19'),
(9, 'Право на постоянное проживание в Великобритании', '<p>Вам и членам вашей семьи предоставляется возможность постоянно проживать в Великобритании, вести бизнес, работать, бесплатно учиться и пользоваться другими правами резидентов Великобритании.</p>', '2022-04-19 06:49:04', '2022-04-19 06:49:04'),
(10, 'Нет требований подтверждения знания английского языка', '<p>Для заявителя на визу инвестора &laquo;UK TIER 1 INVESTOR VISA&raquo; нет необходимости подтверждать свое знание английского языка и не нужно доказывать наличие средств для проживания семьи в Великобритании.</p>', '2022-04-19 06:49:32', '2022-04-19 06:49:32'),
(11, 'Несколько вариантов инвестирования без ведения бизнеса', '<p>При получении визы инвестора не требуется организовывать бизнес и доказывать реальность намерений по его ведению, достаточно выбрать инструменты для инвестирования.</p>', '2022-04-19 06:50:04', '2022-04-19 06:50:04'),
(12, 'Получение ПМЖ и Гражданства', '<p>Инвестор и члены его семьи смогут получить ПМЖ в Великобритании уже через 2 года, а претендовать на гражданство через 3 года после получения ПМЖ.</p>', '2022-04-19 06:50:37', '2022-04-19 06:50:37'),
(13, 'Постоянное проживание и безвизовые перемещения по Европе', '<p>ПМЖ Италии дает право постоянно проживать в Италии, а также без визы посещать другие страны, входящие в Шенгенское соглашение.</p>', '2022-04-19 06:59:14', '2022-04-19 06:59:14'),
(14, 'Особый налоговый режим', '<p>При котором не действует прогрессивная шкала налогообложения, а на весь иностранный доход платится только фиксированная сумма налога - 100 000 евро в год.</p>', '2022-04-19 06:59:43', '2022-04-19 06:59:43'),
(15, 'Нет обязательств по проживанию', '<p>Получить специальное налоговое резидентство можно и без постоянного проживания в Италии.</p>', '2022-04-19 07:00:04', '2022-04-19 07:00:04'),
(16, 'Быстрый путь к получению ПМЖ', '<p>Заключение налогового соглашения дает право получения разрешения на постоянное проживание в Италии для всей семьи.</p>', '2022-04-19 07:00:31', '2022-04-19 07:00:31'),
(17, 'Освобождение от стандартной итальянской системы финансового мониторинга', NULL, '2022-04-19 07:00:49', '2022-04-19 07:00:49'),
(18, 'ОСВОБОЖДЕНИЕ ОТ IVIE', '<p>Освобождение от IVIE (налога на недвижимое имущество за рубежом) и IVAFE (налога на имущество и финансовые активы за рубежом).</p>', '2022-04-19 07:01:19', '2022-04-19 07:01:19'),
(19, 'ОСВОБОЖДЕНИЕ ОТ НАЛОГОВ НА НАСЛЕДОВАНИЕ И ДАРЕНИЕ', '<p>Освобождение от налогов на наследование и дарение в случае передачи в связи с кончиной, дарением и другой̆ безвозмездной̆ передачей̆ активов, находящихся за рубежом (в том числе передачу активов в траст), независимо от отношений̆ между новым итальянским резидентом который̆ передает и его правопреемником.</p>', '2022-04-19 07:01:41', '2022-04-19 07:01:41'),
(20, 'Статус ПМЖ страны, входящей в Европейский Союз', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">ПМЖ Кипра позволяет постоянно проживать на Кипре и после завершения вступления Кипра в Шенгенскую зону позволит перемещаться по всему Шенгенскому пространству.</span></p>', '2022-04-19 07:08:57', '2022-04-19 07:08:57'),
(21, 'Статус ПМЖ для всей семьи', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Вместе с основным заявителем ПМЖ получат и члены его семьи: супруга, дети, в т.ч. совершеннолетние дети в возрасте до 28 лет и финансово зависимые родители.</span></p>', '2022-04-19 07:09:19', '2022-04-19 07:09:19'),
(22, 'Нет требований к проживанию и оплате налогов', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Обладатели статуса ПМЖ Кипра за покупку недвижимости не становятся автоматически налоговыми резидентами Кипра при этом они не обязаны проживать на Кипре.</span></p>', '2022-04-19 07:09:34', '2022-04-19 07:09:34'),
(23, 'Возможность получения гражданства страны Евросоюза', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Статус ПМЖ Кипра через инвестиции в недвижимость при проживании на Кипре предусматривает в будущем возможность получения гражданства Кипра.</span></p>', '2022-04-19 07:09:52', '2022-04-19 07:09:52'),
(24, 'Получение налогового резидентства Кипра', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">При проживании на территории Кипра всего 60 дней, резидент Кипра, в праве также получить налоговое резидентство Кипра и пользоваться всеми преимуществами налоговой системы Кипра.</span></p>', '2022-04-19 07:10:07', '2022-04-19 07:10:07'),
(25, 'Что даёт налоговое резидентство', '<p class=\"MsoListParagraph\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Объединенные Арабские Эмираты &ndash; смело можно назвать налоговым раем, так как в этой стране отсутствуют налоги для налоговых резидентов и бизнеса.</span></p>', '2022-04-19 07:27:49', '2022-04-19 07:27:49'),
(26, 'Резидентство для все членов семьи', '<p class=\"MsoListParagraph\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">С первого раза вы уже можете рассчитывать на получение резидентства сроком на 3 года. Ваш супруг/супруга также получают ВНЖ, как и несовершеннолетние дети.</span></p>', '2022-04-19 07:28:08', '2022-04-19 07:28:08'),
(27, 'Нет требований проживания на территории страны', '<p class=\"MsoListParagraph\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Если вы резидент ОАЭ это не обязывает вас постоянно проживать в стране и вести активную деятельность в вашей компании.</span></p>', '2022-04-19 07:28:29', '2022-04-19 07:28:29'),
(28, 'Возможность открытия банковских счетов и покупки недвижимости', '<p class=\"MsoListParagraph\" style=\"text-align: justify;\"><span style=\"mso-bidi-font-weight: bold;\">Вам доступны такие привилегии, как открытие счетов в надежных банках мирового уровня и приобретение недвижимости в этой стране. Кстати говоря банки гарантируют вам полную конфиденциальность.</span></p>', '2022-04-19 07:28:51', '2022-04-19 07:28:51'),
(29, 'Возможность безвизового передвижения по Европе', '<p>После получения ВНЖ Швейцарии вы сможете проживать в этой стране и без виз передвигаться по европейским странам.</p>', '2022-04-19 07:34:22', '2022-04-19 07:34:22'),
(30, 'ВНЖ получает вся семья', '<p>Вид на жительство выдается не только основному заявителю, но и супругу/супруге, а также детям, не достигшим совершеннолетнего возраста.</p>', '2022-04-19 07:34:51', '2022-04-19 07:34:51'),
(31, 'Престижный образ жизни', '<p>Жизнь в Швейцарии приятна, комфортна и престижна. Уникальная природа, высокий уровень безопасности, политическая и экономическая стабильность.</p>', '2022-04-19 07:35:15', '2022-04-19 07:35:15'),
(32, 'ВНЖ – первый шаг к ПМЖ и Гражданству', '<p>Следующие этапы после получения вида на жительства, это получение постоянного вида на жительства и затем гражданства.</p>', '2022-04-19 07:35:37', '2022-04-19 07:35:37');

-- --------------------------------------------------------

--
-- Структура таблицы `work`
--

CREATE TABLE `work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_id` int(11) DEFAULT 0,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `work`
--

INSERT INTO `work` (`id`, `title`, `image`, `slug`, `status`, `sort_id`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Вакансии в Великобритании', 'work/April2022/0bgiOTuOZtIWkmfaHcLP.jpg', 'vakansii-v-velikobritanii', 1, 0, 'Великобритания', 'Великобритания', 'Великобритания', '2022-04-04 08:28:00', '2022-04-11 19:39:01'),
(2, 'Вакансии в Германии', 'work/April2022/4EIdqmBk1dLukJ0lfoOg.jpeg', 'vakansii-v-germanii', 1, 0, 'Германия', 'Германия', 'Германия', '2022-04-27 07:34:00', '2022-04-27 07:45:25'),
(3, 'Вакансии в Латвии', 'work/April2022/S5e0XJZjxKI3OhHWxBaJ.jpeg', 'vakansii-v-latvii', 1, 0, 'Латвия', 'Латвия', 'Латвия', '2022-04-27 07:47:37', '2022-04-27 07:47:37'),
(4, 'Вакансии в Литве', 'work/April2022/3jmwa89GSinJAdoiwZ3A.jpeg', 'vakansii-v-litve', 1, 0, 'Литва', 'Литва', 'Литва', '2022-04-27 07:49:24', '2022-04-27 07:49:24'),
(5, 'Вакансии в ОАЭ', 'work/April2022/v6Vcbgq7IrfDZwXGLPWD.webp', 'vakansii-v-oae', 1, 0, 'ОАЭ', 'ОАЭ', 'ОАЭ', '2022-04-27 07:51:33', '2022-04-27 07:51:33'),
(6, 'Вакансии в Польше', 'work/April2022/KIBNDuwXhWfbDdXbzfmV.jpeg', 'vakansii-v-polshe', 1, 0, 'Польша', 'Польша', 'Польша', '2022-04-27 07:53:57', '2022-04-27 07:53:57'),
(7, 'Вакансии в Румынии', 'work/April2022/yUfBe7FSAUNLte1ewKmQ.jpeg', 'vakansii-v-rumynii', 1, 0, 'Румыния', 'Румыния', 'Румыния', '2022-04-27 07:55:42', '2022-04-27 07:55:42'),
(8, 'Вакансии в Словакии', 'work/April2022/EmIKzCgzSFJBMjbgNa84.jpeg', 'vakansii-v-slovakii', 1, 0, 'Словакия', 'Словакия', 'Словакия', '2022-04-27 07:58:10', '2022-04-27 07:58:10'),
(9, 'Вакансии в Финляндии', 'work/April2022/B9Nswv2ItsVgDRebjWtm.jpeg', 'vakansii-v-finlyandii', 1, 0, 'Финляндия', 'Финляндия', 'Финляндия', '2022-04-27 08:00:09', '2022-04-27 08:00:09'),
(10, 'Вакансии в Чехии', 'work/April2022/KSWERYuHiodNWt9gSpMq.jpeg', 'vakansii-v-chehii', 1, 0, 'Чехия', 'Чехия', 'Чехия', '2022-04-27 08:02:12', '2022-04-27 08:02:12'),
(11, 'Вакансии в Эстонии', 'work/April2022/mhWzFDVxAC1ER0ZoH4Ge.jpg', 'vakansii-v-estonii', 1, 0, 'Эстония', 'Эстония', 'Эстония', '2022-04-27 08:02:00', '2022-04-27 08:03:46'),
(12, 'Волонтерские программы в Германии', 'work/April2022/5eAqHXzOvE3BYfYSjPz3.jpeg', 'volonterskie-programmy-v-germanii', 1, 0, 'Волонтерские программы в Германии', 'Волонтерские программы в Германии', 'Волонтерские программы в Германии', '2022-04-27 08:04:00', '2022-05-17 11:30:54');

-- --------------------------------------------------------

--
-- Структура таблицы `work_content`
--

CREATE TABLE `work_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) UNSIGNED DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `work_content`
--

INSERT INTO `work_content` (`id`, `work_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'РАБОТА НА ФЕРМАХ И ПТИЦЕФАБРИКАХ', '<h3><span style=\"font-size: 16.38px;\">Сезонная виза! Открывается на 6 мес, продлению не подлежит.</span></h3>\r\n<h3><span style=\"font-size: 16.38px;\">Требования:</span></h3>\r\n<ul>\r\n<li><span style=\"font-size: 16.38px;\">мужчины и женщины в возраст от 18 до 55 лет</span></li>\r\n</ul>\r\n<h3><span style=\"font-size: 16.38px;\">Условия:</span></h3>\r\n<ul>\r\n<li><span style=\"font-size: 16.38px;\">График работы: 8-10 часов в день, 5-6 дней в неделю</span></li>\r\n<li><span style=\"font-size: 16.38px;\">Проживание оплачивается самостоятельно, стоимость 52 фунта в неделю.</span></li>\r\n<li><span style=\"font-size: 16.38px;\">Оплата за работу 9 фунтов/час нетто. Все, что свыше 8 часов в день</span></li>\r\n<li><span style=\"font-size: 16.38px;\">оплачивается по ставке 9,5 фунт/час.</span></li>\r\n</ul>\r\n<h3><span style=\"font-size: 16.38px;\"><span style=\"font-size: 16.38px;\">Стоимость услуги:</span></span></h3>\r\n<ul>\r\n<li><span style=\"font-size: 16.38px;\"><span style=\"font-size: 16.38px;\">1000 Евро.</span></span></li>\r\n</ul>\r\n<h3><span style=\"font-size: 16.38px;\"><span style=\"font-size: 16.38px;\">Документы:</span></span></h3>\r\n<ul>\r\n<li><span style=\"font-size: 16.38px;\">украинский паспорт.</span></li>\r\n<li><span style=\"font-size: 16.38px;\">идентификационный код.</span></li>\r\n<li><span style=\"font-size: 16.38px;\">загранпаспорт.</span></li>\r\n</ul>\r\n<h3><span style=\"font-size: 16.38px;\">Дополнительная информация:</span></h3>\r\n<ul>\r\n<li><span style=\"font-size: 16.38px;\">Только для граждан Украины!</span></li>\r\n</ul>', '2022-04-04 08:28:00', '2022-04-28 07:32:22'),
(2, 2, NULL, '<h3>УТОЧНЯЙТЕ! ВАКАНСИИ ПОСТОЯННО ДОПОЛНЯЮТСЯ.</h3>\r\n<ol>\r\n<li>Servicemonteur (Dresden)</li>\r\n<li>Kommissionierer/in, Verpacker/in, Maschinenf&uuml;hrer/in, Gabelstaplerfahrer</li>\r\n<li>Senior Frontend Engineer</li>\r\n<li>Воспитатель в детский сад (м/ж)</li>\r\n<li>Медицинский работник (м/ж)</li>\r\n<li>Сиделка/Опекун (м/ж)</li>\r\n<li>Электрик (м/ж)</li>\r\n<li>Data Engineer- Berlin</li>\r\n<li>(Senior) Java Backend Developer &mdash; Logistics Technology (m/f/d)</li>\r\n<li>Senior Data Scientist (m/f/d)</li>\r\n<li>Senior Frontend Engineer</li>\r\n<li>System Engineer (m/f/d)</li>\r\n<li>Team Lead Product Design</li>\r\n<li>Team Lead Standard Systems (m/f/d)</li>\r\n<li>Senior Backend Developer (Node.js) &mdash; Logistics Technology (m/f/d)</li>\r\n<li>Senior UX Researcher &mdash; Logistics Technology (m/f/d)</li>\r\n<li>Senior iOS Developer &mdash; Logistics Technology (m/f/d) &mdash; Berlin</li>\r\n<li>Android Developer (m/f/d) &mdash; Berlin</li>\r\n</ol>\r\n<h3>Стоимость услуги:</h3>\r\n<ul>\r\n<li>1000 - 2.500 Евро.</li>\r\n</ul>\r\n<h3>Документы:</h3>\r\n<ul>\r\n<li>Паспорт;</li>\r\n<li>Резюме;</li>\r\n<li>Диплом.</li>\r\n</ul>\r\n<h3>Дополнительная информация:</h3>\r\n<ul>\r\n<li>Для граждан СНГ.</li>\r\n</ul>', '2022-04-29 06:47:00', '2022-04-29 06:49:31'),
(3, 3, 'Бетонщики.', '<h3>Подходит для граждан Средней Азии.</h3>\r\n<h3>ТРЕБОВАНИЯ К КАНДИДАТАМ:</h3>\r\n<ul>\r\n<li>Возраст: 20-47 лет</li>\r\n<li>Навыки арматурной вязки;</li>\r\n<li>Навыки заливки форм с бетона;</li>\r\n<li>Опыт в строительстве от 3-х лет</li>\r\n<li>Способность выполнять тяжелые задачи своими руками;</li>\r\n<li>Способность вставать на колени, сгибаться и поднимать тяжелые предметы;</li>\r\n<li>Умение точно измерять и читать спецификации;</li>\r\n<li>Организовывать, планировать работы.</li>\r\n</ul>\r\n<h3>ВАЖНО:</h3>\r\n<ul>\r\n<li>В контракте будет указана должность РАЗНОРАБОЧИЙ! Оклад по проекту договора 1143&euro; брутто в месяц.</li>\r\n</ul>\r\n<h3>УСЛОВИЯ:</h3>\r\n<ul>\r\n<li>Рабочий график: 9-12 часов в день, 5-6 рабочий дней в неделю.</li>\r\n<li>Зарплата в Латвии 6-8 евро час. Жилье оплачивается работодателем на половину. Хостел. Стоит</li>\r\n<li>80-180&euro; в месяц за койко-место, цена зависит от условий.</li>\r\n<li>Выдают рабочую одежду.</li>\r\n<li>Оформляются командировки в Швецию на 6 мес! ЗП в Швеции 8-12 евро час.</li>\r\n<li>В Швеции предоставляется транспорт на работу и с работы бесплатно и бесплатное проживание.</li>\r\n</ul>\r\n<h3>СТОИМОСТЬ УСЛУГ:</h3>\r\n<ul>\r\n<li>для граждан РФ, Украины - 100 евро + виза</li>\r\n<li>для граждан Средней Азии - 700 евро. 350 евро предоплата, остаток можно</li>\r\n<li>оплатить после визы или даже с зарплаты + ВИЗА</li>\r\n</ul>', '2022-04-29 06:58:00', '2022-04-29 07:01:25'),
(4, 3, 'Рабочие на брусчатку.', '<h3>Место работы:</h3>\r\n<ul>\r\n<li>Латвия, Рига (возможны командировки).</li>\r\n</ul>\r\n<h3>Требования:</h3>\r\n<ul>\r\n<li>навыки по укладке тротуарной плитки;</li>\r\n<li>возраст от 22 до 45 лет;</li>\r\n<li>без вредных привычек.</li>\r\n</ul>\r\n<h3>График работы:</h3>\r\n<ul>\r\n<li>Пн. - Сб. с 8:00 до 18:00, 1 час обед.</li>\r\n</ul>\r\n<h3>Обязанности:</h3>\r\n<ul>\r\n<li>Укладка тротуарной плитки/брусчатки</li>\r\n</ul>\r\n<p>Зарплата 50 - 60 евро / день. (помощник / мастер).</p>', '2022-04-29 07:59:38', '2022-04-29 07:59:38'),
(5, 3, 'Рабочий на деревообрабатывающий завод (работа настанках).', '<h3>Требования:</h3>\r\n<ul>\r\n<li>Мужчины 22-45 лет;</li>\r\n<li>Физически крепкие, здоровые;</li>\r\n<li>Преимущества с опытом деревообработки</li>\r\n</ul>\r\n<h3>Условия работы:</h3>\r\n<ul>\r\n<li>Работникам предоставляется место проживания (13 евро/месяц).</li>\r\n<li>Рабочая одежда с работника. Аксессуары (очки, перчатки и т д с работодателя).</li>\r\n</ul>\r\n<h3>Обязанности:</h3>\r\n<ul>\r\n<li>Упаковка, транспортировка, погрузка и разгрузка леса, готовой продукции и т.д.</li>\r\n<li>Выполняет работы по транспортировке и штабелированию на</li>\r\n<li>производственном складе;</li>\r\n<li>Выполняет погрузку, переноску, подъем, мытье сырья и продуктов;</li>\r\n<li>Физическая работа на производстве.</li>\r\n<li>Возможно обучение по месту, повышение квалификации. Есть возможность обучаться на</li>\r\n<li>оператора строгальной машины. Зарплата на данной позиции до 1500 евро/месяц нетто.</li>\r\n</ul>\r\n<p>Зарплата 760 - 900 евро/ месяц нетто. Возможно перерабатывать, в перспективе.</p>\r\n<p>В месяц от 170 до 250 рабочих часов.</p>', '2022-04-29 08:08:00', '2022-04-29 08:09:00'),
(6, 3, 'Слесарь-сверловщик.', '<h3>Работодатель:</h3>\r\n<ul>\r\n<li>Металлообработка, производство металлоконструкций, работает с 2012 года.</li>\r\n</ul>\r\n<h3>Локация:</h3>\r\n<ul>\r\n<li>Рига, в пределах 2 км от центра</li>\r\n</ul>\r\n<h3>Основные рабочие обязанности:</h3>\r\n<ul>\r\n<li>работа с магнитной дрелью.</li>\r\n<li>нанесение разметки по чертежам</li>\r\n</ul>\r\n<h3>Проверочный срок:</h3>\r\n<ul>\r\n<li>1 месяц с первого дня работы (в случае, если результаты первого месяца неоднозначны &ndash; может быть продлен до 3х месяцев).</li>\r\n<li>Условия прохождения испытательного срока:</li>\r\n<li>Кандидат справляется с доверенными задачами, полностью соблюдает правила внутреннего распорядка к компании (не опаздывает, демонстрирует бережное отношение к оборудованию, а также гибкость, работоспособность. корректное взаимодействие с коллективом, неупотребление спиртных напитков и тд.).</li>\r\n</ul>\r\n<h3>График работы:</h3>\r\n<ul>\r\n<li>График ненормированный, могут быть ночные смены. В рамках трудового закона ЛР &ndash; 160 часов вмесяц полная ставка, возможны переработки, оплата сверхурочных.</li>\r\n</ul>\r\n<h3>Оплата:</h3>\r\n<ul>\r\n<li>Совокупный ежемесячный доход 1150 &ndash; 1500 евро брутто в месяц. (после выплаты налогов на руки 825 &ndash; 1075 Евро)</li>\r\n</ul>\r\n<h3>Требования к кандидатам:</h3>\r\n<ul>\r\n<li>Мужчина, возраст 26 &ndash; 55 лет.</li>\r\n</ul>', '2022-04-29 08:13:00', '2022-04-29 08:14:08'),
(7, 4, 'Электрики.', '<h3>Требуются электрики для работы в Литве, города Вильнюс и Каунас.</h3>\r\n<h3>Требования к кандидатам:</h3>\r\n<ul>\r\n<li>гражданство любое</li>\r\n<li>владение русским языком</li>\r\n<li>Возраст от 22-50 лет</li>\r\n<li>Наличие диплома, сертификата</li>\r\n<li>Наличие опыта работы от 1 года.</li>\r\n</ul>\r\n<h3>Условия:</h3>\r\n<ul>\r\n<li>рабочий контракт на 1 год- оплата труда 5 евро/ нетто</li>\r\n<li>работа по 8-10 часов в день.</li>\r\n</ul>\r\n<h3>Для согласования кандидата с работодателем вам потребуется отправить:</h3>\r\n<ul>\r\n<li>первую страницу заграничного паспорта (фото хорошего качества, лучше скан).</li>\r\n<li>диплом или сертификат (фото хорошего качества, лучше скан)</li>\r\n</ul>\r\n<p>&nbsp;</p>', '2022-04-29 08:16:00', '2022-04-29 08:17:02'),
(8, 4, 'Сварщики.', '<h3>Требования:</h3>\r\n<ul>\r\n<li>Диплом сварщика;</li>\r\n<li>Опыт работы не меньше 5 лет методом 135 (MAG);</li>\r\n<li>Уметь читать чертежи; Знание методов и принципов действия используемых агрегатов и</li>\r\n</ul>\r\n<h3>оборудования;</h3>\r\n<ul>\r\n<li>Знание инструкций по охране труда и технике безопасности;</li>\r\n<li>Желательно без вредных привычек.</li>\r\n<li>Мин. Знание англ.. яз. (My name is ... I&amp;#39;m from ... How to find ...)</li>\r\n</ul>\r\n<h3>Условия труда:</h3>\r\n<ul>\r\n<li>Проживание в съёмных квартирах;</li>\r\n<li>Бесплатный проезд к месту работы и обратно;</li>\r\n<li>Спец. одежда + маска с подачей воздуха;</li>\r\n<li>Предоставляем от 286 до 390 часов работы в месяц;</li>\r\n</ul>\r\n<h3>Оплата труда:</h3>\r\n<ul>\r\n<li>Первые 3 месяца - 10 евро в час. В конце месяца возможен бонус 1-2 евро/час к общим отработанным часам. С 4-го месяца работник будет оформлен на Финскую фирму, с финской рабочей визой на 1 год, и зарплата будет составлять 12 евро + бонус.</li>\r\n</ul>\r\n<h3>Что для этого потребуется:</h3>\r\n<ol>\r\n<li>Резюме с полной развернутой информацией об опыте работы за последние 5 лет. (Прошлый работодатель, методы сварки, маркировка металла, положения сварочных швов, ключевые навыки, личные качества, должностные обязанности, профессиональные достижения);</li>\r\n<li>Фото или видео сварочных работ кандидата (желательно с ним в кадре);</li>\r\n<li>Копии документов - учебный диплом, подтверждающий должность сварщика, гражданский и заграничный паспорт, сертификат или свидетельство о допуске сварщика методом 135. (Документы должны быть отсканированы в хорошем качестве, в формате PDF);</li>\r\n<li>Номер телефона viber/ whatsApp для связи (в случае необходимости).</li>\r\n</ol>\r\n<p>&nbsp;</p>', '2022-04-29 08:19:00', '2022-04-29 08:20:02'),
(9, 4, 'Швеи', '<h3>Требования к кандидатам:</h3>\r\n<ul>\r\n<li>Умение работать на разных видах швейных машин, оверлок.</li>\r\n</ul>\r\n<h3>Зарплата:</h3>\r\n<ul>\r\n<li>450 - 1000 евро чистыми, в зависимости от выработки.</li>\r\n</ul>\r\n<h3>График работы:</h3>\r\n<ul>\r\n<li>посменный, 8-11 часов в день, 5-6 дней в неделю.</li>\r\n</ul>\r\n<p>Проживание 120 евро.</p>', '2022-04-29 08:21:43', '2022-04-29 08:21:43'),
(10, 4, 'Работа на мясокомбинате.', '<h3>Работа на мясокомбинате:</h3>\r\n<ul>\r\n<li>рубщик, разделочник, обвальщик в Литве.</li>\r\n</ul>\r\n<h3>Зарплата:</h3>\r\n<ul>\r\n<li>700 - 900 евро чистыми плюс премии, в зависимости от выработки.</li>\r\n</ul>\r\n<h3>График работы:</h3>\r\n<ul>\r\n<li>посменный, 3/3 или 5/1, 12 часов в день.</li>\r\n</ul>\r\n<p>Проживание, питание бесплатно.</p>\r\n<p>Наша компания помогает с оформлением удостоверения Обвальщик мяса;, обучение проходит онлайн, стоимость 150 евро.</p>', '2022-04-29 08:23:00', '2022-04-29 08:23:34'),
(11, 4, 'Повар в пиццерию и сушист.', '<h3>Зарплата:</h3>\r\n<ul>\r\n<li>испытательный срок 25 евро, затем 35-40 евро чистыми в день.</li>\r\n</ul>\r\n<h3>График работы</h3>\r\n<ul>\r\n<li>посменный, 8-10 часов в день, 5-6 дней в неделю.</li>\r\n</ul>\r\n<p>Проживание 120 евро.</p>', '2022-04-29 08:24:00', '2022-04-29 08:24:53'),
(12, 5, 'Медсестры в Дубай.', '<h3>Требования:</h3>\r\n<ul>\r\n<li>опыт работы без перерыва не менее 2-х лет;</li>\r\n<li>знание английского языка на уровне общения (сертификат не обязателен);</li>\r\n<li>возраст до 40 лет</li>\r\n<li>высшее медицинское или среднее медицинское образование, действующий</li>\r\n<li>сертификат по сестринскому делу. Срок обучение должен быть не менее 3 лет</li>\r\n</ul>\r\n<h3>Условия:</h3>\r\n<ul>\r\n<li>проживание за счет работодателя;</li>\r\n<li>стоимость билета возмещают по прилету в бухгалтерии;</li>\r\n<li>официальный рабочий контракт на 2 года;</li>\r\n<li>виза оформляется работодателем по прилету в Дубай;</li>\r\n<li>Заработная плата: помощница медсестры- 1100 долларов, у медсестры- 1500</li>\r\n<li>долларов</li>\r\n<li>При наличии лицензии DHA уровень заработной платы значительно выше.</li>\r\n</ul>\r\n<p>Для того, чтобы иметь право работать медсестрой в Дубае, каждая медицинская сестра должна получить лицензию для осуществления профессиональной деятельности. Процесс регистрации и лицензирования осуществляется в Дубае только в Dubai Health Authority. DНА выдает лицензии медсестрам с базовым высшим или средним медицинским образованием.</p>\r\n<p>Для получения лицензии, специальный орган в Дубае -Dataflow (это независимая организация по проверке документов на подлинность), проверяет документы кандидата Dataflow- кандидат может пройти на территории Дубая по прилету- стоимость 200 долларов (оплата в Дубае).</p>', '2022-04-29 08:27:04', '2022-04-29 08:27:04'),
(13, 6, 'Куриное производство', '<h3>Куриное производство (доступная вакансия для Средней Азии).</h3>\r\n<h3>Стоимость услуг (в стоимость услуги входит: подбор вакансии, договор от работодателя, оформление визы цена для граждан Средней Азии):</h3>\r\n<ol>\r\n<li>1000 Евро.дополнительные расходы:</li>\r\n<li>консульский сбор 80 евро.</li>\r\n<li>страховка ориентировочно 200евро.</li>\r\n<li>на счету должно быть не менее 300 евро.</li>\r\n</ol>\r\n<h3>Срок оказания услуги от 3 недель до 1,5 месяца</h3>\r\n<h3>С КУРИНОГО ЗАВОДА НА ДРУГОЕ МЕСТО (если тяжело или не понравилось):</h3>\r\n<h3>Стоимость услуги:</h3>\r\n<ul>\r\n<li>150 Евро.</li>\r\n</ul>\r\n<h3>Данная услуга актуальна для граждан средней Азии.</h3>\r\n<h3>Как это работает:</h3>\r\n<ol>\r\n<li>Вы продаете куриный завод т.к. оформление занимает всего месяц</li>\r\n<li>работник получает документы и выходит на работу на завод</li>\r\n<li>мы подаем на новые документы к новому работодателю</li>\r\n<li>документы готовятся 3-4месяца, все это время работник обязан работать на</li>\r\n<li>курином заводе</li>\r\n</ol>\r\n<p>Плюс данной схемы. Переоформить документы проще находясь в стране. Не надо терять время и ждать 3-4 месяца изначально.</p>', '2022-04-29 08:30:00', '2022-04-29 08:30:26'),
(14, 7, NULL, '<h3>Официальная работа для мужчин, женщин, семейных пар, студентов по следующим специальностям:</h3>\r\n<ol>\r\n<li>Стройка;</li>\r\n<li>Пляжи;</li>\r\n<li>Уборка;</li>\r\n<li>Клининг;</li>\r\n<li>Отели;</li>\r\n<li>Склады;</li>\r\n<li>Сельхоз. работы;</li>\r\n<li>Производство;</li>\r\n<li>Общепит.</li>\r\n</ol>\r\n<h3>Условия работы:</h3>\r\n<ol>\r\n<li>Возраст до 50-55 лет.</li>\r\n<li>Питание за счет работодателя.</li>\r\n<li>Проживание за счет работодателя.</li>\r\n<li>8 часовой рабочий день, 6/1</li>\r\n<li>Заработная плата выдается на руки, от 500 евро, выплата один раз в месяц.</li>\r\n</ol>\r\n<h3>Требования к работникам для устройства в компанию:</h3>\r\n<ol>\r\n<li>Паспорт.</li>\r\n<li>Фото</li>\r\n<li>Справка о несудимости (должны быть свежие, срок годности справок для Бангладеш, Индии - 3 мес, для Непала - 6 мес).</li>\r\n<li>Резюме с указанием, что умеет делать кандидат и в какой сфере есть опыт работы.</li>\r\n</ol>\r\n<h3>Подача документов кандидатом.</h3>\r\n<ol>\r\n<li>Подача документов в миграционную службу Румынии.</li>\r\n<li>Рассмотрение происходит один месяц.</li>\r\n<li>Выдача официального документа о принятии пакета документов.</li>\r\n<li>Пакет документов высылается с приглашением на работу претенденту для получения визы.</li>\r\n<li>Получение визы и покупка билета для приезда на работу.</li>\r\n<li>Виза выдается на один год, потом продлевается.</li>\r\n<li>Встреча работника в аэропорту, в Бухаресте.</li>\r\n<li>Прибытие на работу и обустройство.</li>\r\n</ol>', '2022-04-29 08:35:30', '2022-04-29 08:35:30'),
(15, 8, 'Работа на производственной линии, сборка автокресел.', '<h3>Место работы:</h3>\r\n<ul>\r\n<li>Водерады, Трнавская область.</li>\r\n</ul>\r\n<h3>Требования:</h3>\r\n<ul>\r\n<li>Только мужчины до 45 лет</li>\r\n</ul>\r\n<h3>Условия:</h3>\r\n<ul>\r\n<li>График работы: с понедельника по пятницу по 8 часов в 3 смены</li>\r\n<li>Базовая заработная плата (базовый оклад): 765 евро брутто (без учёта налога)</li>\r\n<li>Переменная составляющая заработной платы 17% (от 130 &euro;)</li>\r\n<li>Бонус за присутствие на работе (минимальное количество пропусков) 100 &euro;</li>\r\n<li>Премия по окончании года</li>\r\n<li>50% сверхурочных в выходные</li>\r\n<li>Бесплатный транспорт</li>\r\n<li>Проживание около 45 &euro; в месяц</li>\r\n<li>Талоны на питание на сумму 4 &euro; в день</li>\r\n</ul>\r\n<p>После подачи заявления в миграционную полицию приходится ждать выдачи разрешения на работу (ВНЖ), выход на работу только с действующими документами Срок ожидания около 75 дней с момента прибытия в Словакию (включая карантин).</p>\r\n<p>ВНЖ оформляется на 1 год</p>', '2022-04-29 08:37:23', '2022-04-29 08:37:23'),
(16, 8, 'Обвалка, нарезка, упаковка мяса птицы, работа стоя, требуется отличное здоровье, работа в пищевой промышленности.', '<h3>Требования:</h3>\r\n<ul>\r\n<li>Работа подходит в основном женщинам, но также и мужчинам до 50 лет</li>\r\n</ul>\r\n<h3>Условия:</h3>\r\n<ul>\r\n<li>Работа с понедельника по пятницу по 8 часов в 2 смены</li>\r\n<li>Заработная плата нетто 650 - 950 &euro; в месяц, включая все доплаты и бонусы</li>\r\n<li>Раз в 2 месяца право на бесплатное получение 12 кг мяса</li>\r\n<li>Обеспечено горячее питание за 0,50 евро за один прием пищи в день</li>\r\n<li>Размещение за 50 &euro; в месяц</li>\r\n</ul>\r\n<p>После подачи заявления в миграционную полицию приходится ждать выдачи разрешения на работу (ВНЖ), выход на работу только с действующими документами Срок ожидания около 90 дней с момента прибытия в Словакию (включая карантин).</p>\r\n<p>ВНЖ оформляется на 1 год.</p>', '2022-04-29 08:53:12', '2022-04-29 08:53:12'),
(17, 9, 'СВАРЩИК TIG.', '<ul>\r\n<li>Диплом, опыт не менее 3х лет обязателен.</li>\r\n<li>Умение читать и понимать чертежи, без вредных привычек, знание английского на хорошем разговорном уровне, знание финского языка будет преимуществом</li>\r\n<li>ЗП от 14,50 еur/h/брутто.</li>\r\n<li>Социальный пакет.</li>\r\n<li>Стоимость вакансии 600 евро + визовое сопровождение через ЦО</li>\r\n<li>Все остальные расходы, включая получение сертификатов, допусков к работе в Финляндии за счет работодателя в случае, если сотрудник работает не менее 9 мес. В противном случае человеку будет выставлен счет за административные расходы.</li>\r\n<li>Жилье 200-300 евро в месяц (в случаях, когда совсем нет денег, за первый месяц может оплатить работодатель и вычесть с первой ЗП).</li>\r\n</ul>', '2022-04-29 08:54:30', '2022-04-29 08:54:30'),
(18, 9, 'ПОМОЩНИК МЕДСЕСТРЫ/ОПЕКУН.', '<ul>\r\n<li>Диплом о медицинском образовании, опыт работы от 4х лет, знание английского и / или финского языков на хорошем разговорном и письменном уровне, физическая и эмоциональная выносливость, без вредных привычек, высокая культура общения.</li>\r\n<li>Обязанности: уход за клиентами, документировать предпринятые действия.</li>\r\n<li>ЗП от 10,50 евро / час.</li>\r\n<li>Рабочее время &mdash; 8 ч/смена.</li>\r\n<li>Социальный пакет.</li>\r\n<li>Стоимость вакансии 600 евро + визовое сопровождение.</li>\r\n<li>Все остальные расходы, включая получение сертификатов, допусков к работе в Финляндии за счет работодателя в случае, если сотрудник работает не менее 9 мес. В противном случае человеку будет выставлен счет за административные расходы.</li>\r\n<li>Жилье 200-300 евро в месяц (в случаях, когда совсем нет денег, за первый месяц может оплатить работодатель и вычесть с первой ЗП).</li>\r\n</ul>', '2022-04-29 08:55:29', '2022-04-29 08:55:29'),
(19, 9, 'СТРОИТЕЛЬ.', '<ul>\r\n<li>Диплом обязателен, опыт работы не менее 5 лет.</li>\r\n<li>Умение читать и понимать строительную документацию, чертежи, ответственность, умение работать в команде, физическая выносливость, без вредных привычек, знание английского на хорошем разговорном уровне, знание финского языка будет преимуществом.</li>\r\n<li>ЗП 15 евро/час/брутто</li>\r\n<li>8-ми часовой рабочий день.</li>\r\n<li>Себестоимость вакансии 600 евро + визовое сопровождение.</li>\r\n<li>Все остальные расходы, включая получение сертификатов, допусков к работе в Финляндии за счет работодателя в случае, если сотрудник работает не менее 9 мес. В противном случае человеку будет выставлен счет за административные расходы.</li>\r\n<li>Жилье 200-300 евро в месяц (в случаях, когда совсем нет денег, за первый месяц может оплатить работодатель и вычесть с первой ЗП).</li>\r\n</ul>', '2022-04-29 08:57:13', '2022-04-29 08:57:13'),
(20, 10, NULL, '<h3>1. На продуктовый склад в Праге требуются работники (мужчины, женщины). Комплектация заказов.</h3>\r\n<ul>\r\n<li>Оплата: 140 крон час в час.</li>\r\n<li>Рабочий график: 8-10-12 часов в день, 6-7 дней в неделю.</li>\r\n<li>Выходные по договоренности.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n</ul>\r\n<h3>2. На строительство нужны мастера.</h3>\r\n<ul>\r\n<li>Оплата: 140 крон в час.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n</ul>\r\n<h3>3. На строительство нужны сантехники.</h3>\r\n<ul>\r\n<li>Оплата 140-150 крон в час.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n</ul>\r\n<h3>4. На строительство нужны сварщики.</h3>\r\n<ul>\r\n<li>Оплата 150-160 крон в час.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n</ul>\r\n<h3>5. На строительство нужны подсобники.</h3>\r\n<ul>\r\n<li>Оплата: 120 крон в час.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n</ul>\r\n<h3>6. Нужны женщины и мужчины на уборку на автозавод.</h3>\r\n<ul>\r\n<li>Оплата 110 крон в час.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n<li>дневные смены.</li>\r\n<li>Жилье 4000 крон / месяц.</li>\r\n</ul>\r\n<h3>7. На работу в рестораны фаст-фуда г. Прага нужно:</h3>\r\n<ul>\r\n<li>Мужчин и женщин на кухню (дневные смены).</li>\r\n<li>Оплата 110 крон в час.</li>\r\n<li>Рабочий график: 10-12 часов в день, 6 дней в неделю.</li>\r\n<li>Жилье 4500 крон в месяц.</li>\r\n</ul>\r\n<h3>8. В г. Микулов на производство рыбной продукции (Упаковка, фасовка и т.д.).</h3>\r\n<ul>\r\n<li>Оплата 100 крон в час.</li>\r\n<li>10-12 часов в день.</li>\r\n<li>6 дней в неделю.</li>\r\n<li>проживание бесплатно.</li>\r\n</ul>\r\n<h3>9. В г. Чешское Будейовице, нужно мужчин на пилораму (Пилорама чистая, сухая).</h3>\r\n<ul>\r\n<li>Оплата 110 крн / ч.</li>\r\n<li>10-12 часов / в день.</li>\r\n<li>6 дней неделю.</li>\r\n<li>Жилье: предоставляется бесплатно.</li>\r\n</ul>\r\n<h3>10. На продуктовый склад (интернет магазин) в Брно.</h3>\r\n<ul>\r\n<li>Нужны мужчины и женщины.</li>\r\n<li>Обязанности: комплектация и упаковка заказов.</li>\r\n<li>Изменения: 8,12,14 часов (человек может сам себе выбирать смены).</li>\r\n<li>Заработная плата: краткосрочные визы-130 крон в час.</li>\r\n<li>Жилье: 4000-4500 крон в месяц.</li>\r\n</ul>', '2022-04-29 09:01:00', '2022-04-29 09:01:40'),
(21, 10, 'Вакансии по сезонной визе на 6 месяцев в Чехии:', '<h3>Для граждан РФ и Средней Азии.</h3>\r\n<h3>Цена:</h3>\r\n<ul>\r\n<li>Стоимость оформления документов 550 евро.</li>\r\n</ul>\r\n<h3>Дополнительные расходы:</h3>\r\n<ul>\r\n<li>Доставка оригиналов документов почтой DHL ориентировочно 50 евро.</li>\r\n</ul>\r\n<h3>1) Строители универсалы 10 чел., город Чеська Липа, Табор, Оломоуц.</h3>\r\n<ul>\r\n<li>Заработная плата: от 120 до 140 крон / час,</li>\r\n<li>График работы: по 10-12 часов в день, 6-7 дней в неделю,</li>\r\n<li>Условия работы: жилье предоставляется бесплатное,</li>\r\n<li>Требования: необходимо иметь диплом или сертификат по специальности.</li>\r\n</ul>\r\n<h3>2) Трактористы 2 чел., город Табор, Гавличкув Брод.</h3>\r\n<ul>\r\n<li>Заработная плата: 110-120 крон / час,</li>\r\n<li>График работы: по 10 часов в день, 6 дней в неделю.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n<li>Требования: необходимо иметь права соответствующей категории и опыт работы в данной сфере.</li>\r\n</ul>\r\n<h3>3) Пилорама, город Гавличкув Брод.</h3>\r\n<ul>\r\n<li>Заработная плата: 110 крон / час,</li>\r\n<li>График работы: по 12 часов в день, 6 дней в неделю.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>\r\n<h3>4) Теплицы 10 чел., возле города Табор.</h3>\r\n<ul>\r\n<li>Обязанности: выращивание овощей, прополка помидор и огурцов, петрушки.</li>\r\n<li>Заработная плата: 100 крон / час,</li>\r\n<li>График работы: по 12 часов в день,</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n<li>Набор с мая сейчас не актуально.</li>\r\n</ul>\r\n<h3>5) Продуктовый склад Роглик, 7 чел.</h3>\r\n<ul>\r\n<li>Обязанности: Сбор заказа и сканирование продукции.</li>\r\n<li>Заработная плата: 140 крон / час.</li>\r\n<li>График работы: смена 8 и 12 часов в день, 6-7 дней рабочих в воскресенье выходной.</li>\r\n<li>Условия работы: жилье 4500 крон.</li>\r\n<li>Самая ходовая вакансия.</li>\r\n</ul>\r\n<h3>6) Швеи 5 чел., город Фридланд.</h3>\r\n<ul>\r\n<li>Обязанности: пошив постельного белья.</li>\r\n<li>Заработная плата: 80-130 крон (зависит от нормы).</li>\r\n<li>График работы: по 12 часов в день.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>\r\n<h3>7) Бетонные плиты 10 чел., город Гавличкув Брод.</h3>\r\n<ul>\r\n<li>Обязанности: Заливка бетонных плит жидким бетоном, размером 2м*3м.</li>\r\n<li>График работы: по 12 часов в день.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>\r\n<h3>8) Металлургический завод сплав металла, город Иглава.</h3>\r\n<ul>\r\n<li>Заработная плата: 170 крон / час,</li>\r\n<li>График работы: по 7 часов в день, суб. вс. выходной.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>\r\n<h3>9) Завод по изготовлению метала.</h3>\r\n<ul>\r\n<li>Обязанности: контроль качества.</li>\r\n<li>Заработная плата: 110 крон / час,</li>\r\n<li>График работы: по 12 часов в день, 6 дней в неделю.</li>\r\n<li>Условия работы: жилье 1500 крон в месяц.</li>\r\n</ul>\r\n<h3>10) Нарезка мяса.</h3>\r\n<ul>\r\n<li>Заработная плата: 130-135 крон / час (помощник), 145-150 крон\\час (специалист).</li>\r\n<li>График работы: смены день/ночь от 00:00-15.00 и 12:00-03:00.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>\r\n<h3>11) На китайский продуктовый склад (только мужчины), город Прага</h3>\r\n<ul>\r\n<li>Заработная плата: 100 крон / час,</li>\r\n<li>График работы: по 10 часов в день.</li>\r\n<li>Условия работы: жилье бесплатное + обеды.</li>\r\n</ul>\r\n<h3>12) Работник на книжный склад, город Прага.</h3>\r\n<ul>\r\n<li>Заработная плата: 110-130 крон / час,</li>\r\n<li>График работы: 5-6 дней в неделю.</li>\r\n<li>Условия работы: жилье в Праге 3000крон.</li>\r\n</ul>\r\n<h3>13) Сварщик - СО2 город Чеське Будейовице.</h3>\r\n<ul>\r\n<li>Заработная плата: 145 крон / час,</li>\r\n<li>График работы: по 12 часов в день.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n<li>Требования: опыт, диплом или сертификат.</li>\r\n</ul>\r\n<h3>14) Сантехник.</h3>\r\n<ul>\r\n<li>Заработная плата: 140 крон / час,</li>\r\n<li>График работы: по 11 часов в день, 6 дней в неделю.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n<li>Требования: опыт, диплом или сертификат.</li>\r\n</ul>\r\n<h3>15) Работник фермы.</h3>\r\n<ul>\r\n<li>Условия: коровья механизированная ферма.</li>\r\n<li>Заработная плата: 100 крон / час,</li>\r\n<li>График работы: по 12 часов в день.</li>\r\n<li>Условия работы: жилье бесплатное.</li>\r\n</ul>', '2022-04-29 09:07:28', '2022-04-29 09:07:28'),
(22, 11, 'Каменщики', '<h3>Приоритетно для граждан РФ.</h3>\r\n<ul>\r\n<li>Официальное трудоустройство в Эстонии.</li>\r\n<li>постоянная работа.</li>\r\n<li>хорошие условия труда.</li>\r\n<li>хорошая и своевременная оплата. Оплата за м2. За месяц выходит 1500 &ndash; 2500 Евро.</li>\r\n<li>Работа по 10 - 12 часов. Также можно работать и по выходным дням.</li>\r\n<li>Жильё хостел, 160 евро в месяц, высчитывается с зарплаты.</li>\r\n</ul>\r\n<h3>Требования к кандидатам:</h3>\r\n<ul>\r\n<li>опыт работы каменщиком не менее 1 года. (нужны именно КАМЕНЩИКИ),</li>\r\n<li>готовые бригады приветствуются.</li>\r\n<li>наличие документа об образовании (сертификат)</li>\r\n<li>возраст до 45 лет.</li>\r\n<li>возможно оформление по биометрическому паспорту.</li>\r\n</ul>', '2022-04-29 09:08:45', '2022-04-29 09:08:45'),
(23, 11, 'Работа на ферме грибов и лука.', '<p>Рассматриваются граждане Украины, Беларуси, Молдовы, Грузии (можно по биометрии), России и граждан Средней Азии, имеющих в РФ хотя бы долгосрочную прописку.</p>\r\n<p>Работа на грибах и луке, выращивание, сортировка, посадка, снятие урожаев и упаковывание готовой продукции, приготовление стеллажей к посадке, а также разные работы, что касаются к производству.</p>\r\n<h3>Требования:</h3>\r\n<ul>\r\n<li>рассматриваются только женщины</li>\r\n</ul>\r\n<h3>Условия:</h3>\r\n<ul>\r\n<li>заработная плата вычисляется и начисляется по принципу сдельной работы, а</li>\r\n<li>также есть минимальные нормы, которые нужно выполнять. Первый месяц</li>\r\n<li>пока человек учится, то не берётся в расчёт сдельная работа и минимальный</li>\r\n<li>расчёт на первый месяц 700-800 евро в месяц. Затем, со второго месяца,</li>\r\n<li>зарплата 1000-1200 евро, зависит от выработки.</li>\r\n<li>жилье 70 евро/мес (за коммунальные услуги). Находится на территории производства, в 3 мин ходьбы.</li>\r\n<li>рабочую форму выдает работодатель.</li>\r\n</ul>', '2022-04-29 09:09:56', '2022-04-29 09:09:56'),
(24, 12, 'Добровольный социальный год (FSJ)', '<p>Так называется государственная волонтерская программа, по которой молодые люди участвуют в осуществлении экологических проектов. Это своего рода молодежный экологический лагерь, куда съезжаются люди со всего мира, чтобы общаться по-немецки и привнести свой вклад в дело по защите, окружающей среды. Программа длится с 1 сентября до 31 августа последующего года, но в некоторых случаях она продлевается до полутора лет (максимум) или сокращается до 6-ти месяцев (минимум). Также набор может осуществляться в марте. В рамках программы участники работают по 38,5 часов в неделю, что соответствует восьмичасовому рабочему дню. Помимо обычной работы, волонтеру требуется принять участие в обязательных семинарах. Время, проведенное на семинарских занятиях, засчитывается как рабочее. Участникам предоставляется бесплатный проезд до места проведения семинара, бесплатное жилье и питание, участие в культурной программе.</p>\r\n<h3>Выбрать регион Германии и характер работы по программе вы можете самостоятельно. Это может быть:</h3>\r\n<ul>\r\n<li>работа с несовершеннолетними, которым необходимо экологическое воспитание.</li>\r\n<li>уход за экосистемами, работа с картами и измерительным оборудованием</li>\r\n<li>работа в заповеднике, уход за животными и растениями</li>\r\n<li>сельское хозяйство</li>\r\n<li>лесное хозяйство</li>\r\n<li>работа в административных организациях</li>\r\n<li>лаборатории</li>\r\n<li>защита атмосферы</li>\r\n<li>свободная этическая реализация товаров и т.д.</li>\r\n</ul>\r\n<h3>Участникам предоставляется:</h3>\r\n<ul>\r\n<li>денежные средства на карманные расходы в размере 180 евро в месяц.</li>\r\n<li>бесплатное проживание или компенсация на жилье, если принимающая.</li>\r\n<li>организация не имеет возможности обеспечить им участников.</li>\r\n<li>бесплатное питание.</li>\r\n<li>оплачиваемая страховка: медицинская, пенсионная, по безработице и от несчастных случаев.</li>\r\n<li>оплачиваемый отпуск продолжительностью 26 рабочих дней</li>\r\n<li>униформа, инструменты, оборудование, материалы</li>\r\n<li>пособия для сирот и членов многодетных семей (предоставляется большинстве случаев).</li>\r\n</ul>\r\n<h3>Условия для участия в программе:</h3>\r\n<ul>\r\n<li>знание немецкого языка на базовом уровне. Перед получением рабочего</li>\r\n<li>места претендент проходит собеседование, в результате которого</li>\r\n<li>работодатель убеждается в том, что вы заинтересованы в работе и можете</li>\r\n<li>нормально общаться по-немецки.</li>\r\n<li>общее среднее образование</li>\r\n<li>возрастные рамки 16-27 лет</li>\r\n</ul>\r\n<p>Дополнительно об уровне языка и его подтверждении:</p>\r\n<p>Идеально, если у кандидата есть подтвержденный уровень немецкого языка на уровне А1 и выше. Если соискатель обучался в государственном ВУЗе на факультете иностранных языков, то 120-150 часов будут засчитаны как уровень А1, 300 часов + А2</p>', '2022-04-29 09:13:51', '2022-04-29 09:13:51'),
(25, 12, 'Добровольный социальный год (BFD государственный).', '<p>Это государственная программа Германии, позволяющая людям в течение года осуществлять практическую деятельность в Германии в социальной сфере или экологической. Понятие &laquo;добровольный&raquo; означает, что за работу выплачивается не обычная зарплата, а карманные деньги.</p>\r\n<h3>Возрастные рамки:</h3>\r\n<ul>\r\n<li>до 99 лет.</li>\r\n</ul>\r\n<h3>Начало программы:</h3>\r\n<ul>\r\n<li>круглый год (главное, чтобы работодатель был готов принять).</li>\r\n</ul>\r\n<h3>Статистика отказов и одобрений:</h3>\r\n<p>Девушкам до 35 практически всегда одобряют визу тем, кто идет на медицинскую сферу, в 96-97% визу одобряют FSJ понимается как вспомогательная практическая деятельность на полный рабочий день. Продолжительность составляет от 6 до 12 месяцев, и по желанию может быть продлена до 18 месяцев. Как правило, она осуществляется в учреждениях по уходу за больными, по оказанию благотворительной помощи, по работе с детьми и молодежью. Это, прежде всего:</p>\r\n<ul>\r\n<li>больницы (санитар, помощник медсестры),</li>\r\n<li>дома престарелых (санитар, кухня, уборка, организация досуга),</li>\r\n<li>детские сады (проекты без жилья!) (помощник воспитателя),</li>\r\n<li>дома ребенка,</li>\r\n<li>дома отдыха (кузня, уборка, ресепшн),</li>\r\n<li>молодежные гостиницы (Jugendherberge) (кухня, уборка, ресепшн),</li>\r\n<li>а также учреждения для людей с физическими или умственными недостатками (санитар, наблюдение за работой, помощник воспитателя),</li>\r\n<li>или учреждения семейной помощи.</li>\r\n</ul>\r\n<h3>Преимущества программы:</h3>\r\n<ul>\r\n<li>Участник программы обеспечивается карманными деньгами и деньгами на питание: всего примерно 300 евро в месяц. (В разных федеральных землях существует различная тарифная сетка карманных денег волонтеру. Карманные деньги состоят из денег на питание &mdash; примерно 150 евро в месяц и денег на карманные расходы &mdash; примерно 150- 180 евро в месяц. Есть земли, где волонтер получает 200 евро в месяц вместе с деньгами на питание, а есть и где 500 евро в месяц!).</li>\r\n<li>Участник получает бесплатное социальное и медицинское страхование в течение всегогода.</li>\r\n<li>Педагогическое сопровождение: в течение всего года с Вами работают социальные педагоги, которые помогают в решении сложных ситуаций, проводят тренинги на психологическую разгрузку и т.д. * Не на всех проектах имеется педагогическое сопровождение.</li>\r\n<li>Вам предоставляется оплачиваемый отпуск в течение 24-26 рабочих дней в году.</li>\r\n<li>Участие в образовательных и творческих семинарах: всего 5&ndash;6 раз (25 дней в году) &ndash; каждый второй месяц по 3-5 дней,</li>\r\n<li>Гарантии качества &ndash; все организации, которые проводят FSJ, тщательно проверяются государством.</li>\r\n<li>Наша организация подбирает нашим участникам проекты с жильем, а иногда и с питанием.</li>\r\n</ul>\r\n<p>Au Pair</p>\r\n<p>Возрастные ограничения: до 27 лет</p>\r\n<p>Au-pair в Германии - это самый дешевый способ провести в Европе от 6 до 12 месяцев, с возможностью самостоятельно окупить все свои затраты на проживание в Германии. Программа<br />AU Pair в Германии подразумевает, что Au-pair живет в иностранной семье, изучает немецкий язык и культуру Германии. Каждый Au-pair, работающий в Германии, получает бесплатное проживание, питание, возможность посещать курсы немецкого языка и карманные деньги в сумме 260 евро. Взамен Au-pair в Германии оказывает семье помощь в уходе за детьми и выполнении не сложной работы по дому.</p>', '2022-04-29 09:18:52', '2022-04-29 09:18:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `citizenship`
--
ALTER TABLE `citizenship`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `citizenship_document`
--
ALTER TABLE `citizenship_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenship_document_document_id_foreign` (`document_id`),
  ADD KEY `citizenship_document_citizenship_id_foreign` (`citizenship_id`);

--
-- Индексы таблицы `citizenship_give`
--
ALTER TABLE `citizenship_give`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenship_give_give_id_foreign` (`give_id`),
  ADD KEY `citizenship_give_citizenship_id_foreign` (`citizenship_id`);

--
-- Индексы таблицы `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education_content`
--
ALTER TABLE `education_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_content_education_id_foreign` (`education_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `give`
--
ALTER TABLE `give`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `residency`
--
ALTER TABLE `residency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status_what`
--
ALTER TABLE `status_what`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_what_what_id_foreign` (`what_id`),
  ADD KEY `status_what_status_id_foreign` (`status_id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Индексы таблицы `what`
--
ALTER TABLE `what`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `work_content`
--
ALTER TABLE `work_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_content_work_id_foreign` (`work_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `citizenship`
--
ALTER TABLE `citizenship`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `citizenship_document`
--
ALTER TABLE `citizenship_document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `citizenship_give`
--
ALTER TABLE `citizenship_give`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `education_content`
--
ALTER TABLE `education_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `give`
--
ALTER TABLE `give`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `residency`
--
ALTER TABLE `residency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `status_what`
--
ALTER TABLE `status_what`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `what`
--
ALTER TABLE `what`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `work`
--
ALTER TABLE `work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `work_content`
--
ALTER TABLE `work_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `citizenship_document`
--
ALTER TABLE `citizenship_document`
  ADD CONSTRAINT `citizenship_document_citizenship_id_foreign` FOREIGN KEY (`citizenship_id`) REFERENCES `citizenship` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `citizenship_document_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `citizenship_give`
--
ALTER TABLE `citizenship_give`
  ADD CONSTRAINT `citizenship_give_citizenship_id_foreign` FOREIGN KEY (`citizenship_id`) REFERENCES `citizenship` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `citizenship_give_give_id_foreign` FOREIGN KEY (`give_id`) REFERENCES `give` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `education_content`
--
ALTER TABLE `education_content`
  ADD CONSTRAINT `education_content_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`);

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `status_what`
--
ALTER TABLE `status_what`
  ADD CONSTRAINT `status_what_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `status_what_what_id_foreign` FOREIGN KEY (`what_id`) REFERENCES `what` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `work_content`
--
ALTER TABLE `work_content`
  ADD CONSTRAINT `work_content_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `work` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
