-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2018 at 08:38 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7540069_rolemanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `save_selected_roles`
--

CREATE TABLE `save_selected_roles` (
  `Id` int(3) NOT NULL,
  `Pvalues` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `treeview_items`
--

CREATE TABLE `treeview_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `parent_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treeview_items`
--

INSERT INTO `treeview_items` (`id`, `name`, `text`, `parent_id`) VALUES
(1, 'Manage User', 'ROLE_ADMIN_USER_MANAGER', '0'),
(2, 'View User', 'ROLE_ADMIN_USER_VIEWER', '1'),
(3, 'List User', 'ROLE_ADMIN_USER_LIST', '2'),
(4, 'View User Detail', 'ROLE_ADMIN_USER_VIEW', '2'),
(5, 'View User Address', 'ROLE_ADMIN_USERADDRESS_VIEW', '2'),
(6, 'View User Business', 'ROLE_ADMIN_USER_BUSINESS_VIEW', '2'),
(7, 'View User Notes', 'ROLE_ADMIN_USER_NOTES_VIEW', '2'),
(8, 'View User Document', 'ROLE_ADMIN_USERDOCUMENT_VIEW', '2'),
(9, 'View Admin User', 'ROLE_ADMIN_ADMINUSER_VIEWER', '24'),
(10, 'List Admin User', 'ROLE_ADMIN_ADMINUSER_LIST', '9'),
(11, 'List Merchant User', 'ROLE_ADMIN_MERCHANTUSER_LIST', '9'),
(12, 'View Admin User Detail', 'ROLE_ADMIN_ADMINUSER_VIEW', '9'),
(13, 'View Merchant User Detail', 'ROLE_ADMIN_MERCHANTUSER_VIEW', '9'),
(14, 'Create User', 'ROLE_ADMIN_USER_CREATE', '1'),
(15, 'Update User', 'ROLE_ADMIN_USER_EDIT', '1'),
(16, 'Assign Account to User', 'ROLE_ADMIN_ACCOUNT_ASSIGN', '1'),
(17, 'Edit User Address', 'ROLE_ADMIN_USERADDRESS_EDIT', '1'),
(18, 'Create User Address', 'ROLE_ADMIN_USERADDRESS_CREATE', '1'),
(19, 'Delete User Address', 'ROLE_ADMIN_USERADDRESS_DELETE', '1'),
(20, 'Edit User Document', 'ROLE_ADMIN_USERDOCUMENT_EDIT', '1'),
(21, 'Create User Document', 'ROLE_ADMIN_USERDOCUMENT_CREATE', '1'),
(22, 'Delete User Document', 'ROLE_ADMIN_USERDOCUMENT_DELETE', '1'),
(23, 'Assign Business to User', 'ROLE_ADMIN_ORGANISATION_ASSIGN', '1'),
(24, 'Manage Admin User', 'ROLE_ADMIN_ADMINUSER_MANAGER', '0'),
(25, 'Create Admin User', 'ROLE_ADMIN_ADMINUSER_CREATE', '24'),
(26, 'Update Admin User', 'ROLE_ADMIN_ADMINUSER_EDIT', '24'),
(27, 'Create Merchant User', 'ROLE_ADMIN_MERCHANTUSER_CREATE', '24'),
(28, 'Update Merchant User', 'ROLE_ADMIN_MERCHANTUSER_EDIT', '24'),
(29, 'Verify User', 'ROLE_ADMIN_VERIFY_USER', '1'),
(30, 'Verify Document', 'ROLE_ADMIN_VERIFY_DUCMENT', '1'),
(31, 'Verify Address', 'ROLE_ADMIN_VERIFY_ADDRESS', '1'),
(32, 'Resend Confirmation Email (welcome)', 'ROLE_ADMIN_RESEND_CONFIRMATION_EMAIL', '1'),
(33, 'Manage User Notes', 'ROLE_ADMIN_USER_NOTES_MANAGE', '1'),
(34, 'Manage Merchant', 'ROLE_ADMIN_MERCHANT_MANAGER', '0'),
(35, 'View Merchant', 'ROLE_ADMIN_MERCHANT_VIEWER', '34'),
(36, 'List Merchants', 'ROLE_ADMIN_MERCHANT_LIST', '35'),
(37, 'View Merchant Detail', 'ROLE_ADMIN_MERCHANT_VIEW', '35'),
(38, 'Create Merchant', 'ROLE_ADMIN_MERCHANT_CREATE', '34'),
(39, 'Update Merchant', 'ROLE_ADMIN_MERCHANT_EDIT', '34'),
(40, 'Geneare credential for merchant', 'ROLE_ADMIN_MERCHANT_MANAGE_CREDENTIAL', '34'),
(41, 'Assign Gateway to merchant', 'ROLE_ADMIN_MERCHANT_ASSIGN_GATEWAY', '34'),
(42, 'Limit Access API to API', 'ROLE_ADMIN_LIMIT_ACCESS_API', '34'),
(43, 'Assign Account to merchant', 'ROLE_ADMIN_MERCHANT_ASSIGN_ACCOUNT', '34'),
(45, 'Merchant Viewer', 'ROLE_ADMIN_MERCHANT_VIEWER', '34'),
(46, 'View Merchant Addresses', 'ROLE_ADMIN_MERCHANT_ADDRESS_VIEW', '35'),
(47, 'View Merchant Notes', 'ROLE_ADMIN_MERCHANT_NOTES_VIEW', '35'),
(48, 'View Merchant Evouchers', 'ROLE_ADMIN_MERCHANT_EVOUCHER_VIEW', '35'),
(49, 'View Merchant IP Whitelists', 'ROLE_ADMIN_MERCHANT_IPWHITELIST_VIEW', '35'),
(50, 'View Merchant Fee', 'ROLE_ADMIN_MERCHANT_FEE_VIEW', '35'),
(51, 'Manage Merchant Addresses', 'ROLE_ADMIN_MERCHANT_ADDRESS_MANAGE', '34'),
(52, 'Manage Merchant Notes', 'ROLE_ADMIN_MERCHANT_NOTES_MANAGE', '34'),
(53, 'Manage Merchant Evouchers', 'ROLE_ADMIN_MERCHANT_EVOUCHER_MANAGE', '34'),
(54, 'Manage Merchant IP Whitelists', 'ROLE_ADMIN_MERCHANT_IPWHITELIST_MANAGE', '34'),
(55, 'Manage Merchant Fee', 'ROLE_ADMIN_MERCHANT_FEE_MANAGE', '34'),
(56, 'Manage Transaction', 'ROLE_ADMIN_TRANSACTION_MANAGER', '0'),
(57, 'List Transaction', 'ROLE_ADMIN_TRANSACTION_LIST', '56'),
(58, 'View Transaction', 'ROLE_ADMIN_TRANSACTION_VIEW', '56'),
(59, 'Create Transaction', 'ROLE_ADMIN_TRANSACTION_CREATE', '56'),
(60, 'Edit  Transaction', 'ROLE_ADMIN_TRANSACTION_EDIT', '56'),
(61, 'Revert Transaction', 'ROLE_ADMIN_TRANSACTION_REVERT', '56'),
(62, 'Cancel Transaction', 'ROLE_ADMIN_TRANSACTION_CANCEL', '56'),
(63, 'Assign Linked Ledgers', 'ROLE_ADMIN_TRANSACTION_ASSIGN_LINKLEGGER', '56'),
(64, 'Import transaction', 'ROLE_ADMIN_TRANSACTION_IMPORT', '56'),
(65, 'Transfer fund between account', 'ROLE_ADMIN_TRANSACTION_TRANSFER', '56'),
(66, 'Manage Account', 'ROLE_ADMIN_ACCOUNT_MANAGER', '0'),
(67, 'Account Viewer', 'ROLE_ADMIN_ACCOUNT_VIEWR', '66'),
(68, 'List Account', 'ROLE_ADMIN_ACCOUNT_LIST', '67'),
(69, 'View Account Detail', 'ROLE_ADMIN_ACCOUNT_VIEW', '67'),
(70, 'Create Account', 'ROLE_ADMIN_ACCOUNT_CREATE', '66'),
(71, 'Update Account', 'ROLE_ADMIN_ACCOUNT_UPDATE', '66'),
(72, 'Chart of Accounts', 'ROLE_ADMIN_ACCOUNT_VIEW_ACCOUNTCHART', '67'),
(73, 'View Reports', 'ROLE_ADMIN_REPORT_VIEWER', '0'),
(74, 'Ledger Reports', 'ROLE_ADMIN_REPORT_LEDGER_VIEW', '73'),
(75, 'Trial Balance Reports', 'ROLE_ADMIN_REPORT_TRIALBALANCE_VIEW', '73'),
(76, 'new user reports', 'ROLE_ADMIN_REPORT_NEWUSER_VIEW', '73'),
(77, 'user detail reports', 'ROLE_ADMIN_REPORT_TRIALBALANCE_VIEW', '73'),
(78, 'Payout Reports', 'ROLE_ADMIN_REPORT_PAYOUT', '73'),
(79, 'Payout trnsaction reports', 'ROLE_ADMIN_REPORT_PAYOUT_TRANSACTION', '73'),
(80, 'Fee Reports', 'ROLE_ADMIN_REPORT_FEE_VIEW', '73'),
(81, 'Maintenance Reports', 'ROLE_ADMIN_REPORT_MAINTENANE_VIEW', '73'),
(82, 'Deposit Reports', 'ROLE_ADMIN_REPORT_DEPOSIT_VIEW', '73'),
(83, 'FX Settlements Reports', 'ROLE_ADMIN_REPORT_FXSETTLEMENT_VIEW', '73'),
(84, 'Transaction Reports', 'ROLE_ADMIN_REPORT_TRANSACTION_VIEW', '73'),
(85, 'Charging Report', 'ROLE_ADMIN_REPORT_CHARGING_VIEW', '73'),
(86, 'Manage Ticket', 'ROLE_ADMIN_TICKET_MANAGER', '0'),
(87, 'VIew Ticket', 'ROLE_ADMIN_TICKET_VIEWER', '86'),
(88, 'List Ticket', 'ROLE_ADMIN_TICKET_LIST', '87'),
(89, 'View Ticket detail', 'ROLE_ADMIN_TICKET_VIEW', '87'),
(90, 'Create Ticket', 'ROLE_ADMIN_TICKET_CREATE', '86'),
(91, 'Update/Reply Ticket', 'ROLE_ADMIN_TICKET_UPDATE', '86'),
(92, 'Close Ticket', 'ROLE_ADMIN_TICKET_CLOSE', '86');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `save_selected_roles`
--
ALTER TABLE `save_selected_roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `treeview_items`
--
ALTER TABLE `treeview_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `save_selected_roles`
--
ALTER TABLE `save_selected_roles`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `treeview_items`
--
ALTER TABLE `treeview_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
