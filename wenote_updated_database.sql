-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2023 at 06:00 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_selection`
--
CREATE DATABASE IF NOT EXISTS `course_selection` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `course_selection`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'abcd', 'abcd@gmail.com', 'pbkdf2:sha256:260000$73o17xzi3DycfdFd$073223374c693a630384bddbb9cdf2368e413f24da4505060783ca52595e577a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_length` text COLLATE utf8mb3_bin,
  `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `col_default` text COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `settings_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `template_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'wenote', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"course_selection\",\"phpmyadmin\",\"test\",\"wenote\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'database', 'wenote_updated', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"module\",\"mod_vid\",\"pyq\",\"subject\",\"user\",\"videos\"],\"table_structure[]\":[\"module\",\"mod_vid\",\"pyq\",\"subject\",\"user\",\"videos\"],\"table_data[]\":[\"module\",\"mod_vid\",\"pyq\",\"subject\",\"user\",\"videos\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_drop_table\":\"something\",\"sql_create_table\":\"something\",\"sql_if_not_exists\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"wenote\",\"table\":\"module\"},{\"db\":\"wenote\",\"table\":\"videos\"},{\"db\":\"wenote\",\"table\":\"pyq\"},{\"db\":\"wenote\",\"table\":\"mod_vid\"},{\"db\":\"wenote\",\"table\":\"subject\"},{\"db\":\"wenote\",\"table\":\"user\"},{\"db\":\"wenote\",\"table\":\"video\"},{\"db\":\"wenote\",\"table\":\"test\"},{\"db\":\"wenote\",\"table\":\"admin\"},{\"db\":\"course_selection\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefs` text COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
  `schema_sql` text COLLATE utf8mb3_bin,
  `data_sql` longtext COLLATE utf8mb3_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-29 06:00:02', '{\"Console\\/Mode\":\"collapse\",\"Console\\/Height\":105.99419}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wenote`
--
CREATE DATABASE IF NOT EXISTS `wenote` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `wenote`;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `mid` int NOT NULL,
  `mod_no` int DEFAULT NULL,
  `notes_link` text,
  `impques_file` text,
  `sid` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`mid`, `mod_no`, `notes_link`, `impques_file`, `sid`) VALUES
(2000, 1, 'https://drive.google.com/file/d/101fFd5_iwv5XV9bNT2U2qv6eQbQsKu_f/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2001, 2, 'https://drive.google.com/file/d/1sxbxnWjidvGHcN6owRYuXScrCitj0c6s/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2002, 3, 'https://drive.google.com/file/d/1tC-p3sdC05pj-kQYPmrXIH4SY4CdLD0Z/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2003, 4, 'https://drive.google.com/file/d/1svvujulVE96kil86BdvYSKuE5vNoqYA7/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2004, 5, 'https://drive.google.com/file/d/1svvujulVE96kil86BdvYSKuE5vNoqYA7/view', 'https://drive.google.com/file/d/19fQeTqbQCjMFvqPfxm-Dti-oGKe55K_A/view', 1000),
(2005, 1, 'https://drive.google.com/file/d/1nVJKPfumuKYNl0McAjEJSy1lx6ksscYF/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2006, 2, 'https://drive.google.com/file/d/1EdgRZ7ghRG84VZFQRXaEprQgkEXS_Wj2/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2007, 3, 'https://drive.google.com/file/d/1agG0yEz06i4dMeNFTnNmHZmhuecWjJrX/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2008, 4, 'https://drive.google.com/file/d/1tuRCgLlKKgCPGjN5G_CFEEkCFx4ev35Z/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2009, 5, 'https://drive.google.com/file/d/1NkeCFEPRH8cJeP3ui9pKaOPB7jyc01K8/view', 'https://drive.google.com/file/d/1oOz5o9RLQVCZQuYGI_EbmyLeSi2itFn8/view', 1001),
(2010, 1, 'https://drive.google.com/file/d/177Jca_fKi6EDg4poH-DOBGXN15dmUm7k/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2011, 2, 'https://drive.google.com/file/d/175CtvBb_B3EIYfMGfTFKQGnPMOrdELNI/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2012, 3, 'https://drive.google.com/file/d/1Qm1Z95QWYzlw880wpNCaXgplCbs07s69/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2013, 4, 'https://drive.google.com/file/d/1rlm1ZlFgCVs_JawZhzsKEVIzVfHqGLpO/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2014, 5, 'https://drive.google.com/file/d/1CurqYvJgTDJXZcCDP_omprKhVuIWTxz9/view', 'https://drive.google.com/file/d/13vAoWP0Ubc4s4-wEdMrwwiXOBo1Ia5-2/view', 1002),
(2015, 1, 'https://drive.google.com/file/d/1JDW-yfXHxhBzRBe8vIfDL0ueRzcBstCg/view', 'https://drive.google.com/file/d/16MxEnNTrU1MD6rc6rcK8NXgtT6fC3_Id/view', 1003),
(2016, 2, 'https://drive.google.com/file/d/19w7iKBej3R16OG-B0jFOWj-VkybDy3o0/view', 'https://drive.google.com/file/d/1rkrkRg2KB44Oci4a5SPqOq32eYn8HcfJ/view', 1003),
(2017, 3, 'https://drive.google.com/file/d/1mEbDsCVnAHlRnbua3jVk2QZx1TTF8xvJ/view', 'https://drive.google.com/file/d/1rkrkRg2KB44Oci4a5SPqOq32eYn8HcfJ/view', 1003),
(2018, 4, 'https://drive.google.com/file/d/1SKeGQDzNzJepZycPmfK69q2lnb6G8AkY/view', 'https://drive.google.com/file/d/1_v5fcP4IC-X_-drm7I49PsipKFtSOFXu/view', 1003),
(2019, 5, 'https://drive.google.com/file/d/1LztYBNCahH98_Ffeipocxhxi9PEWlZ2N/view', 'https://drive.google.com/file/d/1_barBV6-X3N4v7hrtL1Y1ilHac5xtiCd/view', 1003),
(2020, 1, 'https://drive.google.com/file/d/1jKGidVZTCzzRuA_3-YIBkWZeluhcZson/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2021, 2, 'https://drive.google.com/file/d/1n7rqDARQeO8JFSd25EvjgcuoKYoigJ19/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2022, 3, 'https://drive.google.com/file/d/1nUI_h4CM8LT6kWWvW_hxNjOQjvZ-Jjb9/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2023, 4, 'https://drive.google.com/file/d/1dDl8d3ejVBmd5TVl05hyYTeyb0ilVqrZ/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2024, 5, 'https://drive.google.com/file/d/1mz-0yiHdeuilmaz-8D59_-I1xBpdoLL9/view', 'https://drive.google.com/file/d/1IQsQHRnd1ty4oPTmikDJDFemIqfriYyE/view', 1004),
(2025, 1, 'https://drive.google.com/file/d/1cGX5FcvWRxwgHnF0G5vSy0lWFfl-ayB4/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2026, 2, 'https://drive.google.com/file/d/1Qe0RyyzRUl0WRGa_1LZKby8Y8suKZwHk/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2027, 3, 'https://drive.google.com/file/d/1T-rC8VE8_BGdr3D1I9Wz6m2zjjVFCo5T/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2028, 4, 'https://drive.google.com/file/d/1o-8FBYd1DmzuYjr173KxQNIoMOXScVmY/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2029, 5, 'https://drive.google.com/file/d/1e0XUkBFmhFGt-dN35np-edDJ5CQrPr4L/view', 'https://drive.google.com/file/d/1KfNa0ntRqzs4GlemGwfQYjZvRXCjsZUF/view', 1005),
(2030, 1, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2031, 2, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2032, 3, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2033, 4, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2034, 5, 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 'https://drive.google.com/file/d/1Ar-yIW6Z451txb3_Zo05t9HM6bPmoevD/view', 1006),
(2035, 1, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2036, 2, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2037, 3, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2038, 4, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2039, 5, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(2040, 1, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2041, 2, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2042, 3, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2043, 4, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008),
(2044, 5, 'https://drive.google.com/file/d/1EVA-8wzPckFnovq3m4j4hyinGwbdiKVR/view', 'https://drive.google.com/file/d/18L64VX_zaRC_QsH1mdkYfI61n083fgoc/view', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `mod_vid`
--

CREATE TABLE `mod_vid` (
  `mid` int DEFAULT NULL,
  `vid` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pyq`
--

CREATE TABLE `pyq` (
  `pid` int NOT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `test_paper` text,
  `sid` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pyq`
--

INSERT INTO `pyq` (`pid`, `month`, `year`, `test_paper`, `sid`) VALUES
(3000, 'August', 2022, 'https://www.vturesource.com/vtu/7687714598/Management,-Entrepreneurship-for-IT-idustry/18CS51/Aug-2022', 1000),
(3001, 'March', 2022, 'https://www.vturesource.com/vtu/9863638042/Computer-Networks-and-Security/18CS52/Mar-2022', 1001),
(3002, 'August', 2022, 'https://www.vturesource.com/vtu/4471925280/Database-Management-System/18CS53/Aug-2022', 1002),
(3003, 'August', 2022, 'https://www.vturesource.com/vtu/4471925280/Database-Management-System/18CS53/Aug-2022', 1003),
(3004, 'August', 2022, 'https://www.vturesource.com/vtu/2098308673/Automata-theory-and-Computability/18CS54/Aug-2022', 1004),
(3005, 'March', 2022, 'https://www.vturesource.com/vtu/7859871668/Unix-Programming/18CS56/Mar-2022', 1005),
(3006, 'March', 2022, 'https://www.vturesource.com/vtu/7859871668/Unix-Programming/18CS56/Mar-2022', 1006),
(3007, 'August', 2022, 'https://drive.google.com/file/d/1sYBShiImgLEiXKtgba6FbGSThu-qSPfU/view', 1007),
(3008, 'March', 2022, 'https://www.vturesource.com/vtu/5223201509/Environmental-Studies/18CIV59/Mar-2022', 1008),
(4000, '', 0000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int NOT NULL,
  `sub_code` varchar(7) DEFAULT NULL,
  `scheme` varchar(4) NOT NULL,
  `study_hours` int DEFAULT (40),
  `marks_max` int DEFAULT (100),
  `uid` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `sub_code`, `scheme`, `study_hours`, `marks_max`, `uid`) VALUES
(1000, '18cs51', '2018', 40, 100, 2),
(1001, '18cs52', '2018', 40, 100, 2),
(1002, '18cs53', '2018', 40, 100, 2),
(1003, '18cs54', '2018', 40, 100, 2),
(1004, '18cs55', '2018', 40, 100, 2),
(1005, '18cs56', '2018', 40, 100, 2),
(1006, '18csl57', '2018', 40, 100, 2),
(1007, '18csl58', '2018', 40, 100, 2),
(1008, '18civ59', '2018', 40, 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `fname`, `lname`, `email`, `dob`, `phone`, `password`) VALUES
(1, 'abcd', 'abcd', 'abcd', 'abcd@gmail.com', '2023-01-12', '9977141714', 'abcd'),
(2, 'shaishav', 'shaishav', 'shaishav', 'shaishavpatna@gmail.com', '2000-04-29', '9801094555', 'shaishav'),
(3, 'monu', 'monu', 'kumar', 'monu@gmail.com', '1999-09-08', '4637486948', 'monu'),
(4, 'sonu', 'sonu', 'chotala', 'sonu@gmail.com', '2002-02-05', '9801094555', 'sonu'),
(5, 'golu', 'golu', 'molu', 'golu@gmail.com', '2003-02-13', '9801094555', 'golu'),
(6, 'pappu', 'pappu', 'singhania', 'pappu@gmail.com', '1995-07-29', '9801094555', 'pappu'),
(7, 'ramu', 'ramu', 'domar', 'ramu@gmail.com', '1996-11-10', '9801094555', 'ramu'),
(8, 'rakesh', 'rakesh', 'khuranna', 'rakesh@gmail.com', '1999-05-21', '997141715', 'rakesh'),
(9, 'gopal', 'gopal', 'aiyar', 'gopal@gmail.com', '2000-06-22', '9977141717', 'gopal');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `vid` int NOT NULL,
  `vid_name` varchar(200) DEFAULT NULL,
  `vid_type` varchar(50) DEFAULT NULL,
  `vid_link` text,
  `vid_length` int DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `mod_no` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`vid`, `vid_name`, `vid_type`, `vid_link`, `vid_length`, `sid`, `mod_no`) VALUES
(3000, 'VTU ME (18CS51) NATURE,CHARACTERSITICS AND FUNCTIONAL AREAS OF MANAGEMENT (M1 L1)', 'lecture', 'https://www.youtube.com/watch?v=5bROam5Epy4&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=2', 30, 1000, 1),
(3001, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP [DIRECTING] (M2 L1)', 'lecture', 'https://www.youtube.com/watch?v=uXYH7iIogYY&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=8', 13, 1000, 2),
(3002, 'VTU ME (18CS51) MANAGEMENT & ENTREPRENEURSHIP [ENTREPRENEUR- FUNCTIONS & CHARACTERISTICS] (M3 L1)', 'lecture', 'https://www.youtube.com/watch?v=ij_nnyuvEec&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=15', 19, 1000, 3),
(3003, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP [PROJECT MANAGEMENT] (M4 L1)', 'lecture', 'https://www.youtube.com/watch?v=Q-cOc4pTK9I&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=20', 19, 1000, 4),
(3004, 'VTU ME (18CS51) MANAGEMENT AND ENTREPRENEURSHIP FOR IT INDUSTRY [MSE/SSI] (M5 L1)', 'lecture', 'https://www.youtube.com/watch?v=DGmA1Z6TfeY&list=PLon7I2JOCP9UJ7Ow-4KyUWgXONs0LThRF&index=24', 24, 1000, 5),
(3005, 'VTU COMPUTER NETWORKS AND SECURITY(18CS52)[PRINCIPLES OF NETWORK APPLICATIONS](M1 L1)', 'lecture', 'https://www.youtube.com/watch?v=iYaykov_X4I&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=3', 25, 1001, 1),
(3006, 'VTU COMPUTER NETWORKS & SECURITY (18CS52) [Transport Layer - Overview] (M2 L1)', 'lecture', 'https://www.youtube.com/watch?v=RGlerBYUlDM&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=21', 19, 1001, 2),
(3007, 'VTU COMPUTER NETWORKS AND SECURITY(18CS52)[Inside Router](M3 L1)', 'lecture', 'https://www.youtube.com/watch?v=Ja-MF1_W9rk&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=45', 22, 1001, 3),
(3008, 'VTU COMPUTER NETWORKS AND SECURITY (18CS52) [Network Security : Overview] (M4 L1)', 'lecture', 'https://www.youtube.com/watch?v=yd069dv0Lkc&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=68', 20, 1001, 4),
(3009, 'VTU CNS(18CS52)Multimedia Networking - Properties of Video/Audio](M5 L1)', 'lecture', 'https://www.youtube.com/watch?v=026NxTmbAtM&list=PLon7I2JOCP9XY1blHcRRX54UkZB4zjuiU&index=58', 34, 1001, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `siid` (`sid`);

--
-- Indexes for table `mod_vid`
--
ALTER TABLE `mod_vid`
  ADD KEY `miiid` (`mid`),
  ADD KEY `viiid` (`vid`);

--
-- Indexes for table `pyq`
--
ALTER TABLE `pyq`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `siiid` (`sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sub_code` (`sub_code`),
  ADD KEY `uiid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `fk1` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `mid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2046;

--
-- AUTO_INCREMENT for table `pyq`
--
ALTER TABLE `pyq`
  MODIFY `pid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4001;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;