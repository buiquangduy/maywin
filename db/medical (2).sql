-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 06:34 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admins`
--

CREATE TABLE `m_admins` (
  `admin_id` bigint(20) NOT NULL COMMENT 'ID',
  `login_id` varchar(32) NOT NULL,
  `login_pass` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_admins`
--

INSERT INTO `m_admins` (`admin_id`, `login_id`, `login_pass`, `email`, `created`, `modified`) VALUES
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2017-02-02 18:46:18', '2017-02-02 18:46:18'),
(3, 'medical', '64d1d11eea58990f03109ed4fa25ab7f', NULL, '2017-03-11 14:07:55', '2017-03-11 14:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `m_closed_announcements`
--

CREATE TABLE `m_closed_announcements` (
  `contents_area_id` int(11) NOT NULL COMMENT 'コンテンツＩＤ',
  `message` text NOT NULL COMMENT 'メッセージ',
  `view_flag` int(11) NOT NULL COMMENT '表示フラグ',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_closed_announcements`
--

INSERT INTO `m_closed_announcements` (`contents_area_id`, `message`, `view_flag`, `created`, `modified`) VALUES
(1, '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br />\r\nbbbbbbbbbbbbbbbb<br />\r\nccccccccccc</p>\r\n', 1, '0000-00-00 00:00:00', '2017-03-23 17:55:01'),
(2, '<center>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br>bbbbbbbbbbbbbbbb<br>ccccccccccc</center>', 0, '2017-03-11 14:26:15', '2017-03-11 14:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `m_departments`
--

CREATE TABLE `m_departments` (
  `department_id` bigint(20) NOT NULL COMMENT 'ID',
  `department_name` varchar(255) NOT NULL COMMENT '診療科目名',
  `group_id` int(11) NOT NULL COMMENT 'グループID(1：内科系、2：外科系、3：その他)',
  `pos` int(11) DEFAULT NULL COMMENT 'グループ内表示順',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_departments`
--

INSERT INTO `m_departments` (`department_id`, `department_name`, `group_id`, `pos`, `created`, `modified`) VALUES
(17, '内科', 1, 1, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(18, '消化器内科', 1, 2, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(19, '呼吸器内科', 1, 3, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(20, '循環器内科', 1, 4, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(21, '老人内科', 1, 5, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(22, '神経内科', 1, 6, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(23, '心療内科', 1, 7, '2017-01-19 18:38:41', '2017-01-19 18:38:41'),
(24, '糖尿病内科', 1, 8, '2017-01-19 18:38:42', '2017-01-19 18:38:42'),
(25, '外科', 2, 1, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(26, '消化器外科', 2, 2, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(27, '呼吸器外科', 2, 3, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(28, '脳神経外科', 2, 4, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(29, '心臓血管外科', 2, 5, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(30, '整形外科', 2, 6, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(31, '形成外科', 2, 7, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(32, '美容外科', 2, 8, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(33, '皮膚科', 2, 9, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(34, '眼科', 2, 10, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(35, '耳鼻咽喉科', 2, 11, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(36, '産婦人科', 2, 12, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(37, '透析科', 2, 13, '2017-01-19 18:38:53', '2017-01-19 18:38:53'),
(38, '総合診療科', 3, 1, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(39, 'リハビリテーション科', 3, 2, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(40, '精神科', 3, 3, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(41, '小児科', 3, 4, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(42, '麻酔科', 3, 5, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(43, '在宅診療', 3, 6, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(44, '老健施設', 3, 7, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(45, '科目不問', 3, 8, '2017-01-19 18:40:38', '2017-01-19 18:40:38'),
(46, 'その他', 3, 9, '2017-01-19 18:40:40', '2017-01-19 18:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospitals`
--

CREATE TABLE `m_hospitals` (
  `hospital_id` bigint(20) NOT NULL COMMENT '病院ID',
  `contractor_corp` varchar(512) DEFAULT NULL COMMENT '契約先企業名',
  `contractor_corp_furi` varchar(512) DEFAULT NULL COMMENT '契約先企業名カナ',
  `contractor_contract` varchar(512) DEFAULT NULL COMMENT '担当者',
  `contractor_contract_fri` varchar(512) DEFAULT NULL COMMENT '担当者カナ',
  `contractor_zip` varchar(8) DEFAULT NULL,
  `contractor_pref_code` varchar(2) DEFAULT NULL COMMENT '都道府県コード',
  `contractor_city` varchar(255) DEFAULT NULL COMMENT '市区町村',
  `contractor_street` varchar(255) DEFAULT NULL COMMENT '番地',
  `contractor_building` varchar(255) DEFAULT NULL COMMENT '建物',
  `contractor_tel` varchar(50) DEFAULT NULL COMMENT '契約企業電話番号',
  `contractor_fax` varchar(50) DEFAULT NULL COMMENT '契約企業FAX番号',
  `contractor_email` varchar(255) DEFAULT NULL COMMENT '契約企業メールアドレス',
  `plan_id` bigint(20) NOT NULL COMMENT '1：無料、2：有料',
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `pass` varchar(50) NOT NULL COMMENT 'パスワード',
  `contract_period` date DEFAULT NULL COMMENT '契約終了日',
  `status` int(11) DEFAULT NULL COMMENT '登録状態（1：有効、2：無効）',
  `regist_date` datetime NOT NULL COMMENT '登録日',
  `withdrawal_date` datetime DEFAULT NULL,
  `chat_id` text COMMENT 'チャットＩＤ',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospitals`
--

INSERT INTO `m_hospitals` (`hospital_id`, `contractor_corp`, `contractor_corp_furi`, `contractor_contract`, `contractor_contract_fri`, `contractor_zip`, `contractor_pref_code`, `contractor_city`, `contractor_street`, `contractor_building`, `contractor_tel`, `contractor_fax`, `contractor_email`, `plan_id`, `email`, `pass`, `contract_period`, `status`, `regist_date`, `withdrawal_date`, `chat_id`, `created`, `modified`) VALUES
(2, '株', NULL, '担当者', 'フリガ', '4100312', '22', '沼津市', '原', '', '030-1111-1111', '030-1111-1111', 'amanuma100@maebe.jp', 1, 'amanuma100@maebe.jp', '1b950f837f98fedecb6953f95e5a4a43', NULL, NULL, '2017-03-15 15:19:38', NULL, '12', '2017-03-15 15:19:38', '2017-04-18 18:08:27'),
(3, 'テスト病院', NULL, '佐藤一', 'サトウハジメ', '4100312', '22', '沼津市', '原', '', '030-1111-1111', '030-1111-1111', 'amanuma@maebe.jp', 1, 'amanuma101@maebe.jp', '6d665431165d032b8f73ae9ff3407e54', NULL, 1, '2017-03-26 15:50:22', NULL, '10', '2017-03-26 15:50:22', '2017-03-27 13:41:09'),
(4, 'テスト病院', NULL, '担当者', 'タントウシャ', '4100802', '22', '沼津市', '上土町', 'xxビル', '030-1111-1111', '030-1111-1111', 'amanuma@maebe.jp', 1, 'amanuma@maebe.jp', 'c67846a611e8e9876652b63a9124f74f', NULL, 1, '2017-03-27 13:43:21', NULL, '11', '2017-03-27 13:43:21', '2017-03-27 13:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_attractions`
--

CREATE TABLE `m_hospital_attractions` (
  `hospital_attraction_id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL COMMENT '病院ID',
  `sentence` text NOT NULL COMMENT 'スタッフ誘致文',
  `staff_img` text COMMENT 'スタッフ画像',
  `pos` int(11) DEFAULT NULL COMMENT '表示順',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_departments`
--

CREATE TABLE `m_hospital_departments` (
  `hospital_profile_id` bigint(20) NOT NULL,
  `department_id` bigint(20) NOT NULL COMMENT '診療科目ID',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospital_departments`
--

INSERT INTO `m_hospital_departments` (`hospital_profile_id`, `department_id`, `created`, `modified`) VALUES
(5, 17, '2017-02-06 18:39:42', '2017-02-06 18:39:42'),
(5, 18, '2017-02-06 18:39:42', '2017-02-06 18:39:42'),
(5, 19, '2017-02-06 18:39:42', '2017-02-06 18:39:42'),
(5, 20, '2017-02-06 18:39:42', '2017-02-06 18:39:42'),
(5, 21, '2017-02-06 18:39:42', '2017-02-06 18:39:42'),
(5, 24, '2017-02-06 18:39:42', '2017-02-06 18:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_imgs`
--

CREATE TABLE `m_hospital_imgs` (
  `hospital_img_id` bigint(20) NOT NULL COMMENT 'シーケンスID',
  `hospital_id` bigint(20) NOT NULL COMMENT '病院ID',
  `image` text NOT NULL COMMENT '画像ファイル名',
  `alt` varchar(255) DEFAULT NULL COMMENT '画像alt',
  `pos` int(11) DEFAULT NULL COMMENT '表示順',
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospital_imgs`
--

INSERT INTO `m_hospital_imgs` (`hospital_img_id`, `hospital_id`, `image`, `alt`, `pos`, `status`, `created`, `modified`) VALUES
(1, 1, '588b28285f2d3.jpg', 'ああああああああ', 1, 0, '2017-01-27 10:59:52', '2017-01-27 10:59:52'),
(4, 1, '588b2987a89cc.jpg', 'ああああああああ', 2, 0, '2017-01-27 11:05:43', '2017-01-27 11:05:43'),
(5, 2, '58e73f65a6e25.jpg', 'a', 1, 0, '2017-04-07 16:27:33', '2017-04-07 16:27:33'),
(6, 2, '58f495aa42336.jpg', 'a', 2, 0, '2017-04-17 19:15:06', '2017-04-17 19:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_job_offers`
--

CREATE TABLE `m_hospital_job_offers` (
  `hospital_job_offer_id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  `job` bigint(20) DEFAULT NULL COMMENT '募集科目',
  `job_type` int(11) DEFAULT NULL COMMENT '職種(1：医師、2：看護師、3：薬剤師)',
  `job_type_class` int(11) DEFAULT NULL COMMENT '職種（1001:研修医、1002:一般医、1003:専門医、1004:指導医、2001:准看護婦、2002:正看護婦、3001:院内薬剤師、3002:院外薬剤師）',
  `experience` int(11) DEFAULT NULL COMMENT '経験年数',
  `specialist_flag` int(11) DEFAULT NULL COMMENT '専門医（1：必要、2：不要）',
  `work_start_code` int(11) DEFAULT NULL COMMENT '勤務開始時期（1:即時、2:～3か月以内、3:～6か月以内、4:～1年以内）',
  `work_style_code` int(11) DEFAULT NULL COMMENT '雇用形態(1:常勤、2:非常勤、3:夜勤、4:パート)',
  `work_style_detail_code` int(11) DEFAULT NULL COMMENT '雇用形態詳細',
  `working_hours_code` int(11) DEFAULT NULL COMMENT '勤務時間コード',
  `working_hours_free` text COMMENT '勤務時間フリー',
  `watch_code` int(11) DEFAULT NULL COMMENT '当直（1：なし、2：平日、3：日・祝日）',
  `watch_detail_code` int(11) DEFAULT NULL,
  `night_shift_flag` int(11) DEFAULT NULL COMMENT '夜勤',
  `working_code` int(11) DEFAULT NULL COMMENT '勤務形態（1：病棟、2：外来、3：夜勤）',
  `occupation_code` int(11) DEFAULT NULL COMMENT '業務内容（1:外来診療、2:病棟、3:手術、4:手術室、5:健診・人間ドック、6:産業医、7:往診）',
  `holiday` text COMMENT '休日、休暇',
  `contract_renewal_flag` int(11) DEFAULT NULL COMMENT '契約更新（1：あり、2：なし）',
  `contract_renewal_detail_code` int(11) DEFAULT NULL COMMENT '契約更新詳細（1：1年、2：2年、3：その他）',
  `work_other` text COMMENT 'その他',
  `annual_salary` int(11) DEFAULT NULL COMMENT '年俸',
  `daily_salary` int(11) DEFAULT NULL,
  `half_salary` int(11) DEFAULT NULL,
  `monthly_salary_from` int(11) DEFAULT NULL,
  `monthly_salary_to` int(11) DEFAULT NULL,
  `severance_pay_flag` int(11) DEFAULT NULL COMMENT '退職金(1:有り、2：無し)',
  `severance_pay_free` text COMMENT '退職手当フリー入力',
  `house_pay_flag` int(11) DEFAULT NULL COMMENT '住宅手当(1:有り、2：無し)',
  `house_pay_free` text COMMENT '住宅手当フリー入力',
  `commuting_pay_flag` int(11) DEFAULT NULL COMMENT '通勤手当(1:有り、2：無し)',
  `commuting_pay_free` text COMMENT '通勤手当フリー入力（フリー、1日兼用）',
  `commuting_pay_free2` text COMMENT '通勤手当フリー入力（半日用）',
  `position_pay_flag` int(11) DEFAULT NULL COMMENT '役職手当(1:有り、2：無し)',
  `position_pay_free` text COMMENT '役職手当フリー入力',
  `off_hours_pay_flag` int(11) DEFAULT NULL COMMENT '時間外手当(1:有り、2：無し)',
  `off_hours_pay_free` text COMMENT '時間外手当フリー入力',
  `night_shift_pay_flag` int(11) DEFAULT NULL COMMENT '夜勤手当',
  `night_shift_pay_free` text COMMENT '夜勤手当フリー',
  `night_shift_pay_free2` text COMMENT '夜勤手当フリー（半日用）',
  `watch_pay_flag` int(11) DEFAULT NULL COMMENT '当直手当(1:有り、2：無し)',
  `watch_pay_free` text COMMENT '当直手当フリー入力',
  `moving_pay_flag` int(11) DEFAULT NULL COMMENT '引越手当(1:有り、2：無し)',
  `moving_pay_free` text COMMENT '引越手当フリー入力',
  `other_pay_flag` int(11) DEFAULT NULL COMMENT 'その他手当(1:有り、2：無し)',
  `other_pay_free` text COMMENT 'その他手当フリー入力',
  `nursery_flag` int(11) DEFAULT NULL COMMENT '託児所(1:有り、2：無し)',
  `nursery_free` text,
  `welfare_other` text,
  `start_date` date DEFAULT NULL COMMENT '掲載期間開始日',
  `end_date` date DEFAULT NULL COMMENT '掲載期間終了日',
  `status` int(11) DEFAULT NULL COMMENT '公開・非公開(0：非公開、1：公開)',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '作成日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospital_job_offers`
--

INSERT INTO `m_hospital_job_offers` (`hospital_job_offer_id`, `hospital_id`, `job`, `job_type`, `job_type_class`, `experience`, `specialist_flag`, `work_start_code`, `work_style_code`, `work_style_detail_code`, `working_hours_code`, `working_hours_free`, `watch_code`, `watch_detail_code`, `night_shift_flag`, `working_code`, `occupation_code`, `holiday`, `contract_renewal_flag`, `contract_renewal_detail_code`, `work_other`, `annual_salary`, `daily_salary`, `half_salary`, `monthly_salary_from`, `monthly_salary_to`, `severance_pay_flag`, `severance_pay_free`, `house_pay_flag`, `house_pay_free`, `commuting_pay_flag`, `commuting_pay_free`, `commuting_pay_free2`, `position_pay_flag`, `position_pay_free`, `off_hours_pay_flag`, `off_hours_pay_free`, `night_shift_pay_flag`, `night_shift_pay_free`, `night_shift_pay_free2`, `watch_pay_flag`, `watch_pay_free`, `moving_pay_flag`, `moving_pay_free`, `other_pay_flag`, `other_pay_free`, `nursery_flag`, `nursery_free`, `welfare_other`, `start_date`, `end_date`, `status`, `modified`, `created`) VALUES
(1, 1, NULL, 3, 3001, NULL, NULL, 4, 4, NULL, NULL, '勤務時間', NULL, NULL, NULL, NULL, NULL, '休日休暇', NULL, NULL, 'その他\r\n', NULL, NULL, NULL, 20, 25, 1, '1', 1, '2', 1, '3', NULL, 1, '4', NULL, NULL, 1, '5', '6', NULL, NULL, 1, '7', 1, '8', 1, '9', 'aaaaaaaa', NULL, NULL, 1, '2017-02-16 07:56:40', '2017-02-16 07:07:01'),
(2, 1, NULL, 2, 2002, 10, NULL, 1, 2, 6, 2, NULL, NULL, NULL, 2, 2, 2, '休日・休暇', NULL, NULL, 'その他1', NULL, NULL, NULL, 20, 30, 1, '', 1, '', 1, '', NULL, 1, '', NULL, NULL, 1, '', '', NULL, NULL, 1, '', 1, '', 1, '', 'aaaaaaaaa', NULL, NULL, 1, '2017-02-16 08:25:27', '2017-02-16 08:04:46'),
(3, 1, NULL, 1, 1001, 1, NULL, 1, 1, 1, NULL, '11111111111111', 1, NULL, NULL, NULL, 1, 'aaaaaaaaaa', 2, NULL, '', 11111, 1, 1, NULL, NULL, 1, '', 1, '', 1, '', '', 1, '', 1, NULL, NULL, NULL, NULL, 1, NULL, 1, '', 1, '', 1, '', '', NULL, NULL, 0, '2017-02-17 12:04:18', '2017-02-17 12:03:11'),
(4, 8, NULL, 1, 1001, 10, NULL, 1, 1, 1, NULL, 'aaaaaaaa', 1, NULL, NULL, NULL, 1, 'aaaaaaaa', 2, NULL, '', 1, NULL, NULL, NULL, NULL, 1, '', 1, '', 1, '', '', 1, '', 1, NULL, NULL, NULL, NULL, 1, NULL, 1, '', 1, '', 1, '', '', NULL, NULL, 0, '2017-03-04 07:44:31', '2017-03-04 07:44:31'),
(5, 2, NULL, 1, 1001, 1, NULL, 1, 1, 1, NULL, 'q', 1, NULL, NULL, NULL, 1, 'q', 1, 1, 'q', 15, NULL, NULL, NULL, NULL, 1, 'a', 1, 'a', 1, 'a', '', 1, 'a', 1, NULL, NULL, NULL, NULL, 1, NULL, 1, 'a', 1, 'a', 1, 'a', 'a', NULL, NULL, 0, '2017-04-07 09:30:24', '2017-04-07 09:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_profiles`
--

CREATE TABLE `m_hospital_profiles` (
  `hospital_profile_id` bigint(20) NOT NULL COMMENT 'シーケンスID',
  `hospital_id` bigint(20) NOT NULL,
  `hospital_name` varchar(255) NOT NULL COMMENT '病院名',
  `facility_id` bigint(20) NOT NULL COMMENT '施設種別',
  `zip` varchar(8) NOT NULL COMMENT '郵便番号',
  `pref_code` varchar(2) NOT NULL COMMENT '都道府県ＩＤ',
  `city` varchar(255) NOT NULL COMMENT '市区町村',
  `street` varchar(255) NOT NULL COMMENT '番地',
  `line` varchar(255) NOT NULL COMMENT '最寄駅',
  `tel` varchar(50) NOT NULL COMMENT '電話番号',
  `url` varchar(255) DEFAULT NULL COMMENT 'ホームページURL',
  `bed` text NOT NULL COMMENT '病床数',
  `department` text COMMENT '診療科目',
  `hospital_time` text COMMENT '診療時間',
  `map` text COMMENT 'googleマップタグ',
  `accredited_facility` text COMMENT '研修医認定施設',
  `logo_img` text COMMENT 'ロゴ画像ファイル名',
  `title_img` text COMMENT 'タイトル画像ファイル名',
  `introduction` text COMMENT '紹介文',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospital_profiles`
--

INSERT INTO `m_hospital_profiles` (`hospital_profile_id`, `hospital_id`, `hospital_name`, `facility_id`, `zip`, `pref_code`, `city`, `street`, `line`, `tel`, `url`, `bed`, `department`, `hospital_time`, `map`, `accredited_facility`, `logo_img`, `title_img`, `introduction`, `created`, `modified`) VALUES
(2, 2, '病院名', 1, '4100312', '22', '沼津市', '原', '09022221111', '0012251152', 'http://maebe.jp', '09022221111', '090-2222-1111', '090-2222-1111', '原', NULL, 'logo.jpg', 'title.png', '090-2222-1111', '2017-03-15 15:19:38', '2017-04-17 16:49:48'),
(3, 3, 'テスト病院', 1, '4100312', '22', '沼津市', '原', '沼津', '030-1111-1111', 'http://maebe.jp', '1000', '内科\r\n小児科', '10:00～', '', '', 'logo.jpg', 'title.gif', '病院紹介文', '2017-03-26 15:50:22', '2017-03-26 16:15:13'),
(4, 4, 'テスト病院', 1, '4100802', '22', '沼津市', '上土町', '沼津', '030-1111-1111', 'http://maebe.jp', '100', '診療科目', '診療時間', '', '', 'logo.jpg', 'title.gif', '病院紹介文', '2017-03-27 13:43:21', '2017-03-27 13:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital_staffs`
--

CREATE TABLE `m_hospital_staffs` (
  `hospital_staff_id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL COMMENT '病院ID',
  `name` varchar(100) NOT NULL,
  `profile` text NOT NULL COMMENT 'スタッフ概略',
  `img` text NOT NULL COMMENT '画像ファイル名',
  `message` text NOT NULL COMMENT '誘致文',
  `pos` int(11) DEFAULT '1' COMMENT '表示順',
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hospital_staffs`
--

INSERT INTO `m_hospital_staffs` (`hospital_staff_id`, `hospital_id`, `name`, `profile`, `img`, `message`, `pos`, `status`, `created`, `modified`) VALUES
(1, 1, 'あああああああああ', '', '', 'あああああああああああああああああああああああああ\r\nああああああああああああああああああああああ\r\n', 2, 1, '2017-01-27 10:25:05', '2017-01-27 10:54:47'),
(2, 1, 'aaaaaaaa', 'ffffffffff', '', 'ああああああ\r\nあああああああ\r\nああああああああああああああ', 1, 0, '2017-01-27 10:49:51', '2017-01-27 10:50:07'),
(3, 1, 'あああああああああ', '', '', 'aaaaaaaaaaa', 3, 0, '2017-02-06 11:03:21', '2017-02-06 11:03:21'),
(4, 2, 'aaaaaaaaâ', 'a', '', 'aaaaaaaaaaaaa', 1, 0, '2017-04-07 16:26:07', '2017-04-17 16:02:52'),
(5, 2, 'b', 'b', '', 'b', 2, 0, '2017-04-17 15:50:53', '2017-04-17 15:50:53'),
(6, 2, 'a', 'a', '', 'a', 3, 0, '2017-04-17 19:12:49', '2017-04-17 19:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `m_mail_templates`
--

CREATE TABLE `m_mail_templates` (
  `mail_template_id` bigint(20) NOT NULL COMMENT 'シリアル',
  `type` int(11) NOT NULL COMMENT 'テンプレート種別（1：医院お問合せ、2：ユーザーお問合せ）',
  `title` varchar(255) DEFAULT NULL COMMENT 'テンプレート名',
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_mail_templates`
--

INSERT INTO `m_mail_templates` (`mail_template_id`, `type`, `title`, `subject`, `body`, `created`, `modified`) VALUES
(1, 2, 'お問い合わせ返信', 'お問い合わせに関するご回答について', '{name}様\r\n\r\n{site_name}へのお問い合わせありがとうございます。\r\n頂戴しましたお問い合わせについてご回答をお送りさせて頂きました。\r\n\r\nご回答\r\n-----------------------------------------------------------------------------\r\n\r\n\r\n【ご注意】\r\n　このメールは送信専用のメールアドレスからお送りしております。\r\n　このメールへの返信によるご質問、お問い合わせにはお答えしかねます。\r\n\r\n　なお、ご質問・お問い合わせがございましたら、マイページにて\r\n　ご案内をしております「お問い合わせフォーム」よりお願いいたします。\r\n\r\n========================\r\n{site_name}\r\n　{site_url}\r\n\r\n企画・運営 株式会社\r\n　静岡県駿東郡清水町新宿823-1\r\n========================', '2017-03-19 17:48:27', '2017-03-26 15:55:17'),
(2, 1, 'お問い合わせ返信', 'お問い合わせに関するご回答について', '{contractor_corp}様\r\n\r\n{site_name}へのお問い合わせありがとうございます。\r\n頂戴しましたお問い合わせについてご回答をお送りさせて頂きました。\r\n\r\nご回答\r\n-----------------------------------------------------------------------------\r\n\r\n\r\n【ご注意】\r\n　このメールは送信専用のメールアドレスからお送りしております。\r\n　このメールへの返信によるご質問、お問い合わせにはお答えしかねます。\r\n\r\n　なお、ご質問・お問い合わせがございましたら、マイページにて\r\n　ご案内をしております「お問い合わせフォーム」よりお願いいたします。\r\n\r\n========================\r\n{site_name}\r\n　{site_url}\r\n\r\n企画・運営 株式会社\r\n　静岡県駿東郡清水町新宿823-1\r\n========================', '2017-03-20 11:07:47', '2017-03-26 15:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `m_period_mails`
--

CREATE TABLE `m_period_mails` (
  `period_mail_id` bigint(20) NOT NULL COMMENT 'シリアル',
  `remainder_days` int(11) NOT NULL COMMENT '残り日数',
  `deliver_flag` int(11) NOT NULL DEFAULT '1' COMMENT '配信状態（1：配信する、2：配信しない）',
  `subject` varchar(255) DEFAULT NULL COMMENT 'タイトル',
  `body` text COMMENT '本文',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime DEFAULT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m_users`
--

CREATE TABLE `m_users` (
  `user_id` bigint(20) NOT NULL,
  `synergy_id` bigint(20) NOT NULL,
  `synergyid` bigint(20) NOT NULL,
  `job_type` int(11) DEFAULT NULL COMMENT '職種',
  `job_type_class` int(11) DEFAULT NULL COMMENT '職種詳細',
  `license_number` text,
  `prefecture` varchar(2) DEFAULT NULL,
  `license_date` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '性別',
  `nickname` varchar(255) DEFAULT NULL COMMENT 'ニックネーム',
  `department` text COMMENT '診療科目',
  `years` int(11) DEFAULT NULL COMMENT '経験年数',
  `watch_flag` int(11) DEFAULT NULL COMMENT '当直の可否(1：可、2：非)',
  `operation_flag` int(11) DEFAULT NULL COMMENT '手術可否（1:OK、2：ＮＧ）',
  `special` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '取得のある専門医',
  `hope_income_min` int(11) DEFAULT NULL COMMENT '年収下限',
  `hope_income_max` int(11) DEFAULT NULL COMMENT '年収上限',
  `hope_location1` varchar(255) DEFAULT NULL COMMENT '希望勤務地1',
  `hope_location2` varchar(255) DEFAULT NULL COMMENT '希望勤務地2',
  `hope_work_style_code` int(11) DEFAULT NULL COMMENT '希望の働き型',
  `hope_facility_code` int(11) DEFAULT NULL COMMENT '希望の施設',
  `hope_condition_code` text,
  `authority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `application_flag` int(11) DEFAULT NULL,
  `chat_id` text,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_users`
--

INSERT INTO `m_users` (`user_id`, `synergy_id`, `synergyid`, `job_type`, `job_type_class`, `license_number`, `prefecture`, `license_date`, `birthday`, `sex`, `nickname`, `department`, `years`, `watch_flag`, `operation_flag`, `special`, `hope_income_min`, `hope_income_max`, `hope_location1`, `hope_location2`, `hope_work_style_code`, `hope_facility_code`, `hope_condition_code`, `authority`, `status`, `application_flag`, `chat_id`, `modified`, `created`) VALUES
(1, 1, 1, 1, 1001, '10000', '22', '2017-02-21', '2017-02-21', 1, 'test', 'aaaaaaaa', 1, 1, 1, 'aaaaaaaaaaaaa', NULL, NULL, '1', '', 1, 1, '1', NULL, 1, NULL, NULL, '2017-03-02 11:28:23', '2017-03-02 11:15:47'),
(4, 6, 6, 2, 2002, '10000', '22', '2017-02-21', '2017-02-21', 1, 'yama', 'テスト', 10, 1, 2, '', NULL, NULL, '沼津', '', 1, 6, '1', NULL, 1, NULL, NULL, '2017-03-04 17:34:12', '2017-03-04 14:34:22'),
(5, 1, 1, 1, 1001, 'aaaaaaaaaaaaa', NULL, '2017-03-15', '1970-01-01', 1, 'test', '診療科目', 10, 1, 1, '取得のある専門医\r\n', 1000, 2000, '静岡県', '', 2, 2, NULL, NULL, 1, NULL, NULL, '2017-03-16 13:54:22', '2017-03-16 13:54:22'),
(6, 8, 8, 1, 1001, 'aaaaaaaaaaaaa', NULL, '2017-03-15', '1970-01-01', 1, 'yama', '診療科目', 1, 1, 1, '取得のある専門医', 300, 500, '希望勤務地（第1）', '希望勤務地（第2）', 1, 1, NULL, NULL, 1, NULL, NULL, '2017-03-16 16:41:22', '2017-03-16 14:24:28'),
(7, 10000, 10000, 1, 1004, 'aaaaaaaaaaaaa', '22', '2017-03-15', NULL, 1, 'test', '診療科目', 10, 1, 1, '', 1, 300, 'あああああああ', '東京\r\n静岡', 1, 7, '2,3', 2, 1, NULL, NULL, '2017-03-17 10:39:17', '2017-03-17 10:39:17'),
(8, 9, 9, 1, 1003, 'aaaaaaaaaaaaa', '14', '2017-03-15', NULL, 1, 'test', '内科\r\n小児科', 5, 1, 1, '指導医院', 800, 1500, '静岡\r\n山梨', '東京', 1, 2, '1,2,3,4', 2, 1, NULL, NULL, '2017-03-17 10:46:10', '2017-03-17 10:46:10'),
(9, 10, 10, 1, 1003, 'aaaaaaaaaaaaa', '14', '1970-01-01', '1970-01-01', 1, 'test', '内科\r\n内科\r\n内科\r\n内科\r\n内科', 10, 1, 1, '取得のある専門医', 1000, 2000, '東京', '静岡', 1, 2, '', 3, 1, NULL, NULL, '2017-03-17 20:33:30', '2017-03-17 10:57:09'),
(10, 11, 11, 2, 2001, 'T100', '13', '1990-01-11', '1970-01-01', 2, 'test', NULL, 5, 1, 1, NULL, NULL, NULL, '静岡', '', 1, 9, '2', 2, 1, NULL, NULL, '2017-03-19 11:42:53', '2017-03-19 11:42:53'),
(13, 13, 13, 3, 3002, 'T10011111111', '14', '1990-01-11', '1970-01-01', 1, 'test', '内科', 15, 1, 1, 'aaaaaaaaaaaa', 1000, 2000, '神奈川', '静岡', 1, 11, '1,2,3,4', 3, 1, 1, NULL, '2017-03-27 13:33:34', '2017-03-20 13:01:13'),
(14, 14, 14, 1, 1001, 'A100-10', '23', '1986-12-01', '1980-02-03', 1, 'fuji', '内科\r\n小児科', 12, 1, 1, '特になし', 1000, 1500, '東京', '愛知', 1, 1, '2,4', 2, 1, 2, '6', '2017-03-20 13:34:18', '2017-03-20 13:34:05'),
(15, 15, 15, 1, 1001, '012345678', '22', '2002-03-23', '1973-08-26', 2, 'YUIKEN', 'かりかりかり', 15, 1, 2, '', 1000, 2000, '静岡県', '', 1, 1, '1,3', 2, 1, 2, '7', '2017-03-23 15:43:12', '2017-03-23 15:43:12'),
(16, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(17, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(18, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(19, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(20, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(21, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(22, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(23, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(24, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(25, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47'),
(26, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2017-03-02 11:15:47', '2017-03-02 11:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `m_user_profiles`
--

CREATE TABLE `m_user_profiles` (
  `user_id` bigint(20) NOT NULL COMMENT 'シーケンスＩＤ',
  `department` text NOT NULL COMMENT '診療科目',
  `years` int(11) NOT NULL COMMENT '経験年数',
  `watch_flag` int(11) NOT NULL COMMENT '当直の可否(1：可、2：非)',
  `operation_flag` int(11) NOT NULL COMMENT '手術可否（1:OK、2：ＮＧ）',
  `special` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '取得のある専門医',
  `hope_income_min` int(11) DEFAULT NULL COMMENT '年収下限',
  `hope_income_max` int(11) DEFAULT NULL COMMENT '年収上限',
  `hope_location1` varchar(255) NOT NULL COMMENT '希望勤務地1',
  `hope_location2` varchar(255) DEFAULT NULL COMMENT '希望勤務地2',
  `hope_work_style_id` int(11) DEFAULT NULL COMMENT '希望の働き型',
  `hope_facility_id` int(11) DEFAULT NULL COMMENT '希望の施設',
  `hope_condition_id` int(11) DEFAULT NULL COMMENT '希望の条件',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m_user_synergys`
--

CREATE TABLE `m_user_synergys` (
  `synergyid` bigint(20) NOT NULL COMMENT 'ユーザーＩＤ',
  `synergy_id` bigint(20) NOT NULL COMMENT 'ユーザーＩＤ',
  `job_type` int(11) NOT NULL COMMENT '職種（1：医師、2：看護師、3：薬剤師）',
  `job_type_class` int(11) DEFAULT NULL COMMENT '職種詳細',
  `regist_number` text NOT NULL COMMENT '登録番号',
  `regist_date` date NOT NULL COMMENT '登録日',
  `name` text NOT NULL COMMENT '姓',
  `kana` text NOT NULL COMMENT '姓かな',
  `birth` date NOT NULL COMMENT '生年月日',
  `sex` int(11) NOT NULL COMMENT '性別（1：男性、2：女性）',
  `zip` varchar(8) DEFAULT NULL COMMENT '郵便番号ハイフンあり',
  `pref_code` varchar(2) DEFAULT NULL COMMENT '都道府県ＩＤ',
  `address` varchar(1024) DEFAULT NULL COMMENT '市区町村',
  `mailaddress` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `tel` varchar(50) DEFAULT NULL COMMENT '電話番号',
  `tel_m` varchar(50) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL COMMENT 'ニックネーム',
  `password` varchar(255) DEFAULT NULL,
  `secret_key` text COMMENT '仮会員本登録用キー',
  `status` int(11) DEFAULT NULL COMMENT '状態(0：仮登録、1：本登録)',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_user_synergys`
--

INSERT INTO `m_user_synergys` (`synergyid`, `synergy_id`, `job_type`, `job_type_class`, `regist_number`, `regist_date`, `name`, `kana`, `birth`, `sex`, `zip`, `pref_code`, `address`, `mailaddress`, `email`, `tel`, `tel_m`, `nickname`, `password`, `secret_key`, `status`, `created`, `modified`) VALUES
(10, 10, 1, NULL, '10000', '2017-02-21', '山田太郎', 'ヤマダタロウ', '2017-02-21', 1, '4100312', '22', '沼津市原', 'amanuma@maebe.jp', 'amanuma@maebe.jp', '090-2000-3000', '090-2000-3000', 'test', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '2017-03-02 11:15:47', '2017-03-02 11:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `t_accept_infos`
--

CREATE TABLE `t_accept_infos` (
  `accept_info_id` bigint(20) NOT NULL COMMENT '申請ID',
  `type` tinyint(4) NOT NULL COMMENT '1：新規申請、2：継続申請',
  `hospital_id` varchar(45) NOT NULL COMMENT '病院ID',
  `apply_date` datetime NOT NULL COMMENT '申請日時',
  `change_date` datetime DEFAULT NULL COMMENT '処理日',
  `status` tinyint(4) NOT NULL COMMENT '1：入金待ち、2：入金完了、3：ユーザーキャンセル、4：管理者キャンセル、5：支払い期限切れ',
  `limit_day` date DEFAULT NULL COMMENT '申請の有効期限',
  `pre_period` date DEFAULT NULL COMMENT '前回の契約終了日',
  `period` date DEFAULT NULL COMMENT '今回の契約終了日',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_accept_infos`
--

INSERT INTO `t_accept_infos` (`accept_info_id`, `type`, `hospital_id`, `apply_date`, `change_date`, `status`, `limit_day`, `pre_period`, `period`, `created`, `modified`) VALUES
(42, 1, '2', '2017-02-13 20:26:19', NULL, 1, '2017-02-27', NULL, NULL, '2017-02-13 20:26:20', '2017-02-13 20:26:20'),
(43, 2, '1', '2017-02-13 20:31:32', NULL, 1, '2017-03-06', '2017-02-20', '2018-02-20', '2017-02-13 20:31:33', '2017-02-13 20:31:33'),
(44, 1, '8', '2017-03-11 15:07:30', '2017-03-13 10:44:46', 2, '2017-03-25', NULL, '2018-03-13', '2017-03-11 15:07:30', '2017-03-11 15:07:30'),
(45, 1, '8', '2017-03-13 15:07:49', NULL, 1, '2017-03-27', NULL, NULL, '2017-03-13 15:07:49', '2017-03-13 15:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `t_bank_account_lists`
--

CREATE TABLE `t_bank_account_lists` (
  `bank_account_list_id` int(11) NOT NULL,
  `hospital_id` bigint(20) NOT NULL COMMENT '医院ID',
  `bill_list_id` bigint(20) NOT NULL COMMENT '課金情報',
  `bank_name` text COMMENT '銀行名',
  `shiten_name` text COMMENT '支店名',
  `kouza_type` int(11) DEFAULT NULL COMMENT '口座種別（1：普通）',
  `kouza_no` varchar(128) DEFAULT NULL COMMENT '口座番号',
  `seikyu_price` int(11) NOT NULL COMMENT '請求金額',
  `seikyusho_id` bigint(20) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `limit_day` datetime DEFAULT NULL COMMENT '支払期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_bank_account_lists`
--

INSERT INTO `t_bank_account_lists` (`bank_account_list_id`, `hospital_id`, `bill_list_id`, `bank_name`, `shiten_name`, `kouza_type`, `kouza_no`, `seikyu_price`, `seikyusho_id`, `reg_date`, `limit_day`, `created`, `modified`) VALUES
(5, 2, 25, '三菱東京UFJ銀行', '沼津支店', 1, '012345678', 120000, NULL, '2017-02-13 20:26:19', '2017-02-27 23:59:59', '2017-02-13 20:26:20', '2017-02-13 20:26:20'),
(6, 1, 26, '三菱東京UFJ銀行', '沼津支店', 1, '012345678', 120000, NULL, '2017-02-13 20:31:32', '2017-03-06 23:59:59', '2017-02-13 20:31:33', '2017-02-13 20:31:33'),
(7, 8, 27, '三菱東京UFJ銀行', '沼津支店', 1, '012345678', 120000, NULL, '2017-03-11 15:07:30', '2017-03-25 23:59:59', '2017-03-11 15:07:30', '2017-03-11 15:07:30'),
(8, 8, 28, '三菱東京UFJ銀行', '沼津支店', 1, '012345678', 120000, NULL, '2017-03-13 15:07:49', '2017-03-27 23:59:59', '2017-03-13 15:07:50', '2017-03-13 15:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_bill_lists`
--

CREATE TABLE `t_bill_lists` (
  `bill_list_id` bigint(20) NOT NULL COMMENT '課金リストID',
  `hospital_id` bigint(20) NOT NULL COMMENT '病院ID',
  `accept_info_id` bigint(20) NOT NULL COMMENT '申請ID',
  `receipts_flag` tinyint(4) DEFAULT NULL COMMENT '入金フラグ(0：未入金、1：入金)',
  `deposit_date` date DEFAULT NULL COMMENT '入金日',
  `deposit_price` int(11) DEFAULT NULL COMMENT '入金金額',
  `status` tinyint(4) DEFAULT NULL COMMENT '状態（1：有効、0：無効）',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_bill_lists`
--

INSERT INTO `t_bill_lists` (`bill_list_id`, `hospital_id`, `accept_info_id`, `receipts_flag`, `deposit_date`, `deposit_price`, `status`, `created`, `modified`) VALUES
(25, 2, 42, 0, NULL, NULL, 1, '2017-02-13 20:26:20', '2017-02-13 20:26:20'),
(26, 1, 43, 0, NULL, NULL, 1, '2017-02-13 20:31:33', '2017-02-13 20:31:33'),
(27, 8, 44, 1, '2017-03-13', 120000, 0, '2017-03-11 15:07:30', '2017-03-11 15:07:30'),
(28, 8, 45, 0, NULL, NULL, 1, '2017-03-13 15:07:50', '2017-03-13 15:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_cost_lists`
--

CREATE TABLE `t_cost_lists` (
  `cost_list_id` bigint(20) NOT NULL,
  `bill_list_id` bigint(20) NOT NULL COMMENT '課金リストID',
  `item_name` text COMMENT '商品名',
  `price` int(11) DEFAULT NULL COMMENT '金額',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_cost_lists`
--

INSERT INTO `t_cost_lists` (`cost_list_id`, `bill_list_id`, `item_name`, `price`, `quantity`, `created`, `modified`) VALUES
(5, 25, '有料プラン', 10000, 12, '2017-02-13 20:26:20', '2017-02-13 20:26:20'),
(6, 26, '有料プラン', 10000, 12, '2017-02-13 20:31:33', '2017-02-13 20:31:33'),
(7, 27, '有料プラン', 10000, 12, '2017-03-11 15:07:30', '2017-03-11 15:07:30'),
(8, 28, '有料プラン', 10000, 12, '2017-03-13 15:07:50', '2017-03-13 15:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_inquiry_hospitals`
--

CREATE TABLE `t_inquiry_hospitals` (
  `inquiry_hospital_id` bigint(20) NOT NULL COMMENT 'ID',
  `hospital_id` bigint(20) NOT NULL COMMENT '医院ＩＤ',
  `subject` varchar(255) NOT NULL COMMENT '件名',
  `body` text NOT NULL COMMENT '本文',
  `ih_from` varchar(255) NOT NULL COMMENT 'fromメールアドレス',
  `ih_to` varchar(255) NOT NULL COMMENT 'toメールアドレス',
  `last_admin_id` bigint(20) DEFAULT NULL COMMENT '最終操作者',
  `last_reply` datetime DEFAULT NULL COMMENT '最終返信日',
  `already_read` tinyint(4) DEFAULT NULL COMMENT '既読状態(0：未読、1：既読)',
  `status` tinyint(4) DEFAULT NULL COMMENT '状態（0：未対応、1：対応中、2：対応済）',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_inquiry_hospitals`
--

INSERT INTO `t_inquiry_hospitals` (`inquiry_hospital_id`, `hospital_id`, `subject`, `body`, `ih_from`, `ih_to`, `last_admin_id`, `last_reply`, `already_read`, `status`, `created`, `modified`) VALUES
(1, 1, 'テストテストテスト', 'テスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-05 11:49:15', '2017-02-05 11:49:15'),
(2, 1, 'テストテストテスト', 'テスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-05 11:50:09', '2017-02-05 11:50:09'),
(3, 1, 'テストテストテスト', 'テスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-05 11:51:36', '2017-02-05 11:51:36'),
(4, 1, 'テストテストテスト', 'テスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-05 11:53:18', '2017-02-05 11:53:18'),
(5, 1, 'テストテストテスト', 'テスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-05 11:54:55', '2017-02-05 11:54:55'),
(6, 1, 'テストテストテスト', 'テストテストテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-07 11:24:28', '2017-02-07 11:24:28'),
(7, 1, 'テスト', 'テスト\r\nテスト\r\nテスト\r\nテスト\r\nテスト\r\nテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', NULL, NULL, 0, 0, '2017-02-07 14:35:58', '2017-02-07 14:35:58'),
(8, 2, 'テストテストテスト', 'テストテストテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', 3, NULL, 1, 2, '2017-02-13 20:21:34', '2017-03-11 14:08:35'),
(9, 8, 'テストテストテスト', 'テストテストテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', 2, '2017-03-13 11:04:00', 1, 2, '2017-03-13 11:00:34', '2017-03-13 11:03:43'),
(10, 3, 'テストテストテスト', 'テストテストテスト\r\nテストテストテスト', 'amanuma@maebe.jp', 'amanuma@maebe.jp', 2, '2017-03-26 15:55:40', 1, 2, '2017-03-26 15:51:36', '2017-03-26 15:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `t_inquiry_reply_hospitals`
--

CREATE TABLE `t_inquiry_reply_hospitals` (
  `inquiry_reply_hospital_id` bigint(20) NOT NULL COMMENT 'ID',
  `inquiry_hospital_id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL COMMENT '件名',
  `body` text NOT NULL COMMENT '内容',
  `from` varchar(255) NOT NULL COMMENT 'fromメールアドレス',
  `to` varchar(255) NOT NULL COMMENT 'toメールアドレス',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '操作者',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_inquiry_reply_hospitals`
--

INSERT INTO `t_inquiry_reply_hospitals` (`inquiry_reply_hospital_id`, `inquiry_hospital_id`, `subject`, `body`, `from`, `to`, `admin_id`, `created`, `modified`) VALUES
(1, 0, '折り返し', '折り返し', '', '', 2, '2017-03-13 11:04:00', '2017-03-13 11:04:00'),
(2, 10, 'お問い合わせに関するご回答について', 'テスト病院様\r\n\r\nMEDI-CONNECTへのお問い合わせありがとうございます。\r\n頂戴しましたお問い合わせについてご回答をお送りさせて頂きました。\r\n\r\nご回答\r\n-----------------------------------------------------------------------------\r\n\r\n\r\n【ご注意】\r\n　このメールは送信専用のメールアドレスからお送りしております。\r\n　このメールへの返信によるご質問、お問い合わせにはお答えしかねます。\r\n\r\n　なお、ご質問・お問い合わせがございましたら、マイページにて\r\n　ご案内をしております「お問い合わせフォーム」よりお願いいたします。\r\n\r\n========================\r\nMEDI-CONNECT\r\n　https://medi-connect.jp/\r\n\r\n企画・運営 株式会社\r\n　静岡県駿東郡清水町新宿823-1\r\n========================', '', '', 2, '2017-03-26 15:55:40', '2017-03-26 15:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `t_inquiry_reply_users`
--

CREATE TABLE `t_inquiry_reply_users` (
  `inquiry_reply_user_id` bigint(20) NOT NULL COMMENT 'ID',
  `inquiry_user_id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL COMMENT '件名',
  `body` text NOT NULL COMMENT '内容',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '操作者',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_inquiry_reply_users`
--

INSERT INTO `t_inquiry_reply_users` (`inquiry_reply_user_id`, `inquiry_user_id`, `subject`, `body`, `admin_id`, `created`, `modified`) VALUES
(1, 4, 'テスト', 'テスト', 2, '2017-03-19 18:14:02', '2017-03-19 18:14:02'),
(2, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:16:32', '2017-03-19 18:16:32'),
(3, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:17:01', '2017-03-19 18:17:01'),
(4, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:17:20', '2017-03-19 18:17:20'),
(5, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:17:38', '2017-03-19 18:17:38'),
(6, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:20:33', '2017-03-19 18:20:33'),
(7, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:20:48', '2017-03-19 18:20:48'),
(8, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:21:01', '2017-03-19 18:21:01'),
(9, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:22:23', '2017-03-19 18:22:23'),
(10, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:23:06', '2017-03-19 18:23:06'),
(11, 4, 'テストテストテスト', 'aaaaaaaaaaaaaaa', 2, '2017-03-19 18:23:53', '2017-03-19 18:23:53'),
(12, 4, 'テストテストテスト', 'aaaaaaaaa', 2, '2017-03-19 18:24:21', '2017-03-19 18:24:21'),
(13, 4, 'テストテストテスト', 'aaaaaaaaa', 2, '2017-03-19 18:25:57', '2017-03-19 18:25:57'),
(14, 4, 'テストテストテスト', 'aaaaaaaaa', 2, '2017-03-19 18:26:06', '2017-03-19 18:26:06'),
(15, 4, 'テストテストテスト', 'aaaaaaaaaaaa', 2, '2017-03-19 18:27:03', '2017-03-19 18:27:03'),
(16, 4, 'テスト', 'テスト', 2, '2017-03-19 18:29:30', '2017-03-19 18:29:30'),
(17, 5, 'お問い合わせに関するご回答について', '山田太郎様\r\n\r\nMEDI-CONNECTへのお問い合わせありがとうございます。\r\n頂戴しましたお問い合わせについてご回答をお送りさせて頂きました。\r\n\r\nご回答\r\n-----------------------------------------------------------------------------\r\n今しばらくお待ちいただけますでしょうか\r\n\r\n【ご注意】\r\n　このメールは送信専用のメールアドレスからお送りしております。\r\n　このメールへの返信によるご質問、お問い合わせにはお答えしかねます。\r\n\r\n　なお、ご質問・お問い合わせがございましたら、マイページにて\r\n　ご案内をしております「お問い合わせフォーム」よりお願いいたします。\r\n\r\n========================\r\nMEDI-CONNECT\r\n　http://192.168.56.101/medical/user/\r\n\r\n企画・運営 株式会社\r\n　静岡県駿東郡清水町新宿823-1\r\n========================', 2, '2017-03-20 11:40:50', '2017-03-20 11:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_inquiry_users`
--

CREATE TABLE `t_inquiry_users` (
  `inquiry_user_id` bigint(20) NOT NULL COMMENT 'ID',
  `user_id` bigint(20) NOT NULL COMMENT '医院ＩＤ',
  `subject` varchar(255) NOT NULL COMMENT '件名',
  `body` text NOT NULL COMMENT '本文',
  `last_admin_id` bigint(20) DEFAULT NULL COMMENT '最終操作者',
  `last_reply` datetime DEFAULT NULL COMMENT '最終返信日',
  `already_read` tinyint(4) DEFAULT NULL COMMENT '既読状態(0：未読、1：既読)',
  `status` tinyint(4) DEFAULT NULL COMMENT '状態（0：未対応、1：対応中、2：対応済）',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_inquiry_users`
--

INSERT INTO `t_inquiry_users` (`inquiry_user_id`, `user_id`, `subject`, `body`, `last_admin_id`, `last_reply`, `already_read`, `status`, `created`, `modified`) VALUES
(2, 1, 'テストテストテスト', 'aaaaaaaaa\r\naaaaaaaaaaaaa', NULL, NULL, 1, 0, '2017-03-04 14:27:08', '2017-03-21 18:09:50'),
(3, 1, 'テストテストテスト', 'aaaaaaaaa\r\naaaaaaaaaaaaa', NULL, NULL, 1, 0, '2017-03-04 14:28:48', '2017-03-20 15:27:35'),
(4, 12, 'テスト', 'テスト\r\nテスト', 2, '2017-03-19 18:29:30', 1, 0, '2017-03-19 18:00:26', '2017-03-19 18:29:30'),
(5, 12, '登録に関して', '承認待ち状態のままとなっていますが\r\nどうなっていますか。', 2, '2017-03-20 11:40:50', 1, 2, '2017-03-20 10:20:17', '2017-03-20 11:40:50'),
(6, 12, '名前テスト', '名前テスト', NULL, NULL, 1, 0, '2017-03-20 10:23:55', '2017-05-11 11:20:49'),
(7, 13, 'test', 'test', NULL, NULL, 0, 0, '2017-03-21 18:10:41', '2017-03-21 18:10:41'),
(8, 13, 'テストテストテスト', 'aaaaaaaaa', NULL, NULL, 0, 0, '2017-03-26 13:43:49', '2017-03-26 13:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `t_maintenances`
--

CREATE TABLE `t_maintenances` (
  `maintenance_id` bigint(20) NOT NULL COMMENT 'シーケンスID',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_maintenances`
--

INSERT INTO `t_maintenances` (`maintenance_id`, `created`, `modified`) VALUES
(3, '2017-05-11 11:19:30', '2017-05-11 11:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `t_notices`
--

CREATE TABLE `t_notices` (
  `notice_id` bigint(20) NOT NULL COMMENT 'シーケンスＩＤ',
  `contents_area_id` text NOT NULL,
  `notice_date` date NOT NULL COMMENT '公開日',
  `title` text NOT NULL COMMENT 'タイトル',
  `comment` text COMMENT 'コメント',
  `url` text COMMENT 'タイトル　URL',
  `link_method` int(11) DEFAULT NULL COMMENT '別ウインドウで開く（0：同一、1：別画面）',
  `view_flag` int(11) DEFAULT NULL,
  `modified` datetime NOT NULL COMMENT '更新日',
  `created` datetime NOT NULL COMMENT '作成日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_notices`
--

INSERT INTO `t_notices` (`notice_id`, `contents_area_id`, `notice_date`, `title`, `comment`, `url`, `link_method`, `view_flag`, `modified`, `created`) VALUES
(1, '1', '2017-02-01', 'スマホ対応中', '4月21日よりスマホ（モバイル）に対応していることがgoogle検索順位に影響を与える要素の一つに入ることとなりました。しかし、まだ当サイトは完全にスマホ対応しておりません（一部施行していますが、まだレイアウトが乱れているところがあります）。', NULL, NULL, 1, '2017-02-10 11:23:45', '2017-02-10 11:23:45'),
(2, '1', '2017-01-12', 'SSL', '「SSLって何？」という方がほとんどかと思います。簡単に言うと、サイトの情報をすべて暗号化して通信するというもので、フォームとかに使われています。という様に、httpの後ろに「s」が追加されていると、暗号化通信しているサイトとなります。TwitterやfacebookなどのSNSも個人情報を取り扱っているので、フルSSLですね。フルSSLにするに為には、ドメインごとにSSL証明書というものが必要になり、共有サーバーだと月々や年間で費用が発生します。\n共有サーバーのプランによっては、独自ドメインのSSLが出来なかったりするので、あくまでも沢山あるランキングシグナル１つなのでコスト的に割にあわないかもしれません。新しくサイトを作る場合は、フルSSLを考えてみてもいいと思います。', NULL, NULL, 1, '2017-02-10 11:30:24', '2017-02-10 11:30:24'),
(3, '1', '2017-01-12', 'テスト', 'テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト', NULL, NULL, 1, '2017-02-10 11:31:46', '2017-02-10 11:31:46'),
(4, '2', '2017-02-01', 'スマホ対応中', '4月21日よりスマホ（モバイル）に対応していることがgoogle検索順位に影響を与える要素の一つに入ることとなりました。しかし、まだ当サイトは完全にスマホ対応しておりません（一部施行していますが、まだレイアウトが乱れているところがあります）。', NULL, NULL, 1, '2017-02-10 11:23:45', '2017-02-10 11:23:45'),
(5, '2', '2017-01-12', 'SSL', '「SSLって何？」という方がほとんどかと思います。簡単に言うと、サイトの情報をすべて暗号化して通信するというもので、フォームとかに使われています。という様に、httpの後ろに「s」が追加されていると、暗号化通信しているサイトとなります。TwitterやfacebookなどのSNSも個人情報を取り扱っているので、フルSSLですね。フルSSLにするに為には、ドメインごとにSSL証明書というものが必要になり、共有サーバーだと月々や年間で費用が発生します。\n共有サーバーのプランによっては、独自ドメインのSSLが出来なかったりするので、あくまでも沢山あるランキングシグナル１つなのでコスト的に割にあわないかもしれません。新しくサイトを作る場合は、フルSSLを考えてみてもいいと思います。', NULL, NULL, 1, '2017-02-10 11:30:24', '2017-02-10 11:30:24'),
(6, '2', '2017-01-12', 'テスト', 'テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト\nテスト', NULL, NULL, 1, '2017-02-10 11:31:46', '2017-02-10 11:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `t_notice_hospitals`
--

CREATE TABLE `t_notice_hospitals` (
  `notice_hospitals` bigint(20) NOT NULL COMMENT 'シリアル',
  `notice_id` bigint(20) NOT NULL COMMENT 'お知らせID',
  `hospital_id` bigint(20) NOT NULL COMMENT '医院ID',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_notice_hospitals`
--

INSERT INTO `t_notice_hospitals` (`notice_hospitals`, `notice_id`, `hospital_id`, `created`, `modified`) VALUES
(1, 1, 1, '2017-02-10 20:32:10', '2017-02-10 20:32:10'),
(2, 1, 8, '2017-03-06 13:08:36', '2017-03-06 13:08:36'),
(3, 1, 2, '2017-04-07 12:26:35', '2017-04-07 12:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `t_notice_users`
--

CREATE TABLE `t_notice_users` (
  `notice_users` bigint(20) NOT NULL COMMENT 'シリアル',
  `notice_id` bigint(20) NOT NULL COMMENT 'お知らせID',
  `user_id` bigint(20) NOT NULL COMMENT '医院ID',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '登録日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_notice_users`
--

INSERT INTO `t_notice_users` (`notice_users`, `notice_id`, `user_id`, `created`, `modified`) VALUES
(1, 4, 1, '2017-02-27 13:50:32', '2017-02-27 13:50:32'),
(2, 5, 2, '2017-03-02 13:25:34', '2017-03-02 13:25:34'),
(3, 4, 2, '2017-03-02 13:28:46', '2017-03-02 13:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `t_recommend_infos`
--

CREATE TABLE `t_recommend_infos` (
  `recommend_info_id` bigint(20) NOT NULL COMMENT 'シーケンスＩＤ',
  `job_type` text,
  `sex` text,
  `age_to` int(11) DEFAULT NULL COMMENT '配信条件年齢上限',
  `age_from` int(11) DEFAULT NULL COMMENT '配信条件年齢下限',
  `pref_code` varchar(2) DEFAULT NULL,
  `regist_from` date DEFAULT NULL,
  `regist_to` date DEFAULT NULL,
  `recommend_info_date` date NOT NULL COMMENT '公開日',
  `title` text NOT NULL COMMENT 'タイトル',
  `comment` text COMMENT 'コメント',
  `url` text COMMENT 'タイトル　URL',
  `link_method` int(11) DEFAULT NULL COMMENT '別ウインドウで開く（0：同一、1：別画面）',
  `view_flag` int(11) DEFAULT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_recommend_infos`
--

INSERT INTO `t_recommend_infos` (`recommend_info_id`, `job_type`, `sex`, `age_to`, `age_from`, `pref_code`, `regist_from`, `regist_to`, `recommend_info_date`, `title`, `comment`, `url`, `link_method`, `view_flag`, `created`, `modified`) VALUES
(1, '1', '1', NULL, NULL, NULL, NULL, NULL, '2017-02-01', 'テスト', 'テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト', NULL, NULL, 1, '2017-03-02 14:54:25', '2017-03-02 14:54:25'),
(2, '1', '2', NULL, NULL, NULL, NULL, NULL, '2017-02-01', 'テスト', 'テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト', NULL, NULL, 1, '2017-03-02 14:54:36', '2017-03-02 14:54:36'),
(3, '1', '1', NULL, NULL, NULL, NULL, NULL, '2017-02-01', 'テスト', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ\nテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト', NULL, NULL, 1, '2017-03-02 14:58:32', '2017-03-02 14:58:32'),
(4, '1', '1', NULL, NULL, NULL, NULL, NULL, '2017-02-03', 'aaaaaaaaaaaa', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ\nテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト', NULL, NULL, 1, '2017-03-02 14:59:03', '2017-03-02 14:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `t_recommend_info_users`
--

CREATE TABLE `t_recommend_info_users` (
  `recommend_info_user` bigint(20) NOT NULL COMMENT 'シリアル',
  `recommend_info_id` bigint(20) NOT NULL COMMENT 'お知らせID',
  `user_id` bigint(20) NOT NULL COMMENT '医院ID',
  `modified` datetime NOT NULL COMMENT '登録日',
  `created` datetime NOT NULL COMMENT '作成日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_recommend_info_users`
--

INSERT INTO `t_recommend_info_users` (`recommend_info_user`, `recommend_info_id`, `user_id`, `modified`, `created`) VALUES
(1, 4, 1, '2017-03-02 15:19:22', '2017-03-02 15:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `t_seq_chat_serials`
--

CREATE TABLE `t_seq_chat_serials` (
  `seq_chat_serial_no` bigint(20) NOT NULL COMMENT 'チャットＩＤ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_seq_chat_serials`
--

INSERT INTO `t_seq_chat_serials` (`seq_chat_serial_no`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_hospitals`
--

CREATE TABLE `t_temp_hospitals` (
  `temp_hospital_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_temp_hospitals`
--

INSERT INTO `t_temp_hospitals` (`temp_hospital_id`, `email`, `hash`, `limit_date`, `created`, `modified`) VALUES
(1, 'moonone.91@gmail.com', 'b5bfd2f8a231534f022b8f45f8378fc6', '2017-04-12 14:42:54', '2017-04-11 14:42:54', '2017-04-11 14:42:54'),
(2, 'huy.tran@ntq-solution.com.vn', 'f77dab16703def9ccc920c09ec4cf042', '2017-04-15 12:57:57', '2017-04-14 12:57:57', '2017-04-14 12:57:57'),
(3, 'nguyet.do@ntq-solution.com.vn', 'edb9f80b6e720c334511d27106ddebe3', '2017-04-18 18:49:53', '2017-04-17 18:49:53', '2017-04-17 18:49:53'),
(4, 'moontwo.91@gmail.com', '88cc3636b95e3c73d3dda2f2da2fb363', '2017-04-19 16:33:08', '2017-04-18 16:33:08', '2017-04-18 16:33:08'),
(5, 'nguyet.it.dt@gmail.com', 'c30d960a026fe924b1da338e513889e9', '2017-04-20 13:11:54', '2017-04-19 13:11:54', '2017-04-19 13:11:54'),
(6, 'moonthree.91@gmail.com', 'c42c5b11f85eed44bfd9d8905565af04', '2017-04-22 18:54:52', '2017-04-21 18:54:52', '2017-04-21 18:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_hospitals_password`
--

CREATE TABLE `t_temp_hospitals_password` (
  `temp_hospitals_password` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `pass` varchar(50) NOT NULL COMMENT 'パスワード',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_temp_hospitals_password`
--

INSERT INTO `t_temp_hospitals_password` (`temp_hospitals_password`, `email`, `pass`, `hash`, `limit_date`, `created`, `modified`) VALUES
(1, 'amanuma@maebe.jp', 'e10adc3949ba59abbe56e057f20f883e', '63a018430bfdf3fe9a75c4c2dd2f8b04', '2017-02-22 17:23:44', '2017-02-21 17:23:44', '2017-02-21 17:23:44'),
(2, 'amanuma@maebe.jp', 'fbb6d429f643fc8616ccd023f3419e47', '50a03723c38e9457835cd124a3fecba5', '2017-02-22 17:38:34', '2017-02-21 17:38:34', '2017-02-21 17:38:34'),
(3, 'amanuma@maebe.jp', '63799b186bf02b7231eaedd69babc326', '3231ca5a36391cdf9065814260b79986', '2017-02-22 17:38:43', '2017-02-21 17:38:43', '2017-02-21 17:38:43'),
(4, 'amanuma@maebe.jp', '6e3c9a347940102716468d64b548930b', '14e209809a63328fd3052627df0c30e8', '2017-02-22 17:42:57', '2017-02-21 17:42:57', '2017-02-21 17:42:57'),
(5, 'amanuma@maebe.jp', '69c0db2b13b87d25d4249042adadbb00', 'd25dce6e15e71a6b6896964dad7b2f64', '2017-02-22 17:54:23', '2017-02-21 17:54:23', '2017-02-21 17:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_hospital_emails`
--

CREATE TABLE `t_temp_hospital_emails` (
  `temp_hospital_email_id` bigint(20) NOT NULL,
  `hospital_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT 'パスワード',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_users`
--

CREATE TABLE `t_temp_users` (
  `temp_user_id` bigint(20) NOT NULL,
  `job_type` int(11) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_temp_users`
--

INSERT INTO `t_temp_users` (`temp_user_id`, `job_type`, `email`, `hash`, `limit_date`, `created`, `modified`) VALUES
(1, 1, 'moonone.91@gmail.com', '77b401bd3c5fe465e5ab72f53937bd69', '2017-04-12 10:57:22', '2017-04-11 10:57:22', '2017-04-11 10:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_user_emails`
--

CREATE TABLE `t_temp_user_emails` (
  `temp_user_email_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT 'パスワード',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_user_passwords`
--

CREATE TABLE `t_temp_user_passwords` (
  `temp_hospitals_password_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `pass` varchar(50) NOT NULL COMMENT 'パスワード',
  `hash` varchar(255) NOT NULL COMMENT 'ハッシュ',
  `limit_date` datetime NOT NULL COMMENT '有効期限',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_temp_user_passwords`
--

INSERT INTO `t_temp_user_passwords` (`temp_hospitals_password_id`, `user_id`, `pass`, `hash`, `limit_date`, `created`, `modified`) VALUES
(1, 1, 'e10adc3949ba59abbe56e057f20f883e', 'asfsf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_user_synergy_synchronisms`
--

CREATE TABLE `t_temp_user_synergy_synchronisms` (
  `synergyid` bigint(20) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_user_denial_logs`
--

CREATE TABLE `t_user_denial_logs` (
  `user_denial_log_id` bigint(20) NOT NULL COMMENT 'シリアル',
  `job_type` int(11) NOT NULL COMMENT '職種（1：医師、2：看護師、3：薬剤師）',
  `license_number` text COMMENT '登録番号',
  `license_date` date DEFAULT NULL COMMENT '登録日',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `sex` int(11) DEFAULT NULL COMMENT '性別',
  `denial_date` date NOT NULL COMMENT '否認日',
  `memo` text COMMENT 'メモ（否認理由）',
  `application` int(11) DEFAULT NULL COMMENT '申請判断',
  `admin_id` bigint(20) DEFAULT NULL,
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_user_denial_logs`
--

INSERT INTO `t_user_denial_logs` (`user_denial_log_id`, `job_type`, `license_number`, `license_date`, `birthday`, `sex`, `denial_date`, `memo`, `application`, `admin_id`, `created`, `modified`) VALUES
(1, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', '', 1, 2, '2017-03-17 17:14:43', '2017-03-17 17:14:43'),
(2, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'あああああああああ\r\nあああああああああああ', 2, 2, '2017-03-17 19:40:10', '2017-03-17 19:40:10'),
(3, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'pppppppp', 2, 2, '2017-03-17 20:23:51', '2017-03-17 20:23:51'),
(4, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'pppppppppppp', 2, 2, '2017-03-17 20:26:29', '2017-03-17 20:26:29'),
(5, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'aaaaaaaaaaaa', 2, 2, '2017-03-17 20:28:23', '2017-03-17 20:28:23'),
(6, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'aaaaaaa', 2, 2, '2017-03-17 20:30:06', '2017-03-17 20:30:06'),
(7, 1, 'aaaaaaaaaaaaa', '1990-01-01', '1970-01-01', 1, '2017-03-17', 'aaaaaaa', 2, 2, '2017-03-17 20:33:30', '2017-03-17 20:33:30'),
(8, 1, 'T100', '1990-01-11', '1970-01-01', 1, '2017-03-19', '不正の為\r\n一旦削除', 3, 2, '2017-03-19 12:48:24', '2017-03-19 12:48:24'),
(9, 1, 'T100', '1990-01-11', '1970-01-01', 1, '2017-03-19', 'あああああああ\r\nあああああああ', 3, 2, '2017-03-19 12:49:47', '2017-03-19 12:49:47'),
(10, 1, 'T100', '1990-01-11', '1970-01-01', 1, '2017-03-19', '削除', 3, 2, '2017-03-19 13:00:42', '2017-03-19 13:00:42'),
(11, 1, 'T100', '1990-01-11', '1970-01-01', 1, '2017-03-19', '削除', 3, 2, '2017-03-19 13:34:13', '2017-03-19 13:34:13'),
(12, 1, 'T100', '1990-01-11', '1970-01-01', 1, '2017-03-19', '却下', 2, 2, '2017-03-19 16:51:35', '2017-03-19 16:51:35'),
(13, 1, 'T10011111111', '1990-01-19', '1970-01-01', 1, '2017-03-19', 'aaaaaaaaa', 2, 2, '2017-03-19 17:29:50', '2017-03-19 17:29:50'),
(14, 2, 'T10011111111', '1990-01-19', '1970-01-01', 1, '2017-03-19', 'aaaaaaaaa', 2, 2, '2017-03-19 17:34:50', '2017-03-19 17:34:50'),
(15, 3, 'T10011111111', '1990-01-19', '1970-01-01', 1, '2017-03-20', 'あああああああああああ\r\nあああああああああああ', 2, 2, '2017-03-20 12:25:53', '2017-03-20 12:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `t_withdrawal_logs`
--

CREATE TABLE `t_withdrawal_logs` (
  `withdrawal_log_id` bigint(20) NOT NULL,
  `name` text COMMENT '氏名',
  `kana` text COMMENT '氏名カナ',
  `regist_number` text COMMENT '登録番号',
  `sex` int(11) DEFAULT NULL COMMENT '性別',
  `comment` text COMMENT '退会理由',
  `withdrawal_date` datetime DEFAULT NULL COMMENT '退会日',
  `created` datetime NOT NULL COMMENT '作成日',
  `modified` datetime NOT NULL COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admins`
--
ALTER TABLE `m_admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `m_closed_announcements`
--
ALTER TABLE `m_closed_announcements`
  ADD PRIMARY KEY (`contents_area_id`);

--
-- Indexes for table `m_departments`
--
ALTER TABLE `m_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `m_hospitals`
--
ALTER TABLE `m_hospitals`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `m_hospital_attractions`
--
ALTER TABLE `m_hospital_attractions`
  ADD PRIMARY KEY (`hospital_attraction_id`);

--
-- Indexes for table `m_hospital_departments`
--
ALTER TABLE `m_hospital_departments`
  ADD PRIMARY KEY (`hospital_profile_id`,`department_id`);

--
-- Indexes for table `m_hospital_imgs`
--
ALTER TABLE `m_hospital_imgs`
  ADD PRIMARY KEY (`hospital_img_id`),
  ADD UNIQUE KEY `hospital_id_pos_UNIQUE` (`hospital_id`,`pos`);

--
-- Indexes for table `m_hospital_job_offers`
--
ALTER TABLE `m_hospital_job_offers`
  ADD PRIMARY KEY (`hospital_job_offer_id`);

--
-- Indexes for table `m_hospital_profiles`
--
ALTER TABLE `m_hospital_profiles`
  ADD PRIMARY KEY (`hospital_profile_id`),
  ADD UNIQUE KEY `hospital_id_UNIQUE` (`hospital_id`);

--
-- Indexes for table `m_hospital_staffs`
--
ALTER TABLE `m_hospital_staffs`
  ADD PRIMARY KEY (`hospital_staff_id`);

--
-- Indexes for table `m_mail_templates`
--
ALTER TABLE `m_mail_templates`
  ADD PRIMARY KEY (`mail_template_id`);

--
-- Indexes for table `m_period_mails`
--
ALTER TABLE `m_period_mails`
  ADD PRIMARY KEY (`period_mail_id`);

--
-- Indexes for table `m_users`
--
ALTER TABLE `m_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `m_user_profiles`
--
ALTER TABLE `m_user_profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `m_user_synergys`
--
ALTER TABLE `m_user_synergys`
  ADD PRIMARY KEY (`synergy_id`);

--
-- Indexes for table `t_accept_infos`
--
ALTER TABLE `t_accept_infos`
  ADD PRIMARY KEY (`accept_info_id`);

--
-- Indexes for table `t_bank_account_lists`
--
ALTER TABLE `t_bank_account_lists`
  ADD PRIMARY KEY (`bank_account_list_id`);

--
-- Indexes for table `t_bill_lists`
--
ALTER TABLE `t_bill_lists`
  ADD PRIMARY KEY (`bill_list_id`);

--
-- Indexes for table `t_cost_lists`
--
ALTER TABLE `t_cost_lists`
  ADD PRIMARY KEY (`cost_list_id`);

--
-- Indexes for table `t_inquiry_hospitals`
--
ALTER TABLE `t_inquiry_hospitals`
  ADD PRIMARY KEY (`inquiry_hospital_id`);

--
-- Indexes for table `t_inquiry_reply_hospitals`
--
ALTER TABLE `t_inquiry_reply_hospitals`
  ADD PRIMARY KEY (`inquiry_reply_hospital_id`);

--
-- Indexes for table `t_inquiry_reply_users`
--
ALTER TABLE `t_inquiry_reply_users`
  ADD PRIMARY KEY (`inquiry_reply_user_id`);

--
-- Indexes for table `t_inquiry_users`
--
ALTER TABLE `t_inquiry_users`
  ADD PRIMARY KEY (`inquiry_user_id`);

--
-- Indexes for table `t_maintenances`
--
ALTER TABLE `t_maintenances`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `t_notices`
--
ALTER TABLE `t_notices`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `t_notice_hospitals`
--
ALTER TABLE `t_notice_hospitals`
  ADD PRIMARY KEY (`notice_hospitals`);

--
-- Indexes for table `t_notice_users`
--
ALTER TABLE `t_notice_users`
  ADD PRIMARY KEY (`notice_users`);

--
-- Indexes for table `t_recommend_infos`
--
ALTER TABLE `t_recommend_infos`
  ADD PRIMARY KEY (`recommend_info_id`);

--
-- Indexes for table `t_recommend_info_users`
--
ALTER TABLE `t_recommend_info_users`
  ADD PRIMARY KEY (`recommend_info_user`);

--
-- Indexes for table `t_seq_chat_serials`
--
ALTER TABLE `t_seq_chat_serials`
  ADD PRIMARY KEY (`seq_chat_serial_no`);

--
-- Indexes for table `t_temp_hospitals`
--
ALTER TABLE `t_temp_hospitals`
  ADD PRIMARY KEY (`temp_hospital_id`);

--
-- Indexes for table `t_temp_hospitals_password`
--
ALTER TABLE `t_temp_hospitals_password`
  ADD PRIMARY KEY (`temp_hospitals_password`);

--
-- Indexes for table `t_temp_hospital_emails`
--
ALTER TABLE `t_temp_hospital_emails`
  ADD PRIMARY KEY (`temp_hospital_email_id`);

--
-- Indexes for table `t_temp_users`
--
ALTER TABLE `t_temp_users`
  ADD PRIMARY KEY (`temp_user_id`);

--
-- Indexes for table `t_temp_user_emails`
--
ALTER TABLE `t_temp_user_emails`
  ADD PRIMARY KEY (`temp_user_email_id`);

--
-- Indexes for table `t_temp_user_passwords`
--
ALTER TABLE `t_temp_user_passwords`
  ADD PRIMARY KEY (`temp_hospitals_password_id`);

--
-- Indexes for table `t_temp_user_synergy_synchronisms`
--
ALTER TABLE `t_temp_user_synergy_synchronisms`
  ADD PRIMARY KEY (`synergyid`);

--
-- Indexes for table `t_user_denial_logs`
--
ALTER TABLE `t_user_denial_logs`
  ADD PRIMARY KEY (`user_denial_log_id`);

--
-- Indexes for table `t_withdrawal_logs`
--
ALTER TABLE `t_withdrawal_logs`
  ADD PRIMARY KEY (`withdrawal_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admins`
--
ALTER TABLE `m_admins`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_departments`
--
ALTER TABLE `m_departments`
  MODIFY `department_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `m_hospitals`
--
ALTER TABLE `m_hospitals`
  MODIFY `hospital_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '病院ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_hospital_attractions`
--
ALTER TABLE `m_hospital_attractions`
  MODIFY `hospital_attraction_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_hospital_imgs`
--
ALTER TABLE `m_hospital_imgs`
  MODIFY `hospital_img_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスID', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_hospital_job_offers`
--
ALTER TABLE `m_hospital_job_offers`
  MODIFY `hospital_job_offer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_hospital_profiles`
--
ALTER TABLE `m_hospital_profiles`
  MODIFY `hospital_profile_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_hospital_staffs`
--
ALTER TABLE `m_hospital_staffs`
  MODIFY `hospital_staff_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_mail_templates`
--
ALTER TABLE `m_mail_templates`
  MODIFY `mail_template_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_period_mails`
--
ALTER TABLE `m_period_mails`
  MODIFY `period_mail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル';
--
-- AUTO_INCREMENT for table `m_users`
--
ALTER TABLE `m_users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `m_user_profiles`
--
ALTER TABLE `m_user_profiles`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスＩＤ';
--
-- AUTO_INCREMENT for table `m_user_synergys`
--
ALTER TABLE `m_user_synergys`
  MODIFY `synergy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ユーザーＩＤ', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `t_accept_infos`
--
ALTER TABLE `t_accept_infos`
  MODIFY `accept_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '申請ID', AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `t_bank_account_lists`
--
ALTER TABLE `t_bank_account_lists`
  MODIFY `bank_account_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_bill_lists`
--
ALTER TABLE `t_bill_lists`
  MODIFY `bill_list_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '課金リストID', AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `t_cost_lists`
--
ALTER TABLE `t_cost_lists`
  MODIFY `cost_list_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_inquiry_hospitals`
--
ALTER TABLE `t_inquiry_hospitals`
  MODIFY `inquiry_hospital_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `t_inquiry_reply_hospitals`
--
ALTER TABLE `t_inquiry_reply_hospitals`
  MODIFY `inquiry_reply_hospital_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_inquiry_reply_users`
--
ALTER TABLE `t_inquiry_reply_users`
  MODIFY `inquiry_reply_user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `t_inquiry_users`
--
ALTER TABLE `t_inquiry_users`
  MODIFY `inquiry_user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_maintenances`
--
ALTER TABLE `t_maintenances`
  MODIFY `maintenance_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_notices`
--
ALTER TABLE `t_notices`
  MODIFY `notice_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスＩＤ', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_notice_hospitals`
--
ALTER TABLE `t_notice_hospitals`
  MODIFY `notice_hospitals` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_notice_users`
--
ALTER TABLE `t_notice_users`
  MODIFY `notice_users` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_recommend_infos`
--
ALTER TABLE `t_recommend_infos`
  MODIFY `recommend_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シーケンスＩＤ', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_recommend_info_users`
--
ALTER TABLE `t_recommend_info_users`
  MODIFY `recommend_info_user` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_seq_chat_serials`
--
ALTER TABLE `t_seq_chat_serials`
  MODIFY `seq_chat_serial_no` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'チャットＩＤ', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `t_temp_hospitals`
--
ALTER TABLE `t_temp_hospitals`
  MODIFY `temp_hospital_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_temp_hospitals_password`
--
ALTER TABLE `t_temp_hospitals_password`
  MODIFY `temp_hospitals_password` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_temp_hospital_emails`
--
ALTER TABLE `t_temp_hospital_emails`
  MODIFY `temp_hospital_email_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_temp_users`
--
ALTER TABLE `t_temp_users`
  MODIFY `temp_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_temp_user_emails`
--
ALTER TABLE `t_temp_user_emails`
  MODIFY `temp_user_email_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_temp_user_passwords`
--
ALTER TABLE `t_temp_user_passwords`
  MODIFY `temp_hospitals_password_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_user_denial_logs`
--
ALTER TABLE `t_user_denial_logs`
  MODIFY `user_denial_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'シリアル', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `t_withdrawal_logs`
--
ALTER TABLE `t_withdrawal_logs`
  MODIFY `withdrawal_log_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
