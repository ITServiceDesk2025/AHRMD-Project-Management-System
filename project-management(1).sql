-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2025 at 02:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deletion_requests`
--

CREATE TABLE `deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `requester_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `decline_reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `development_details`
--

CREATE TABLE `development_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `subphase_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Not started',
  `reason` varchar(255) DEFAULT NULL,
  `budget_activity` decimal(15,2) DEFAULT NULL,
  `payment_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Unpaid',
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `development_details`
--

INSERT INTO `development_details` (`id`, `project_id`, `subphase_id`, `title`, `created_at`, `updated_at`, `status`, `reason`, `budget_activity`, `payment_status`, `payment_date`) VALUES
(114, 4, 12, 'Reinforce the recruitment transparency, confidentiality, equity and fairness through usage of PWC firm and adoption of best international practice', '2025-07-02 20:29:00', '2025-07-02 20:29:00', 'Not started', NULL, NULL, 'Unpaid', NULL),
(116, 5, 12, 'Create the 3rd social barometer survey', '2025-07-02 20:41:33', '2025-07-02 20:41:33', 'Not started', NULL, NULL, 'Unpaid', NULL),
(117, 5, 12, 'Share the survey with staff', '2025-07-02 20:41:33', '2025-07-02 20:41:33', 'Not started', NULL, NULL, 'Unpaid', NULL),
(118, 5, 12, 'Analyse results of the survey', '2025-07-02 20:41:33', '2025-07-02 20:41:33', 'Not started', NULL, NULL, 'Unpaid', NULL),
(119, 5, 12, 'Develop a document on the social barometer including the statistics', '2025-07-02 20:41:33', '2025-07-02 20:41:33', 'Not started', NULL, NULL, 'Unpaid', NULL),
(120, 6, 12, 'AHRM GATE (SharePoint)', '2025-07-02 20:45:28', '2025-07-03 09:12:50', 'Cancelled', 'No more needed', NULL, 'Unpaid', NULL),
(121, 7, 12, 'Develop Manuals and SOP for Administrative Services and HR Management', '2025-07-02 20:49:19', '2025-07-02 20:49:19', 'Not started', NULL, NULL, 'Unpaid', NULL),
(122, 9, 12, 'Offer training on project management and interpersonal skills', '2025-07-02 20:58:00', '2025-07-02 20:58:00', 'Not started', NULL, NULL, 'Unpaid', NULL),
(123, 9, 12, 'Establishment of Mandatory training (SAP, CBI, Cybersecurity, HR Policies…)', '2025-07-02 20:58:00', '2025-07-02 20:58:00', 'Not started', NULL, NULL, 'Unpaid', NULL),
(124, 9, 12, 'Develop comprehensive orientation and onboarding programs using interactive and immersive technologies (Online onboarding and Orientation plate-form)', '2025-07-02 20:58:00', '2025-07-02 20:58:00', 'Not started', NULL, NULL, 'Unpaid', NULL),
(125, 10, 12, 'Reinforce collaborative platform', '2025-07-02 21:01:57', '2025-07-02 21:01:57', 'Not started', NULL, NULL, 'Unpaid', NULL),
(126, 10, 12, 'Organize monthly workshops and seminars on relevant topics (international trade, African Trade, NTB…)', '2025-07-02 21:01:57', '2025-07-02 21:01:57', 'Not started', NULL, NULL, 'Unpaid', NULL),
(127, 11, 12, 'Reinforce collaborative platform', '2025-07-02 21:01:58', '2025-07-02 21:01:58', 'Not started', NULL, NULL, 'Unpaid', NULL),
(128, 11, 12, 'Organize monthly workshops and seminars on relevant topics (international trade, African Trade, NTB…)', '2025-07-02 21:01:58', '2025-07-02 21:01:58', 'Not started', NULL, NULL, 'Unpaid', NULL),
(129, 12, 12, 'Create online learning plate-form with specialized courses and certifications', '2025-07-02 21:06:53', '2025-07-02 21:06:53', 'Not started', NULL, NULL, 'Unpaid', NULL),
(130, 12, 12, 'Mentoring and Learning and Development program', '2025-07-02 21:06:53', '2025-07-02 21:06:53', 'Not started', NULL, NULL, 'Unpaid', NULL),
(131, 13, 12, 'AHRMD Tips through anime', '2025-07-02 21:11:07', '2025-07-02 21:11:07', 'Not started', NULL, NULL, 'Unpaid', NULL),
(132, 13, 12, 'HRM Communication and feedback tools', '2025-07-02 21:11:07', '2025-07-02 21:11:07', 'Not started', NULL, NULL, 'Unpaid', NULL),
(133, 13, 12, 'E-Recruitment fair', '2025-07-02 21:11:07', '2025-07-02 21:11:07', 'Not started', NULL, NULL, 'Unpaid', NULL),
(134, 14, 12, 'Human Resources Services dashboard', '2025-07-02 21:13:33', '2025-07-02 21:13:33', 'Not started', NULL, NULL, 'Unpaid', NULL),
(135, 15, 12, 'HRMIS (People Hum)', '2025-07-02 21:17:25', '2025-07-02 21:17:25', 'Not started', NULL, NULL, 'Unpaid', NULL),
(136, 15, 12, 'IA in recruitment', '2025-07-02 21:17:25', '2025-07-02 21:17:25', 'Not started', NULL, NULL, 'Unpaid', NULL),
(137, 15, 12, 'Onboarding and offboarding modules in MBRS and trainings', '2025-07-02 21:17:25', '2025-07-02 21:17:25', 'Not started', NULL, NULL, 'Unpaid', NULL),
(138, 16, 12, 'No staff evaluation system', '2025-07-02 21:20:24', '2025-07-02 21:20:24', 'Not started', NULL, NULL, 'Unpaid', NULL),
(139, 16, 12, '360-degree performance management in place', '2025-07-02 21:20:24', '2025-07-02 21:20:24', 'Not started', NULL, NULL, 'Unpaid', NULL),
(140, 17, 12, 'Retention and reward programs', '2025-07-02 21:24:11', '2025-07-02 21:24:11', 'Not started', NULL, NULL, 'Unpaid', NULL),
(141, 17, 12, 'Develop workplace wellness programs', '2025-07-02 21:24:11', '2025-07-02 21:24:11', 'Not started', NULL, NULL, 'Unpaid', NULL),
(142, 17, 12, 'Establish Recognition and reward Programs for performances', '2025-07-02 21:24:11', '2025-07-02 21:24:11', 'Not started', NULL, NULL, 'Unpaid', NULL),
(143, 17, 12, 'Mandela Day, giving back to the community', '2025-07-02 21:24:11', '2025-07-02 21:24:11', 'Not started', NULL, NULL, 'Unpaid', NULL),
(147, 19, 12, 'Administrative services dashboard', '2025-07-02 21:38:02', '2025-07-02 22:12:15', 'In progress', NULL, NULL, 'Unpaid', NULL),
(148, 20, 12, 'Access control and monitoring', '2025-07-02 21:40:26', '2025-07-02 21:40:26', 'Not started', NULL, NULL, 'Unpaid', NULL),
(149, 21, 12, 'Implementation of DRP/BCP', '2025-07-02 21:42:40', '2025-07-02 21:42:40', 'Not started', NULL, NULL, 'Unpaid', NULL),
(150, 22, 12, 'Reinforcement of cybersecurity with modern Apps', '2025-07-02 21:46:32', '2025-07-02 21:46:32', 'Not started', NULL, NULL, 'Unpaid', NULL),
(151, 22, 12, 'Additional desktop and laptops for the Secretariat', '2025-07-02 21:46:32', '2025-07-02 21:46:32', 'Not started', NULL, NULL, 'Unpaid', NULL),
(152, 22, 12, 'IT equipment and software', '2025-07-02 21:46:32', '2025-07-02 21:46:32', 'Not started', NULL, NULL, 'Unpaid', NULL),
(153, 22, 12, 'Hire IT firms to technical study on the IT Smart Campus', '2025-07-02 21:46:32', '2025-07-02 21:46:32', 'Not started', NULL, NULL, 'Unpaid', NULL),
(154, 22, 12, 'Hire IT firm for the IT Smart Campus set-up', '2025-07-02 21:46:32', '2025-07-02 21:46:32', 'Not started', NULL, NULL, 'Unpaid', NULL),
(155, 23, 12, 'Implement new collaboration open sources tools', '2025-07-02 21:49:27', '2025-07-02 21:49:27', 'Not started', NULL, NULL, 'Unpaid', NULL),
(156, 23, 12, 'Reinforce the usage of current collaboration tools (Teams, Jira…)', '2025-07-02 21:49:27', '2025-07-02 21:49:27', 'Not started', NULL, NULL, 'Unpaid', NULL),
(157, 23, 12, 'Ms Planner', '2025-07-02 21:49:27', '2025-07-02 21:49:27', 'Not started', NULL, NULL, 'Unpaid', NULL),
(158, 23, 12, 'Information and collaboration workshops', '2025-07-02 21:49:27', '2025-07-02 21:49:27', 'Not started', NULL, NULL, 'Unpaid', NULL),
(161, 25, 12, 'Annual AHRMD Report', '2025-07-02 21:53:54', '2025-07-02 21:53:54', 'Not started', NULL, NULL, 'Unpaid', NULL),
(162, 26, 12, 'Asset Management Apps and equipment', '2025-07-02 21:56:52', '2025-07-02 21:56:52', 'Not started', NULL, NULL, 'Unpaid', NULL),
(163, 26, 12, 'Additional Office space for the Secretariat', '2025-07-02 21:56:52', '2025-07-02 21:56:52', 'Not started', NULL, NULL, 'Unpaid', NULL),
(164, 26, 12, 'New HQ and the AfCFTA Residence', '2025-07-02 21:56:52', '2025-07-02 21:56:52', 'Not started', NULL, NULL, 'Unpaid', NULL),
(165, 26, 12, 'MM Operationalized', '2025-07-02 21:56:52', '2025-07-02 21:56:52', 'Not started', NULL, NULL, 'Unpaid', NULL),
(166, 27, 12, 'Implement more Framework contract', '2025-07-02 21:59:47', '2025-07-02 21:59:47', 'Not started', NULL, NULL, 'Unpaid', NULL),
(167, 27, 12, 'Implement the UEP (Users Executed Procurement)', '2025-07-02 21:59:47', '2025-07-02 21:59:47', 'Not started', NULL, NULL, 'Unpaid', NULL),
(168, 27, 12, 'Develop pre-qualified vendors register', '2025-07-02 21:59:47', '2025-07-02 21:59:47', 'Not started', NULL, NULL, 'Unpaid', NULL),
(169, 27, 12, 'Set-up a procurement complaint email or hotline', '2025-07-02 21:59:47', '2025-07-02 21:59:47', 'Not started', NULL, NULL, 'Unpaid', NULL),
(170, 28, 12, 'Reinforcement of the usage of SAP Procurement modules', '2025-07-02 22:03:06', '2025-07-02 22:03:06', 'Not started', NULL, NULL, 'Unpaid', NULL),
(171, 28, 12, 'Implementation of SAP Open text', '2025-07-02 22:03:06', '2025-07-02 22:03:06', 'Not started', NULL, NULL, 'Unpaid', NULL),
(172, 29, 12, 'Implementation of SAP Open text', '2025-07-02 22:06:44', '2025-07-02 22:06:44', 'Not started', NULL, NULL, 'Unpaid', NULL),
(173, 29, 12, 'Operationalize a full medical and travel insurance', '2025-07-02 22:06:44', '2025-07-02 22:06:44', 'Not started', NULL, NULL, 'Unpaid', NULL),
(174, 30, 12, 'Note Conceptuelle', '2025-07-03 09:37:36', '2025-07-03 09:42:40', 'Completed', NULL, NULL, 'Unpaid', NULL),
(175, 30, 12, 'TOR', '2025-07-03 09:37:36', '2025-07-03 09:42:30', 'Completed', NULL, NULL, 'Unpaid', NULL),
(176, 30, 12, 'Development 1', '2025-07-03 09:37:36', '2025-07-03 09:43:11', 'Completed', NULL, NULL, 'Unpaid', NULL),
(177, 30, 12, 'Validation 1', '2025-07-03 09:37:36', '2025-07-03 09:43:23', 'Completed', NULL, NULL, 'Unpaid', NULL),
(178, 30, 12, 'Development 2', '2025-07-03 09:37:36', '2025-07-03 09:37:36', 'Not started', NULL, NULL, 'Unpaid', NULL),
(179, 30, 12, 'Validation 2', '2025-07-03 09:37:36', '2025-07-03 09:37:36', 'Not started', NULL, NULL, 'Unpaid', NULL),
(180, 30, 12, 'Pilot phase', '2025-07-03 09:37:36', '2025-07-03 09:37:36', 'Not started', NULL, NULL, 'Unpaid', NULL),
(220, 29, 12, 'Test', '2025-08-22 17:10:58', '2025-08-22 17:11:22', 'Not started', NULL, 1000.00, 'Paid', '2025-08-22'),
(229, 31, 12, 'AfCFTA Registry SharePoint', '2025-09-18 13:10:18', '2025-09-23 10:32:43', 'Completed', NULL, NULL, 'Unpaid', NULL),
(230, 31, 12, 'Digitalization campaign', '2025-09-18 13:10:18', '2025-09-23 10:32:53', 'Completed', NULL, NULL, 'Unpaid', NULL),
(231, 31, 12, 'Digitalization Campaign 2', '2025-09-23 10:16:50', '2025-09-23 10:33:08', 'Completed', NULL, NULL, 'Unpaid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_06_13_162613_create_units_table', 1),
(4, '2025_06_13_162805_create_roles_table', 1),
(5, '2025_06_13_163654_create_users_table', 1),
(6, '2025_06_16_111731_create_sessions_table', 2),
(7, '2025_06_19_165845_create_partners_table', 3),
(8, '2025_06_19_172606_create_phases_table', 4),
(9, '2025_06_19_173849_create_subphases_table', 4),
(10, '2025_06_23_151026_add_percentage_to_subphases_table', 5),
(11, '2025_06_23_152924_create_projects_table', 6),
(12, '2025_06_23_153131_create_project_phase_table', 6),
(13, '2025_06_23_153142_create_project_subphase_table', 6),
(14, '2025_06_23_153207_create_development_details_table', 6),
(15, '2025_06_23_154029_create_projects_table', 7),
(16, '2025_06_23_154132_create_project_phase_table', 7),
(17, '2025_06_23_154155_create_project_subphase_table', 7),
(18, '2025_06_23_154224_create_development_details_table', 7),
(19, '2025_06_23_160326_add_procurement_type_to_project_subphase_table', 8),
(20, '2025_06_23_161131_add_budget_to_projects_table', 9),
(21, '2025_06_23_163653_add_type_to_subphases_table', 10),
(22, '2025_06_24_085918_create_projects_table', 11),
(23, '2025_06_24_100140_add_default_percentage_to_subphases', 12),
(24, '2025_06_26_124725_add_status_and_reason_to_project_subphase', 13),
(25, '2025_06_26_125439_add_status_to_project_phase_table', 14),
(26, '2025_06_26_155701_add_percentage_to_project_phase_table', 15),
(27, '2025_06_26_172325_add_status_to_development_details_table', 16),
(28, '2025_06_27_094607_add_percentage_to_projects_table', 17),
(29, '2025_06_27_175005_add_reason_to_development_details_table', 18),
(30, '2025_07_01_213819_add_procurement_type_to_projects_table', 19),
(31, '2025_07_01_214150_add_procurement_type_to_projects_table', 19),
(32, '2025_07_02_120653_add_position_to_subphases_table', 19),
(33, '2025_07_07_101351_create_project_deletion_requests_table', 20),
(34, '2025_07_07_160347_add_previous_status_to_projects_table', 21),
(35, '2025_07_09_172347_add_budget_change_reason_to_projects_table', 22),
(36, '2025_07_10_091723_add_column_previous_budget_to_projects_table', 23),
(37, '2025_07_10_161816_add_created_by_to_projects_table', 24),
(38, '2025_07_11_103626_add_budget_code_to_projects_table', 25),
(39, '2025_07_11_104718_add_budget_activity_to_development_details_table', 26),
(40, '2025_07_11_112941_add_award_person_name_to_project_subphase_table', 27),
(41, '2025_07_11_120302_add_payment_fields_to_development_details_table', 28),
(42, '2025_07_11_164114_update_project_status_enum_add_closed', 29),
(43, '2025_07_14_123154_add_closed_fields_to_projects_table', 30),
(44, '2025_07_15_090649_add_normalized_percentage_to_project_subphase_table', 31),
(45, '2025_07_28_085639_create_project_user_assistants_table', 32),
(46, '2025_07_28_085732_create_project_user_members_table', 33),
(47, '2025_08_11_090337_add_closed_comment_fields_to_projects_table', 34),
(48, '2025_08_12_095852_create_password_reset_tokens_table', 35),
(49, '2025_08_12_101101_add_remember_token_to_users_table', 36),
(50, '2025_08_13_102321_create_tasks_table', 37),
(51, '2025_08_13_180155_create_tasks_table', 38),
(52, '2025_08_18_115849_create_task_comments_table', 39),
(53, '2025_08_21_105434_add_columns_to_tasks_table', 40),
(54, '2025_08_21_105808_create_task_activities_table', 41),
(55, '2025_08_22_132955_add_archived_to_tasks_table', 42),
(56, '2025_08_22_133204_add_delete_requested_to_tasks_table', 43),
(57, '2025_08_25_101316_add_created_by_to_tasks_table', 44),
(58, '2025_08_25_101710_add_foreign_key_created_by_to_tasks', 45),
(59, '2025_08_25_111653_create_task_archive_requests_table', 46),
(60, '2025_08_25_122928_add_decline_reason_to_task_archive_requests_table', 47),
(61, '2025_08_25_145318_add_is_archived_to_tasks', 48),
(62, '2025_08_25_162941_add_type_and_unit_to_tasks_table', 49),
(63, '2025_08_29_121550_add_completed_at_to_tasks_table', 50),
(64, '2025_09_02_095522_create_deletion_requests_table', 51),
(65, '2025_09_02_102103_add_decline_reason_to_project_deletion_requests_table', 52),
(66, '2025_09_02_110923_create_project_documents_table', 53),
(67, '2025_09_04_113746_change_path_to_text_in_project_documents_table', 54);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AfDB', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(2, 'AUC', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(3, 'BIASHARA', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(4, 'EU-TAF', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(5, 'MS-1', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(6, 'MS-2', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(7, 'MS-3', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(8, 'MS-4', '2025-06-19 17:13:59', '2025-06-19 17:13:59'),
(9, 'MS-5', '2025-06-19 17:13:59', '2025-06-19 17:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `partner_project`
--

CREATE TABLE `partner_project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_project`
--

INSERT INTO `partner_project` (`id`, `project_id`, `partner_id`, `created_at`, `updated_at`) VALUES
(2, 3, 4, NULL, NULL),
(16, 15, 1, NULL, NULL),
(48, 1, 1, NULL, NULL),
(51, 4, 1, NULL, NULL),
(52, 7, 4, NULL, NULL),
(53, 9, 4, NULL, NULL),
(54, 9, 8, NULL, NULL),
(56, 20, 7, NULL, NULL),
(57, 21, 4, NULL, NULL),
(58, 21, 7, NULL, NULL),
(59, 22, 3, NULL, NULL),
(60, 23, 3, NULL, NULL),
(61, 23, 4, NULL, NULL),
(62, 24, 3, NULL, NULL),
(63, 24, 4, NULL, NULL),
(64, 26, 2, NULL, NULL),
(65, 26, 7, NULL, NULL),
(66, 28, 4, NULL, NULL),
(67, 28, 5, NULL, NULL),
(68, 30, 5, NULL, NULL),
(70, 34, 1, NULL, NULL),
(72, 36, 6, NULL, NULL),
(82, 35, 2, NULL, NULL),
(87, 33, 9, NULL, NULL),
(90, 31, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'tor', 'Terms of References', '2025-06-19 17:54:30', '2025-06-19 17:54:30'),
(2, 'procurement', 'Procurement', '2025-06-19 17:54:30', '2025-06-19 17:54:30'),
(3, 'implementation', 'Implementation', '2025-06-19 17:54:30', '2025-06-19 17:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `priority` enum('Low','Medium','High') NOT NULL DEFAULT 'Medium',
  `status` enum('Not started','In progress','Completed','Cancelled','Waiting Approval','Delayed','Under review','Closed') DEFAULT 'Not started',
  `previous_status` varchar(255) DEFAULT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `project_manager_id` bigint(20) UNSIGNED NOT NULL,
  `budget` decimal(15,2) DEFAULT NULL,
  `budget_code` varchar(255) DEFAULT NULL,
  `type` enum('HRM','Admin') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `procurement_type` enum('afcfta','partner') DEFAULT NULL,
  `budget_change_reason` text DEFAULT NULL,
  `budget_changed_at` timestamp NULL DEFAULT NULL,
  `previous_budget` decimal(15,2) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `close_comment` text DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `close_comment_admin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='29';

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `end_date`, `priority`, `status`, `previous_status`, `percentage`, `unit_id`, `project_manager_id`, `budget`, `budget_code`, `type`, `created_at`, `updated_at`, `procurement_type`, `budget_change_reason`, `budget_changed_at`, `previous_budget`, `created_by`, `close_comment`, `closed_at`, `close_comment_admin`) VALUES
(1, 'AfCFTA Career Development Plan', 'Hire an individual consult to purpose career development plan for AfCFTA', '2025-01-01', '2025-07-31', 'Low', 'In progress', NULL, 94.74, 1, 21, 20000.00, NULL, 'HRM', '2025-07-02 20:08:26', '2025-09-15 09:22:07', NULL, 'No availability of funds', '2025-09-02 09:04:25', 30000.00, 2, NULL, NULL, NULL),
(3, 'AfCFTA Organizational Culture', 'Hire an organizational culture consultant', '2025-01-01', '2025-12-31', 'Medium', 'Not started', NULL, 0.00, 1, 2, 70000.00, NULL, 'HRM', '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(4, 'AfCFTA Recruitment', 'Reinforce the recruitment transparency, confidentiality, equity and fairness through usage of PWC firm and adoption of best international practice', '2025-01-01', '2025-12-31', 'High', 'In progress', NULL, 77.78, 1, 21, 60000.00, NULL, 'HRM', '2025-07-02 20:29:00', '2025-07-03 08:46:12', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(5, 'AfCFTA Staff Survey', 'Conduct employees satisfaction survey : 3rd Social Barometer', '2025-01-01', '2025-12-31', 'Medium', 'Not started', NULL, 0.00, 1, 2, 0.00, NULL, 'HRM', '2025-07-02 20:41:33', '2025-07-02 22:08:43', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(6, 'AHRM Gate', 'Automatized Key AHRMD Process - AHRM GATES (Admin, HR, Procurement)', '2025-01-02', '2025-12-31', 'Low', 'In progress', NULL, 10.63, 1, 1, 0.00, NULL, 'HRM', '2025-07-02 20:45:28', '2025-07-24 12:08:35', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(7, 'AHRMD SOP and manual', 'Develop Manuals and SOP for Administrative Services and HR Management', '2025-07-02', '2025-07-31', 'High', 'In progress', NULL, 6.67, 1, 2, 0.00, NULL, 'HRM', '2025-07-02 20:49:19', '2025-07-24 12:09:37', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(8, 'Annual Recruitment Plan', 'To obtain the approval and launch of Batch 3 and 4', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 21, 0.00, NULL, 'HRM', '2025-07-02 20:52:38', '2025-07-24 12:07:01', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(9, 'Annual training Plan', 'Annual training Plan', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 21, 160000.00, NULL, 'HRM', '2025-07-02 20:58:00', '2025-07-31 12:51:41', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(10, 'Brown Bags', 'Organize monthly workshops and seminars on relevant topics (international trade, African Trade, NTB…)', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 11, 0.00, NULL, 'HRM', '2025-07-02 21:01:56', '2025-07-24 12:07:19', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(11, 'Brown Bags', 'Organize monthly workshops and seminars on relevant topics (international trade, African Trade, NTB…)', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 18.18, 1, 11, 0.00, NULL, 'HRM', '2025-07-02 21:01:58', '2025-09-10 20:50:24', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(12, 'E-Learning Plate-form', 'E-Learning Plate-form', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 11, 0.00, NULL, 'HRM', '2025-07-02 21:06:53', '2025-07-02 22:10:26', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(13, 'HRM Communication Strategy', 'HRM Communication Strategy', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 21, 0.00, NULL, 'HRM', '2025-07-02 21:11:07', '2025-07-02 22:11:08', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(14, 'HRM data', 'Human Resources Services dashboard', '2025-07-02', '2025-08-07', 'Medium', 'In progress', NULL, 0.00, 1, 16, 0.00, NULL, 'HRM', '2025-07-02 21:13:32', '2025-07-02 22:10:42', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(15, 'HRM through new technologies', 'HRM through new technologies', '2025-07-01', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 1, 21, 18000.00, NULL, 'HRM', '2025-07-02 21:17:25', '2025-07-02 22:10:00', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(16, 'New Staff Performance Evaluation system', 'New Staff Performance Evaluation system', '2025-07-02', '2025-07-31', 'Medium', 'Not started', NULL, 0.00, 1, 16, 0.00, NULL, 'HRM', '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(17, 'Staff Engagement Programs', 'Staff Engagement Programs', '2025-01-01', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 3, 14, 0.00, NULL, 'HRM', '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(19, 'Administration Data', 'Administrative services dashboard', '2025-07-02', '2025-07-31', 'High', 'In progress', NULL, 9.50, 2, 5, 0.00, NULL, 'Admin', '2025-07-02 21:38:02', '2025-07-02 22:12:15', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(20, 'AfCFTA Access Control', 'Access control and monitoring', '2025-07-30', '2025-08-07', 'Medium', 'In progress', NULL, 0.00, 6, 15, 15000.00, NULL, 'Admin', '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(21, 'AfCFTA Disaster readeness', 'Implementation of DRP/BCP', '2025-07-02', '2025-07-31', 'Medium', 'In progress', NULL, 0.00, 6, 15, 15000.00, NULL, 'Admin', '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(22, 'AfCFTA IT Smart Campus', 'AfCFTA IT Smart Campus', '2025-07-02', '2025-08-07', 'Medium', 'In progress', NULL, 0.00, 2, 7, 375000.00, NULL, 'Admin', '2025-07-02 21:46:31', '2025-07-02 21:46:31', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(23, 'AfCFTA IT training', 'AfCFTA IT training', '2025-07-01', '2025-08-09', 'High', 'In progress', NULL, 50.00, 2, 7, 150000.00, NULL, 'Admin', '2025-07-02 21:49:26', '2025-07-03 09:15:44', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(25, 'AHRM Communication', 'AHRM Communication', '2025-07-02', '2025-08-09', 'Medium', 'In progress', NULL, 0.00, 1, 5, 0.00, NULL, 'Admin', '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(26, 'FM Development', 'FM Development', '2025-07-02', '2025-08-07', 'High', 'In progress', NULL, 72.41, 6, 15, 15000.00, NULL, 'Admin', '2025-07-02 21:56:52', '2025-07-03 09:18:49', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(27, 'Procurement reinforced', 'Procurement reinforced', '2025-07-02', '2025-08-09', 'Medium', 'In progress', NULL, 0.00, 5, 13, 0.00, NULL, 'Admin', '2025-07-02 21:59:47', '2025-07-24 12:10:18', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(28, 'SAP deploiement at AfCFTA', 'SAP deploiement at AfCFTA', '2025-06-30', '2025-08-23', 'Medium', 'In progress', NULL, 0.00, 5, 13, 95000.00, NULL, 'Admin', '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(29, 'Staff Engagement programs', 'Staff Engagement programs', '2025-05-13', '2025-06-30', 'Low', 'In progress', NULL, 0.00, 5, 13, 0.00, NULL, 'Admin', '2025-07-02 22:06:44', '2025-07-24 12:10:38', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(30, 'Medical Reporting Software', 'Software to follow-up the payment of the hospital and the recorvery from staff salary', '2025-07-03', '2025-08-04', 'High', 'In progress', NULL, 62.14, 3, 14, 0.00, NULL, 'HRM', '2025-07-03 09:37:36', '2025-07-03 09:44:23', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(31, 'AfCFTA Library', 'AfCFTA Library', '2025-01-13', '2025-12-31', 'High', 'Closed', NULL, 100.00, 2, 7, 98955.00, NULL, 'Admin', '2025-09-18 13:10:18', '2025-09-24 10:21:05', NULL, NULL, NULL, NULL, 7, 'This project was successfull', '2025-09-24 10:10:51', 'This project was really good. The project manager did well'),
(32, 'Test project', 'Test project', '2025-09-24', '2025-10-08', 'Medium', 'Not started', NULL, 0.00, 2, 7, NULL, NULL, 'Admin', '2025-09-24 10:25:30', '2025-09-24 10:40:24', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_deletion_requests`
--

CREATE TABLE `project_deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `requested_by` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `decline_reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_deletion_requests`
--

INSERT INTO `project_deletion_requests` (`id`, `project_id`, `requested_by`, `reason`, `approved`, `decline_reason`, `created_at`, `updated_at`) VALUES
(4, 6, 7, 'Project added to another larger project so it is no longer needed separetely', 1, NULL, '2025-07-07 15:48:57', '2025-07-07 15:50:15'),
(23, 32, 7, 'This project is no more needed', 1, NULL, '2025-09-24 10:26:43', '2025-09-24 10:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `project_documents`
--

CREATE TABLE `project_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_documents`
--

INSERT INTO `project_documents` (`id`, `project_id`, `filename`, `path`, `mime_type`, `size`, `created_at`, `updated_at`) VALUES
(8, 31, 'Article Poster.pdf', 'projects/documents/ALYcO3rRLaqTuGjarLBeIP0Mg4OC5fkXSeLdGey1.pdf', NULL, NULL, '2025-09-23 10:28:54', '2025-09-23 10:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `project_phase`
--

CREATE TABLE `project_phase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `phase_id` bigint(20) UNSIGNED NOT NULL,
  `percentage` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_phase`
--

INSERT INTO `project_phase` (`id`, `project_id`, `phase_id`, `percentage`, `created_at`, `updated_at`, `status`) VALUES
(136, 1, 1, 100, NULL, NULL, 'Completed'),
(137, 1, 3, 0, NULL, NULL, 'Completed'),
(138, 1, 2, 100, NULL, NULL, 'Completed'),
(143, 3, 1, 0, NULL, NULL, NULL),
(144, 3, 3, 0, NULL, NULL, NULL),
(145, 4, 1, 100, NULL, NULL, 'Completed'),
(146, 4, 3, 33.33, NULL, NULL, NULL),
(149, 5, 1, 0, NULL, NULL, NULL),
(150, 5, 3, 0, NULL, NULL, NULL),
(151, 6, 1, 20, NULL, NULL, 'Completed'),
(152, 6, 3, 5, NULL, NULL, 'In progress'),
(153, 7, 1, 12.5, NULL, NULL, NULL),
(154, 7, 3, 0, NULL, NULL, NULL),
(155, 8, 3, 0, NULL, NULL, NULL),
(156, 9, 1, 0, NULL, NULL, NULL),
(157, 9, 3, 0, NULL, NULL, NULL),
(158, 10, 1, 0, NULL, NULL, NULL),
(159, 10, 3, 0, NULL, NULL, NULL),
(160, 11, 1, 33.33, NULL, NULL, NULL),
(161, 11, 3, 0, NULL, NULL, NULL),
(162, 12, 1, 0, NULL, NULL, NULL),
(163, 12, 3, 0, NULL, NULL, NULL),
(164, 13, 3, 0, NULL, NULL, NULL),
(165, 14, 3, 0, NULL, NULL, NULL),
(166, 15, 1, 0, NULL, NULL, NULL),
(167, 15, 3, 0, NULL, NULL, NULL),
(168, 16, 3, 0, NULL, NULL, NULL),
(169, 17, 1, 0, NULL, NULL, NULL),
(170, 17, 3, 0, NULL, NULL, NULL),
(173, 19, 3, 9.5, NULL, NULL, 'In progress'),
(174, 20, 1, 0, NULL, NULL, NULL),
(175, 20, 3, 0, NULL, NULL, NULL),
(176, 21, 1, 0, NULL, NULL, NULL),
(177, 21, 3, 0, NULL, NULL, NULL),
(178, 22, 1, 0, NULL, NULL, NULL),
(179, 22, 3, 0, NULL, NULL, NULL),
(180, 23, 1, 100, NULL, NULL, 'Completed'),
(181, 23, 3, 0, NULL, NULL, NULL),
(184, 25, 3, 0, NULL, NULL, NULL),
(185, 26, 1, 100, NULL, NULL, 'Completed'),
(186, 26, 3, 11.11, NULL, NULL, NULL),
(187, 27, 3, 0, NULL, NULL, NULL),
(188, 28, 1, 0, NULL, NULL, NULL),
(189, 28, 3, 0, NULL, NULL, NULL),
(190, 29, 3, 0, NULL, NULL, NULL),
(191, 4, 2, 100, NULL, NULL, 'Completed'),
(192, 23, 2, 50, NULL, NULL, 'Not started'),
(193, 26, 2, 100, NULL, NULL, 'Completed'),
(194, 30, 1, 100, NULL, NULL, 'Completed'),
(195, 30, 3, 47, NULL, NULL, 'In progress'),
(309, 31, 1, 100, NULL, NULL, 'Completed'),
(310, 31, 3, 100, NULL, NULL, 'Completed'),
(311, 31, 2, 100, NULL, NULL, 'Completed'),
(312, 32, 1, 0, NULL, NULL, NULL),
(313, 32, 3, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_subphase`
--

CREATE TABLE `project_subphase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `subphase_id` bigint(20) UNSIGNED NOT NULL,
  `percentage` tinyint(3) UNSIGNED NOT NULL,
  `normalized_percentage` double DEFAULT NULL,
  `procurement_type` enum('afcfta','partner') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `award_person_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_subphase`
--

INSERT INTO `project_subphase` (`id`, `project_id`, `subphase_id`, `percentage`, `normalized_percentage`, `procurement_type`, `created_at`, `updated_at`, `status`, `reason`, `award_person_name`) VALUES
(640, 1, 1, 20, NULL, NULL, '2025-07-02 20:08:26', '2025-07-03 08:56:39', 'Completed', NULL, NULL),
(641, 1, 3, 20, NULL, NULL, '2025-07-02 20:08:26', '2025-07-03 08:56:50', 'Completed', NULL, NULL),
(642, 1, 4, 20, NULL, NULL, '2025-07-02 20:08:26', '2025-07-03 08:57:00', 'Completed', NULL, NULL),
(643, 1, 5, 20, NULL, NULL, '2025-07-02 20:08:26', '2025-07-03 08:57:11', 'Completed', NULL, NULL),
(644, 1, 17, 100, NULL, NULL, '2025-07-02 20:08:26', '2025-07-03 08:57:18', 'Completed', NULL, NULL),
(645, 1, 15, 0, NULL, NULL, '2025-07-02 20:08:26', '2025-08-01 15:11:46', 'Cancelled', 'budget constraint', NULL),
(665, 3, 1, 0, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(666, 3, 3, 0, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(667, 3, 4, 0, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(668, 3, 5, 0, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(669, 3, 17, 100, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(670, 3, 15, 0, NULL, NULL, '2025-07-02 20:25:25', '2025-07-02 20:25:25', NULL, NULL, NULL),
(671, 4, 1, 20, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:45:04', 'Completed', NULL, NULL),
(672, 4, 3, 20, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:45:11', 'Completed', NULL, NULL),
(673, 4, 4, 20, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:45:17', 'Completed', NULL, NULL),
(674, 4, 5, 20, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:45:23', 'Completed', NULL, NULL),
(675, 4, 17, 100, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:45:55', 'Completed', NULL, NULL),
(676, 4, 10, 10, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:46:05', 'Completed', NULL, NULL),
(677, 4, 11, 20, NULL, NULL, '2025-07-02 20:29:00', '2025-07-03 08:46:12', 'Completed', NULL, NULL),
(678, 4, 12, 0, NULL, NULL, '2025-07-02 20:29:00', '2025-07-02 20:29:00', NULL, NULL, NULL),
(679, 4, 13, 0, NULL, NULL, '2025-07-02 20:29:00', '2025-07-02 20:29:00', NULL, NULL, NULL),
(680, 4, 15, 0, NULL, NULL, '2025-07-02 20:29:00', '2025-07-02 20:29:00', NULL, NULL, NULL),
(685, 5, 1, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(686, 5, 3, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(687, 5, 4, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(688, 5, 5, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(689, 5, 12, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(690, 5, 13, 0, NULL, NULL, '2025-07-02 20:41:33', '2025-07-02 20:41:33', NULL, NULL, NULL),
(691, 6, 1, 20, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:11', 'Completed', NULL, NULL),
(692, 6, 3, 20, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:17', 'Completed', NULL, NULL),
(693, 6, 4, 20, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:23', 'Completed', NULL, NULL),
(694, 6, 10, 10, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:30', 'Completed', NULL, NULL),
(695, 6, 11, 20, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:40', 'Completed', NULL, NULL),
(696, 6, 12, 0, NULL, NULL, '2025-07-02 20:45:28', '2025-07-03 09:12:50', 'Not started', NULL, NULL),
(697, 6, 13, 0, NULL, NULL, '2025-07-02 20:45:28', '2025-07-02 20:45:28', NULL, NULL, NULL),
(698, 6, 14, 0, NULL, NULL, '2025-07-02 20:45:28', '2025-07-02 20:45:28', NULL, NULL, NULL),
(699, 6, 15, 0, NULL, NULL, '2025-07-02 20:45:28', '2025-07-02 20:45:28', NULL, NULL, NULL),
(700, 7, 1, 10, NULL, NULL, '2025-07-02 20:49:19', '2025-07-24 12:09:37', 'In progress', NULL, NULL),
(701, 7, 3, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(702, 7, 4, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(703, 7, 5, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(704, 7, 17, 100, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(705, 7, 12, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(706, 7, 13, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(707, 7, 14, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(708, 7, 15, 0, NULL, NULL, '2025-07-02 20:49:19', '2025-07-02 20:49:19', NULL, NULL, NULL),
(709, 8, 10, 0, NULL, NULL, '2025-07-02 20:52:38', '2025-07-02 20:52:38', NULL, NULL, NULL),
(710, 8, 11, 0, NULL, NULL, '2025-07-02 20:52:38', '2025-07-02 20:52:38', NULL, NULL, NULL),
(711, 8, 13, 0, NULL, NULL, '2025-07-02 20:52:38', '2025-07-02 20:52:38', NULL, NULL, NULL),
(712, 8, 15, 0, NULL, NULL, '2025-07-02 20:52:38', '2025-07-02 20:52:38', NULL, NULL, NULL),
(713, 9, 1, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(714, 9, 3, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(715, 9, 4, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(716, 9, 5, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(717, 9, 17, 100, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(718, 9, 10, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(719, 9, 11, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(720, 9, 12, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(721, 9, 13, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(722, 9, 14, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(723, 9, 15, 0, NULL, NULL, '2025-07-02 20:58:00', '2025-07-02 20:58:00', NULL, NULL, NULL),
(724, 10, 1, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(725, 10, 3, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(726, 10, 4, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(727, 10, 10, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(728, 10, 12, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(729, 10, 15, 0, NULL, NULL, '2025-07-02 21:01:57', '2025-07-02 21:01:57', NULL, NULL, NULL),
(730, 11, 1, 20, NULL, NULL, '2025-07-02 21:01:58', '2025-09-10 20:50:24', 'Completed', NULL, NULL),
(731, 11, 3, 0, NULL, NULL, '2025-07-02 21:01:58', '2025-07-02 21:01:58', NULL, NULL, NULL),
(732, 11, 4, 0, NULL, NULL, '2025-07-02 21:01:58', '2025-07-02 21:01:58', NULL, NULL, NULL),
(733, 11, 10, 0, NULL, NULL, '2025-07-02 21:01:58', '2025-07-02 21:01:58', NULL, NULL, NULL),
(734, 11, 12, 0, NULL, NULL, '2025-07-02 21:01:58', '2025-07-02 21:01:58', NULL, NULL, NULL),
(735, 11, 15, 0, NULL, NULL, '2025-07-02 21:01:58', '2025-07-02 21:01:58', NULL, NULL, NULL),
(736, 12, 1, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(737, 12, 3, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(738, 12, 4, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(739, 12, 5, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(740, 12, 17, 100, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(741, 12, 10, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(742, 12, 11, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(743, 12, 12, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(744, 12, 13, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(745, 12, 14, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(746, 12, 15, 0, NULL, NULL, '2025-07-02 21:06:53', '2025-07-02 21:06:53', NULL, NULL, NULL),
(747, 13, 10, 0, NULL, NULL, '2025-07-02 21:11:07', '2025-07-02 21:11:07', NULL, NULL, NULL),
(748, 13, 12, 0, NULL, NULL, '2025-07-02 21:11:07', '2025-07-02 21:11:07', NULL, NULL, NULL),
(749, 13, 13, 0, NULL, NULL, '2025-07-02 21:11:07', '2025-07-02 21:11:07', NULL, NULL, NULL),
(750, 13, 15, 0, NULL, NULL, '2025-07-02 21:11:07', '2025-07-02 21:11:07', NULL, NULL, NULL),
(751, 14, 10, 0, NULL, NULL, '2025-07-02 21:13:32', '2025-07-02 21:13:33', NULL, NULL, NULL),
(752, 14, 12, 0, NULL, NULL, '2025-07-02 21:13:32', '2025-07-02 21:13:33', NULL, NULL, NULL),
(753, 14, 13, 0, NULL, NULL, '2025-07-02 21:13:32', '2025-07-02 21:13:33', NULL, NULL, NULL),
(754, 14, 14, 0, NULL, NULL, '2025-07-02 21:13:32', '2025-07-02 21:13:33', NULL, NULL, NULL),
(755, 14, 15, 0, NULL, NULL, '2025-07-02 21:13:32', '2025-07-02 21:13:33', NULL, NULL, NULL),
(756, 15, 1, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(757, 15, 3, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(758, 15, 4, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(759, 15, 5, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(760, 15, 17, 100, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(761, 15, 10, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(762, 15, 11, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(763, 15, 12, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(764, 15, 13, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(765, 15, 14, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(766, 15, 15, 0, NULL, NULL, '2025-07-02 21:17:25', '2025-07-02 21:17:25', NULL, NULL, NULL),
(767, 16, 10, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(768, 16, 11, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(769, 16, 12, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(770, 16, 13, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(771, 16, 14, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(772, 16, 15, 0, NULL, NULL, '2025-07-02 21:20:24', '2025-07-02 21:20:24', NULL, NULL, NULL),
(773, 17, 1, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(774, 17, 3, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(775, 17, 4, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(776, 17, 10, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(777, 17, 12, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(778, 17, 13, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(779, 17, 15, 0, NULL, NULL, '2025-07-02 21:24:11', '2025-07-02 21:24:11', NULL, NULL, NULL),
(792, 19, 10, 10, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 22:11:49', 'Completed', NULL, NULL),
(793, 19, 11, 20, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 22:12:00', 'Completed', NULL, NULL),
(794, 19, 12, 15, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 22:12:15', 'In progress', NULL, NULL),
(795, 19, 13, 0, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 21:38:02', NULL, NULL, NULL),
(796, 19, 14, 0, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 21:38:02', NULL, NULL, NULL),
(797, 19, 15, 0, NULL, NULL, '2025-07-02 21:38:02', '2025-07-02 21:38:02', NULL, NULL, NULL),
(798, 20, 1, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(799, 20, 2, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(800, 20, 3, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(801, 20, 4, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(802, 20, 5, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(803, 20, 17, 100, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(804, 20, 10, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(805, 20, 11, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(806, 20, 12, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(807, 20, 13, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(808, 20, 14, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(809, 20, 15, 0, NULL, NULL, '2025-07-02 21:40:26', '2025-07-02 21:40:26', NULL, NULL, NULL),
(810, 21, 1, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(811, 21, 2, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(812, 21, 3, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(813, 21, 4, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(814, 21, 5, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(815, 21, 17, 100, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(816, 21, 10, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(817, 21, 11, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(818, 21, 12, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(819, 21, 13, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(820, 21, 14, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(821, 21, 15, 0, NULL, NULL, '2025-07-02 21:42:40', '2025-07-02 21:42:40', NULL, NULL, NULL),
(822, 22, 1, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(823, 22, 2, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(824, 22, 3, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(825, 22, 4, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(826, 22, 5, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(827, 22, 6, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(828, 22, 7, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(829, 22, 8, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(830, 22, 9, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(831, 22, 16, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(832, 22, 10, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(833, 22, 11, 0, NULL, NULL, '2025-07-02 21:46:31', '2025-07-02 21:46:32', NULL, NULL, NULL),
(834, 22, 12, 0, NULL, NULL, '2025-07-02 21:46:32', '2025-07-02 21:46:32', NULL, NULL, NULL),
(835, 22, 13, 0, NULL, NULL, '2025-07-02 21:46:32', '2025-07-02 21:46:32', NULL, NULL, NULL),
(836, 22, 14, 0, NULL, NULL, '2025-07-02 21:46:32', '2025-07-02 21:46:32', NULL, NULL, NULL),
(837, 22, 15, 0, NULL, NULL, '2025-07-02 21:46:32', '2025-07-02 21:46:32', NULL, NULL, NULL),
(838, 23, 1, 20, NULL, NULL, '2025-07-02 21:49:26', '2025-07-03 09:14:10', 'Completed', NULL, NULL),
(839, 23, 2, 20, NULL, NULL, '2025-07-02 21:49:27', '2025-07-03 09:14:19', 'Completed', NULL, NULL),
(840, 23, 3, 20, NULL, NULL, '2025-07-02 21:49:27', '2025-07-03 09:15:16', 'Completed', NULL, NULL),
(841, 23, 4, 20, NULL, NULL, '2025-07-02 21:49:27', '2025-07-03 09:15:24', 'Completed', NULL, NULL),
(842, 23, 5, 20, NULL, NULL, '2025-07-02 21:49:27', '2025-07-03 09:15:31', 'Completed', NULL, NULL),
(843, 23, 17, 50, NULL, NULL, '2025-07-02 21:49:27', '2025-07-03 09:15:44', 'In progress', NULL, NULL),
(844, 23, 10, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(845, 23, 11, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(846, 23, 12, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(847, 23, 13, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(848, 23, 14, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(849, 23, 15, 0, NULL, NULL, '2025-07-02 21:49:27', '2025-07-02 21:49:27', NULL, NULL, NULL),
(862, 25, 10, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(863, 25, 11, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(864, 25, 12, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(865, 25, 13, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(866, 25, 14, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(867, 25, 15, 0, NULL, NULL, '2025-07-02 21:53:54', '2025-07-02 21:53:54', NULL, NULL, NULL),
(868, 26, 1, 20, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:17:35', 'Completed', NULL, NULL),
(869, 26, 2, 20, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:17:44', 'Completed', NULL, NULL),
(870, 26, 3, 20, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:17:53', 'Completed', NULL, NULL),
(871, 26, 4, 20, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:18:02', 'Completed', NULL, NULL),
(872, 26, 5, 20, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:18:11', 'Completed', NULL, NULL),
(873, 26, 17, 100, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:18:40', 'Completed', NULL, NULL),
(874, 26, 10, 10, NULL, NULL, '2025-07-02 21:56:52', '2025-07-03 09:18:48', 'Completed', NULL, NULL),
(875, 26, 11, 0, NULL, NULL, '2025-07-02 21:56:52', '2025-07-02 21:56:52', NULL, NULL, NULL),
(876, 26, 12, 0, NULL, NULL, '2025-07-02 21:56:52', '2025-07-02 21:56:52', NULL, NULL, NULL),
(877, 26, 13, 0, NULL, NULL, '2025-07-02 21:56:52', '2025-07-02 21:56:52', NULL, NULL, NULL),
(878, 26, 15, 0, NULL, NULL, '2025-07-02 21:56:52', '2025-07-02 21:56:52', NULL, NULL, NULL),
(879, 27, 10, 0, NULL, NULL, '2025-07-02 21:59:47', '2025-07-02 21:59:47', NULL, NULL, NULL),
(880, 27, 11, 0, NULL, NULL, '2025-07-02 21:59:47', '2025-07-02 21:59:47', NULL, NULL, NULL),
(881, 27, 12, 0, NULL, NULL, '2025-07-02 21:59:47', '2025-07-02 21:59:47', NULL, NULL, NULL),
(882, 27, 13, 0, NULL, NULL, '2025-07-02 21:59:47', '2025-07-02 21:59:47', NULL, NULL, NULL),
(883, 27, 15, 0, NULL, NULL, '2025-07-02 21:59:47', '2025-07-02 21:59:47', NULL, NULL, NULL),
(884, 28, 1, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(885, 28, 2, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(886, 28, 3, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(887, 28, 4, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(888, 28, 5, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(889, 28, 17, 100, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(890, 28, 10, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(891, 28, 12, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(892, 28, 13, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(893, 28, 15, 0, NULL, NULL, '2025-07-02 22:03:06', '2025-07-02 22:03:06', NULL, NULL, NULL),
(894, 29, 10, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(895, 29, 11, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(896, 29, 12, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(897, 29, 13, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(898, 29, 14, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(899, 29, 15, 0, NULL, NULL, '2025-07-02 22:06:44', '2025-07-02 22:06:44', NULL, NULL, NULL),
(900, 30, 1, 20, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:40:28', 'Completed', NULL, NULL),
(901, 30, 3, 20, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:44:23', 'Completed', NULL, NULL),
(902, 30, 10, 10, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:41:03', 'Completed', NULL, NULL),
(903, 30, 11, 20, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:41:55', 'Completed', NULL, NULL),
(904, 30, 12, 17, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:43:23', 'In progress', NULL, NULL),
(905, 30, 13, 0, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:37:36', NULL, NULL, NULL),
(906, 30, 14, 0, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:37:36', NULL, NULL, NULL),
(907, 30, 15, 0, NULL, NULL, '2025-07-03 09:37:36', '2025-07-03 09:37:36', NULL, NULL, NULL),
(1188, 31, 1, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 09:57:47', 'Completed', NULL, NULL),
(1189, 31, 2, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 09:57:57', 'Completed', NULL, NULL),
(1190, 31, 3, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 09:58:05', 'Completed', NULL, NULL),
(1191, 31, 4, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 09:58:13', 'Completed', NULL, NULL),
(1192, 31, 5, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 09:58:28', 'Completed', NULL, NULL),
(1193, 31, 17, 100, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:08:11', 'Completed', NULL, NULL),
(1194, 31, 10, 10, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:14:54', 'Completed', NULL, NULL),
(1195, 31, 11, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:15:07', 'Completed', NULL, NULL),
(1196, 31, 12, 30, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:33:08', 'Completed', NULL, NULL),
(1197, 31, 13, 20, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:33:18', 'Completed', NULL, NULL),
(1198, 31, 14, 10, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:33:26', 'Completed', NULL, NULL),
(1199, 31, 15, 10, NULL, NULL, '2025-09-18 13:10:18', '2025-09-23 10:33:43', 'Completed', NULL, NULL),
(1200, 32, 1, 0, NULL, NULL, '2025-09-24 10:25:30', '2025-09-24 10:25:30', NULL, NULL, NULL),
(1201, 32, 10, 0, NULL, NULL, '2025-09-24 10:25:30', '2025-09-24 10:25:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_user_assistants`
--

CREATE TABLE `project_user_assistants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user_assistants`
--

INSERT INTO `project_user_assistants` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, NULL, NULL),
(13, 31, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_user_members`
--

CREATE TABLE `project_user_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user_members`
--

INSERT INTO `project_user_members` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 1, 9, NULL, NULL),
(9, 1, 12, NULL, NULL),
(17, 31, 22, NULL, NULL),
(18, 31, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `format` varchar(255) NOT NULL DEFAULT 'web',
  `generated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `project_id`, `user_id`, `code`, `title`, `description`, `format`, `generated_at`, `created_at`, `updated_at`) VALUES
(7, 1, 1, '#HRM7', '#AfCFTA Career Development Plan', NULL, 'web', '2025-08-01 15:12:40', '2025-08-01 15:12:40', '2025-08-01 15:12:40'),
(8, 6, 1, '#HRM8', '#AHRM Gate', NULL, 'web', '2025-08-01 15:22:34', '2025-08-01 15:22:34', '2025-08-01 15:22:34'),
(11, 30, 1, '#HRM11', '#Medical Reporting Software', NULL, 'web', '2025-08-04 09:20:51', '2025-08-04 09:20:51', '2025-08-04 09:20:51'),
(14, 1, 1, '#HRM14', '#AfCFTA Career Development Plan', NULL, 'web', '2025-08-11 13:29:50', '2025-08-11 13:29:50', '2025-08-11 13:29:50'),
(15, 1, 1, '#HRM15', '#AfCFTA Career Development Plan', NULL, 'web', '2025-08-21 09:07:54', '2025-08-21 09:07:54', '2025-08-21 09:07:54'),
(17, 28, 1, '#ADMIN17', '#SAP deploiement at AfCFTA', NULL, 'web', '2025-08-22 17:20:44', '2025-08-22 17:20:44', '2025-08-22 17:20:44'),
(18, 6, 1, '#HRM18', '#AHRM Gate', NULL, 'web', '2025-09-01 13:34:12', '2025-09-01 13:34:12', '2025-09-01 13:34:12'),
(19, 1, 1, '#HRM19', '#AfCFTA Career Development Plan', NULL, 'web', '2025-09-02 09:04:58', '2025-09-02 09:04:58', '2025-09-02 09:04:58'),
(20, 6, 1, '#HRM20', '#AHRM Gate', NULL, 'web', '2025-09-02 09:11:32', '2025-09-02 09:11:32', '2025-09-02 09:11:32'),
(22, 31, 1, '#ADMIN22', '#AfCFTA Library', NULL, 'web', '2025-09-24 10:46:52', '2025-09-24 10:46:52', '2025-09-24 10:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(2, 'Project Manager', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(3, 'Project Manager Assistant', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(4, 'Member', '2025-06-16 11:09:24', '2025-06-16 11:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('H0qtk2UDGyE3pSNLy9TBT94S7KSr1R1pFCCJ68FT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXBRbzRxZGhwWmtpMWVRaVNOVkNZT2FOSFlodnU4T1R0cFQ0YmxNNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGFydHMvcHJvamVjdC1tYW5hZ2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1759165704);

-- --------------------------------------------------------

--
-- Table structure for table `subphases`
--

CREATE TABLE `subphases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phase_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `default_percentage` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subphases`
--

INSERT INTO `subphases` (`id`, `phase_id`, `name`, `label`, `created_at`, `updated_at`, `percentage`, `type`, `default_percentage`, `position`) VALUES
(1, 1, 'preparation', 'Preparation', '2025-06-19 17:55:45', '2025-06-24 10:29:18', 0, NULL, 20, 1),
(2, 1, 'availability_of_funds', 'Availability of funds', '2025-06-19 17:55:45', '2025-06-24 10:29:18', 0, NULL, 20, 2),
(3, 1, 'validation', 'Validation', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 20, 3),
(4, 1, 'sg_approval', 'SG Approval', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 20, 4),
(5, 1, 'procurement_request', 'Procurement Request', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 20, 5),
(6, 2, 'tender_doc', 'Tender Document', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, 'afcfta', 10, 6),
(7, 2, 'advert', 'Advertisement', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, 'afcfta', 30, 7),
(8, 2, 'evaluation_negociation', 'Evaluation & Negotiation', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, 'afcfta', 40, 8),
(9, 2, 'award', 'Award', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, 'afcfta', 10, 9),
(10, 3, 'team_set', 'Team Set', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 10, 12),
(11, 3, 'work_plan', 'Work Plan', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 20, 13),
(12, 3, 'development', 'Development', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 30, 14),
(13, 3, 'control_validation', 'Control & Validation', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 20, 15),
(14, 3, 'training', 'Training', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 10, 16),
(15, 3, 'in_service', 'Service', '2025-06-19 17:55:46', '2025-06-24 10:29:18', 0, NULL, 10, 17),
(16, 2, 'contracting', 'Contracting', NULL, NULL, 10, 'afcfta', 10, 10),
(17, 2, 'partner_procurement', 'Partner Procurement', '2025-06-24 10:42:45', '2025-06-24 10:42:45', 0, 'partner', 100, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` enum('high','medium','low') NOT NULL DEFAULT 'low',
  `status` enum('pending','processing','completed') NOT NULL DEFAULT 'pending',
  `completed_at` timestamp NULL DEFAULT NULL,
  `assigned_to` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `delete_requested` tinyint(1) NOT NULL DEFAULT 0,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `created_by`, `title`, `description`, `start_date`, `end_date`, `priority`, `status`, `completed_at`, `assigned_to`, `created_at`, `updated_at`, `archived`, `delete_requested`, `is_archived`, `type`, `unit_id`) VALUES
(1, 1, 'Finalize on-on-one session with champions', 'This is a follow-up task on the training sessions', '2025-08-15', '2025-08-19', 'high', 'completed', NULL, 6, '2025-08-15 16:29:39', '2025-09-24 12:19:20', 0, 0, 1, 'Admin', 2),
(2, 1, 'Group session with champions on implementation plan & change management', 'This meeting is to have discussion on implementation and change management', '2025-08-20', '2025-08-20', 'high', 'completed', NULL, 6, '2025-08-20 08:52:01', '2025-08-21 09:42:59', 0, 0, 0, 'Admin', 2),
(3, 1, 'Prepare an excel sheet with the list of staff and email adresses & permission matrix', 'This excel sheet will be send to intelSkys to give proper access to member of the secretariat', '2025-08-19', '2025-08-22', 'high', 'completed', NULL, 6, '2025-08-20 09:06:16', '2025-08-25 15:12:36', 0, 0, 0, 'Admin', 2),
(4, 1, 'Review the content management certificate sent by IntelSkys', 'The certificate has to be reviewed', '2025-08-19', '2025-08-20', 'medium', 'completed', NULL, 7, '2025-08-20 09:08:12', '2025-08-20 09:08:12', 0, 0, 0, 'HRM', 1),
(5, 1, 'Review and approve the certificate on content management sent by IntelSkys for champions', 'This task is to review and add additional changes  to the certificate if need be', '2025-08-20', '2025-08-22', 'medium', 'processing', NULL, 2, '2025-08-20 09:11:02', '2025-08-20 09:11:02', 0, 0, 0, 'HRM', 1),
(6, 1, 'Meeting on change management and implementation plan', 'This meeting between IntelSys and AfCFTA is to discuss on the implementation plan and next actions to be taken further', '2025-08-20', '2025-08-20', 'high', 'completed', NULL, 7, '2025-08-20 09:13:55', '2025-08-21 09:43:07', 0, 0, 0, 'HRM', 1),
(7, 1, 'Finalize the development of the project management system', 'Finalize all modules of the project management system and present it to all stakeholders for feedback', '2025-08-04', '2025-09-01', 'medium', 'processing', NULL, 6, '2025-08-21 09:42:42', '2025-08-21 09:42:42', 0, 0, 0, 'Admin', 2),
(8, 1, 'Meeting with Ornella to present her update on the project management project', 'This meeting is to check all updates on the project management module, present the reporting module and the task management module', '2025-08-27', '2025-08-29', 'medium', 'processing', NULL, 6, '2025-08-21 09:54:17', '2025-09-02 09:15:45', 0, 0, 0, 'HRM', 1),
(9, 1, 'Meeting with Grace to present her update on the AHRMD Reporting project', 'This meeting is to present all functionalities updated on the system and also present new finalized functionalities', '2025-08-25', '2025-08-29', 'medium', 'completed', NULL, 5, '2025-08-21 09:56:25', '2025-09-01 13:40:24', 0, 0, 0, 'HRM', 1),
(10, 1, 'Review Grace and Ornella\'s report', 'To read and sign Grace and Ornella\'s reports', '2025-08-21', '2025-08-22', 'medium', 'completed', '2025-08-24 12:40:47', 7, '2025-08-21 09:58:03', '2025-08-29 12:40:53', 1, 0, 0, 'Admin', 2),
(11, 1, 'Send survey to all participants of the EDRMS Training', 'This task is to gather feedback from all participants of the EDRMS training.', '2025-08-21', '2025-09-05', 'medium', 'completed', NULL, 23, '2025-08-21 09:59:23', '2025-08-22 12:32:36', 0, 0, 0, 'HRM', 1),
(12, 7, 'Write an aricle on the EDRMS for communication', 'Write an aricle on the EDRMS for communication', '2025-08-28', '2025-08-31', 'low', 'pending', NULL, 6, '2025-08-28 18:24:28', '2025-08-29 17:13:14', 0, 0, 0, 'Admin', 2),
(13, 7, 'Finalize the Project management system', 'Finalize all modules the Project management system', '2025-08-28', '2025-08-29', 'low', 'processing', NULL, 6, '2025-08-28 18:44:01', '2025-08-29 16:50:34', 0, 0, 1, 'HRM', 2),
(14, 1, 'Follow up with the Champions', 'Follow up with the Champions', '2025-09-24', '2025-09-25', 'low', 'pending', NULL, 6, '2025-09-24 11:18:56', '2025-09-24 11:29:21', 0, 0, 0, 'HRM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `task_activities`
--

CREATE TABLE `task_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `from_status` varchar(255) DEFAULT NULL,
  `to_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_activities`
--

INSERT INTO `task_activities` (`id`, `task_id`, `user_id`, `from_status`, `to_status`, `created_at`, `updated_at`) VALUES
(1, 10, 7, 'pending', 'processing', '2025-08-21 11:05:53', '2025-08-21 11:05:53'),
(3, 11, 6, 'pending', 'completed', '2025-08-22 12:32:36', '2025-08-22 12:32:36'),
(5, 3, 7, 'processing', 'completed', '2025-08-25 15:12:36', '2025-08-25 15:12:36'),
(6, 10, 7, 'processing', 'completed', '2025-08-27 11:44:20', '2025-08-27 11:44:20'),
(10, 9, 1, 'pending', 'completed', '2025-09-01 13:40:24', '2025-09-01 13:40:24'),
(11, 8, 1, 'pending', 'processing', '2025-09-02 09:15:45', '2025-09-02 09:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `task_archive_requests`
--

CREATE TABLE `task_archive_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `requested_by` bigint(20) UNSIGNED NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `decline_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_archive_requests`
--

INSERT INTO `task_archive_requests` (`id`, `task_id`, `requested_by`, `approved`, `rejected`, `reason`, `created_at`, `updated_at`, `decline_reason`) VALUES
(16, 1, 6, 1, 0, 'This task has ended', '2025-09-24 11:48:06', '2025-09-24 12:19:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_comments`
--

INSERT INTO `task_comments` (`id`, `task_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'This task is ongoing', '2025-08-18 12:15:03', '2025-08-18 12:15:03'),
(2, 1, 1, 'This task has normally been finalized today', '2025-08-19 18:41:06', '2025-08-19 18:41:06'),
(6, 13, 1, 'test', '2025-08-29 16:45:55', '2025-08-29 16:45:55'),
(8, 12, 1, 'This is finalized', '2025-09-10 20:46:39', '2025-09-10 20:46:39'),
(9, 14, 1, 'This task has not started yet', '2025-09-24 11:23:35', '2025-09-24 11:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HR', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(2, 'IT', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(3, 'Medical', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(4, 'Stores', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(5, 'Procurement & Travel', '2025-06-16 11:09:24', '2025-06-16 11:09:24'),
(6, 'Facilities & Transport', '2025-06-16 11:09:24', '2025-06-16 11:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `unit_id`, `role_id`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Leopold-Auguste', 'NGOMO', 'ngomo.auguste@au-afcfta.org', '$2y$12$ekirSlWwNfIrb/n5T8jAxeRXFVVU.VcXnFNQUUEPvtvr3C4E3nb8S', 1, 1, '2025-06-16 11:09:24', '2025-09-01 15:10:41', NULL),
(2, 'Nissem', 'BEZZAOUIA', 'nissem.bezzaouia@au-afcfta.org', '$2y$12$mTKE/nFsssINitHutOtnbe6BqamLFPwwNOKMQxq3nggQwbRy7A3aC', 1, 1, '2025-06-16 11:09:24', '2025-06-16 11:09:24', NULL),
(3, 'Ohemaa', 'Boateng', 'ohemaa.boateng@au-afcfta.org', '$2y$12$.XrBxrHb/r6QCTIsa5Rui.NUersPQB2TMzbnV85HiesIT2uZMeWhe', 3, 4, '2025-06-16 13:04:25', '2025-06-25 09:52:01', NULL),
(4, 'Ganiu', 'Ayaw', 'ayaw.abdul@au-afcfta.org', '$2y$12$Zrq6I9/goow/XvhMUrsbeu10hUWTNjKZ1ZvM0mcRP6gHTFTxO1CVC', 2, 4, '2025-06-16 13:06:36', '2025-07-31 12:27:18', NULL),
(5, 'Grace', 'DIBAKALA', 'grace.dibakala@au-afcfta.org', '$2y$12$fro4Jk0u0Zm39y2lTTJMCuDsnxunEkOOTdEgVlciP3GZ51D9fpqRq', 2, 4, '2025-06-16 13:11:47', '2025-07-21 09:54:55', NULL),
(6, 'Ornella', 'AHOUANDOGBO', 'AhouandogboO@AfricanUnion.org', '$2y$12$myOyy5yorb30wIVA1kKjE.Vrevydy.iV4SU4cAKU0i8J8Qd1Fd7rK', 2, 3, '2025-06-17 10:40:33', '2025-09-24 12:49:06', 'vd0mqmTan95abThCLcHJcclFVonr6uwKDURj5dpO1cv0myk8M7yqvDL6rEzP'),
(7, 'Kudzai', 'Mhonde', 'kudzai.mhonde@au-afcfta.org', '$2y$12$ezXmMcUF837xmQCYnc0dfOAYPM3MMq3WEeX5FUuOYDse2/Oef.I0G', 2, 2, '2025-06-17 10:47:42', '2025-06-25 09:52:28', NULL),
(8, 'Aaron', 'Aidoo', 'Aaron.Aidoo@au-afcfta.org', '$2y$12$.KpL9I1O4LzCWvQ/QZk2wOjZkrGpLloRr2YxsyyYJ42N5p3Qi/9yi', 1, 4, '2025-06-17 11:27:43', '2025-06-17 11:27:43', NULL),
(9, 'Diana', 'Baah', 'diana.baah@au-afcfta.org', '$2y$12$iL9y5RGL4Zmt/ArmTRippu.KNU/xgI5tcNsWU1znM0r0Kn.F0C/0q', 5, 4, '2025-06-17 11:32:22', '2025-06-17 11:32:22', NULL),
(10, 'Doreen', 'Adjei-Anim', 'doreen.adjei-anim@au-afcfta.org', '$2y$12$t5p254PRFC/Gq6ARBRW9AeDlsDjMzQeQFsmB4bI2oKrKQf6k2yFvK', 1, 3, '2025-06-17 11:34:47', '2025-06-18 09:48:08', NULL),
(11, 'Fatimata', 'Doucoure', 'fatimata.doucoure@au-afcfta.org', '$2y$12$8hkhZ2IbG7RKKaXj1hJN5OXHbZWNK93BbSjhof97wkMZM7rLS0n46', 1, 2, '2025-06-17 11:39:16', '2025-07-31 12:53:48', NULL),
(12, 'Flora', 'Nindi', 'flora.nindi@au-afcfta.org', '$2y$12$HQ00CqNOCbVVZ8reVapPSeWFMk3BtdRrOhC82XrQryjZ8e7MUUuMe', 1, 4, '2025-06-17 11:39:54', '2025-06-17 11:39:54', NULL),
(13, 'Jessica', 'Lawson', 'jessica.lawson@au-afcfta.org', '$2y$12$tMKlc0x9vPl2hxn.wO4FDuhBYfcA0ZvqJObS.2NvjtOmBCaYpPm9S', 5, 2, '2025-06-17 11:40:55', '2025-06-17 11:40:55', NULL),
(14, 'Joan', 'Yamoah', 'joan.yamoah@au-afcfta.org', '$2y$12$fLfQ8sEUymKUFwvk.LnNw.aRz.hO/ssitIvq6KpTewQa57g4sVaa6', 3, 4, '2025-06-17 11:41:49', '2025-07-31 12:28:25', NULL),
(15, 'Kwabena', 'Osei-Sarfo', 'kwabena.osei-sarfo@au-afcfta.org', '$2y$12$MmZFV1pG94.8QpttGQIHGucd6Ujm2mX5Bn7P7FsAOco/irr2NXYdW', 6, 2, '2025-06-17 11:44:02', '2025-06-17 11:44:02', NULL),
(16, 'Leslye', 'Koumba', 'leslye.koumba@au-afcfta.org', '$2y$12$hcRhcMeDzaQsHg.pXUjvtu6QCRSE1Uc7dAvBGLZ6.a6RTXXRhxZ7W', 1, 2, '2025-06-17 11:45:04', '2025-07-31 12:53:30', NULL),
(17, 'Mary', 'Tagpun', 'mary.tagpun@au-afcfta.org', '$2y$12$HTDpVnsZsOANl9Ojq5Jl9.NC/DLCALY75jmMBIb8ptp/DLjpgLxOK', 3, 2, '2025-06-17 11:46:02', '2025-06-17 11:46:02', NULL),
(18, 'Nadia', 'Amoako-Gyampah', 'nadia.amoako-gyampah@au-afcfta.org', '$2y$12$O5gHDQzZT1F9IWjsGq761eIRrnY72rG./5SouJyiRSUmuZUPoAxXm', 5, 4, '2025-06-17 11:47:34', '2025-06-17 11:47:34', NULL),
(19, 'Rachael', 'Mukui', 'rachael.mukui@au-afcfta.org', '$2y$12$QM5TgrjEqegYbbkWP8vrn.BUCQe94WD88yYlrbUM1IuUfCATrjRG2', 5, 3, '2025-06-17 11:48:32', '2025-06-17 11:48:32', NULL),
(20, 'Randa', 'Dodoowah', 'randa.dodoowah@au-afcfta.org', '$2y$12$fpunnLw9xU0NavTT20LGEerryn0P5TEvybsA52gxj8OPaTIb.dzg.', 3, 4, '2025-06-17 11:49:24', '2025-06-18 09:59:43', NULL),
(21, 'Saleh', 'El-Malatawy', 'saleh.el-malatawy@au-afcfta.org', '$2y$12$qU4mIKzh1FCohb7bHIJSlO4fTY3zBc5fRIOtH6D5rKNwWILO2gjie', 1, 2, '2025-06-17 11:51:06', '2025-06-17 11:51:06', NULL),
(22, 'Samuel', 'Osei-Adofo', 'samuel.adofo@au-afcfta.org', '$2y$12$pDeM8oFUhl2/YGlhQFPdeu981Nn0X7/UxiVlcprHuHQi/SJDh1Sw2', 6, 3, '2025-06-17 11:52:35', '2025-06-17 11:52:35', NULL),
(23, 'Sandra', 'KPEGBA', 'sandrakpegba@au-afcfta.org', '$2y$12$BfjaaGhuOYHnTw4r6ILzLeHsccG2NnAnyeypa1gWqyR5N/iz565cy', 1, 4, '2025-06-17 11:53:27', '2025-07-30 15:14:01', NULL),
(24, 'Tamimou', 'Ouro-Adjei', 'tamimou.ouro-adjei@au-afcfta.org', '$2y$12$lrSEbU2kFBuYMYfM4wip9eZsQkUUF.u43Bmya0xkFdqtSCnr79dsO', 1, 3, '2025-06-17 11:54:57', '2025-06-17 11:54:57', NULL),
(25, 'Victoria', 'Ganyo', 'Victoria.Ganyo@au-afcfta.org', '$2y$12$ZrZ2RJGdVfIGT.Z3qLU/4e1W.BiA83cMGI7tfkBbZUX4s32UMNb7y', 1, 4, '2025-09-18 11:59:38', '2025-09-18 11:59:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `deletion_requests`
--
ALTER TABLE `deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deletion_requests_project_id_foreign` (`project_id`),
  ADD KEY `deletion_requests_requester_id_foreign` (`requester_id`);

--
-- Indexes for table `development_details`
--
ALTER TABLE `development_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `development_details_project_id_foreign` (`project_id`),
  ADD KEY `development_details_subphase_id_foreign` (`subphase_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partners_name_unique` (`name`);

--
-- Indexes for table `partner_project`
--
ALTER TABLE `partner_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_tokens_email_index` (`email`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phases_name_unique` (`name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_unit_id_foreign` (`unit_id`),
  ADD KEY `projects_project_manager_id_foreign` (`project_manager_id`),
  ADD KEY `projects_created_by_foreign` (`created_by`);

--
-- Indexes for table `project_deletion_requests`
--
ALTER TABLE `project_deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_deletion_requests_project_id_foreign` (`project_id`),
  ADD KEY `project_deletion_requests_requested_by_foreign` (`requested_by`);

--
-- Indexes for table `project_documents`
--
ALTER TABLE `project_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_documents_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_phase`
--
ALTER TABLE `project_phase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_phase_project_id_foreign` (`project_id`),
  ADD KEY `project_phase_phase_id_foreign` (`phase_id`);

--
-- Indexes for table `project_subphase`
--
ALTER TABLE `project_subphase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_subphase_project_id_foreign` (`project_id`),
  ADD KEY `project_subphase_subphase_id_foreign` (`subphase_id`);

--
-- Indexes for table `project_user_assistants`
--
ALTER TABLE `project_user_assistants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_assistants_project_id_foreign` (`project_id`),
  ADD KEY `project_user_assistants_user_id_foreign` (`user_id`);

--
-- Indexes for table `project_user_members`
--
ALTER TABLE `project_user_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_members_project_id_foreign` (`project_id`),
  ADD KEY `project_user_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_project_id_foreign` (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subphases`
--
ALTER TABLE `subphases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subphases_phase_id_foreign` (`phase_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_assigned_to_foreign` (`assigned_to`),
  ADD KEY `tasks_created_by_foreign` (`created_by`),
  ADD KEY `tasks_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_activities_task_id_foreign` (`task_id`),
  ADD KEY `task_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `task_archive_requests`
--
ALTER TABLE `task_archive_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_archive_requests_task_id_foreign` (`task_id`),
  ADD KEY `task_archive_requests_requested_by_foreign` (`requested_by`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_comments_task_id_foreign` (`task_id`),
  ADD KEY `task_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_unit_id_foreign` (`unit_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deletion_requests`
--
ALTER TABLE `deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `development_details`
--
ALTER TABLE `development_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `partner_project`
--
ALTER TABLE `partner_project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `project_deletion_requests`
--
ALTER TABLE `project_deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `project_documents`
--
ALTER TABLE `project_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_phase`
--
ALTER TABLE `project_phase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `project_subphase`
--
ALTER TABLE `project_subphase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT for table `project_user_assistants`
--
ALTER TABLE `project_user_assistants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_user_members`
--
ALTER TABLE `project_user_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subphases`
--
ALTER TABLE `subphases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `task_activities`
--
ALTER TABLE `task_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `task_archive_requests`
--
ALTER TABLE `task_archive_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deletion_requests`
--
ALTER TABLE `deletion_requests`
  ADD CONSTRAINT `deletion_requests_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deletion_requests_requester_id_foreign` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `development_details`
--
ALTER TABLE `development_details`
  ADD CONSTRAINT `development_details_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `development_details_subphase_id_foreign` FOREIGN KEY (`subphase_id`) REFERENCES `subphases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_project_manager_id_foreign` FOREIGN KEY (`project_manager_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `projects_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `project_deletion_requests`
--
ALTER TABLE `project_deletion_requests`
  ADD CONSTRAINT `project_deletion_requests_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_deletion_requests_requested_by_foreign` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `project_documents`
--
ALTER TABLE `project_documents`
  ADD CONSTRAINT `project_documents_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_phase`
--
ALTER TABLE `project_phase`
  ADD CONSTRAINT `project_phase_phase_id_foreign` FOREIGN KEY (`phase_id`) REFERENCES `phases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_phase_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_subphase`
--
ALTER TABLE `project_subphase`
  ADD CONSTRAINT `project_subphase_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_subphase_subphase_id_foreign` FOREIGN KEY (`subphase_id`) REFERENCES `subphases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user_assistants`
--
ALTER TABLE `project_user_assistants`
  ADD CONSTRAINT `project_user_assistants_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_assistants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user_members`
--
ALTER TABLE `project_user_members`
  ADD CONSTRAINT `project_user_members_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subphases`
--
ALTER TABLE `subphases`
  ADD CONSTRAINT `subphases_phase_id_foreign` FOREIGN KEY (`phase_id`) REFERENCES `phases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD CONSTRAINT `task_activities_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_archive_requests`
--
ALTER TABLE `task_archive_requests`
  ADD CONSTRAINT `task_archive_requests_requested_by_foreign` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_archive_requests_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD CONSTRAINT `task_comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
