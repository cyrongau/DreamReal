-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: homzen
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'aoTq3wAdoDdMNuvmszOJ01j9NtihOAGl',1,'2024-07-31 06:44:35','2024-07-31 06:44:35','2024-07-31 06:44:35');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2024-07-31 13:44:48',NULL,1,'2024-07-31 06:44:48','2024-07-31 06:44:48'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2024-07-31 13:44:48',NULL,1,'2024-07-31 06:44:48','2024-07-31 06:44:48'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2024-07-31 13:44:48',NULL,1,'2024-07-31 06:44:48','2024-07-31 06:44:48'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2024-07-31 13:44:48',NULL,1,'2024-07-31 06:44:48','2024-07-31 06:44:48');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Senior Full Stack Engineer, Creator Success Full Time','Dianamouth, Mayotte','$2,784','Constantly changing work patterns and norms, and the need for organizational resiliency','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48'),(2,'Data Science Specialist, Analytics Division','West Jeanettemouth, Guyana','$8,253','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum — semper quis lectus nulla','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48'),(3,'Product Marketing Manager, Growth Team','Lake Lane, Armenia','$6,712','Crafting compelling marketing strategies to drive user acquisition and retention','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48'),(4,'UX/UI Designer, User Experience Team','Hintztown, Moldova','$8,686','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48'),(5,'Operations Manager, Supply Chain Division','Magnoliaside, Saint Kitts and Nevis','$5,055','Ensuring smooth and efficient supply chain operations for timely product delivery','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48'),(6,'Financial Analyst, Investment Group','Torphyborough, Monaco','$1,458','Analyzing market trends and investment opportunities for optimal financial outcomes','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2024-07-31 06:44:48','2024-07-31 06:44:48');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Buying a Home',0,'Excepturi dicta quia itaque consequuntur dignissimos minus et. Et distinctio delectus totam autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(2,'Selling a Home',0,'Dolorum facilis qui dolores dolor et beatae. Cupiditate atque sequi sed. Alias iusto praesentium voluptatem eligendi odio consequatur tempore ea.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(3,'Market Trends',0,'Alias nemo laboriosam earum doloribus inventore. Aspernatur et fuga in a.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(4,'Home Improvement',0,'Ut optio culpa fugit a voluptas. Debitis in dolore architecto dolore. Odio et iste aut dolorem quibusdam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(5,'Real Estate Investing',0,'Aut aut placeat quo qui natus. Modi quaerat maiores voluptas omnis ullam asperiores. Natus quisquam facilis vitae aliquam sunt quia. Omnis molestias accusantium consequuntur reiciendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(6,'Neighborhood Guides',0,'Placeat cupiditate numquam nemo similique. Unde atque aut qui et et eum numquam ullam. Iure ipsam ut voluptatem in quisquam dolor at.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-31 06:44:44','2024-07-31 06:44:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/4.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(2,'London','london',2,2,NULL,0,'locations/1.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(3,'New York City','new-york-city',3,3,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(4,'Amsterdam','amsterdam',4,4,NULL,0,'locations/1.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(6,'Munich','munich',6,6,NULL,0,'locations/4.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(7,'Tokyo','tokyo',7,7,NULL,0,'locations/1.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(8,'Toronto','toronto',8,8,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(9,'Sydney','sydney',9,9,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(10,'Milan','milan',10,10,NULL,0,'locations/2.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(11,'Los Angeles','los-angeles',11,3,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(12,'Berlin','berlin',12,6,NULL,0,'locations/1.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(13,'Osaka','osaka',13,7,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(14,'Vancouver','vancouver',14,8,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(15,'Melbourne','melbourne',15,9,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(16,'Rome','rome',16,10,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(17,'Marseille','marseille',17,1,NULL,0,'locations/2.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(18,'Liverpool','liverpool',18,2,NULL,0,'locations/4.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(19,'Chicago','chicago',19,3,NULL,0,'locations/1.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(20,'Rotterdam','rotterdam',20,4,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(21,'Aarhus','aarhus',21,5,NULL,0,'locations/4.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(22,'Frankfurt','frankfurt',22,6,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(23,'Kyoto','kyoto',23,7,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(24,'Montreal','montreal',24,8,NULL,0,'locations/5.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(25,'Brisbane','brisbane',25,9,NULL,0,'locations/2.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35'),(26,'Naples','naples',26,10,NULL,0,'locations/3.jpg',0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,0,'published',NULL,NULL,'FRA'),(2,'England','English',0,0,'published',NULL,NULL,'UK'),(3,'USA','Americans',0,0,'published',NULL,NULL,'US'),(4,'Holland','Dutch',0,0,'published',NULL,NULL,'HL'),(5,'Denmark','Danish',0,0,'published',NULL,NULL,'DN'),(6,'Germany','German',0,0,'published',NULL,NULL,'DE'),(7,'Japan','Japanese',0,0,'published',NULL,NULL,'JP'),(8,'Canada','Canadian',0,0,'published',NULL,NULL,'CA'),(9,'Australia','Australian',0,0,'published',NULL,NULL,'AU'),(10,'Italy','Italian',0,0,'published',NULL,NULL,'IT');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Buying',0,'published','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL),(2,'Selling',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL),(3,'Renting',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL),(4,'Financing',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(2,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(3,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(4,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(5,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(6,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(7,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',1,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(8,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(9,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(10,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(11,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(12,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',2,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(13,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(14,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(15,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(16,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(17,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(18,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',3,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(19,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(20,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(21,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(22,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(23,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(24,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34'),(25,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',4,'published','2024-07-31 06:44:34','2024-07-31 06:44:34');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','cf777e8cb6161a5c3fd453d8a450a94c',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','b5432ec512bef4e73a126acf0efef352',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',6977,'locations/1.jpg','[]','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL,'public'),(2,0,'10','10',1,'image/jpeg',6977,'locations/10.jpg','[]','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL,'public'),(3,0,'11','11',1,'image/jpeg',6977,'locations/11.jpg','[]','2024-07-31 06:44:34','2024-07-31 06:44:34',NULL,'public'),(4,0,'2','2',1,'image/jpeg',6977,'locations/2.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(5,0,'3','3',1,'image/jpeg',6977,'locations/3.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(6,0,'4','4',1,'image/jpeg',6977,'locations/4.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(7,0,'5','5',1,'image/jpeg',6977,'locations/5.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(8,0,'6','6',1,'image/jpeg',6977,'locations/6.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(9,0,'7','7',1,'image/jpeg',6977,'locations/7.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(10,0,'8','8',1,'image/jpeg',6977,'locations/8.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(11,0,'9','9',1,'image/jpeg',6977,'locations/9.jpg','[]','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'public'),(12,0,'1','1',2,'image/jpeg',3916,'avatars/1.jpg','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(13,0,'10','10',2,'image/png',3916,'avatars/10.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(14,0,'11','11',2,'image/png',3916,'avatars/11.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(15,0,'2','2',2,'image/jpeg',3916,'avatars/2.jpg','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(16,0,'3','3',2,'image/jpeg',3916,'avatars/3.jpg','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(17,0,'4','4',2,'image/jpeg',3916,'avatars/4.jpg','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(18,0,'4-1','4-1',2,'image/png',3916,'avatars/4-1.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(19,0,'5','5',2,'image/png',3916,'avatars/5.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(20,0,'6','6',2,'image/png',3916,'avatars/6.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(21,0,'7','7',2,'image/png',3916,'avatars/7.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(22,0,'8','8',2,'image/png',3916,'avatars/8.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(23,0,'9','9',2,'image/png',3916,'avatars/9.png','[]','2024-07-31 06:44:36','2024-07-31 06:44:36',NULL,'public'),(24,0,'1','1',3,'image/jpeg',9803,'properties/1.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(25,0,'10','10',3,'image/jpeg',9803,'properties/10.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(26,0,'11','11',3,'image/jpeg',9803,'properties/11.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(27,0,'12','12',3,'image/jpeg',9803,'properties/12.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(28,0,'13','13',3,'image/jpeg',9803,'properties/13.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(29,0,'2','2',3,'image/jpeg',9803,'properties/2.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(30,0,'3','3',3,'image/jpeg',9803,'properties/3.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(31,0,'4','4',3,'image/jpeg',9803,'properties/4.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(32,0,'5','5',3,'image/jpeg',9803,'properties/5.jpg','[]','2024-07-31 06:44:39','2024-07-31 06:44:39',NULL,'public'),(33,0,'6','6',3,'image/jpeg',9803,'properties/6.jpg','[]','2024-07-31 06:44:40','2024-07-31 06:44:40',NULL,'public'),(34,0,'7','7',3,'image/jpeg',9803,'properties/7.jpg','[]','2024-07-31 06:44:40','2024-07-31 06:44:40',NULL,'public'),(35,0,'8','8',3,'image/jpeg',9803,'properties/8.jpg','[]','2024-07-31 06:44:40','2024-07-31 06:44:40',NULL,'public'),(36,0,'9','9',3,'image/jpeg',9803,'properties/9.jpg','[]','2024-07-31 06:44:40','2024-07-31 06:44:40',NULL,'public'),(37,0,'1','1',4,'image/jpeg',9803,'posts/1.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(38,0,'10','10',4,'image/jpeg',9803,'posts/10.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(39,0,'2','2',4,'image/jpeg',9803,'posts/2.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(40,0,'3','3',4,'image/jpeg',9803,'posts/3.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(41,0,'4','4',4,'image/jpeg',9803,'posts/4.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(42,0,'5','5',4,'image/jpeg',9803,'posts/5.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(43,0,'6','6',4,'image/jpeg',9803,'posts/6.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(44,0,'7','7',4,'image/jpeg',9803,'posts/7.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(45,0,'8','8',4,'image/jpeg',9803,'posts/8.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(46,0,'9','9',4,'image/jpeg',9803,'posts/9.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(47,0,'md-1','md-1',4,'image/jpeg',9803,'posts/md-1.jpg','[]','2024-07-31 06:44:43','2024-07-31 06:44:43',NULL,'public'),(48,0,'md-2','md-2',4,'image/jpeg',9803,'posts/md-2.jpg','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(49,0,'about-us-contact','about-us-contact',5,'image/jpeg',19409,'pages/about-us-contact.jpg','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(50,0,'about-us-video','about-us-video',5,'image/jpeg',16191,'pages/about-us-video.jpg','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(51,0,'call-to-action','call-to-action',5,'image/png',9051,'pages/call-to-action.png','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(52,0,'house-service','house-service',5,'image/png',10923,'pages/house-service.png','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(53,0,'properties','properties',5,'image/png',16974,'pages/properties.png','[]','2024-07-31 06:44:44','2024-07-31 06:44:44',NULL,'public'),(54,0,'service-1','service-1',5,'image/png',24047,'pages/service-1.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(55,0,'service-2','service-2',5,'image/png',20728,'pages/service-2.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(56,0,'service-3','service-3',5,'image/png',22307,'pages/service-3.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(57,0,'service-4','service-4',5,'image/png',30364,'pages/service-4.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(58,0,'service-5','service-5',5,'image/png',29631,'pages/service-5.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(59,0,'service-6','service-6',5,'image/png',29837,'pages/service-6.png','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(60,0,'slider-1','slider-1',5,'image/jpeg',27445,'pages/slider-1.jpg','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(61,0,'slider-2','slider-2',5,'image/jpeg',23889,'pages/slider-2.jpg','[]','2024-07-31 06:44:45','2024-07-31 06:44:45',NULL,'public'),(62,0,'slider-3','slider-3',5,'image/jpeg',23889,'pages/slider-3.jpg','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(63,0,'slider-4','slider-4',5,'image/jpeg',23889,'pages/slider-4.jpg','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(64,0,'slider-5','slider-5',5,'image/jpeg',23889,'pages/slider-5.jpg','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(65,0,'slider-6','slider-6',5,'image/png',33637,'pages/slider-6.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(66,0,'slider-left','slider-left',5,'image/jpeg',11424,'pages/slider-left.jpg','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(67,0,'testimonial-banner','testimonial-banner',5,'image/png',13232,'pages/testimonial-banner.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(68,0,'asana','asana',6,'image/png',3510,'partners/asana.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(69,0,'github','github',6,'image/png',3510,'partners/github.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(70,0,'lhtech','lhtech',6,'image/png',3510,'partners/lhtech.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(71,0,'panadoxn','panadoxn',6,'image/png',3510,'partners/panadoxn.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(72,0,'shangxi','shangxi',6,'image/png',3510,'partners/shangxi.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(73,0,'tyaalpha','tyaalpha',6,'image/png',3510,'partners/tyaalpha.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(74,0,'vanfaba','vanfaba',6,'image/png',3510,'partners/vanfaba.png','[]','2024-07-31 06:44:46','2024-07-31 06:44:46',NULL,'public'),(75,0,'banner-footer','banner-footer',7,'image/png',92460,'general/banner-footer.png','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public'),(76,0,'favicon','favicon',7,'image/png',1895,'general/favicon.png','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public'),(77,0,'logo-light','logo-light',7,'image/png',4687,'general/logo-light.png','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public'),(78,0,'logo','logo',7,'image/png',5429,'general/logo.png','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public'),(79,0,'newsletter-image','newsletter-image',7,'image/jpeg',100774,'general/newsletter-image.jpg','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public'),(80,0,'placeholder','placeholder',7,'image/png',12344,'general/placeholder.png','[]','2024-07-31 06:44:47','2024-07-31 06:44:47',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'locations',NULL,'locations',0,'2024-07-31 06:44:34','2024-07-31 06:44:34',NULL),(2,0,'avatars',NULL,'avatars',0,'2024-07-31 06:44:36','2024-07-31 06:44:36',NULL),(3,0,'properties',NULL,'properties',0,'2024-07-31 06:44:39','2024-07-31 06:44:39',NULL),(4,0,'posts',NULL,'posts',0,'2024-07-31 06:44:43','2024-07-31 06:44:43',NULL),(5,0,'pages',NULL,'pages',0,'2024-07-31 06:44:44','2024-07-31 06:44:44',NULL),(6,0,'partners',NULL,'partners',0,'2024-07-31 06:44:46','2024-07-31 06:44:46',NULL),(7,0,'general',NULL,'general',0,'2024-07-31 06:44:47','2024-07-31 06:44:47',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-07-31 06:44:47','2024-07-31 06:44:47');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,NULL,NULL,0,'Home',NULL,'_self',1,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1',NULL,0,'Homepage 1',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Homepage 2',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Homepage 3',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Homepage 4',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Homepage 5',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(7,1,0,NULL,NULL,'/projects',NULL,0,'Projects',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(8,1,0,NULL,NULL,'/properties',NULL,0,'Properties',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(9,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(10,1,9,NULL,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(11,1,9,NULL,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(12,1,9,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(13,1,9,10,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(14,1,9,8,'Botble\\Page\\Models\\Page','/our-services',NULL,0,'Our Services',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(15,1,9,11,'Botble\\Page\\Models\\Page','/pricing-plans',NULL,0,'Pricing',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(16,1,9,7,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact Us',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(17,1,9,9,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(18,1,9,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(19,1,9,13,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(20,1,0,NULL,NULL,'#',NULL,0,'Blog',NULL,'_self',1,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(21,1,20,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47'),(22,1,20,NULL,NULL,'/news/the-benefits-of-smart-home-technology',NULL,0,'Blog Detail',NULL,'_self',0,'2024-07-31 06:44:47','2024-07-31 06:44:47');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-07-31 06:44:47','2024-07-31 06:44:47');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"ti ti-map\"]',1,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(2,'icon','[\"ti ti-bell\"]',2,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(3,'icon','[\"ti ti-mail\"]',3,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(4,'icon','[\"ti ti-chart-bar\"]',4,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(5,'icon','[\"ti ti-calendar\"]',5,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(6,'icon','[\"ti ti-home\"]',6,'Botble\\RealEstate\\Models\\Category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',1,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:36','2024-07-31 06:44:36'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',2,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:36','2024-07-31 06:44:36'),(9,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',3,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:37','2024-07-31 06:44:37'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',4,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:37','2024-07-31 06:44:37'),(11,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',5,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:37','2024-07-31 06:44:37'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',6,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:37','2024-07-31 06:44:37'),(13,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',7,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:38','2024-07-31 06:44:38'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',8,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:38','2024-07-31 06:44:38'),(15,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',9,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:38','2024-07-31 06:44:38'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',10,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:38','2024-07-31 06:44:38'),(17,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',11,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:39','2024-07-31 06:44:39'),(18,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',12,'Botble\\RealEstate\\Models\\Account','2024-07-31 06:44:39','2024-07-31 06:44:39'),(19,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',1,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(20,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',2,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(21,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',3,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(22,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',4,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(23,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',5,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(24,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',6,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(25,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',7,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(26,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',8,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(27,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',9,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(28,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',10,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(29,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',11,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(30,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',12,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(31,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',13,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(32,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',14,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(33,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',15,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(34,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',16,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(35,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',17,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(36,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',18,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(37,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',19,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:40','2024-07-31 06:44:40'),(38,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',20,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(39,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',21,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(40,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',22,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(41,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',23,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(42,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',24,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(43,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',25,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(44,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',26,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(45,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',27,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(46,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',28,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(47,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',29,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(48,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',30,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(49,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',31,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(50,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',32,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(51,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',33,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(52,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',34,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(53,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',35,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(54,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',36,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(55,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',37,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(56,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',38,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:41','2024-07-31 06:44:41'),(57,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',39,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(58,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',40,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(59,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',41,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(60,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',42,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(61,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',43,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(62,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',44,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(63,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',45,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(64,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',46,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(65,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',47,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(66,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',48,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(67,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',49,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(68,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',50,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(69,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',51,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(70,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',52,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(71,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',53,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(72,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',54,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(73,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',55,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(74,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',56,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(75,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',57,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:42','2024-07-31 06:44:42'),(76,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',58,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:43','2024-07-31 06:44:43'),(77,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',59,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:43','2024-07-31 06:44:43'),(78,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',60,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:43','2024-07-31 06:44:43'),(79,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',61,'Botble\\RealEstate\\Models\\Property','2024-07-31 06:44:43','2024-07-31 06:44:43'),(80,'breadcrumb','[\"no\"]',1,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(81,'breadcrumb','[\"no\"]',2,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(82,'breadcrumb','[\"no\"]',3,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(83,'breadcrumb','[\"no\"]',5,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(84,'breadcrumb','[\"yes\"]',6,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(85,'breadcrumb','[\"yes\"]',7,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(86,'breadcrumb','[\"yes\"]',8,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(87,'breadcrumb','[\"yes\"]',9,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(88,'breadcrumb','[\"yes\"]',10,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(89,'breadcrumb','[\"yes\"]',11,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(90,'breadcrumb','[\"yes\"]',12,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(91,'breadcrumb','[\"no\"]',13,'Botble\\Page\\Models\\Page','2024-07-31 06:44:47','2024-07-31 06:44:47'),(92,'image','[\"general\\/job-details-thumb.png\"]',1,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(93,'icon','[\"icons\\/icon1.png\"]',1,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(94,'apply_url','[\"\\/contact\"]',1,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(95,'image','[\"general\\/job-details-thumb.png\"]',2,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(96,'icon','[\"icons\\/icon2.png\"]',2,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(97,'apply_url','[\"\\/contact\"]',2,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(98,'image','[\"general\\/job-details-thumb.png\"]',3,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(99,'icon','[\"icons\\/icon3.png\"]',3,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(100,'apply_url','[\"\\/contact\"]',3,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(101,'image','[\"general\\/job-details-thumb.png\"]',4,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(102,'icon','[\"icons\\/icon4.png\"]',4,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(103,'apply_url','[\"\\/contact\"]',4,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(104,'image','[\"general\\/job-details-thumb.png\"]',5,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(105,'icon','[\"icons\\/icon5.png\"]',5,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(106,'apply_url','[\"\\/contact\"]',5,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(107,'image','[\"general\\/job-details-thumb.png\"]',6,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(108,'icon','[\"icons\\/icon6.png\"]',6,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48'),(109,'apply_url','[\"\\/contact\"]',6,'ArchiElite\\Career\\Models\\Career','2024-07-31 06:44:48','2024-07-31 06:44:48');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(34,'2024_07_03_162029_remove_plugin_team',1),(35,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(36,'2024_07_12_100000_change_random_hash_for_media',1),(37,'2020_11_18_150916_ads_create_ads_table',2),(38,'2021_12_02_035301_add_ads_translations_table',2),(39,'2023_04_17_062645_add_open_in_new_tab',2),(40,'2023_11_07_023805_add_tablet_mobile_image',2),(41,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(42,'2024_04_27_100730_improve_analytics_setting',3),(43,'2023_08_11_060908_create_announcements_table',4),(44,'2015_06_29_025744_create_audit_history',5),(45,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(46,'2015_06_18_033822_create_blog_table',6),(47,'2021_02_16_092633_remove_default_value_for_author_type',6),(48,'2021_12_03_030600_create_blog_translations',6),(49,'2022_04_19_113923_add_index_to_table_posts',6),(50,'2023_08_29_074620_make_column_author_id_nullable',6),(51,'2024_07_30_091615_fix_order_column_in_categories_table',6),(52,'2019_06_24_211801_create_career_table',7),(53,'2021_12_04_095357_create_careers_translations_table',7),(54,'2023_09_20_050420_add_missing_translation_column',7),(55,'2016_06_17_091537_create_contacts_table',8),(56,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',8),(57,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',8),(58,'2024_03_25_000001_update_captcha_settings_for_contact',8),(59,'2024_04_19_063914_create_custom_fields_table',8),(60,'2018_07_09_221238_create_faq_table',9),(61,'2021_12_03_082134_create_faq_translations',9),(62,'2023_11_17_063408_add_description_column_to_faq_categories_table',9),(63,'2016_10_03_032336_create_languages_table',10),(64,'2023_09_14_022423_add_index_for_language_table',10),(65,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(66,'2021_12_03_075608_create_page_translations',11),(67,'2023_07_06_011444_create_slug_translations_table',11),(68,'2019_11_18_061011_create_country_table',12),(69,'2021_12_03_084118_create_location_translations',12),(70,'2021_12_03_094518_migrate_old_location_data',12),(71,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(72,'2022_01_16_085908_improve_plugin_location',12),(73,'2022_08_04_052122_delete_location_backup_tables',12),(74,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(75,'2023_07_26_041451_add_more_columns_to_location_table',12),(76,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(77,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(78,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(79,'2017_10_24_154832_create_newsletter_table',13),(80,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(81,'2017_05_18_080441_create_payment_tables',14),(82,'2021_03_27_144913_add_customer_type_into_table_payments',14),(83,'2021_05_24_034720_make_column_currency_nullable',14),(84,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(85,'2021_10_19_020859_update_metadata_field',14),(86,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(87,'2022_07_07_153354_update_charge_id_in_table_payments',14),(88,'2024_07_04_083133_create_payment_logs_table',14),(89,'2018_06_22_032304_create_real_estate_table',15),(90,'2021_02_11_031126_update_price_column_in_projects_and_properties',15),(91,'2021_03_08_024049_add_lat_long_into_real_estate_tables',15),(92,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',15),(93,'2021_07_07_021757_update_table_account_activity_logs',15),(94,'2021_09_29_042758_create_re_categories_multilevel_table',15),(95,'2021_10_31_031254_add_company_to_accounts_table',15),(96,'2021_12_10_034807_create_real_estate_translation_tables',15),(97,'2021_12_18_081636_add_property_project_views_count',15),(98,'2022_05_04_033044_update_column_images_in_real_estate_tables',15),(99,'2022_07_02_081723_fix_expired_date_column',15),(100,'2022_08_01_090213_update_table_properties_and_projects',15),(101,'2023_01_31_023233_create_re_custom_fields_table',15),(102,'2023_02_06_000000_add_location_to_re_accounts_table',15),(103,'2023_02_06_024257_add_package_translations',15),(104,'2023_02_08_062457_add_custom_fields_translation_table',15),(105,'2023_02_15_024644_create_re_reviews_table',15),(106,'2023_02_20_072604_create_re_invoices_table',15),(107,'2023_02_20_081251_create_re_account_packages_table',15),(108,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',15),(109,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',15),(110,'2023_05_09_062031_unique_reviews_table',15),(111,'2023_05_26_034353_fix_properties_projects_image',15),(112,'2023_05_27_004215_add_column_ip_into_table_re_consults',15),(113,'2023_07_25_034513_create_re_coupons_table',15),(114,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',15),(115,'2023_08_02_074208_change_square_column_to_float',15),(116,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',15),(117,'2023_08_09_004607_make_column_project_id_nullable',15),(118,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',15),(119,'2023_11_21_071820_add_missing_slug_for_agents',15),(120,'2024_01_11_084816_add_investor_translations_table',15),(121,'2024_01_31_022842_add_description_to_re_packages_table',15),(122,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',15),(123,'2024_04_23_124505_add_features_column_to_re_packages',15),(124,'2024_04_23_135106_add_columns_to_re_investors',15),(125,'2024_05_25_000001_update_captcha_settings_for_real_estate',15),(126,'2024_06_16_163428_make_investor_id_nullable',15),(127,'2024_06_20_103539_create_consult_custom_fields_table',15),(128,'2024_07_08_235824_fix_facilities_primary_key',15),(129,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',15),(130,'2018_07_09_214610_create_testimonial_table',16),(131,'2021_12_03_083642_create_testimonials_translations',16),(132,'2016_10_07_193005_create_translations_table',17),(133,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','[hero-banner style=\"1\" title=\"Find Your\" animation_text=\"Dream Home,Perfect Home,Real Estate\" description=\"We are a real estate agency that will help you find the best residence you dream of, let’s discuss for your dream house?\" background_image=\"pages/slider-1.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6,7\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[services style=\"1\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"4\" counters_label_1=\"SATISFIED CLIENTS\" counters_number_1=\"85\" counters_label_2=\"AWARDS RECEIVED\" counters_number_2=\"112\" counters_label_3=\"SUCCESSFUL TRANSACTIONS\" counters_number_3=\"32\" counters_label_4=\"MONTHLY TRAFFIC\" counters_number_4=\"66\" button_label=\"View All Services\" button_url=\"/\" enable_lazy_loading=\"yes\"][/services]\n[services style=\"1\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Proven Expertise\" services_description_1=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Customized Solutions\" services_description_2=\"We pride ourselves on crafting personalized strategies to match your unique goals, ensuring a seamless real estate journey.\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Transparent Partnerships\" services_description_3=\"Transparency is key in our client relationships. We prioritize clear communication and ethical practices, fostering trust and reliability throughout.\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"1\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(2,'Homepage 2','[hero-banner style=\"2\" title=\"Find A Home That\" animation_text=\"Perfectly,Dream Home\" description=\"We are a real estate agency that will help you find the best residence you dream of.\" background_image=\"pages/slider-left.jpg\" slider_image_1=\"pages/slider-2.jpg\" slider_image_2=\"pages/slider-3.jpg\" slider_image_3=\"pages/slider-4.jpg\" slider_image_4=\"pages/slider-5.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[property-categories style=\"1\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"transparent\" button_label=\"View All\" button_url=\"/categories\" enable_lazy_loading=\"yes\"][/property-categories]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"Featured Properties\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location style=\"2\" title=\"Our Location For You\" subtitle=\"Explore States\" type=\"state\" state_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"3\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\" background_color=\"#f7f7f7\"][/properties]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"3\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(3,'Homepage 3','[hero-banner style=\"3\" title=\"Indulge in Your\" animation_text=\"Sanctuary,Safe House\" description=\"Discover your private oasis at Homzen, where every corner, from the spacious garden to the relaxing pool, is crafted for your comfort and enjoyment.\" background_image=\"pages/slider-6.png\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\" button_label=\"Contact Us\" button_url=\"/contact\"][/hero-banner]\n[location style=\"3\" title=\"Properties By Cities\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,2,3,4,5,6,7,21,24\" destination=\"property\" background_color=\"#f7f7f7\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[property-categories style=\"2\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"#161e2d\" enable_lazy_loading=\"yes\"][/property-categories]\n[services style=\"2\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"4\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" background_image=\"pages/testimonial-banner.png\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"2\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(4,'Homepage 4','[hero-banner style=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"5\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"4\" title=\"Discover What Sets Our\" subtitle=\"WHAT WE DO\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys.\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-12-hours\" services_icon_image_1=\"pages/service-1.png\" services_button_label_1=\"Learn More\" services_button_url_1=\"/contact\" services_title_2=\"Rent A Home\" services_description_2=\"Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_icon_image_2=\"pages/service-2.png\" services_button_label_2=\"Learn More\" services_button_url_2=\"/contact\" services_title_3=\"Buy A New Home\" services_description_3=\"Showcasing your property\'s best features for a successful sale.\" services_icon_image_3=\"pages/service-3.png\" services_button_label_3=\"Learn More\" services_button_url_3=\"/contact\" counters_quantity=\"1\" background_image=\"pages/house-service.png\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3\" background_color=\"transparent\" items_per_row=\"3\" enable_lazy_loading=\"yes\"][/agents]\n[properties style=\"6\" title=\"Recommended for you\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_image=\"pages/properties.png\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"OUR TESTIMONIALS\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]\n[call-to-action title=\"List Your Properties On Homzen, Join Us Now!\" subtitle=\"BECOME PARTNERS\" button_label=\"Become A Hosting\" button_url=\"/contact\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(5,'Homepage 5','[hero-banner style=\"5\" property_id=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[location style=\"4\" title=\"Our Location For You\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,3,5,6,11,23\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"7\" title=\"Recommended For You\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3,4\" background_color=\"transparent\" items_per_row=\"2\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"TOP PROPERTIES\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"2\" title=\"The Most Recent Estate\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"4\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(6,'Blog',NULL,1,NULL,NULL,NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(7,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"1\" title=\"Drop Us A Line\" description=\"Feel free to connect with us through our online channels for updates, news, and more.\" show_information_box=\"1\" contact_title=\"Contact Us\" quantity=\"3\" label_1=\"Address:\" content_1=\"101 E 129th St, East Chicago, IN 46312 United States\" label_2=\"Information:\" content_2=\"1-333-345-6868 hi.themesflat@gmail.com\" label_3=\"Open time:\" content_3=\"Monday - Friday: 08:00 - 20:00 Saturday - Sunday: 10:00 - 18:00\" show_social_links=\"1\"][/contact-form]\n[google-map]101 E 129th St, East Chicago, IN 46312 United States[/google-map]',1,NULL,NULL,NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(8,'Our Services','[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#ffffff\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1,2,3,4\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(9,'FAQs','[faqs category_ids=\"1,2,3\" display_type=\"group\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(10,'About Us','[about-us title=\"Welcome To The &lt;br&gt; Homzen\" description=\"Welcome to Homzen, where we turn houses into homes and dreams into reality. At Homzen, we understand that a home is more than just a physical space; it\'s a place where memories are created, families grow, and life unfolds.\" button_label=\"Learn More\" button_url=\"/\" image=\"pages/about-us-video.jpg\" video_url=\"https://youtu.be/tRxGSHL8bI0\"][/about-us]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]\n[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"2\" title=\"We\'re Always Eager To Hear From You!\" subtitle=\"Contact Us\" description=\"Sed ullamcorper nulla egestas at. Aenean eget tortor nec elit sagittis molestie. Pellentesque tempus massa in.r nulla egestas at. Aenean eget tortor nec elit sagittis mole\" background_image=\"pages/about-us-contact.jpg\"][/contact-form]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" items_per_row=\"4\" enable_lazy_loading=\"yes\"][/agents]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(11,'Pricing Plans','[pricing-plan title=\"Our Subscription\" subtitle=\"Pricing\" package_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/pricing-plan]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(12,'Privacy Policy','[content-tab title=\"Terms Of Use\" quantity=\"5\" title_1=\"Terms\" content_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_2=\"Limitations\" content_2=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_3=\"Revisions and errata\" content_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex.\" title_4=\"Site terms of use modifications\" content_4=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_5=\"Risks\" content_5=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" enable_lazy_loading=\"yes\"][/content-tab]',1,NULL,NULL,NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(13,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2024-08-30 13:44:47\" address=\"58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"pages/properties.png\"][/coming-soon]',1,NULL,'no-layout',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(14,'Properties','',1,NULL,'no-layout',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47'),(15,'Projects','',1,NULL,'no-layout',NULL,'published','2024-07-31 06:44:47','2024-07-31 06:44:47');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (4,1),(1,1),(3,2),(5,2),(4,3),(5,4),(1,4),(1,5),(2,5),(4,6),(3,7),(6,7),(3,8),(5,8),(1,9),(6,9),(3,10),(1,10),(5,11),(1,11),(5,12),(6,12),(4,13),(5,14),(3,14),(6,15),(3,15),(6,16),(4,17),(1,17),(4,18),(1,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (4,1),(6,1),(2,1),(3,2),(6,2),(7,2),(1,3),(6,3),(4,4),(3,4),(8,5),(2,5),(6,5),(1,6),(2,6),(8,6),(5,7),(2,7),(1,7),(4,8),(3,8),(1,8),(4,9),(6,9),(2,10),(5,10),(3,10),(3,11),(7,11),(2,11),(2,12),(1,12),(5,12),(1,13),(2,13),(5,13),(1,14),(6,14),(8,14),(6,15),(8,15),(1,15),(4,16),(3,17),(5,17),(7,17),(3,18),(8,18),(7,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Top 10 Tips for First-time Home Buyers','Then she went out, but it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the moon, and memory, and muchness--you know you say things are worse than.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',706,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(2,'How to Stage Your Home for a Quick Sale','Alice said; \'there\'s a large fan in the back. However, it was too much overcome to do it?\' \'In my youth,\' Father William replied to his ear. Alice considered a little, and then they both bowed low.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',245,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(3,'Understanding the Current Real Estate Market Trends','However, she soon found herself lying on the bank, with her head!\' Those whom she sentenced were taken into custody by the officers of the gloves, and she was always ready to play croquet with the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',1966,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(4,'DIY Home Improvement Projects That Add Value','Mouse, sharply and very soon finished off the mushroom, and her face in some alarm. This time there could be beheaded, and that he shook his head mournfully. \'Not I!\' he replied. \'We quarrelled last.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/8.jpg',2287,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(5,'A Beginner’s Guide to Real Estate Investing','Alice recognised the White Rabbit, with a trumpet in one hand and a large crowd collected round it: there were three little sisters--they were learning to draw, you know--\' She had already heard her.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',901,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(6,'How to Choose the Right Neighborhood for Your Family','King replied. Here the other players, and shouting \'Off with his knuckles. It was as much as she spoke; \'either you or your head must be a great hurry; \'this paper has just been reading about; and.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/8.jpg',2067,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(7,'Luxury Homes: What to Look For','White Rabbit, \'but it doesn\'t understand English,\' thought Alice; \'I might as well go in at once.\' And in she went. Once more she found her head through the door, staring stupidly up into the sky.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/10.jpg',2091,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(8,'Property Management: Best Practices for Landlords','March Hare. Alice was rather doubtful whether she could not be denied, so she helped herself to about two feet high: even then she walked down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',1974,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(9,'Renovation Ideas to Increase Your Home’s Value','I don\'t put my arm round your waist,\' the Duchess sang the second verse of the bottle was NOT marked \'poison,\' so Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first position.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/7.jpg',1092,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(10,'The Ultimate Guide to Buying a Vacation Home','Just at this moment Five, who had been running half an hour or so, and were quite dry again, the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' cried Alice again, in a day did you.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',367,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(11,'How to Successfully Sell Your Home in a Buyer’s Market','Alice, very much to-night, I should say what you mean,\' said Alice. \'Of course not,\' Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon, \'you first.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/10.jpg',2160,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(12,'Home Inspection: What to Expect and How to Prepare','Gryphon. \'Turn a somersault in the distance, sitting sad and lonely on a bough of a tree. By the time at the bottom of the tea--\' \'The twinkling of the deepest contempt. \'I\'ve seen hatters before,\'.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',1980,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(13,'Eco-friendly Home Improvements for Sustainable Living','Alice; \'I daresay it\'s a very curious sensation, which puzzled her a good opportunity for croqueting one of these cakes,\' she thought, \'and hand round the refreshments!\' But there seemed to Alice.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/3.jpg',2112,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(14,'How to Navigate the Mortgage Process','I COULD NOT SWIM--\" you can\'t help that,\' said the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, as the game was in a large canvas bag, which tied up at the stick, and made a.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/3.jpg',1307,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(15,'Real Estate Market Analysis: What You Need to Know','I will prosecute YOU.--Come, I\'ll take no denial; We must have been ill.\' \'So they were,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little pattering of feet on the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',2104,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(16,'Tips for Renting Out Your Property','Alice, \'and those twelve creatures,\' (she was so small as this before, never! And I declare it\'s too bad, that it led into a pig,\' Alice quietly said, just as if it thought that SOMEBODY ought to.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',343,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(17,'Understanding Property Taxes and How to Lower Them','WAS a curious feeling!\' said Alice; not that she was out of the country is, you ARE a simpleton.\' Alice did not sneeze, were the verses on his knee, and the Queen\'s ears--\' the Rabbit angrily.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/6.jpg',2371,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44'),(18,'The Benefits of Smart Home Technology','As soon as look at me like a mouse, That he met in the book,\' said the Caterpillar. \'Well, I\'ve tried to fancy what the flame of a muchness?\' \'Really, now you ask me,\' said Alice, \'but I haven\'t had.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/1.jpg',1634,NULL,'2024-07-31 06:44:44','2024-07-31 06:44:44');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_account_activity_logs_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `re_account_password_resets_email_index` (`email`),
  KEY `re_account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_accounts_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Lavern','Bogan','Alice to herself, \'Now, what.',NULL,'john.smith@botble.com','harmonpredovic','$2y$12$1Eyz7Nmzj1S81J3XGZ1ZLuOdd0dhitOaTZHLGm2HRN1LwYq5Y45iS',14,'1980-06-21','+14325973535',10,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:36','2024-07-31 06:44:36',0,1,NULL,NULL,NULL,NULL),(2,'Colt','Toy','Alice in a low, trembling.',NULL,'agent@botble.com','tadams','$2y$12$JtOTtRBycXwdLs57XjEUe.JATvkKl92iPKzNnVBJoU8bLcVlWFcHS',17,'2018-09-04','+13465127397',10,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:36','2024-07-31 06:44:36',0,1,NULL,NULL,NULL,NULL),(3,'Ada','Pfannerstill','Hatter. He had been of late.',NULL,'merle.torphy@kassulke.com','tracey80','$2y$12$U/eVq1LTUj1hi.AG/lxjaeewuGqxF0nNWz1RaXgw5Gw.fp8kv3Sn.',17,'1996-10-20','+16617171845',9,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:37','2024-07-31 06:44:37',1,1,NULL,NULL,NULL,NULL),(4,'Rafaela','Zboncak','Alice. \'I\'m glad I\'ve seen.',NULL,'qreynolds@ortiz.com','edwardorippin','$2y$12$vz.hkEuvH0uiAK4rPF5/ie6IClMKT6V.BQXNtydIAmQhsWICmTd86',15,'1986-09-16','+17854570826',10,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:37','2024-07-31 06:44:37',0,1,NULL,NULL,NULL,NULL),(5,'Elijah','Fay','King and the little glass.',NULL,'ndaugherty@turner.org','arch69','$2y$12$D2wXonFbsmAQ6DrEKiE3HuHOGDqc15Bzn6RwBK6obW9Yi3MnK1JDC',13,'2013-02-28','+15047722050',8,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:37','2024-07-31 06:44:37',0,1,NULL,NULL,NULL,NULL),(6,'Karl','Keeling','I don\'t take this child away.',NULL,'calista.veum@parker.net','langhalie','$2y$12$e3cUMWJkeJjSgTMQDiFlgOiSJZX.I5xajNOAkTKID6CcOpufA2B4a',15,'1971-12-31','+16785626792',4,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:37','2024-07-31 06:44:37',0,1,NULL,NULL,NULL,NULL),(7,'Kamille','Hermann','Edwin and Morcar, the earls.',NULL,'eva93@ernser.com','sedrick74','$2y$12$9MnMRRo4/QOQdUuLihQMmug91t9loe6sb6fbf2CrAv.Qa7GnMQCAC',13,'1992-08-06','+17813871532',5,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:38','2024-07-31 06:44:38',0,1,NULL,NULL,NULL,NULL),(8,'Marisa','Torp','Alice began telling them her.',NULL,'durgan.jordon@beatty.com','sawaynterence','$2y$12$Ueiz6yyH3njT4NILLzpIi.qVzDJoWpX0QhsGk98x/KFitRJ.dFhfe',14,'1975-05-25','+19499882589',8,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:38','2024-07-31 06:44:38',0,1,NULL,NULL,NULL,NULL),(9,'Leonardo','Ratke','So they went on in a very.',NULL,'astrid76@hilpert.biz','sabina80','$2y$12$vsvIk/tLeaK/25JrvXoZZeP2Hnh1IugqY2hP4PGqVG5BpTQHxANhq',15,'1988-06-19','+13466259907',1,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:38','2024-07-31 06:44:38',1,1,NULL,NULL,NULL,NULL),(10,'Ferne','Koelpin','Edwin and Morcar, the earls.',NULL,'reilly.ericka@murray.com','shackett','$2y$12$jdr.gTyQoSPz3UzxsGFgS.oiQA9w.LdhDQPobK564hJ5E/Gd8TWby',18,'2012-10-24','+18317983452',9,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:38','2024-07-31 06:44:38',0,1,NULL,NULL,NULL,NULL),(11,'Kasandra','Anderson','Mock Turtle. So she began.',NULL,'tbednar@funk.com','mertzcourtney','$2y$12$KZYXRglfJUW2cI5G9BX1Y.eVW9EOG2PXJfeCPvP8uxCUGMbqIGXgq',13,'2011-09-23','+14437505707',7,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:39','2024-07-31 06:44:39',0,1,NULL,NULL,NULL,NULL),(12,'Corbin','Schumm','I ought to be a person of.',NULL,'kylie.predovic@gmail.com','nicolette13','$2y$12$eM.mY6sve9J1D24U7LzOP.75HKWZBB0wIay.xp1LeRuBGcz2lGgZi',21,'1977-02-07','+17626073815',1,'2024-07-31 13:44:36',NULL,NULL,'2024-07-31 06:44:39','2024-07-31 06:44:39',1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2024-07-31 06:44:35','2024-07-31 06:44:35',0),(2,'Villa',NULL,'published',1,0,'2024-07-31 06:44:35','2024-07-31 06:44:35',0),(3,'Condo',NULL,'published',2,0,'2024-07-31 06:44:35','2024-07-31 06:44:35',0),(4,'House',NULL,'published',3,0,'2024-07-31 06:44:35','2024-07-31 06:44:35',0),(5,'Land',NULL,'published',4,0,'2024-07-31 06:44:35','2024-07-31 06:44:35',0),(6,'Commercial property',NULL,'published',5,0,'2024-07-31 06:44:35','2024-07-31 06:44:35',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
INSERT INTO `re_consult_custom_fields` VALUES (1,'date',0,'Schedule a Tour (optional)',NULL,999,'published','2024-07-31 06:44:48','2024-07-31 06:44:48');
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint unsigned DEFAULT NULL,
  `property_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2024-07-31 06:44:35','2024-07-31 06:44:35'),(2,'EUR','€',0,0,1,0,0.91,'2024-07-31 06:44:35','2024-07-31 06:44:35'),(3,'VND','₫',0,0,2,0,23717.5,'2024-07-31 06:44:35','2024-07-31 06:44:35');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','ti ti-hospital','published',NULL,NULL),(2,'Super Market','ti ti-shopping-cart','published',NULL,NULL),(3,'School','ti ti-school','published',NULL,NULL),(4,'Entertainment','ti ti-movie','published',NULL,NULL),(5,'Pharmacy','ti ti-pill','published',NULL,NULL),(6,'Airport','ti ti-plane-departure','published',NULL,NULL),(7,'Railways','ti ti-train','published',NULL,NULL),(8,'Bus Stop','ti ti-bus','published',NULL,NULL),(9,'Beach','ti ti-beach','published',NULL,NULL),(10,'Mall','ti ti-shopping-cart','published',NULL,NULL),(11,'Bank','ti ti-building-bank','published',NULL,NULL);
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `facility_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`facility_id`,`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,'Botble\\RealEstate\\Models\\Property','5km'),(1,2,'Botble\\RealEstate\\Models\\Property','10km'),(1,3,'Botble\\RealEstate\\Models\\Property','6km'),(1,4,'Botble\\RealEstate\\Models\\Property','14km'),(1,5,'Botble\\RealEstate\\Models\\Property','15km'),(1,6,'Botble\\RealEstate\\Models\\Property','9km'),(1,7,'Botble\\RealEstate\\Models\\Property','3km'),(1,8,'Botble\\RealEstate\\Models\\Property','7km'),(1,9,'Botble\\RealEstate\\Models\\Property','5km'),(1,10,'Botble\\RealEstate\\Models\\Property','14km'),(1,11,'Botble\\RealEstate\\Models\\Property','15km'),(1,12,'Botble\\RealEstate\\Models\\Property','17km'),(1,13,'Botble\\RealEstate\\Models\\Property','18km'),(1,14,'Botble\\RealEstate\\Models\\Property','6km'),(1,15,'Botble\\RealEstate\\Models\\Property','20km'),(1,16,'Botble\\RealEstate\\Models\\Property','19km'),(1,17,'Botble\\RealEstate\\Models\\Property','20km'),(1,18,'Botble\\RealEstate\\Models\\Property','5km'),(1,19,'Botble\\RealEstate\\Models\\Property','15km'),(1,20,'Botble\\RealEstate\\Models\\Property','11km'),(1,21,'Botble\\RealEstate\\Models\\Property','10km'),(1,22,'Botble\\RealEstate\\Models\\Property','8km'),(1,23,'Botble\\RealEstate\\Models\\Property','6km'),(1,24,'Botble\\RealEstate\\Models\\Property','9km'),(1,25,'Botble\\RealEstate\\Models\\Property','7km'),(1,26,'Botble\\RealEstate\\Models\\Property','17km'),(1,27,'Botble\\RealEstate\\Models\\Property','10km'),(1,28,'Botble\\RealEstate\\Models\\Property','7km'),(1,29,'Botble\\RealEstate\\Models\\Property','4km'),(1,30,'Botble\\RealEstate\\Models\\Property','1km'),(1,31,'Botble\\RealEstate\\Models\\Property','8km'),(1,32,'Botble\\RealEstate\\Models\\Property','14km'),(1,33,'Botble\\RealEstate\\Models\\Property','3km'),(1,34,'Botble\\RealEstate\\Models\\Property','13km'),(1,35,'Botble\\RealEstate\\Models\\Property','19km'),(1,36,'Botble\\RealEstate\\Models\\Property','10km'),(1,37,'Botble\\RealEstate\\Models\\Property','20km'),(1,38,'Botble\\RealEstate\\Models\\Property','1km'),(1,39,'Botble\\RealEstate\\Models\\Property','16km'),(1,40,'Botble\\RealEstate\\Models\\Property','9km'),(1,41,'Botble\\RealEstate\\Models\\Property','7km'),(1,42,'Botble\\RealEstate\\Models\\Property','16km'),(1,43,'Botble\\RealEstate\\Models\\Property','13km'),(1,44,'Botble\\RealEstate\\Models\\Property','11km'),(1,45,'Botble\\RealEstate\\Models\\Property','5km'),(1,46,'Botble\\RealEstate\\Models\\Property','8km'),(1,47,'Botble\\RealEstate\\Models\\Property','4km'),(1,48,'Botble\\RealEstate\\Models\\Property','16km'),(1,49,'Botble\\RealEstate\\Models\\Property','13km'),(1,50,'Botble\\RealEstate\\Models\\Property','8km'),(1,51,'Botble\\RealEstate\\Models\\Property','8km'),(1,52,'Botble\\RealEstate\\Models\\Property','14km'),(1,53,'Botble\\RealEstate\\Models\\Property','9km'),(1,54,'Botble\\RealEstate\\Models\\Property','8km'),(1,55,'Botble\\RealEstate\\Models\\Property','14km'),(1,56,'Botble\\RealEstate\\Models\\Property','11km'),(1,57,'Botble\\RealEstate\\Models\\Property','4km'),(1,58,'Botble\\RealEstate\\Models\\Property','18km'),(1,59,'Botble\\RealEstate\\Models\\Property','10km'),(1,60,'Botble\\RealEstate\\Models\\Property','19km'),(1,61,'Botble\\RealEstate\\Models\\Property','12km'),(2,1,'Botble\\RealEstate\\Models\\Property','9km'),(2,2,'Botble\\RealEstate\\Models\\Property','12km'),(2,3,'Botble\\RealEstate\\Models\\Property','12km'),(2,4,'Botble\\RealEstate\\Models\\Property','18km'),(2,5,'Botble\\RealEstate\\Models\\Property','13km'),(2,6,'Botble\\RealEstate\\Models\\Property','1km'),(2,7,'Botble\\RealEstate\\Models\\Property','13km'),(2,8,'Botble\\RealEstate\\Models\\Property','6km'),(2,9,'Botble\\RealEstate\\Models\\Property','7km'),(2,10,'Botble\\RealEstate\\Models\\Property','5km'),(2,11,'Botble\\RealEstate\\Models\\Property','18km'),(2,12,'Botble\\RealEstate\\Models\\Property','4km'),(2,13,'Botble\\RealEstate\\Models\\Property','9km'),(2,14,'Botble\\RealEstate\\Models\\Property','17km'),(2,15,'Botble\\RealEstate\\Models\\Property','14km'),(2,16,'Botble\\RealEstate\\Models\\Property','3km'),(2,17,'Botble\\RealEstate\\Models\\Property','1km'),(2,18,'Botble\\RealEstate\\Models\\Property','16km'),(2,19,'Botble\\RealEstate\\Models\\Property','20km'),(2,20,'Botble\\RealEstate\\Models\\Property','9km'),(2,21,'Botble\\RealEstate\\Models\\Property','10km'),(2,22,'Botble\\RealEstate\\Models\\Property','12km'),(2,23,'Botble\\RealEstate\\Models\\Property','15km'),(2,24,'Botble\\RealEstate\\Models\\Property','3km'),(2,25,'Botble\\RealEstate\\Models\\Property','17km'),(2,26,'Botble\\RealEstate\\Models\\Property','15km'),(2,27,'Botble\\RealEstate\\Models\\Property','11km'),(2,28,'Botble\\RealEstate\\Models\\Property','12km'),(2,29,'Botble\\RealEstate\\Models\\Property','8km'),(2,30,'Botble\\RealEstate\\Models\\Property','5km'),(2,31,'Botble\\RealEstate\\Models\\Property','6km'),(2,32,'Botble\\RealEstate\\Models\\Property','18km'),(2,33,'Botble\\RealEstate\\Models\\Property','20km'),(2,34,'Botble\\RealEstate\\Models\\Property','10km'),(2,35,'Botble\\RealEstate\\Models\\Property','12km'),(2,36,'Botble\\RealEstate\\Models\\Property','17km'),(2,37,'Botble\\RealEstate\\Models\\Property','19km'),(2,38,'Botble\\RealEstate\\Models\\Property','17km'),(2,39,'Botble\\RealEstate\\Models\\Property','1km'),(2,40,'Botble\\RealEstate\\Models\\Property','19km'),(2,41,'Botble\\RealEstate\\Models\\Property','17km'),(2,42,'Botble\\RealEstate\\Models\\Property','5km'),(2,43,'Botble\\RealEstate\\Models\\Property','19km'),(2,44,'Botble\\RealEstate\\Models\\Property','2km'),(2,45,'Botble\\RealEstate\\Models\\Property','3km'),(2,46,'Botble\\RealEstate\\Models\\Property','2km'),(2,47,'Botble\\RealEstate\\Models\\Property','20km'),(2,48,'Botble\\RealEstate\\Models\\Property','3km'),(2,49,'Botble\\RealEstate\\Models\\Property','19km'),(2,50,'Botble\\RealEstate\\Models\\Property','5km'),(2,51,'Botble\\RealEstate\\Models\\Property','14km'),(2,52,'Botble\\RealEstate\\Models\\Property','12km'),(2,53,'Botble\\RealEstate\\Models\\Property','11km'),(2,54,'Botble\\RealEstate\\Models\\Property','9km'),(2,55,'Botble\\RealEstate\\Models\\Property','6km'),(2,56,'Botble\\RealEstate\\Models\\Property','16km'),(2,57,'Botble\\RealEstate\\Models\\Property','6km'),(2,58,'Botble\\RealEstate\\Models\\Property','8km'),(2,59,'Botble\\RealEstate\\Models\\Property','19km'),(2,60,'Botble\\RealEstate\\Models\\Property','2km'),(2,61,'Botble\\RealEstate\\Models\\Property','1km'),(3,1,'Botble\\RealEstate\\Models\\Property','18km'),(3,2,'Botble\\RealEstate\\Models\\Property','11km'),(3,3,'Botble\\RealEstate\\Models\\Property','6km'),(3,4,'Botble\\RealEstate\\Models\\Property','10km'),(3,5,'Botble\\RealEstate\\Models\\Property','15km'),(3,6,'Botble\\RealEstate\\Models\\Property','18km'),(3,7,'Botble\\RealEstate\\Models\\Property','4km'),(3,8,'Botble\\RealEstate\\Models\\Property','10km'),(3,9,'Botble\\RealEstate\\Models\\Property','15km'),(3,10,'Botble\\RealEstate\\Models\\Property','1km'),(3,11,'Botble\\RealEstate\\Models\\Property','11km'),(3,12,'Botble\\RealEstate\\Models\\Property','16km'),(3,13,'Botble\\RealEstate\\Models\\Property','20km'),(3,14,'Botble\\RealEstate\\Models\\Property','14km'),(3,15,'Botble\\RealEstate\\Models\\Property','5km'),(3,16,'Botble\\RealEstate\\Models\\Property','19km'),(3,17,'Botble\\RealEstate\\Models\\Property','11km'),(3,18,'Botble\\RealEstate\\Models\\Property','18km'),(3,19,'Botble\\RealEstate\\Models\\Property','14km'),(3,20,'Botble\\RealEstate\\Models\\Property','18km'),(3,21,'Botble\\RealEstate\\Models\\Property','17km'),(3,22,'Botble\\RealEstate\\Models\\Property','12km'),(3,23,'Botble\\RealEstate\\Models\\Property','15km'),(3,24,'Botble\\RealEstate\\Models\\Property','19km'),(3,25,'Botble\\RealEstate\\Models\\Property','18km'),(3,26,'Botble\\RealEstate\\Models\\Property','9km'),(3,27,'Botble\\RealEstate\\Models\\Property','19km'),(3,28,'Botble\\RealEstate\\Models\\Property','9km'),(3,29,'Botble\\RealEstate\\Models\\Property','12km'),(3,30,'Botble\\RealEstate\\Models\\Property','19km'),(3,31,'Botble\\RealEstate\\Models\\Property','19km'),(3,32,'Botble\\RealEstate\\Models\\Property','17km'),(3,33,'Botble\\RealEstate\\Models\\Property','6km'),(3,34,'Botble\\RealEstate\\Models\\Property','9km'),(3,35,'Botble\\RealEstate\\Models\\Property','12km'),(3,36,'Botble\\RealEstate\\Models\\Property','14km'),(3,37,'Botble\\RealEstate\\Models\\Property','18km'),(3,38,'Botble\\RealEstate\\Models\\Property','2km'),(3,39,'Botble\\RealEstate\\Models\\Property','2km'),(3,40,'Botble\\RealEstate\\Models\\Property','14km'),(3,41,'Botble\\RealEstate\\Models\\Property','18km'),(3,42,'Botble\\RealEstate\\Models\\Property','9km'),(3,43,'Botble\\RealEstate\\Models\\Property','10km'),(3,44,'Botble\\RealEstate\\Models\\Property','16km'),(3,45,'Botble\\RealEstate\\Models\\Property','5km'),(3,46,'Botble\\RealEstate\\Models\\Property','14km'),(3,47,'Botble\\RealEstate\\Models\\Property','5km'),(3,48,'Botble\\RealEstate\\Models\\Property','5km'),(3,49,'Botble\\RealEstate\\Models\\Property','7km'),(3,50,'Botble\\RealEstate\\Models\\Property','11km'),(3,51,'Botble\\RealEstate\\Models\\Property','8km'),(3,52,'Botble\\RealEstate\\Models\\Property','18km'),(3,53,'Botble\\RealEstate\\Models\\Property','2km'),(3,54,'Botble\\RealEstate\\Models\\Property','16km'),(3,55,'Botble\\RealEstate\\Models\\Property','12km'),(3,56,'Botble\\RealEstate\\Models\\Property','10km'),(3,57,'Botble\\RealEstate\\Models\\Property','19km'),(3,58,'Botble\\RealEstate\\Models\\Property','13km'),(3,59,'Botble\\RealEstate\\Models\\Property','3km'),(3,60,'Botble\\RealEstate\\Models\\Property','7km'),(3,61,'Botble\\RealEstate\\Models\\Property','16km'),(4,1,'Botble\\RealEstate\\Models\\Property','14km'),(4,2,'Botble\\RealEstate\\Models\\Property','15km'),(4,3,'Botble\\RealEstate\\Models\\Property','17km'),(4,4,'Botble\\RealEstate\\Models\\Property','1km'),(4,5,'Botble\\RealEstate\\Models\\Property','4km'),(4,6,'Botble\\RealEstate\\Models\\Property','18km'),(4,7,'Botble\\RealEstate\\Models\\Property','14km'),(4,8,'Botble\\RealEstate\\Models\\Property','7km'),(4,9,'Botble\\RealEstate\\Models\\Property','11km'),(4,10,'Botble\\RealEstate\\Models\\Property','17km'),(4,11,'Botble\\RealEstate\\Models\\Property','4km'),(4,12,'Botble\\RealEstate\\Models\\Property','7km'),(4,13,'Botble\\RealEstate\\Models\\Property','16km'),(4,14,'Botble\\RealEstate\\Models\\Property','5km'),(4,15,'Botble\\RealEstate\\Models\\Property','7km'),(4,16,'Botble\\RealEstate\\Models\\Property','4km'),(4,17,'Botble\\RealEstate\\Models\\Property','19km'),(4,18,'Botble\\RealEstate\\Models\\Property','3km'),(4,19,'Botble\\RealEstate\\Models\\Property','12km'),(4,20,'Botble\\RealEstate\\Models\\Property','1km'),(4,21,'Botble\\RealEstate\\Models\\Property','6km'),(4,22,'Botble\\RealEstate\\Models\\Property','13km'),(4,23,'Botble\\RealEstate\\Models\\Property','4km'),(4,24,'Botble\\RealEstate\\Models\\Property','13km'),(4,25,'Botble\\RealEstate\\Models\\Property','5km'),(4,26,'Botble\\RealEstate\\Models\\Property','16km'),(4,27,'Botble\\RealEstate\\Models\\Property','11km'),(4,28,'Botble\\RealEstate\\Models\\Property','18km'),(4,29,'Botble\\RealEstate\\Models\\Property','14km'),(4,30,'Botble\\RealEstate\\Models\\Property','17km'),(4,31,'Botble\\RealEstate\\Models\\Property','16km'),(4,32,'Botble\\RealEstate\\Models\\Property','13km'),(4,33,'Botble\\RealEstate\\Models\\Property','11km'),(4,34,'Botble\\RealEstate\\Models\\Property','10km'),(4,35,'Botble\\RealEstate\\Models\\Property','17km'),(4,36,'Botble\\RealEstate\\Models\\Property','19km'),(4,37,'Botble\\RealEstate\\Models\\Property','10km'),(4,38,'Botble\\RealEstate\\Models\\Property','11km'),(4,39,'Botble\\RealEstate\\Models\\Property','14km'),(4,40,'Botble\\RealEstate\\Models\\Property','12km'),(4,41,'Botble\\RealEstate\\Models\\Property','13km'),(4,42,'Botble\\RealEstate\\Models\\Property','5km'),(4,43,'Botble\\RealEstate\\Models\\Property','12km'),(4,44,'Botble\\RealEstate\\Models\\Property','2km'),(4,45,'Botble\\RealEstate\\Models\\Property','15km'),(4,46,'Botble\\RealEstate\\Models\\Property','18km'),(4,47,'Botble\\RealEstate\\Models\\Property','3km'),(4,48,'Botble\\RealEstate\\Models\\Property','12km'),(4,49,'Botble\\RealEstate\\Models\\Property','6km'),(4,50,'Botble\\RealEstate\\Models\\Property','5km'),(4,51,'Botble\\RealEstate\\Models\\Property','2km'),(4,52,'Botble\\RealEstate\\Models\\Property','9km'),(4,53,'Botble\\RealEstate\\Models\\Property','10km'),(4,54,'Botble\\RealEstate\\Models\\Property','18km'),(4,55,'Botble\\RealEstate\\Models\\Property','20km'),(4,56,'Botble\\RealEstate\\Models\\Property','2km'),(4,57,'Botble\\RealEstate\\Models\\Property','4km'),(4,58,'Botble\\RealEstate\\Models\\Property','16km'),(4,59,'Botble\\RealEstate\\Models\\Property','7km'),(4,60,'Botble\\RealEstate\\Models\\Property','3km'),(4,61,'Botble\\RealEstate\\Models\\Property','7km'),(5,1,'Botble\\RealEstate\\Models\\Property','16km'),(5,2,'Botble\\RealEstate\\Models\\Property','12km'),(5,3,'Botble\\RealEstate\\Models\\Property','19km'),(5,4,'Botble\\RealEstate\\Models\\Property','6km'),(5,5,'Botble\\RealEstate\\Models\\Property','4km'),(5,6,'Botble\\RealEstate\\Models\\Property','9km'),(5,7,'Botble\\RealEstate\\Models\\Property','17km'),(5,8,'Botble\\RealEstate\\Models\\Property','10km'),(5,9,'Botble\\RealEstate\\Models\\Property','2km'),(5,10,'Botble\\RealEstate\\Models\\Property','8km'),(5,11,'Botble\\RealEstate\\Models\\Property','5km'),(5,12,'Botble\\RealEstate\\Models\\Property','1km'),(5,13,'Botble\\RealEstate\\Models\\Property','13km'),(5,14,'Botble\\RealEstate\\Models\\Property','13km'),(5,15,'Botble\\RealEstate\\Models\\Property','1km'),(5,16,'Botble\\RealEstate\\Models\\Property','11km'),(5,17,'Botble\\RealEstate\\Models\\Property','15km'),(5,18,'Botble\\RealEstate\\Models\\Property','12km'),(5,19,'Botble\\RealEstate\\Models\\Property','19km'),(5,20,'Botble\\RealEstate\\Models\\Property','4km'),(5,21,'Botble\\RealEstate\\Models\\Property','8km'),(5,22,'Botble\\RealEstate\\Models\\Property','1km'),(5,23,'Botble\\RealEstate\\Models\\Property','2km'),(5,24,'Botble\\RealEstate\\Models\\Property','15km'),(5,25,'Botble\\RealEstate\\Models\\Property','11km'),(5,26,'Botble\\RealEstate\\Models\\Property','2km'),(5,27,'Botble\\RealEstate\\Models\\Property','1km'),(5,28,'Botble\\RealEstate\\Models\\Property','11km'),(5,29,'Botble\\RealEstate\\Models\\Property','2km'),(5,30,'Botble\\RealEstate\\Models\\Property','3km'),(5,31,'Botble\\RealEstate\\Models\\Property','10km'),(5,32,'Botble\\RealEstate\\Models\\Property','5km'),(5,33,'Botble\\RealEstate\\Models\\Property','17km'),(5,34,'Botble\\RealEstate\\Models\\Property','3km'),(5,35,'Botble\\RealEstate\\Models\\Property','18km'),(5,36,'Botble\\RealEstate\\Models\\Property','8km'),(5,37,'Botble\\RealEstate\\Models\\Property','12km'),(5,38,'Botble\\RealEstate\\Models\\Property','2km'),(5,39,'Botble\\RealEstate\\Models\\Property','19km'),(5,40,'Botble\\RealEstate\\Models\\Property','20km'),(5,41,'Botble\\RealEstate\\Models\\Property','12km'),(5,42,'Botble\\RealEstate\\Models\\Property','14km'),(5,43,'Botble\\RealEstate\\Models\\Property','9km'),(5,44,'Botble\\RealEstate\\Models\\Property','18km'),(5,45,'Botble\\RealEstate\\Models\\Property','16km'),(5,46,'Botble\\RealEstate\\Models\\Property','12km'),(5,47,'Botble\\RealEstate\\Models\\Property','1km'),(5,48,'Botble\\RealEstate\\Models\\Property','5km'),(5,49,'Botble\\RealEstate\\Models\\Property','15km'),(5,50,'Botble\\RealEstate\\Models\\Property','20km'),(5,51,'Botble\\RealEstate\\Models\\Property','12km'),(5,52,'Botble\\RealEstate\\Models\\Property','19km'),(5,53,'Botble\\RealEstate\\Models\\Property','6km'),(5,54,'Botble\\RealEstate\\Models\\Property','3km'),(5,55,'Botble\\RealEstate\\Models\\Property','4km'),(5,56,'Botble\\RealEstate\\Models\\Property','3km'),(5,57,'Botble\\RealEstate\\Models\\Property','2km'),(5,58,'Botble\\RealEstate\\Models\\Property','20km'),(5,59,'Botble\\RealEstate\\Models\\Property','15km'),(5,60,'Botble\\RealEstate\\Models\\Property','5km'),(5,61,'Botble\\RealEstate\\Models\\Property','12km'),(6,1,'Botble\\RealEstate\\Models\\Property','7km'),(6,2,'Botble\\RealEstate\\Models\\Property','3km'),(6,3,'Botble\\RealEstate\\Models\\Property','5km'),(6,4,'Botble\\RealEstate\\Models\\Property','8km'),(6,5,'Botble\\RealEstate\\Models\\Property','6km'),(6,6,'Botble\\RealEstate\\Models\\Property','7km'),(6,7,'Botble\\RealEstate\\Models\\Property','14km'),(6,8,'Botble\\RealEstate\\Models\\Property','15km'),(6,9,'Botble\\RealEstate\\Models\\Property','20km'),(6,10,'Botble\\RealEstate\\Models\\Property','14km'),(6,11,'Botble\\RealEstate\\Models\\Property','12km'),(6,12,'Botble\\RealEstate\\Models\\Property','15km'),(6,13,'Botble\\RealEstate\\Models\\Property','3km'),(6,14,'Botble\\RealEstate\\Models\\Property','2km'),(6,15,'Botble\\RealEstate\\Models\\Property','2km'),(6,16,'Botble\\RealEstate\\Models\\Property','20km'),(6,17,'Botble\\RealEstate\\Models\\Property','12km'),(6,18,'Botble\\RealEstate\\Models\\Property','16km'),(6,19,'Botble\\RealEstate\\Models\\Property','10km'),(6,20,'Botble\\RealEstate\\Models\\Property','7km'),(6,21,'Botble\\RealEstate\\Models\\Property','17km'),(6,22,'Botble\\RealEstate\\Models\\Property','8km'),(6,23,'Botble\\RealEstate\\Models\\Property','6km'),(6,24,'Botble\\RealEstate\\Models\\Property','16km'),(6,25,'Botble\\RealEstate\\Models\\Property','7km'),(6,26,'Botble\\RealEstate\\Models\\Property','17km'),(6,27,'Botble\\RealEstate\\Models\\Property','1km'),(6,28,'Botble\\RealEstate\\Models\\Property','12km'),(6,29,'Botble\\RealEstate\\Models\\Property','13km'),(6,30,'Botble\\RealEstate\\Models\\Property','17km'),(6,31,'Botble\\RealEstate\\Models\\Property','13km'),(6,32,'Botble\\RealEstate\\Models\\Property','18km'),(6,33,'Botble\\RealEstate\\Models\\Property','14km'),(6,34,'Botble\\RealEstate\\Models\\Property','1km'),(6,35,'Botble\\RealEstate\\Models\\Property','1km'),(6,36,'Botble\\RealEstate\\Models\\Property','13km'),(6,37,'Botble\\RealEstate\\Models\\Property','1km'),(6,38,'Botble\\RealEstate\\Models\\Property','11km'),(6,39,'Botble\\RealEstate\\Models\\Property','20km'),(6,40,'Botble\\RealEstate\\Models\\Property','13km'),(6,41,'Botble\\RealEstate\\Models\\Property','16km'),(6,42,'Botble\\RealEstate\\Models\\Property','4km'),(6,43,'Botble\\RealEstate\\Models\\Property','2km'),(6,44,'Botble\\RealEstate\\Models\\Property','3km'),(6,45,'Botble\\RealEstate\\Models\\Property','20km'),(6,46,'Botble\\RealEstate\\Models\\Property','1km'),(6,47,'Botble\\RealEstate\\Models\\Property','3km'),(6,48,'Botble\\RealEstate\\Models\\Property','18km'),(6,49,'Botble\\RealEstate\\Models\\Property','4km'),(6,50,'Botble\\RealEstate\\Models\\Property','9km'),(6,51,'Botble\\RealEstate\\Models\\Property','13km'),(6,52,'Botble\\RealEstate\\Models\\Property','8km'),(6,53,'Botble\\RealEstate\\Models\\Property','5km'),(6,54,'Botble\\RealEstate\\Models\\Property','11km'),(6,55,'Botble\\RealEstate\\Models\\Property','12km'),(6,56,'Botble\\RealEstate\\Models\\Property','17km'),(6,57,'Botble\\RealEstate\\Models\\Property','1km'),(6,58,'Botble\\RealEstate\\Models\\Property','6km'),(6,59,'Botble\\RealEstate\\Models\\Property','10km'),(6,60,'Botble\\RealEstate\\Models\\Property','9km'),(6,61,'Botble\\RealEstate\\Models\\Property','1km'),(7,1,'Botble\\RealEstate\\Models\\Property','6km'),(7,2,'Botble\\RealEstate\\Models\\Property','14km'),(7,3,'Botble\\RealEstate\\Models\\Property','19km'),(7,4,'Botble\\RealEstate\\Models\\Property','17km'),(7,5,'Botble\\RealEstate\\Models\\Property','5km'),(7,6,'Botble\\RealEstate\\Models\\Property','4km'),(7,7,'Botble\\RealEstate\\Models\\Property','13km'),(7,8,'Botble\\RealEstate\\Models\\Property','11km'),(7,9,'Botble\\RealEstate\\Models\\Property','15km'),(7,10,'Botble\\RealEstate\\Models\\Property','13km'),(7,11,'Botble\\RealEstate\\Models\\Property','19km'),(7,12,'Botble\\RealEstate\\Models\\Property','5km'),(7,13,'Botble\\RealEstate\\Models\\Property','10km'),(7,14,'Botble\\RealEstate\\Models\\Property','13km'),(7,15,'Botble\\RealEstate\\Models\\Property','18km'),(7,16,'Botble\\RealEstate\\Models\\Property','1km'),(7,17,'Botble\\RealEstate\\Models\\Property','3km'),(7,18,'Botble\\RealEstate\\Models\\Property','6km'),(7,19,'Botble\\RealEstate\\Models\\Property','7km'),(7,20,'Botble\\RealEstate\\Models\\Property','4km'),(7,21,'Botble\\RealEstate\\Models\\Property','9km'),(7,22,'Botble\\RealEstate\\Models\\Property','14km'),(7,23,'Botble\\RealEstate\\Models\\Property','13km'),(7,24,'Botble\\RealEstate\\Models\\Property','8km'),(7,25,'Botble\\RealEstate\\Models\\Property','15km'),(7,26,'Botble\\RealEstate\\Models\\Property','13km'),(7,27,'Botble\\RealEstate\\Models\\Property','16km'),(7,28,'Botble\\RealEstate\\Models\\Property','9km'),(7,29,'Botble\\RealEstate\\Models\\Property','11km'),(7,30,'Botble\\RealEstate\\Models\\Property','16km'),(7,31,'Botble\\RealEstate\\Models\\Property','17km'),(7,32,'Botble\\RealEstate\\Models\\Property','4km'),(7,33,'Botble\\RealEstate\\Models\\Property','5km'),(7,34,'Botble\\RealEstate\\Models\\Property','16km'),(7,35,'Botble\\RealEstate\\Models\\Property','15km'),(7,36,'Botble\\RealEstate\\Models\\Property','14km'),(7,37,'Botble\\RealEstate\\Models\\Property','8km'),(7,38,'Botble\\RealEstate\\Models\\Property','8km'),(7,39,'Botble\\RealEstate\\Models\\Property','4km'),(7,40,'Botble\\RealEstate\\Models\\Property','3km'),(7,41,'Botble\\RealEstate\\Models\\Property','13km'),(7,42,'Botble\\RealEstate\\Models\\Property','6km'),(7,43,'Botble\\RealEstate\\Models\\Property','8km'),(7,44,'Botble\\RealEstate\\Models\\Property','12km'),(7,45,'Botble\\RealEstate\\Models\\Property','9km'),(7,46,'Botble\\RealEstate\\Models\\Property','20km'),(7,47,'Botble\\RealEstate\\Models\\Property','15km'),(7,48,'Botble\\RealEstate\\Models\\Property','19km'),(7,49,'Botble\\RealEstate\\Models\\Property','10km'),(7,50,'Botble\\RealEstate\\Models\\Property','10km'),(7,51,'Botble\\RealEstate\\Models\\Property','19km'),(7,52,'Botble\\RealEstate\\Models\\Property','18km'),(7,53,'Botble\\RealEstate\\Models\\Property','15km'),(7,54,'Botble\\RealEstate\\Models\\Property','13km'),(7,55,'Botble\\RealEstate\\Models\\Property','1km'),(7,56,'Botble\\RealEstate\\Models\\Property','12km'),(7,57,'Botble\\RealEstate\\Models\\Property','12km'),(7,58,'Botble\\RealEstate\\Models\\Property','13km'),(7,59,'Botble\\RealEstate\\Models\\Property','6km'),(7,60,'Botble\\RealEstate\\Models\\Property','12km'),(7,61,'Botble\\RealEstate\\Models\\Property','4km'),(8,1,'Botble\\RealEstate\\Models\\Property','3km'),(8,2,'Botble\\RealEstate\\Models\\Property','12km'),(8,3,'Botble\\RealEstate\\Models\\Property','10km'),(8,4,'Botble\\RealEstate\\Models\\Property','8km'),(8,5,'Botble\\RealEstate\\Models\\Property','15km'),(8,6,'Botble\\RealEstate\\Models\\Property','4km'),(8,7,'Botble\\RealEstate\\Models\\Property','12km'),(8,8,'Botble\\RealEstate\\Models\\Property','20km'),(8,9,'Botble\\RealEstate\\Models\\Property','9km'),(8,10,'Botble\\RealEstate\\Models\\Property','7km'),(8,11,'Botble\\RealEstate\\Models\\Property','19km'),(8,12,'Botble\\RealEstate\\Models\\Property','5km'),(8,13,'Botble\\RealEstate\\Models\\Property','12km'),(8,14,'Botble\\RealEstate\\Models\\Property','9km'),(8,15,'Botble\\RealEstate\\Models\\Property','20km'),(8,16,'Botble\\RealEstate\\Models\\Property','20km'),(8,17,'Botble\\RealEstate\\Models\\Property','11km'),(8,18,'Botble\\RealEstate\\Models\\Property','7km'),(8,19,'Botble\\RealEstate\\Models\\Property','6km'),(8,20,'Botble\\RealEstate\\Models\\Property','5km'),(8,21,'Botble\\RealEstate\\Models\\Property','6km'),(8,22,'Botble\\RealEstate\\Models\\Property','1km'),(8,23,'Botble\\RealEstate\\Models\\Property','5km'),(8,24,'Botble\\RealEstate\\Models\\Property','18km'),(8,25,'Botble\\RealEstate\\Models\\Property','6km'),(8,26,'Botble\\RealEstate\\Models\\Property','13km'),(8,27,'Botble\\RealEstate\\Models\\Property','14km'),(8,28,'Botble\\RealEstate\\Models\\Property','20km'),(8,29,'Botble\\RealEstate\\Models\\Property','15km'),(8,30,'Botble\\RealEstate\\Models\\Property','4km'),(8,31,'Botble\\RealEstate\\Models\\Property','12km'),(8,32,'Botble\\RealEstate\\Models\\Property','11km'),(8,33,'Botble\\RealEstate\\Models\\Property','5km'),(8,34,'Botble\\RealEstate\\Models\\Property','6km'),(8,35,'Botble\\RealEstate\\Models\\Property','7km'),(8,36,'Botble\\RealEstate\\Models\\Property','12km'),(8,37,'Botble\\RealEstate\\Models\\Property','5km'),(8,38,'Botble\\RealEstate\\Models\\Property','15km'),(8,39,'Botble\\RealEstate\\Models\\Property','19km'),(8,40,'Botble\\RealEstate\\Models\\Property','18km'),(8,41,'Botble\\RealEstate\\Models\\Property','2km'),(8,42,'Botble\\RealEstate\\Models\\Property','13km'),(8,43,'Botble\\RealEstate\\Models\\Property','15km'),(8,44,'Botble\\RealEstate\\Models\\Property','15km'),(8,45,'Botble\\RealEstate\\Models\\Property','12km'),(8,46,'Botble\\RealEstate\\Models\\Property','9km'),(8,47,'Botble\\RealEstate\\Models\\Property','20km'),(8,48,'Botble\\RealEstate\\Models\\Property','13km'),(8,49,'Botble\\RealEstate\\Models\\Property','10km'),(8,50,'Botble\\RealEstate\\Models\\Property','3km'),(8,51,'Botble\\RealEstate\\Models\\Property','3km'),(8,52,'Botble\\RealEstate\\Models\\Property','3km'),(8,53,'Botble\\RealEstate\\Models\\Property','12km'),(8,54,'Botble\\RealEstate\\Models\\Property','20km'),(8,55,'Botble\\RealEstate\\Models\\Property','16km'),(8,56,'Botble\\RealEstate\\Models\\Property','14km'),(8,57,'Botble\\RealEstate\\Models\\Property','14km'),(8,58,'Botble\\RealEstate\\Models\\Property','1km'),(8,59,'Botble\\RealEstate\\Models\\Property','11km'),(8,60,'Botble\\RealEstate\\Models\\Property','12km'),(8,61,'Botble\\RealEstate\\Models\\Property','10km'),(9,1,'Botble\\RealEstate\\Models\\Property','12km'),(9,2,'Botble\\RealEstate\\Models\\Property','18km'),(9,3,'Botble\\RealEstate\\Models\\Property','13km'),(9,4,'Botble\\RealEstate\\Models\\Property','19km'),(9,5,'Botble\\RealEstate\\Models\\Property','10km'),(9,6,'Botble\\RealEstate\\Models\\Property','14km'),(9,7,'Botble\\RealEstate\\Models\\Property','17km'),(9,8,'Botble\\RealEstate\\Models\\Property','12km'),(9,9,'Botble\\RealEstate\\Models\\Property','11km'),(9,10,'Botble\\RealEstate\\Models\\Property','16km'),(9,11,'Botble\\RealEstate\\Models\\Property','16km'),(9,12,'Botble\\RealEstate\\Models\\Property','2km'),(9,13,'Botble\\RealEstate\\Models\\Property','3km'),(9,14,'Botble\\RealEstate\\Models\\Property','18km'),(9,15,'Botble\\RealEstate\\Models\\Property','7km'),(9,16,'Botble\\RealEstate\\Models\\Property','19km'),(9,17,'Botble\\RealEstate\\Models\\Property','1km'),(9,18,'Botble\\RealEstate\\Models\\Property','18km'),(9,19,'Botble\\RealEstate\\Models\\Property','1km'),(9,20,'Botble\\RealEstate\\Models\\Property','7km'),(9,21,'Botble\\RealEstate\\Models\\Property','15km'),(9,22,'Botble\\RealEstate\\Models\\Property','13km'),(9,23,'Botble\\RealEstate\\Models\\Property','2km'),(9,24,'Botble\\RealEstate\\Models\\Property','17km'),(9,25,'Botble\\RealEstate\\Models\\Property','15km'),(9,26,'Botble\\RealEstate\\Models\\Property','13km'),(9,27,'Botble\\RealEstate\\Models\\Property','4km'),(9,28,'Botble\\RealEstate\\Models\\Property','16km'),(9,29,'Botble\\RealEstate\\Models\\Property','15km'),(9,30,'Botble\\RealEstate\\Models\\Property','7km'),(9,31,'Botble\\RealEstate\\Models\\Property','13km'),(9,32,'Botble\\RealEstate\\Models\\Property','16km'),(9,33,'Botble\\RealEstate\\Models\\Property','17km'),(9,34,'Botble\\RealEstate\\Models\\Property','16km'),(9,35,'Botble\\RealEstate\\Models\\Property','19km'),(9,36,'Botble\\RealEstate\\Models\\Property','8km'),(9,37,'Botble\\RealEstate\\Models\\Property','5km'),(9,38,'Botble\\RealEstate\\Models\\Property','13km'),(9,39,'Botble\\RealEstate\\Models\\Property','2km'),(9,40,'Botble\\RealEstate\\Models\\Property','18km'),(9,41,'Botble\\RealEstate\\Models\\Property','5km'),(9,42,'Botble\\RealEstate\\Models\\Property','6km'),(9,43,'Botble\\RealEstate\\Models\\Property','13km'),(9,44,'Botble\\RealEstate\\Models\\Property','13km'),(9,45,'Botble\\RealEstate\\Models\\Property','10km'),(9,46,'Botble\\RealEstate\\Models\\Property','18km'),(9,47,'Botble\\RealEstate\\Models\\Property','5km'),(9,48,'Botble\\RealEstate\\Models\\Property','14km'),(9,49,'Botble\\RealEstate\\Models\\Property','12km'),(9,50,'Botble\\RealEstate\\Models\\Property','9km'),(9,51,'Botble\\RealEstate\\Models\\Property','4km'),(9,52,'Botble\\RealEstate\\Models\\Property','20km'),(9,53,'Botble\\RealEstate\\Models\\Property','11km'),(9,54,'Botble\\RealEstate\\Models\\Property','11km'),(9,55,'Botble\\RealEstate\\Models\\Property','20km'),(9,56,'Botble\\RealEstate\\Models\\Property','3km'),(9,57,'Botble\\RealEstate\\Models\\Property','11km'),(9,58,'Botble\\RealEstate\\Models\\Property','5km'),(9,59,'Botble\\RealEstate\\Models\\Property','8km'),(9,60,'Botble\\RealEstate\\Models\\Property','9km'),(9,61,'Botble\\RealEstate\\Models\\Property','10km'),(10,1,'Botble\\RealEstate\\Models\\Property','12km'),(10,2,'Botble\\RealEstate\\Models\\Property','16km'),(10,3,'Botble\\RealEstate\\Models\\Property','10km'),(10,4,'Botble\\RealEstate\\Models\\Property','7km'),(10,5,'Botble\\RealEstate\\Models\\Property','3km'),(10,6,'Botble\\RealEstate\\Models\\Property','15km'),(10,7,'Botble\\RealEstate\\Models\\Property','16km'),(10,8,'Botble\\RealEstate\\Models\\Property','18km'),(10,9,'Botble\\RealEstate\\Models\\Property','4km'),(10,10,'Botble\\RealEstate\\Models\\Property','11km'),(10,11,'Botble\\RealEstate\\Models\\Property','17km'),(10,12,'Botble\\RealEstate\\Models\\Property','18km'),(10,13,'Botble\\RealEstate\\Models\\Property','10km'),(10,14,'Botble\\RealEstate\\Models\\Property','5km'),(10,15,'Botble\\RealEstate\\Models\\Property','2km'),(10,16,'Botble\\RealEstate\\Models\\Property','1km'),(10,17,'Botble\\RealEstate\\Models\\Property','9km'),(10,18,'Botble\\RealEstate\\Models\\Property','1km'),(10,19,'Botble\\RealEstate\\Models\\Property','16km'),(10,20,'Botble\\RealEstate\\Models\\Property','3km'),(10,21,'Botble\\RealEstate\\Models\\Property','10km'),(10,22,'Botble\\RealEstate\\Models\\Property','13km'),(10,23,'Botble\\RealEstate\\Models\\Property','10km'),(10,24,'Botble\\RealEstate\\Models\\Property','18km'),(10,25,'Botble\\RealEstate\\Models\\Property','1km'),(10,26,'Botble\\RealEstate\\Models\\Property','15km'),(10,27,'Botble\\RealEstate\\Models\\Property','2km'),(10,28,'Botble\\RealEstate\\Models\\Property','8km'),(10,29,'Botble\\RealEstate\\Models\\Property','13km'),(10,30,'Botble\\RealEstate\\Models\\Property','11km'),(10,31,'Botble\\RealEstate\\Models\\Property','18km'),(10,32,'Botble\\RealEstate\\Models\\Property','8km'),(10,33,'Botble\\RealEstate\\Models\\Property','8km'),(10,34,'Botble\\RealEstate\\Models\\Property','2km'),(10,35,'Botble\\RealEstate\\Models\\Property','17km'),(10,36,'Botble\\RealEstate\\Models\\Property','17km'),(10,37,'Botble\\RealEstate\\Models\\Property','17km'),(10,38,'Botble\\RealEstate\\Models\\Property','7km'),(10,39,'Botble\\RealEstate\\Models\\Property','17km'),(10,40,'Botble\\RealEstate\\Models\\Property','12km'),(10,41,'Botble\\RealEstate\\Models\\Property','14km'),(10,42,'Botble\\RealEstate\\Models\\Property','13km'),(10,43,'Botble\\RealEstate\\Models\\Property','20km'),(10,44,'Botble\\RealEstate\\Models\\Property','10km'),(10,45,'Botble\\RealEstate\\Models\\Property','19km'),(10,46,'Botble\\RealEstate\\Models\\Property','15km'),(10,47,'Botble\\RealEstate\\Models\\Property','15km'),(10,48,'Botble\\RealEstate\\Models\\Property','7km'),(10,49,'Botble\\RealEstate\\Models\\Property','7km'),(10,50,'Botble\\RealEstate\\Models\\Property','20km'),(10,51,'Botble\\RealEstate\\Models\\Property','3km'),(10,52,'Botble\\RealEstate\\Models\\Property','4km'),(10,53,'Botble\\RealEstate\\Models\\Property','15km'),(10,54,'Botble\\RealEstate\\Models\\Property','1km'),(10,55,'Botble\\RealEstate\\Models\\Property','9km'),(10,56,'Botble\\RealEstate\\Models\\Property','16km'),(10,57,'Botble\\RealEstate\\Models\\Property','17km'),(10,58,'Botble\\RealEstate\\Models\\Property','6km'),(10,59,'Botble\\RealEstate\\Models\\Property','7km'),(10,60,'Botble\\RealEstate\\Models\\Property','19km'),(10,61,'Botble\\RealEstate\\Models\\Property','20km'),(11,1,'Botble\\RealEstate\\Models\\Property','3km'),(11,2,'Botble\\RealEstate\\Models\\Property','12km'),(11,3,'Botble\\RealEstate\\Models\\Property','6km'),(11,4,'Botble\\RealEstate\\Models\\Property','8km'),(11,5,'Botble\\RealEstate\\Models\\Property','10km'),(11,6,'Botble\\RealEstate\\Models\\Property','9km'),(11,7,'Botble\\RealEstate\\Models\\Property','10km'),(11,8,'Botble\\RealEstate\\Models\\Property','7km'),(11,9,'Botble\\RealEstate\\Models\\Property','13km'),(11,10,'Botble\\RealEstate\\Models\\Property','15km'),(11,11,'Botble\\RealEstate\\Models\\Property','17km'),(11,12,'Botble\\RealEstate\\Models\\Property','4km'),(11,13,'Botble\\RealEstate\\Models\\Property','18km'),(11,14,'Botble\\RealEstate\\Models\\Property','13km'),(11,15,'Botble\\RealEstate\\Models\\Property','10km'),(11,16,'Botble\\RealEstate\\Models\\Property','19km'),(11,17,'Botble\\RealEstate\\Models\\Property','8km'),(11,18,'Botble\\RealEstate\\Models\\Property','8km'),(11,19,'Botble\\RealEstate\\Models\\Property','10km'),(11,20,'Botble\\RealEstate\\Models\\Property','14km'),(11,21,'Botble\\RealEstate\\Models\\Property','12km'),(11,22,'Botble\\RealEstate\\Models\\Property','11km'),(11,23,'Botble\\RealEstate\\Models\\Property','10km'),(11,24,'Botble\\RealEstate\\Models\\Property','14km'),(11,25,'Botble\\RealEstate\\Models\\Property','4km'),(11,26,'Botble\\RealEstate\\Models\\Property','3km'),(11,27,'Botble\\RealEstate\\Models\\Property','15km'),(11,28,'Botble\\RealEstate\\Models\\Property','10km'),(11,29,'Botble\\RealEstate\\Models\\Property','15km'),(11,30,'Botble\\RealEstate\\Models\\Property','14km'),(11,31,'Botble\\RealEstate\\Models\\Property','6km'),(11,32,'Botble\\RealEstate\\Models\\Property','19km'),(11,33,'Botble\\RealEstate\\Models\\Property','13km'),(11,34,'Botble\\RealEstate\\Models\\Property','1km'),(11,35,'Botble\\RealEstate\\Models\\Property','8km'),(11,36,'Botble\\RealEstate\\Models\\Property','18km'),(11,37,'Botble\\RealEstate\\Models\\Property','9km'),(11,38,'Botble\\RealEstate\\Models\\Property','17km'),(11,39,'Botble\\RealEstate\\Models\\Property','1km'),(11,40,'Botble\\RealEstate\\Models\\Property','6km'),(11,41,'Botble\\RealEstate\\Models\\Property','16km'),(11,42,'Botble\\RealEstate\\Models\\Property','6km'),(11,43,'Botble\\RealEstate\\Models\\Property','16km'),(11,44,'Botble\\RealEstate\\Models\\Property','4km'),(11,45,'Botble\\RealEstate\\Models\\Property','7km'),(11,46,'Botble\\RealEstate\\Models\\Property','10km'),(11,47,'Botble\\RealEstate\\Models\\Property','5km'),(11,48,'Botble\\RealEstate\\Models\\Property','19km'),(11,49,'Botble\\RealEstate\\Models\\Property','1km'),(11,50,'Botble\\RealEstate\\Models\\Property','17km'),(11,51,'Botble\\RealEstate\\Models\\Property','12km'),(11,52,'Botble\\RealEstate\\Models\\Property','1km'),(11,53,'Botble\\RealEstate\\Models\\Property','13km'),(11,54,'Botble\\RealEstate\\Models\\Property','4km'),(11,55,'Botble\\RealEstate\\Models\\Property','11km'),(11,56,'Botble\\RealEstate\\Models\\Property','13km'),(11,57,'Botble\\RealEstate\\Models\\Property','16km'),(11,58,'Botble\\RealEstate\\Models\\Property','6km'),(11,59,'Botble\\RealEstate\\Models\\Property','16km'),(11,60,'Botble\\RealEstate\\Models\\Property','10km'),(11,61,'Botble\\RealEstate\\Models\\Property','8km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','ti ti-wifi','published'),(2,'Parking','ti ti-parking','published'),(3,'Swimming pool','ti ti-pool','published'),(4,'Balcony','ti ti-building-skyscraper','published'),(5,'Garden','ti ti-trees','published'),(6,'Security','ti ti-shield-lock','published'),(7,'Fitness center','ti ti-stretching','published'),(8,'Air Conditioning','ti ti-air-conditioning','published'),(9,'Central Heating','ti ti-thermometer','published'),(10,'Laundry Room','ti ti-wash-machine','published'),(11,'Pets Allow','ti ti-paw','published'),(12,'Spa & Massage','ti ti-bath','published');
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(2,'Generali','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(3,'Temasek','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(4,'China Investment Corporation','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(5,'Government Pension Fund Global','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(6,'PSP Investments','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(7,'MEAG Munich ERGO','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(8,'HOOPP','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(9,'BT Group','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(10,'New York City ERS','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(11,'New Jersey Division of Investment','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(12,'State Super','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(13,'Shinkong','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL),(14,'Rest Super','published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `account_limit` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free Trial',0.00,1,0,1,1,1,0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'[[{\"key\":\"text\",\"value\":\"Limited time trial period\"}],[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(2,'Basic Listing',250.00,1,0,1,5,2,1,'published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'[[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"5 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(3,'Standard Package',1000.00,1,20,5,10,3,0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'[[{\"key\":\"text\",\"value\":\"5 listings allowed\"}],[{\"key\":\"text\",\"value\":\"10 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Priority support\"}]]'),(4,'Professional Package',1800.00,1,28,10,15,4,0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'[[{\"key\":\"text\",\"value\":\"10 listings allowed\"}],[{\"key\":\"text\",\"value\":\"15 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}]]'),(5,'Premium Package',2500.00,1,33,15,20,5,0,'published','2024-07-31 06:44:35','2024-07-31 06:44:35',NULL,'[[{\"key\":\"text\",\"value\":\"15 listings allowed\"}],[{\"key\":\"text\",\"value\":\"20 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}],[{\"key\":\"text\",\"value\":\"Priority listing placement\"}]]');
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `project_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1,1),(1,6),(2,6),(3,6),(4,4),(4,6),(5,1),(5,4),(5,5),(6,1),(6,3),(7,6),(8,5),(9,3),(9,4),(9,6),(10,4),(10,5),(11,5),(12,1),(12,3),(12,4),(13,1),(13,3),(13,4),(14,2),(15,3),(16,6),(17,6),(18,1),(18,6);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `number_block` int DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','Magnam rem fugit dolore qui voluptates delectus. Aut sit doloribus quia. Necessitatibus maxime cum porro ipsa. Laudantium repellendus distinctio eum soluta aperiam sint.','Minima est eos minima veniam et ullam et aut. Qui vel repellat amet nihil. Excepturi sunt in nostrum vel molestiae. Possimus et corrupti voluptas sed. Aut et esse culpa laboriosam ducimus. Quia aut aut dolorum est debitis. Ducimus sequi odio nihil ut earum. Et nesciunt non molestiae vel fugiat voluptates laudantium. Natus dolorem odio a possimus. Quaerat iusto est doloremque qui odio. Autem ut aliquam error vitae. Quia laudantium rerum et recusandae sunt numquam tempora.','[\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\"]','841 Berge Club Suite 295\nNew Cleta, AK 00009-5026',9,1,37,3906,0,'1996-03-18','2007-10-04',5780,14886,1,6,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.912266','-75.947338',7655,6,6,NULL,NULL),(2,'Sunshine Wonder Villas','Neque rerum assumenda nihil. Voluptas fugit officia nesciunt. Omnis aliquam saepe fugiat officiis.','Eligendi voluptatem cum eum voluptatem sint iusto. Assumenda magnam vel totam possimus omnis dolore praesentium. Porro et ratione molestiae labore in error accusamus. Accusantium assumenda id fugiat facilis voluptatum ipsa qui. Rerum qui sed sunt illo ut. Odio ab consectetur commodi tempore. Est consectetur expedita consequuntur odio.','[\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\"]','87410 Monserrate Terrace\nWest Rhiannon, MS 05129-2952',10,6,10,2707,0,'1972-05-11','2007-02-25',4144,13541,1,1,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.540184','-74.979932',4718,1,1,NULL,NULL),(3,'Diamond Island','Dolor totam qui est voluptate quia fugiat incidunt. Inventore minima eligendi nisi nisi voluptas natus at. Qui minus autem qui dolor. Perspiciatis laudantium dolores optio autem.','Fugiat soluta voluptas et possimus veniam maiores cupiditate et. Omnis repellendus quisquam officiis eos dolorem eos. Aut illo vitae dolor. Quaerat magnam voluptates molestiae ut. Ut quidem quam dignissimos odio accusantium rerum. Perspiciatis voluptatem quas accusantium. Commodi ea optio quod quibusdam. Dolorum eos consequuntur voluptatum rerum molestias deserunt corrupti. Facere tempora aperiam aspernatur fuga. Aut saepe aut hic officiis impedit eaque. Qui ut iusto ut dolorem doloremque rerum. Deserunt illo dolores totam ut. Nulla at repellat repudiandae omnis.','[\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\"]','19849 Armstrong Lodge Suite 162\nWittingmouth, NM 30229-8649',11,9,41,74,1,'2022-06-22','2018-07-11',8519,13154,1,6,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.524186','-76.68403',6026,6,6,NULL,NULL),(4,'The Nassim','Illum incidunt perferendis assumenda aliquid debitis velit facere. Aliquid culpa sequi vitae architecto exercitationem nihil. Aut animi porro officia iusto.','Unde quam reprehenderit aut numquam quod at provident. Magni doloremque quis magni reprehenderit id accusamus veritatis. Optio sint atque unde. Ratione nihil aut qui sunt. Reprehenderit voluptatum vel dolores reprehenderit non. Commodi corporis voluptas omnis iusto ducimus iusto. Veritatis voluptatem provident consectetur. Illum veniam iure aut voluptas. Et laudantium praesentium nemo magni ut. Iusto vero illum sed ab doloribus aut. Et nostrum est provident libero eos facere amet. Eos rerum dolor qui ad suscipit eligendi qui.','[\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\"]','53603 Jennie Hill Apt. 745\nFarrellton, WY 91433',2,1,49,4065,1,'2014-06-14','1990-05-27',9526,16997,1,1,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.894137','-75.997102',2849,1,1,NULL,NULL),(5,'Vinhomes Grand Park','Commodi voluptas facere sequi in. Praesentium odit saepe enim qui. Distinctio sit sit delectus praesentium rerum rerum repellendus. Ut enim omnis similique fugit tempore ipsa.','Ducimus aut qui voluptatem nostrum modi velit ea optio. Vitae omnis accusantium nihil voluptatem sed. Dolorem sit voluptatem veniam ducimus aut nostrum quam. Accusantium ad molestias earum. Culpa consequatur officiis dolorem aut. Et occaecati tempora impedit. Adipisci autem reprehenderit perspiciatis nostrum dolore. Ut reprehenderit voluptates voluptas. Consequatur eum quo numquam. Eveniet qui magni est et adipisci magni repellendus. Mollitia eligendi perferendis laudantium est natus. Aspernatur occaecati libero nostrum cum dignissimos nulla consequatur. Eos sint esse adipisci nesciunt.','[\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','3839 Bernier Fork\nNew Eve, WI 19687-9021',11,10,27,488,0,'1984-02-14','1990-04-21',4870,5458,1,5,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.786639','-75.212153',9340,5,5,NULL,NULL),(6,'The Metropole Thu Thiem','Quia officiis quo tempore quia fugit. Id est fugit ullam similique suscipit ut qui. Quas amet quis ut occaecati. Similique voluptas enim dolores sed. Quis quae voluptates consequatur.','Eos sint impedit facilis dignissimos animi alias. Sint numquam dolor et autem qui nihil. Qui voluptas qui repellendus explicabo. Neque sint id aut illum natus aut neque. Inventore possimus explicabo sit quia omnis dolor totam. Eos culpa consequatur sint est amet exercitationem in. Sit corporis magnam dolorem consectetur. Dolore consequuntur voluptas tempora ut. Corrupti doloribus sint veritatis ullam magni. Atque totam facilis vitae ut. Ratione et repudiandae maiores deleniti labore neque reprehenderit. Nam iste consequuntur facere sit est sed veritatis ipsam. Molestias aspernatur beatae culpa fuga voluptas dolores.','[\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]','7172 Duane Plain\nScotside, TX 85942',5,1,43,918,0,'1995-04-18','1996-03-11',141,6372,1,2,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.414455','-75.008913',9104,2,2,NULL,NULL),(7,'Villa on Grand Avenue','Non voluptatem consequuntur consequatur sed eius. Aut et iusto perferendis autem quo. Cumque provident saepe consequuntur et nam exercitationem.','Reiciendis non nostrum inventore explicabo pariatur ipsa. Asperiores eaque provident numquam. Provident ut aut maxime est error vero. Aliquid praesentium deserunt eum harum qui expedita. Nihil dolor ut ea quis. Qui eos assumenda iusto maiores qui saepe a. Harum iure voluptas et optio sit quia quidem. Veniam veniam accusamus non repellat ipsum modi. Dolore autem debitis ut quod velit non consequuntur. A est officia nihil dolores itaque. Omnis veritatis excepturi nihil placeat.','[\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\"]','61747 Klocko Extension\nNorth Melany, WV 46010',12,9,19,4861,0,'1987-10-13','1979-09-21',3011,7669,1,2,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.770388','-75.110358',8653,2,2,NULL,NULL),(8,'Traditional Food Restaurant','Eum voluptas harum dolores quas libero excepturi iusto. Porro doloribus ut sint voluptate eligendi provident suscipit. Sapiente sint facere voluptatum in alias impedit ab.','Ut illum recusandae enim ut quo eaque at. Qui pariatur quam est aliquam. Consequuntur est rerum dolores tenetur odit. Commodi temporibus cum eius sint quam. Provident harum dolores tenetur quasi eligendi illum. Nihil eum fugit ex id est dolor. Qui hic sunt expedita distinctio repellat. Est nisi ullam accusantium id.','[\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\"]','48360 Kerluke Knolls Apt. 088\nEast Maceyhaven, ID 12575-8145',1,1,31,3220,0,'1975-11-16','2021-03-18',5967,11327,1,3,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.215689','-75.699405',4189,3,3,NULL,NULL),(9,'Villa on Hollywood Boulevard','Impedit vel ad provident velit deleniti saepe aut. Debitis fuga quidem quam culpa explicabo suscipit. Consectetur non autem minima nostrum omnis ipsum quos eos. Magni molestias dicta asperiores sit voluptatum illum fuga.','Rerum omnis fuga et autem voluptatem aut quibusdam. Eligendi et eaque qui repellendus voluptatibus et. Culpa saepe pariatur ea sed porro qui deserunt provident. Earum fugit et corrupti ducimus hic est. Cupiditate id molestiae debitis neque iure quis. Rerum placeat in architecto necessitatibus velit voluptatum. Qui enim et repellendus qui minima. Et asperiores qui eaque itaque ut aut. Ut numquam provident deleniti autem est quod.','[\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\"]','680 Elena Motorway Apt. 969\nPreciouston, MT 14889-0979',2,7,47,2955,0,'1973-10-10','1975-01-11',2200,3558,1,5,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.794028','-74.923683',729,5,5,NULL,NULL),(10,'Office Space at Northwest 107th','In voluptatum quaerat veritatis. Quaerat magnam libero velit ut delectus tenetur assumenda laborum. Dolores fuga libero possimus est tenetur. Quisquam animi omnis explicabo omnis quidem.','Nam corporis veniam asperiores rerum neque nemo aperiam. Cum corporis corrupti tempora quod tempora. Totam repellat et laborum harum delectus. Quod qui fugiat et qui. Aut velit repellat eaque voluptas. Qui quis ut aspernatur modi consequuntur occaecati aut. Cum incidunt tempore fuga ratione tempore. Cum earum voluptas omnis officia porro. Voluptatem eos tempora magni a maiores iusto dolore. A exercitationem doloribus nihil ullam et.','[\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\"]','4563 Dickens Fork\nPort Amalia, WY 53373',5,5,12,1000,1,'2016-10-25','2003-11-15',933,10514,1,5,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.202636','-75.594356',9601,5,5,NULL,NULL),(11,'Home in Merrick Way','Ad ut eum tenetur minima. Error rerum nihil vitae dolorem ratione. Autem et sit iste fugiat.','Architecto tempora iste itaque iste omnis. Qui molestias libero dolores animi dignissimos illum quaerat possimus. Adipisci rerum ex nemo sit doloribus est reprehenderit. Nihil error molestiae sint provident. Aut cupiditate autem expedita voluptatem consequatur ducimus. Et necessitatibus quaerat vitae voluptatibus optio aliquid molestiae. Provident sit harum blanditiis asperiores esse et nam. Qui cupiditate nihil non aut. Impedit error labore ut maxime. Sit voluptas ab sit natus quia. Qui fugit assumenda voluptatem necessitatibus molestias. Inventore quo aut numquam odio ut molestias non. Maiores expedita cupiditate ad et et itaque veniam laudantium. At asperiores beatae consequatur quod enim ut.','[\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\"]','23507 David Inlet\nNorth Madisen, CT 32915',4,4,3,2301,1,'1971-06-29','1998-01-22',274,3925,1,3,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.522327','-75.620026',2697,3,3,NULL,NULL),(12,'Adarsh Greens','Pariatur ut sapiente delectus ipsa voluptatem officia laboriosam quaerat. Nisi quia adipisci quae quibusdam et aliquid. Nihil sit explicabo est quia dolorum maiores ut. Quod pariatur vitae dolorum est. Repellat vel excepturi accusantium dolore pariatur nihil.','Quidem natus eveniet ea officia. Qui atque id ut est id consequatur quod. Et in temporibus adipisci. Et doloribus aliquid porro nihil. Aliquid optio voluptatem accusamus eos doloribus laudantium. Aut minus laudantium fugit laborum odit est. Dignissimos quisquam enim est laboriosam explicabo. Sit quidem corrupti tempora laudantium.','[\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\"]','680 Silas Crescent Suite 496\nLake Everette, KS 15086-0518',9,10,39,835,1,'1975-03-23','2012-05-30',7918,12772,1,4,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.186329','-75.415043',8461,4,4,NULL,NULL),(13,'Rustomjee Evershine Global City','Cupiditate ratione voluptas recusandae iusto. Vel voluptatem ut officiis alias corporis saepe sint. Quidem id debitis voluptatum labore minima et consequatur. Sapiente unde necessitatibus voluptatem aut nesciunt amet qui.','Et maiores occaecati doloremque. Est molestiae in consequuntur laboriosam incidunt et. Sit nihil quam error voluptatibus dolore consectetur. Dolor consequatur voluptas corporis ut. Repudiandae accusantium ut error earum et aut sequi. Ea expedita facilis aperiam eius aliquam enim. Ipsa repudiandae iusto excepturi quibusdam. Incidunt neque fugiat cum voluptas porro est cupiditate eos. Est officiis voluptatem neque natus voluptates et. Corporis velit velit sint laudantium sit voluptatem id. Doloribus quaerat officia dolor eius rerum. Unde quis blanditiis at inventore est ipsam.','[\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\"]','175 Lera Isle\nNew Hester, SC 52593',8,2,40,412,1,'1980-03-17','2010-06-18',5540,10484,1,3,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.314453','-75.465546',6593,3,3,NULL,NULL),(14,'Godrej Exquisite','Maxime omnis rem et inventore eveniet veniam. Tenetur voluptas illo et temporibus. Ea voluptas dolore architecto aut id.','Velit blanditiis sed nisi sit rerum. Aut vero saepe rem qui. Et aut ad blanditiis esse tenetur repudiandae et. Consequatur ut sed qui sunt voluptatibus. Voluptas sit unde accusamus soluta. Explicabo ut id qui dolorem. Ex velit cupiditate et qui. Amet nobis mollitia ducimus ipsa atque amet. Sed quia consequatur rerum inventore assumenda. Veritatis laborum non dolorem aliquid et consequatur voluptatem.','[\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\"]','2954 Barrows Haven\nWest Katharina, RI 09256',10,5,24,643,0,'1999-05-25','1989-03-14',5407,7155,1,5,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.744333','-75.932891',2758,5,5,NULL,NULL),(15,'Godrej Prime','Et voluptas hic odit dolor. Eos veritatis dolorem non architecto. Distinctio consequatur et et et error.','Enim expedita neque maiores qui odit assumenda recusandae. Voluptatem voluptas id laboriosam alias saepe. Distinctio atque repudiandae eum deserunt rerum delectus rerum. Vero hic porro porro architecto quae. Deserunt doloremque cum saepe culpa. Rerum debitis sit animi sit consequatur asperiores odio. Sapiente qui eius perferendis et. Ut ipsa dicta nam. Et quia quam est impedit recusandae.','[\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\"]','3575 Brisa Rapids Apt. 046\nSchusterbury, DC 65711-4037',7,8,8,438,1,'1976-12-10','2002-03-28',4341,9869,1,2,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.613872','-75.364259',250,2,2,NULL,NULL),(16,'PS Panache','Laudantium assumenda eaque qui eos sint suscipit voluptatibus voluptas. Nam dicta suscipit ut nihil ab amet. Maiores omnis et autem impedit cupiditate temporibus.','Qui molestias itaque ipsa aperiam iure voluptatibus. Beatae quibusdam fugit porro. Est unde architecto quidem et nisi voluptas. Culpa enim quas est molestias. Saepe voluptas magni quisquam dolores unde. Officia porro autem est quia magni exercitationem officia. Commodi id ab ullam nemo. Culpa natus dolorum magni ut quas ullam ullam. Autem ab tempore perspiciatis beatae nihil expedita eum.','[\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\"]','346 Hermiston Burgs Suite 847\nCasimermouth, SC 15458',3,4,36,2710,1,'2011-01-11','1984-01-10',649,2086,1,2,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.035376','-75.718914',4810,2,2,NULL,NULL),(17,'Upturn Atmiya Centria','Eum qui illum molestiae. Aut enim modi quaerat voluptas quis architecto. Tempore amet adipisci cupiditate aspernatur.','Ipsum libero dolorem et eius perferendis delectus a. Aut non est dolores qui vero facere vitae non. Nihil quod tempora laboriosam possimus ratione nulla. Enim velit voluptatem laborum harum in et. Odio ex in sed impedit. Dolor qui eum ipsam fugit. Excepturi error natus corporis voluptas. Nihil architecto qui omnis quia culpa. Perspiciatis ut nesciunt id quo distinctio illum debitis. Facere voluptatem delectus earum earum. Animi minima deserunt est ut fugit. Aliquid repudiandae ipsam id suscipit hic excepturi facere. A est ipsum excepturi. Quasi nam distinctio dignissimos labore rerum dolore.','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\"]','13912 Wendell Vista\nEast Bernard, IL 41283-4436',14,5,1,1221,1,'2013-07-14','2003-08-15',9091,14199,1,5,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','42.767695','-76.118442',6986,5,5,NULL,NULL),(18,'Brigade Oasis','Eius omnis debitis nihil ut vero rerum voluptas. Aut minus dolorem veritatis sit qui quia. Ullam blanditiis rerum voluptas atque.','Qui esse accusantium tenetur voluptates sunt. Nemo atque dicta veniam natus recusandae qui. Possimus excepturi aspernatur cupiditate vel vel distinctio. Aut dignissimos molestiae rerum omnis qui. Nihil in qui molestiae. Nihil ea quod voluptatibus aut velit officia. Possimus incidunt soluta tenetur velit et. Veritatis quis magni veritatis suscipit cum. Totam et culpa possimus tenetur modi vel. Quod quisquam eos nulla quam fugit magnam illum. Labore quia velit laudantium omnis. Sapiente voluptas qui voluptatem quis est fugiat dignissimos. Autem quam dicta laborum omnis quia beatae expedita.','[\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\"]','956 Modesto Extension\nSouth Holdenberg, OH 46846-8462',13,4,39,3192,0,'2011-05-29','1999-04-12',1406,11208,1,6,'selling',1,'Botble\\ACL\\Models\\User','2024-07-31 06:44:40','2024-07-31 06:44:40','43.454703','-76.113974',4751,6,6,NULL,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` int DEFAULT NULL,
  `number_bathroom` int DEFAULT NULL,
  `number_floor` int DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` bigint unsigned DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','rent','Veritatis facilis sed perspiciatis ipsa delectus quo. Delectus quia magnam architecto architecto aut enim nemo. Ut quasi nulla possimus sint consequatur consequatur ut.','Quaerat ex quos ut saepe et magnam asperiores. Incidunt libero vero veniam vitae consequatur iusto. Eaque unde maxime vel perspiciatis. Ea est ut eos recusandae. Ut laborum sint id fuga ullam. Quidem est et quaerat nobis. A expedita labore cupiditate officia. Laboriosam et architecto totam non debitis dignissimos. Magni quis earum ex vel quisquam nisi aperiam. Id voluptas accusamus expedita nisi saepe. A odit magni qui repellendus repudiandae perferendis aspernatur. Sapiente qui voluptas et ducimus excepturi doloremque maxime.','6021 Roosevelt Pine Suite 676\nArvelbury, OH 43165-7102','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\"]',12,9,2,39,850,383400.00,NULL,1,6,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.596563','-76.442933',3140,6,6,'SFJSMU',NULL),(2,'Lavida Plus Office-tel 1 Bedroom','rent','Pariatur quasi sint voluptatem laboriosam blanditiis velit nisi. Alias officiis rem voluptatem qui aut eius. Non qui qui maiores eaque soluta et impedit. Consectetur eum eum qui fuga quia exercitationem eos.','Dolorum fugiat et vitae sunt. Sed non similique fuga officia quas unde deserunt. Consequatur minus earum qui quos aliquid amet. Ab a facere dignissimos et consequatur. Id dolores sed ut necessitatibus molestias. Sequi libero omnis perferendis corrupti facilis maxime et dicta. Eveniet vero consectetur est non. Quidem distinctio et reprehenderit. Id possimus est mollitia ut suscipit. Qui magni accusantium quam. Natus in assumenda consequuntur eum sint rem est repellendus. Libero ratione provident sit ut vel est veniam. Eligendi aut sed eum doloremque facilis velit recusandae.','10039 Edd Lock\nKozeyland, UT 87747','[\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]',15,8,6,38,990,15200.00,NULL,1,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.963432','-74.82323',89941,1,1,'ZJESJQ',NULL),(3,'Vinhomes Grand Park Studio 1 Bedroom','rent','Quidem beatae laboriosam odit fugit voluptatem qui corporis provident. Totam quo dolores labore dolorum. Consequatur nostrum soluta quisquam numquam deserunt. Unde nostrum aut nemo nobis et quo. Consequatur natus quam magnam magnam.','Et consequatur quia vitae laborum distinctio. Doloremque officia corrupti omnis nesciunt culpa unde unde. Suscipit et quasi commodi aut dolorem. Voluptates qui quibusdam veniam placeat temporibus deserunt possimus. Ut reiciendis commodi saepe atque tempora dolor. Voluptates quia eligendi qui tempore. Nostrum quisquam asperiores hic ea voluptatem aut pariatur. Molestiae tenetur blanditiis cum ipsam illum. Libero error ut velit consequatur delectus. Magni doloribus eum excepturi aut ad atque eum. Voluptates tenetur quo reprehenderit voluptatibus rerum neque animi est. Qui labore autem velit sapiente. Minus dolorem nisi repellendus.','9146 Jacobson Spur\nSouth Tatyanahaven, TX 94429-5480','[\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\"]',12,9,8,72,720,906300.00,NULL,0,2,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.929063','-76.494357',38937,2,2,'00LEOT',NULL),(4,'The Sun Avenue Office-tel 1 Bedroom','rent','Quod consequuntur repudiandae delectus nisi qui corrupti quibusdam. Illum neque necessitatibus est. Autem quia nihil non et et corrupti.','Iste sed recusandae iusto omnis voluptatem velit velit. Laboriosam et et commodi minima laudantium earum. Accusantium cupiditate voluptatem tempore esse possimus qui aut. Eos est et consectetur saepe illum tempore et. Quae illum laudantium laborum est adipisci eius quo tempora. Dicta ipsa possimus quia sit. Exercitationem saepe explicabo alias necessitatibus impedit. Libero qui quia consequatur sit consectetur nisi nihil. Facilis repellendus sit nihil doloribus blanditiis libero dolores minima. Ut aut esse ea voluptatem nulla inventore sed. Quo omnis aspernatur maiores architecto. Vero sequi consequatur consequuntur sed nostrum. Sit praesentium repellat quas aut earum debitis ut.','1242 Talia Heights Suite 542\nMaybellechester, WA 12638','[\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\"]',5,8,2,54,220,834100.00,NULL,0,2,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.893167','-74.952093',21622,2,2,'7R6GRT',NULL),(5,'Property For sale, Johannesburg, South Africa','sale','Aliquid molestiae nisi aut porro inventore magnam voluptate. Voluptatem omnis non voluptates. Eligendi et alias id ipsum doloremque et. Facere minima consequatur incidunt est.','Accusamus quibusdam perspiciatis consequuntur hic labore quo. Quaerat earum deleniti nostrum quia voluptate ut. Aut sunt neque sapiente quam. Et modi porro dolorum eum saepe beatae aliquam labore. Cumque sed est laboriosam ea voluptatibus et. Occaecati et architecto quas non est eum incidunt. Qui autem quo voluptatem facilis possimus qui aut voluptatum. Sit qui dolor consectetur voluptas totam voluptatem. Ducimus quo a consequatur soluta. Rerum molestiae quis at ducimus. Impedit aut possimus inventore non. Eum velit similique eum dolores. Aut architecto illum aliquam esse ut rem magni. Mollitia officia labore quo est.','7197 Adams Fork\nWest Isabell, VA 11589','[\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\"]',18,3,5,96,390,436900.00,NULL,0,6,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.614035','-75.466614',68184,6,6,'ZBC4VF',NULL),(6,'Stunning French Inspired Manor','rent','Dolores natus sit ea excepturi. Praesentium aliquid et dolor quos soluta. In velit vel hic sapiente fugiat. Temporibus et temporibus doloremque harum dolore et dicta et.','Omnis praesentium et hic tempora ut vitae. Laboriosam quia tempora recusandae in omnis nemo. Optio natus placeat quia distinctio quaerat tempora. Repellendus commodi nostrum possimus explicabo quo odit. Deserunt suscipit quisquam rem libero eveniet. Rerum optio est quo ad et. Ut enim fugit laborum totam. Eius et ut perspiciatis ut velit. Velit placeat harum sunt soluta consequuntur ea. Repudiandae sit tempore voluptates. Voluptatum laudantium veritatis consectetur esse. Non reprehenderit accusantium labore quis facilis consequuntur dolorem doloremque.','316 Dayana Key\nDewittbury, MS 14552-3391','[\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\"]',18,1,9,71,260,174100.00,NULL,1,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.510105','-75.860189',77075,4,4,'OWGZB0',NULL),(7,'Villa for sale at Bermuda Dunes','rent','Magni sunt commodi dolorem qui corrupti ullam. Beatae rerum pariatur facere. Neque est nostrum id corrupti quia consequatur modi.','Et aut non incidunt et consequatur. Saepe voluptatem ipsum inventore. Eius sequi necessitatibus alias et commodi numquam ipsum. Esse dolorem dolorum qui pariatur sed. Numquam eum exercitationem quaerat eos neque ad. Cum quos numquam quibusdam earum aut sint. Qui et iure officiis. Quibusdam libero at sapiente consequuntur accusantium excepturi incidunt. Sit totam excepturi asperiores temporibus omnis vero. Ut possimus maiores tenetur eos facere dolores temporibus. Possimus quo qui dicta ratione eos. Ipsum tempora mollitia omnis ea. Tenetur necessitatibus repellendus officia asperiores commodi blanditiis asperiores.','7663 Jamie Lock Apt. 738\nMarkston, DE 92236-4608','[\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\"]',14,3,9,68,60,765300.00,NULL,0,1,'month','renting',2,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.550322','-76.590307',32260,1,1,'LLZQV1',NULL),(8,'Walnut Park Apartment','sale','Mollitia odio ut velit autem mollitia. Dolore debitis repudiandae tempora eos temporibus consequatur ut. Minima perspiciatis deleniti et inventore aliquam sit.','Laboriosam vel id voluptatem veniam ea natus. Id consequatur est ut reiciendis. Aliquam sit error sit. Ratione omnis quod asperiores consequuntur. Et optio ipsam debitis eos. Et qui qui minus et rerum. Sunt sunt ea aut. Nobis vero doloribus deserunt quos repellat aut eos. Libero saepe voluptas adipisci sunt assumenda est non. Eaque dolores ducimus vitae voluptatum sequi voluptatum.','83747 Nitzsche Mountain\nSipesmouth, PA 10934-2432','[\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\"]',12,7,10,71,940,689100.00,NULL,0,5,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.803852','-76.44307',72305,5,5,'CMAW7Z',NULL),(9,'5 beds luxury house','rent','Quo vel ducimus porro consequatur. Quia ipsum amet eos accusamus est. Tenetur enim sequi nisi illum pariatur doloribus enim.','Quisquam non ut blanditiis quasi aut dolorem aliquid. Facere dolores qui architecto. Explicabo quis deleniti omnis. Voluptates qui et repudiandae officiis delectus. Nulla ipsum odio non ea voluptatum dolorem quo. Id voluptas aut voluptas qui quas porro est. Non assumenda voluptatem quia dolores dicta veniam eveniet.','6214 Oswaldo Alley\nColeside, CO 02314-7008','[\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\"]',17,9,3,80,440,599100.00,NULL,0,2,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.744166','-75.310754',42283,2,2,'VKIWQX',NULL),(10,'Family Victorian \"View\" Home','rent','Architecto aliquam numquam molestiae nam dolorum facilis necessitatibus consequatur. Non consequuntur recusandae consectetur deleniti. Enim vitae velit porro eius. Dolore tenetur magni magnam unde.','Delectus ipsum et quia rerum omnis voluptas alias. Reprehenderit harum aut repudiandae voluptates. Ullam totam necessitatibus amet non temporibus laudantium. Natus quisquam voluptatem vel ad voluptatem. Quia error voluptas reprehenderit dolore doloribus molestias aliquam. Nemo enim vel voluptas maiores illo quo. Ullam eos adipisci modi laborum labore ea. Quisquam ab aut deleniti eum dicta laboriosam consequatur. Sit reiciendis non sunt. Sequi adipisci placeat quia.','380 Dietrich Manor Suite 713\nJuniorview, VA 66845','[\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\"]',8,4,4,70,140,220200.00,NULL,1,5,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.958267','-76.06103',52962,5,5,'PHIK58',NULL),(11,'Osaka Heights Apartment','rent','Rem laudantium eum cum aut totam facere rerum. Minus architecto sint eos enim quam non voluptatem ut. Blanditiis voluptas sapiente ad quo et atque cupiditate. Repellendus nihil qui libero soluta expedita.','Beatae suscipit eaque saepe. Et sit nesciunt ratione aut et. Sequi rerum eligendi quibusdam nam distinctio ratione. Quisquam earum perspiciatis eum. Nam eligendi odit eum ab autem. Vero quia rerum sit est at. Aliquid veritatis adipisci a fugiat blanditiis id eligendi. Voluptas omnis officiis sapiente. Corrupti sint adipisci soluta assumenda doloribus quisquam. Ad veritatis sed rerum eius qui reprehenderit architecto.','98432 Rath Haven Suite 757\nLake Berry, KY 70505','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\"]',14,6,8,89,990,967700.00,NULL,0,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.787246','-75.32435',51562,4,4,'7EAD9P',NULL),(12,'Private Estate Magnificent Views','sale','Dolorem nemo saepe accusamus reprehenderit. Aperiam quis illum ipsa sapiente magni possimus. Cumque in doloremque non rerum nulla beatae voluptate.','Maiores doloremque molestiae numquam et. Cum rerum qui voluptate et praesentium facilis et. Minima sunt et nam blanditiis quidem veritatis. Fuga pariatur vero et nihil. Eum in similique culpa sunt voluptatibus nisi. Eum est dolores fugit qui qui ea. Pariatur rerum molestiae quas optio. Ipsum vero ut odit unde fugit voluptates qui. Aut quia odit aliquam sit. Inventore eos fugiat qui.','54545 Estelle Pine\nEast Kenyon, OK 31101-7740','[\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\"]',10,6,10,18,560,84700.00,NULL,1,3,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.770985','-75.874984',83344,3,3,'RIILCQ',NULL),(13,'Thompson Road House for rent','sale','Laborum eaque iusto quia neque delectus sit voluptatum. Occaecati unde magnam enim quis ea. Inventore quia officiis omnis et.','Adipisci ut quaerat quam et provident. Assumenda voluptatem atque omnis autem numquam. Iusto magnam quisquam sint veritatis quod dicta accusamus. Architecto molestias earum velit qui quod dolores velit. Rerum repudiandae assumenda quos animi eos aut. Dolorem quo ipsa mollitia iste. Debitis temporibus est ipsa occaecati impedit harum odio ut. Eos enim in quas. Asperiores nemo odit sunt voluptatem enim. Nihil temporibus possimus sed molestias ipsa. Nihil ex et consequatur excepturi sunt consequuntur possimus.','54612 Paucek Corners\nLake Kaileemouth, MT 81182-2521','[\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\"]',10,2,3,42,960,513200.00,NULL,0,2,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.06068','-75.381351',36454,2,2,'JVGYCX',NULL),(14,'Brand New 1 Bedroom Apartment In First Class Location','sale','Est perspiciatis consequuntur eos omnis ducimus accusamus. Totam voluptas voluptas fugit et facilis ipsa nam. Ipsam quia iste voluptatum quo atque quibusdam et.','Natus perferendis officia est esse numquam ea modi. Nam possimus dolorem molestiae. Repellat cupiditate dolores reiciendis maiores dolore debitis et. Et quam error et architecto consectetur. Itaque aperiam nulla vel architecto saepe aliquam. Corporis delectus ad dolor. Soluta consequuntur id reprehenderit quia non. Optio dolorem ducimus ut ut. Aliquid repudiandae blanditiis exercitationem temporibus. Iste in explicabo nemo dolore qui. Non dicta deleniti ea similique reprehenderit. Molestiae magnam et quo consectetur. Porro quis ut ipsum veniam harum perspiciatis. Consequatur soluta earum iure aliquam rerum.','6081 Tia Terrace Apt. 985\nWest Albinaville, CO 97959-7022','[\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\"]',16,1,7,15,590,654000.00,NULL,0,3,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.453865','-74.962414',43447,3,3,'RI5AIU',NULL),(15,'Elegant family home presents premium modern living','sale','Est dolorem velit vel quia impedit sit. Et necessitatibus ut tempore maxime ut nihil. Voluptatibus et reiciendis fuga. Est recusandae ex et molestias quam.','Reiciendis sed ut ut. Ipsam expedita dolores molestiae reiciendis et explicabo. Neque eum quis recusandae doloribus. Quisquam aliquid qui vero iusto vitae possimus porro ratione. Aspernatur quos nemo sit voluptatibus ex sapiente alias laborum. Autem incidunt qui accusamus quidem distinctio. Repellat quasi non occaecati culpa molestias dolor.','260 Raoul Via Suite 336\nNew Giuseppefurt, OK 55241-4366','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\"]',14,5,10,40,770,546800.00,NULL,0,6,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.917527','-75.818059',73782,6,6,'PMIYS0',NULL),(16,'Luxury Apartments in Singapore for Sale','rent','Sed delectus consequatur voluptatem dolores nobis tenetur consectetur qui. Dolorem iste error ut non dolorum. Pariatur architecto ut consequatur accusamus amet ab fugiat quia.','Consectetur eum et explicabo quia et. Id pariatur quis neque culpa nesciunt impedit. Alias voluptatibus est distinctio ducimus corrupti. Tempore vel nihil quia est provident quis eius quia. Excepturi quo est consequatur debitis mollitia non a. Alias fugit laborum dolorem nemo modi consequatur hic libero. Sed qui voluptas alias optio. Est dignissimos rerum et et sit aperiam. Doloremque ut voluptas rerum sed.','826 Rowe Gardens\nPort Lyda, AR 38780','[\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\"]',4,2,7,65,700,556000.00,NULL,1,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.833056','-75.869192',51008,1,1,'S4SBCU',NULL),(17,'5 room luxury penthouse for sale in Kuala Lumpur','rent','Qui voluptatem sunt voluptatem eos. Tenetur est quam rerum quisquam ut porro non. Culpa debitis quaerat corporis asperiores. Nihil veniam praesentium numquam molestias ut.','Esse et dolorem minus illum amet. Porro perferendis eveniet dolorum itaque. Eaque rerum sed est ad. Autem et cum dolore est quam. Consequatur delectus voluptatibus sequi ipsa. Illum atque facere neque omnis earum quaerat. Sed aspernatur eaque aliquid et dolorem. Adipisci eaque reprehenderit dolores nesciunt. Placeat deleniti velit et illum enim. Nihil et atque qui cumque sint esse.','56669 Lexi Walks Apt. 258\nGreenholthaven, NY 30818','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\"]',5,1,6,14,440,818300.00,NULL,1,6,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.687825','-75.339584',20454,6,6,'UDUQI2',NULL),(18,'2 Floor house in Compound Pejaten Barat Kemang','sale','Dolorem blanditiis mollitia porro accusamus. Sed animi dolores fugiat libero aspernatur facilis doloribus. Cumque qui dolor ipsam eum. Facilis quis quas ea minima dolore eligendi qui.','Non molestiae recusandae temporibus totam ab sequi placeat. Exercitationem ipsa blanditiis aspernatur repellat. Nam reprehenderit velit necessitatibus eos consectetur. Ratione excepturi impedit possimus ducimus rerum et. Et voluptatem qui sed vel voluptate aperiam in. Tempora facilis nam aut facere voluptate dolores. Aut error optio cupiditate ab accusantium est sit voluptatum. Enim nam totam accusamus quisquam illum eum mollitia. Nisi et et voluptatibus cum omnis.','31685 Gleason Stream Apt. 224\nEast Jevon, IA 12653','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\"]',1,7,4,54,1000,213500.00,NULL,1,6,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','43.302903','-75.686511',68665,6,6,'JWC2WZ',NULL),(19,'Apartment Muiderstraatweg in Diemen','rent','Non porro vel delectus est quis sit dolorum. Accusamus ut rerum maiores tempore ut dolorem. Non eveniet alias rerum laboriosam a.','Tenetur perferendis nihil est aperiam. In in dolorum qui consequatur voluptatem. Dolor necessitatibus nostrum molestias molestiae et accusantium. Non et atque ut aperiam dolor iusto autem molestiae. Atque nam est deserunt repellendus consequatur quibusdam. Libero quia sunt corporis praesentium voluptates. Dolorem sit officia tempora dolores et laborum id.','16046 Florence Flat\nHollieview, AL 20444-8917','[\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\"]',6,1,5,98,360,111700.00,NULL,0,1,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:40','2024-07-31 06:44:40','42.599041','-75.32312',44839,1,1,'CQV8IJ',NULL),(20,'Nice Apartment for rent in Berlin','rent','Eos similique cupiditate in aut est. Maiores et voluptatem necessitatibus possimus quibusdam. Enim rerum quo placeat in animi. Placeat reiciendis vel quibusdam ab ea aut quas.','Nam velit velit quis molestiae. Culpa totam est facilis laboriosam vel nemo odit quis. Sed culpa inventore quos rerum molestias ut. Facilis enim praesentium officia aut dolore dolore adipisci. Tempore deserunt nisi itaque veritatis reprehenderit. Quia explicabo vitae a velit reprehenderit id et nemo. Cumque repellendus odit quae. Dolorum et iusto ratione autem. Ducimus odio sapiente aperiam atque sed. Voluptas sapiente velit ut quam modi non. Eligendi deserunt aut eligendi earum autem.','188 Maynard Spurs Suite 808\nMarielleshire, NJ 68985-2812','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\"]',12,4,6,50,350,97900.00,NULL,0,6,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.899768','-75.509547',27656,6,6,'TMCFT0',NULL),(21,'Pumpkin Key - Private Island','rent','Laborum exercitationem porro suscipit excepturi perferendis. Enim voluptatem quod ab ex asperiores sit. Nisi eos in vero alias non.','Ut voluptatem deserunt magni consequuntur tempora dolorem qui. Rerum pariatur nisi et quia. Distinctio natus consequatur corrupti. Ipsam modi fugiat eveniet omnis dolor vitae aut. In molestiae nobis et a eaque id fugiat. Voluptas facilis dolores odio et. Et soluta officia quo et.','32629 Powlowski Forge Apt. 932\nNorth Nelson, MN 80473-7206','[\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\"]',4,10,2,93,860,72800.00,NULL,0,1,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.399326','-75.144339',7250,1,1,'50G84B',NULL),(22,'Maplewood Estates','rent','Quidem laborum excepturi autem ratione laudantium. Accusantium cum atque culpa autem. Itaque labore quidem ut illo qui provident reprehenderit.','Est nemo quos architecto quod nihil corporis sed velit. Dicta harum rerum perspiciatis maiores consequatur. Iure dicta aut consequatur. Sunt expedita ex quo dicta repellat accusamus. Explicabo aut vitae laborum cumque maxime aut in. Excepturi a quo facere eius optio ut. Aspernatur perspiciatis dolore quidem.','62920 Bruen Greens\nNorth Mitchell, WV 12892-8675','[\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\"]',8,2,7,11,380,804700.00,NULL,1,2,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.020158','-75.413836',59640,2,2,'87JRMB',NULL),(23,'Pine Ridge Manor','sale','Molestiae omnis et sit sit velit. Similique molestiae ab earum et. Dignissimos magni quis ex sit dignissimos culpa.','Et eligendi consequatur facilis dolorem et voluptas. Qui delectus quod rerum autem sit eius qui doloribus. Laudantium perspiciatis aperiam corporis recusandae tenetur ut aut id. Repellat neque repellat accusantium. Ipsa assumenda tenetur optio deserunt quos qui provident. Rerum perferendis omnis architecto quia voluptatum quia. Qui nobis et amet sed non dolor dolorum voluptatem. Veritatis molestias sunt voluptatibus quas hic. Ullam eum deserunt recusandae consectetur rerum debitis et omnis.','9332 Russel Cliff\nEast Horace, ND 61811','[\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\"]',5,2,3,48,790,879900.00,NULL,0,2,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','42.752125','-75.941073',112,2,2,'Y8K5YY',NULL),(24,'Oak Hill Residences','sale','Laudantium reprehenderit quam ullam sed officia harum. Repellat delectus ipsam debitis sunt tenetur sit. Laboriosam dolorem itaque non amet iste.','Itaque dolorem magnam quos eos rerum et recusandae. Nobis et eos quo quisquam id. Omnis non excepturi rem quod. Rerum dolorem illum eius rerum veniam placeat. Rerum at magni velit maiores similique ducimus et dolorum. Quibusdam exercitationem dignissimos ullam. Natus consequatur a itaque voluptatem natus quidem. Ad numquam possimus quae laborum aliquid. Rerum dignissimos aperiam delectus ut. Et et sit aut voluptas. Omnis officia minus ipsum neque quia. Beatae quo voluptatibus voluptas cupiditate est autem. Sunt cum accusamus accusamus dolorem nisi dolor reiciendis. Et exercitationem molestias similique ut rerum.','70858 Trent Ridge\nHeloiseberg, IL 53805','[\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\"]',12,4,2,28,300,966600.00,NULL,0,3,'month','selling',10,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.169337','-75.016236',60170,3,3,'FKITPF',NULL),(25,'Sunnybrook Villas','rent','Eveniet dolor nihil porro similique quis consequatur. Animi amet amet dolorem aliquid id. Exercitationem tempora et illum sequi.','Quam et consequatur aliquid. Ut et repellendus saepe aut officiis. Aliquam modi quo labore sed libero ipsam. Molestiae nulla numquam fuga reprehenderit quia. Quae unde mollitia accusamus dolorem aliquam. Aut sit reiciendis facilis sit corrupti voluptatem. Quis et dolorem atque. Sint eum ipsum voluptate nobis nobis non. Impedit veniam explicabo officiis maiores sint nesciunt. Quibusdam nisi explicabo est pariatur nam magni consectetur. Doloribus quo voluptatibus tempore. Et accusamus non debitis quidem perspiciatis nisi. Distinctio alias iusto nisi cupiditate.','216 Braxton Dale Apt. 630\nEast Daishaville, NE 63998-3276','[\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\"]',16,10,5,80,160,214400.00,NULL,1,4,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.097116','-75.387933',25616,4,4,'XQAXJU',NULL),(26,'Riverstone Condominiums','rent','Sed dolor expedita quo itaque. Nesciunt porro ea sit veniam omnis nam vel. Harum sit est id sint id ea assumenda et. Voluptas quia iure excepturi quod. Nihil dolorem quasi mollitia eos.','Qui eaque voluptas id est. Sit assumenda maiores minus quos ducimus quo. Maxime voluptatibus fuga ut suscipit quia quibusdam. Ea dolor hic eaque repudiandae dolores accusantium. Sed odit ab nihil ut commodi minus voluptas et. Voluptas est odit provident sit atque debitis. Animi voluptates ut ut facilis quia esse doloremque dolorem. Molestiae sunt rerum corrupti est in placeat.','718 Balistreri Ridge\nVolkmantown, CA 17632','[\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\"]',9,5,1,88,780,707500.00,NULL,1,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.415901','-75.776147',15177,5,5,'ETKCCP',NULL),(27,'Cedar Park Apartments','sale','Quo quia consequuntur sit sed. Est voluptas eum enim soluta et. Et temporibus id saepe recusandae. Molestias magni alias sit pariatur ut.','Quasi sit porro sed ut. Aut corrupti et pariatur. Dolor iure est omnis autem enim assumenda quae. Libero esse odit quis accusantium excepturi quaerat. Et laboriosam minima dolores voluptatem. Similique et delectus aut quaerat voluptatem est eum pariatur. Eaque voluptatibus non explicabo labore quas.','2181 Carter Well Apt. 885\nLake Garth, PA 10525','[\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\"]',12,7,5,34,700,842800.00,NULL,1,5,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','42.830158','-76.073026',31012,5,5,'KBPARJ',NULL),(28,'Lakeside Retreat','rent','Quibusdam atque sit nihil odit ut quas. Ratione nesciunt sint tempora eos qui doloremque. Odit sunt at nihil molestiae blanditiis illum. Commodi animi nulla et assumenda.','Molestias ullam mollitia repellendus quia ullam distinctio quae cumque. Deserunt nulla ea ut repellendus. Impedit sit qui dolorem vitae odio. Ea quasi facilis mollitia consequuntur nihil. Debitis omnis dolore numquam eos quis ut. Dolore omnis inventore sunt et sint. Eaque nemo eius omnis aut dolor nostrum. Voluptatem autem a molestias. Amet voluptatem recusandae non consectetur rerum ipsum eveniet.','79859 Rosalia Mission Apt. 361\nSoniaview, NE 90994','[\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\"]',4,8,9,73,300,518600.00,NULL,0,3,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.214615','-74.916413',35875,3,3,'FCJHZK',NULL),(29,'Willow Creek Homes','sale','Minima fugit quam aliquid ullam. Ea exercitationem et quia quia nulla nihil.','Aut eum consequatur ea eum sed. Aliquid voluptatem fugiat omnis assumenda sunt aut. Aperiam quo a praesentium natus aut dolore iure. Fugiat earum ducimus reiciendis quam dignissimos et eum. Aperiam in sit aut aut delectus et ut. Est saepe ducimus veniam doloribus magnam. Et dicta itaque ducimus illum distinctio. Sint est et sint et qui omnis. Dolorum eos sunt impedit impedit atque aut iusto. Delectus cupiditate itaque doloremque similique. Nemo iste odio omnis dolor fugit. Laborum quos fugit ex non. Fugit cumque sit architecto non dicta est velit.','9396 Braun Port Suite 644\nNew Babyburgh, VT 03236','[\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\"]',17,5,9,55,680,142100.00,NULL,0,5,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.187777','-75.827625',87864,5,5,'U7ZWJN',NULL),(30,'Grandview Heights','sale','Quia dolores in cupiditate quasi. Ea temporibus enim porro iure doloribus. Voluptas est et molestiae nobis natus molestiae. Et exercitationem commodi et at. Ut aut voluptas alias laboriosam voluptatum earum velit.','Et laboriosam rem quod. Mollitia eum repellat dolorem. Id deserunt eveniet sit corporis. Inventore perspiciatis qui aut excepturi minus et. Eos molestiae consequatur officia aperiam enim ut ut. Ipsum voluptatem quia necessitatibus maiores eligendi. Ut corporis perferendis itaque at et quo atque. Ea amet dolorum quia temporibus. Et et aperiam aut cumque ut non recusandae. Et iure consequatur est fugit. Illum quod dignissimos accusamus suscipit.','878 Wiza Brook\nLake Abigailland, PA 35957','[\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\"]',2,3,6,49,170,226700.00,NULL,0,5,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.239733','-76.034681',98271,5,5,'GEUQUY',NULL),(31,'Forest Glen Cottages','sale','Perspiciatis possimus fuga molestias architecto adipisci rerum voluptates quod. Eum minus aut voluptatibus hic fugit eaque. Vero dolores aperiam dolore ad consequatur aut.','Dolorem a repellat earum sit impedit itaque rerum. Enim ullam est eum dolorem aspernatur non sed. Tenetur aperiam vel voluptatem possimus rerum aut ab. Nemo possimus consectetur aliquid libero quos. Neque et consectetur pariatur dolorem laboriosam placeat. Aperiam ab animi in. Dignissimos non consequatur ut ratione deleniti nihil voluptas. Commodi ratione quam eius facere sint corporis veritatis. Libero perferendis quia perferendis ut assumenda ut minus eum. Saepe repellendus et est eveniet necessitatibus qui veritatis.','988 Klein Mission\nLake Cheyanne, DE 27247','[\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]',15,10,5,81,540,273500.00,NULL,0,2,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.230635','-75.537096',57128,2,2,'AMBZQJ',NULL),(32,'Harborview Towers','rent','Delectus aut ut officiis cumque numquam consequatur. Distinctio quia minus rerum quis fugiat maiores.','Veniam totam aspernatur totam consequatur et molestiae. Ut id illo aspernatur non. Adipisci ut qui tenetur ut dolor consequatur modi ut. Aut ut voluptatem aut illo. Minima ea voluptatem excepturi et ipsam sapiente cum. Enim cumque non natus consectetur non at molestias quas. Dolorem et est quidem libero ipsum recusandae. Aut labore doloremque quaerat esse voluptatem. Earum veniam dicta ullam nam vitae. Praesentium est labore magni quisquam tempore non rem. Nihil enim consequatur dignissimos temporibus autem enim quaerat. Id placeat magni tempora voluptatibus.','3014 Auer Key\nLake Esther, NC 02667','[\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\"]',8,10,1,54,440,38500.00,NULL,1,5,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.495007','-76.257956',7027,5,5,'E5UY8K',NULL),(33,'Meadowlands Estates','sale','Illo aperiam cupiditate sed. Assumenda nihil fugiat sequi possimus aliquid quam dolorem culpa. Est eum dolorem unde accusamus et et dolor est. Dolorem tenetur voluptas molestias dolorem ea voluptatem quod. Error impedit adipisci ducimus.','Quo debitis omnis sunt iure ex. Dignissimos cum sit adipisci dolor est. Et mollitia aut inventore similique tempore. Eos dolorem accusantium quod dolores molestiae odio occaecati sint. Rerum consequatur aliquam perspiciatis quaerat qui. Eos aliquid eum aspernatur dolores. Tenetur ducimus itaque laborum nesciunt aut laborum tempore. Quaerat ullam nostrum fuga quidem nobis sed. Eos ea enim culpa tempore eaque sunt voluptas. Aut aspernatur quod dolorem iure dignissimos delectus.','41821 Antonina Roads Apt. 317\nWest Blancheshire, ME 84667','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\"]',2,2,6,87,920,84300.00,NULL,1,4,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.880163','-75.39181',29086,4,4,'KJDTLY',NULL),(34,'Highland Meadows','rent','Incidunt impedit voluptas itaque. Sed tenetur quisquam et voluptatem quidem magnam dolore. Vel voluptas et occaecati dolores. Quidem dolorum et quisquam dolore saepe recusandae.','Suscipit natus ea modi. Autem et qui reiciendis quia dolorem. Nam sit in officiis voluptas vel rerum. Qui maiores error eos fugit. Voluptatem soluta sint voluptatem magnam et dolore. Eaque voluptas perferendis iure blanditiis. Voluptates harum porro labore quasi harum sequi quis voluptatem. Consequuntur labore qui animi dolores rerum. Ut sint libero nesciunt aut in. Velit dolorem dolorum saepe quisquam nihil. Ut laborum molestiae repellendus cupiditate illo. Facilis cupiditate delectus sint maxime. Similique ratione quam molestiae perferendis qui. Accusamus placeat facilis eos ut nulla.','811 Feest Green\nKemmerfurt, WV 45808-7190','[\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\"]',7,9,7,17,550,928000.00,NULL,1,6,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','42.717225','-74.99257',8847,6,6,'3RW3VY',NULL),(35,'Brookfield Gardens','rent','Asperiores aut illum recusandae facilis voluptate. Aut eaque rerum laboriosam eos aut labore iure. Rerum adipisci iste et qui reprehenderit odit sit aut.','Perspiciatis optio quis ab molestiae quaerat. Saepe nisi minima dicta beatae deleniti. Minima rerum laborum mollitia. Necessitatibus eveniet culpa quidem nesciunt et. Sequi temporibus dolorum repellendus sint qui facilis voluptas. Cupiditate harum tempore soluta nobis repellat. Omnis nobis voluptatem beatae et. Repellendus voluptatem illo enim voluptatem soluta dolores ducimus. A dicta quidem suscipit beatae hic voluptatem deserunt.','857 Weston Villages Apt. 967\nLake Brandon, MD 11349','[\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\"]',2,1,4,23,200,181100.00,NULL,0,1,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.02693','-76.602356',97528,1,1,'S3OZ0X',NULL),(36,'Silverwood Villas','sale','Est porro exercitationem aut accusamus vel eligendi porro. Tempora ut sit harum sit. Eum vel dolor autem maiores incidunt fugit vel. Voluptatem ut laboriosam doloremque praesentium.','Aut non voluptas nisi ut magnam est expedita. Ut ab consequuntur veniam quos cum aut ut. Molestiae ut repellendus et architecto eos. Error dolor quibusdam et ipsam omnis eum minus. Qui iure animi itaque incidunt ut incidunt ratione. Maxime nobis soluta nostrum veniam. Veniam reiciendis aut officiis quia unde voluptatibus porro. Similique quia atque debitis laudantium sunt aut. Ipsa impedit est voluptas ab adipisci vero alias. Ratione quaerat nihil doloribus consequuntur sed voluptatibus dicta.','42595 Bins Terrace\nWest Rowena, IN 52813','[\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\"]',13,1,8,37,580,662300.00,NULL,1,1,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','42.583719','-75.440724',25454,1,1,'0MBGTE',NULL),(37,'Evergreen Terrace','sale','Magni aut ut facilis ut perferendis eos. Architecto voluptates accusantium qui ex ut sed ducimus. Modi libero sint qui impedit aut. Eligendi mollitia consequatur rem aut tenetur sint aspernatur. Ad aut ad qui doloribus perspiciatis et.','Iure voluptatem quibusdam recusandae incidunt architecto sequi. Dicta eos veritatis sunt velit labore doloribus. Fuga est inventore repudiandae voluptates laudantium aspernatur quos. Et voluptas corrupti cupiditate quaerat odit molestiae. Magnam repudiandae possimus veniam officia veritatis temporibus aut. Et odit voluptatem amet vel dolorem voluptatem numquam. Voluptas consequatur est voluptates non dolor. Labore est praesentium aut. Dolore perspiciatis quis sed dolorum. In voluptatibus ad hic exercitationem. Id ullam enim doloribus sapiente quam dolor. Omnis harum nihil reprehenderit rerum. Omnis accusantium sint autem voluptatem cum ea sunt enim.','8020 Arnulfo Plaza\nAdolfoland, HI 29125','[\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\"]',5,1,2,44,580,348100.00,NULL,0,4,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.219259','-76.684801',87346,4,4,'OAEOUY',NULL),(38,'Golden Gate Residences','rent','Quidem distinctio nihil rem asperiores qui fugit sed natus. Minima libero dolorum numquam et. Autem velit ea voluptas itaque sit.','Nihil fugit error eum laboriosam reprehenderit eligendi sit. Similique autem sit ea omnis magnam adipisci. Officia iste dolores omnis odio. Voluptas ex architecto cumque neque. Laboriosam inventore non hic labore tenetur dolore consequatur nesciunt. Consequuntur culpa sed odio at et molestiae. Qui alias enim vel voluptas earum. Ut sapiente sunt delectus nemo omnis. Voluptatem quos a modi qui hic modi et. Quia asperiores facere id soluta doloremque. Possimus mollitia atque sunt incidunt.','661 Glennie Coves\nSouth Cooper, DC 50813-5977','[\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\"]',2,5,5,54,230,760300.00,NULL,0,4,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:41','2024-07-31 06:44:41','43.815917','-76.554083',76488,4,4,'R4FVEC',NULL),(39,'Spring Blossom Park','rent','Est quae veritatis expedita. Odit harum eligendi natus adipisci quod et consequatur. Culpa neque cupiditate qui.','Facilis minus atque fugit rerum magni in placeat. Explicabo reiciendis officiis ea error. Rerum voluptas enim illo expedita omnis. Dolorem non sed sequi mollitia. Nihil laudantium autem odit. Voluptatem saepe in saepe vel tempora velit. Suscipit quia corporis voluptatibus nostrum. Consequatur sit id modi est amet est laudantium incidunt. Numquam inventore delectus modi qui quos. Ab rerum quis sequi impedit libero minus doloribus.','545 Deshawn Plains\nPacochaside, TN 87893-3381','[\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]',2,1,10,95,750,664600.00,NULL,1,6,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.544821','-75.745775',84037,6,6,'T8IIGU',NULL),(40,'Horizon Pointe','sale','Saepe perferendis quasi tempora accusamus eos. Deleniti accusantium enim expedita ut voluptatem. Recusandae sit nihil earum id quos qui omnis.','Omnis sed ex nobis dolorum id voluptatum ut. Non molestias vitae quos itaque voluptatem velit alias. Corporis non dolores omnis vel accusamus mollitia. Voluptate consequuntur quos animi doloremque rerum illum omnis veritatis. Magnam numquam omnis dolores ducimus vel. Aliquid ea recusandae aut est est. Placeat illo provident delectus vitae autem suscipit. Tempore magnam autem possimus repellat. Aperiam qui mollitia qui excepturi eveniet quis. Fugiat consequatur sed maxime culpa et voluptatum adipisci porro. Et voluptatibus porro quod amet.','851 Lowe Stravenue Suite 413\nBeahanfort, ME 69275','[\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\"]',15,3,6,95,460,718400.00,NULL,1,6,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.848203','-76.151989',74202,6,6,'G1HXOL',NULL),(41,'Whispering Pines Lodge','rent','Dolorem consequatur aut quas fugiat. Sint consequatur suscipit aut quam magni perferendis repellat. Sit voluptas ipsum fugiat dolore blanditiis explicabo delectus. Maxime magni et molestias dolor eveniet.','Ut quod maiores at consectetur aliquid. Omnis corrupti dicta dolore inventore dolorem qui. Porro odit voluptatibus qui omnis non. Non voluptas sit est nobis. Quo doloremque repellendus et ut repellendus aut. Consequatur a qui quia veritatis. Consequatur quisquam in est praesentium reiciendis. Doloremque velit maxime quasi consequatur veritatis voluptate dignissimos. Hic et eos nemo maxime tempora quam architecto odit.','26785 Stephanie Road\nWest Santinaville, AK 68757','[\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\"]',12,1,4,46,470,956300.00,NULL,1,3,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.901048','-75.754414',99902,3,3,'L295ZE',NULL),(42,'Sunset Ridge','rent','Aut tempora quis excepturi delectus consequatur vel veniam. Sed atque quas ut reiciendis repellendus facilis. Id et ut officiis incidunt facere.','Perspiciatis ratione sint quos rerum. Libero vero amet odio quo tempora quos fugiat. Architecto ullam officia reprehenderit repellendus debitis quia. Et sint velit quidem dicta recusandae beatae odio. Alias deleniti totam officia dicta itaque animi animi non. Libero in et quo officiis consequuntur vitae. Ut suscipit corporis non eos quia nihil dolorem. Et minus recusandae animi atque quis. Recusandae et sed reiciendis ut earum maiores qui. Ratione quia vel enim et.','61308 Zaria Loop Apt. 002\nRainaview, ME 97158','[\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]',3,7,2,15,490,654500.00,NULL,1,1,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.731957','-75.971536',87262,1,1,'I5UGBA',NULL),(43,'Timberline Estates','rent','Magni veniam qui quibusdam asperiores consequatur. Minus voluptatem labore ut possimus. Consequatur nihil sit facilis est dolorem labore.','Officia aut rerum praesentium id. Dolorum reprehenderit voluptas et blanditiis sunt. Rerum est est omnis dolore. Inventore vel doloremque esse aperiam eveniet. Architecto quae sapiente corporis ut unde repellendus dolores. Ipsa iste illo animi ab. Sapiente animi in maiores voluptatem est non ea.','89039 Tressa Valley Suite 181\nEast Deonte, KS 91335','[\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\"]',13,8,4,73,970,691000.00,NULL,0,5,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.492412','-75.697912',3984,5,5,'3UEARI',NULL),(44,'Crystal Lake Condos','rent','Aliquam et molestiae ut. Inventore debitis est fugiat reiciendis voluptates aliquid. Aut expedita eum magni. Vel dolores iure qui temporibus.','Laudantium optio iusto non reiciendis. Velit labore in aliquam totam. Voluptatem non corporis vel. Quia quas dignissimos pariatur corrupti minus autem sint. Possimus voluptas tempore assumenda ex et. Nobis ut laudantium totam voluptas voluptate. Suscipit minus culpa eum sapiente et dolor non facere. Voluptate voluptas enim numquam mollitia. Pariatur quod quibusdam recusandae iusto porro. Blanditiis vel qui officia aliquam optio. Dolorem quasi numquam nihil fuga praesentium facere itaque. Reiciendis dolor dolore est totam voluptatem. Dolore totam id et repellat earum sed.','1380 Doyle Parkways\nNorth Lester, AZ 20316-5164','[\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\"]',1,7,4,39,350,863200.00,NULL,1,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.987443','-76.647483',15068,5,5,'SLX3ZY',NULL),(45,'Briarwood Apartments','sale','Voluptas ut maxime molestias enim. Dolor magni commodi velit tempora ex occaecati voluptatem soluta. Aut aperiam ut ab asperiores et.','Aut in accusamus dolores est delectus ea accusantium. Maiores sit sequi ratione nulla et nostrum necessitatibus sit. Ullam repudiandae ut qui nihil molestiae. Omnis est eius voluptas exercitationem. Sunt quia assumenda voluptatem in laborum id voluptatem. Facere et nemo et quidem eos et corporis. Enim eveniet labore impedit et alias velit. Magni voluptas quae inventore. Non nobis et sint distinctio.','734 Yasmine Harbors Apt. 798\nPort Rosendochester, OR 48907','[\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]',5,6,9,16,480,92600.00,NULL,0,4,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.825297','-74.868224',70095,4,4,'4HDPPH',NULL),(46,'Summit View','rent','Officia velit voluptatem nam qui dolorem rerum assumenda. Qui mollitia nostrum reiciendis alias ab quas.','Fuga sed doloremque et placeat nesciunt. Modi consectetur eius eveniet odio. Dolorem molestiae qui sed quod provident. Incidunt quia atque eum sed ut. Aspernatur officia dolorem quos consequatur voluptatibus provident quas qui. Exercitationem et totam voluptas autem perferendis possimus sit fuga. Ex maiores voluptas nulla accusamus consectetur aut natus. Minima velit eligendi aut est sed sapiente ab.','73227 Moore Port\nLake Enochfurt, NE 88825-5032','[\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\"]',15,7,2,58,860,787200.00,NULL,1,5,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.854112','-75.871643',96139,5,5,'EVFA6S',NULL),(47,'Elmwood Park','sale','Aliquam nulla cumque placeat quae modi eum. Consequatur dolorem laboriosam id laborum. Est ipsa in doloribus cupiditate cumque et natus. Quia tempora blanditiis voluptas at laboriosam distinctio.','Voluptatem commodi cum labore id ut laborum aut. Alias fugiat enim et et. Repellat dolorem quis non doloribus in minima. Illo fugit tenetur quia aliquam atque. A voluptatibus sed nihil praesentium rerum. Incidunt rem deleniti voluptatibus. Saepe repellendus voluptas non voluptas.','50538 Ziemann Cove\nStokesburgh, CO 70480-7898','[\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\"]',13,1,7,24,70,413600.00,NULL,1,5,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.57834','-75.022589',11860,5,5,'YATBTE',NULL),(48,'Stonegate Homes','rent','Et dolore consequatur quia officiis et fugiat voluptas. Debitis doloremque beatae quo ipsum quasi vero et. Nulla nihil fugiat quia harum aperiam quas et dolorem. Sed in ea sed id non aut tenetur.','Adipisci autem officia est vitae. Voluptatem odio deserunt sint fuga et. Sed corporis quia mollitia est. Error quis voluptas quia et et doloremque. Ducimus ut pariatur sint ad. Sint distinctio qui aperiam eveniet veritatis ex nobis illum. Distinctio nemo quibusdam fugit molestiae et. Natus et omnis nihil esse adipisci. A et quo saepe iure nesciunt. Voluptatem et earum facilis possimus quis ut. Repudiandae fugiat nobis doloremque voluptate necessitatibus repellat quasi quas. Rerum voluptatibus ratione quia tempore et. Esse dolorem ab deserunt consequatur.','6863 Esta Extensions\nPurdyborough, NV 95117','[\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\"]',1,3,5,37,1000,76000.00,NULL,1,5,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.816587','-74.864189',17339,5,5,'N8UFHJ',NULL),(49,'Rosewood Villas','sale','Vero qui natus aliquam vitae velit. Eveniet voluptatibus totam sit dolorum. Recusandae deleniti facere mollitia corrupti doloribus iste nemo quos. Sit iusto et ipsum numquam commodi.','Possimus numquam aspernatur perferendis debitis incidunt ea et. Voluptas architecto dolor rerum autem quia sapiente quo. In numquam nam adipisci veniam sit numquam. Nulla perspiciatis pariatur voluptas officia qui quae velit. Ipsa quas at adipisci inventore eveniet. Sit in sed praesentium autem incidunt. Similique nemo corrupti consequatur voluptas deleniti architecto. Repellendus eius nesciunt sit non nostrum.','193 Shanahan Mount Apt. 702\nWest Cristobal, NC 92281-5604','[\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\"]',18,10,8,35,800,218300.00,NULL,1,6,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.645801','-74.857981',57178,6,6,'5LUSFD',NULL),(50,'Prairie Meadows','rent','Eligendi repellat eveniet ut dolorum iusto sit. Officia temporibus debitis doloremque et. Et fugit similique eaque soluta.','Explicabo quasi consequatur sed officia velit numquam. Consectetur aperiam qui sit omnis suscipit. Enim accusamus quia at. Quia error et necessitatibus quo. Id voluptas ipsam ut. Amet ullam qui velit eaque molestias repellat. Autem iure mollitia ipsum. Provident nesciunt consequatur cupiditate ex et neque aut qui. Consequatur nisi hic cupiditate impedit doloribus consectetur nihil dolor. Quia praesentium explicabo rerum dolore voluptatum ipsa quia aspernatur. Voluptatum velit incidunt placeat et. Incidunt aut adipisci ipsa iusto delectus enim.','5962 Makenzie Crescent\nEarnestchester, HI 07225-4093','[\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\"]',5,10,4,99,90,623100.00,NULL,0,1,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.775742','-74.848643',37950,1,1,'SR5LHP',NULL),(51,'Hawthorne Heights','rent','Odio quibusdam tenetur explicabo sapiente tempora aut voluptatem. Recusandae hic eveniet et nemo voluptatum non. Suscipit et asperiores autem occaecati. Ducimus quod quaerat vel magni.','Fuga quo fugiat voluptatem iure. Quis repellendus est accusamus optio qui quia unde molestiae. Consequatur et sed quibusdam sit enim ut harum ipsam. Qui velit vel exercitationem amet aut ut. Recusandae et tempora est magni. Dignissimos voluptatem laborum tenetur hic at hic cumque id. Aut accusantium minima qui voluptatem qui. Corrupti qui exercitationem et commodi sit a. Fuga aut officia vel quas.','471 Terrence Viaduct\nTimmyview, WA 67103-1648','[\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\"]',3,10,8,18,800,809200.00,NULL,1,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.657591','-75.550142',38484,4,4,'XCA12Z',NULL),(52,'Sierra Vista','rent','Inventore et ea commodi quia a neque molestiae aperiam. Magnam eaque est quam eos maxime perspiciatis. Optio consectetur soluta ut odio.','Nihil soluta est est quod voluptatem officiis itaque. Repellat nobis qui ut. Amet eum quis aliquid mollitia officiis sunt voluptates. Qui ipsa consequuntur perferendis dolores ut. Sint quia quia dolorum. Molestiae sit beatae voluptas magni. Quo itaque corrupti animi. Quod blanditiis ipsa velit eius.','67129 Nienow Trail Apt. 365\nDonnellymouth, DC 20941-6886','[\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\"]',1,6,2,87,970,301900.00,NULL,0,4,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.761162','-76.353186',18856,4,4,'PMEFRI',NULL),(53,'Autumn Leaves','sale','Fuga perferendis cum corrupti eligendi. Ut cum neque omnis ut mollitia natus. Non dolorem asperiores ducimus magnam dolores quam. Et numquam ducimus repudiandae voluptatem.','Nihil voluptas et laudantium eveniet. Praesentium sapiente veritatis culpa voluptas maiores. Sit ut ut velit assumenda voluptatibus aut. Eaque ducimus animi nostrum. Ducimus recusandae deleniti a sit sed. Reprehenderit in ex velit distinctio est et tenetur sunt. Consequatur est qui nihil assumenda eos deserunt accusantium aut. Voluptas error soluta ducimus consequatur quibusdam saepe. Hic voluptas rerum cumque ratione doloribus neque temporibus. Eos velit voluptatem iste sit.','525 Kerluke Park Suite 212\nMosciskichester, MS 07958-0924','[\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\"]',8,9,7,24,560,712100.00,NULL,0,5,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','42.853824','-76.175413',75837,5,5,'EY4ODN',NULL),(54,'Blue Sky Residences','sale','Aut voluptatibus nostrum cupiditate pariatur illum. Eaque commodi inventore possimus et. Nihil ducimus assumenda tempora voluptas ipsam.','Occaecati autem neque itaque aut deleniti vero reprehenderit. Iure repellendus facere et maiores. Reiciendis velit et velit eos vel sed est. Voluptatem eos minus eaque quo quibusdam et molestias. Autem cupiditate nesciunt est eum odio sed. Et numquam corrupti et eum ea magnam. Magni vel autem neque provident ratione. Nihil sint dolores ex et et. Ut facilis inventore et vel incidunt sequi. Voluptas consequuntur ut qui sed laboriosam ut voluptatem. Ut voluptas enim iste sit ea ipsam.','48546 Chet Green Suite 298\nSouth Joshua, NJ 25951-6847','[\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\"]',5,9,10,59,970,758700.00,NULL,0,6,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.645754','-75.374407',15081,6,6,'LTUEQJ',NULL),(55,'Pebble Creek','rent','Facilis libero quis voluptate delectus ipsam voluptatem nihil. Quasi et eveniet corporis deserunt. Rerum laborum sint qui veniam dolor voluptate ut. Sit exercitationem modi error quod quidem vel dolores. Accusantium odio et sint rerum ipsum dolores et quo.','Ut repellendus vel enim. Nulla debitis similique eveniet in sed quae voluptatem ut. Voluptas odit est laboriosam ex et quaerat. Illo dolore dolorum eaque ut minus aut. Expedita voluptate autem dolorum maxime. Minima eos voluptatem aut mollitia corrupti accusamus exercitationem aliquam. Itaque ea quia aspernatur ad ut reprehenderit. Quia delectus et deserunt optio adipisci sed. Ducimus et atque sed dolor excepturi. Sunt eos vero occaecati ut amet libero. Reiciendis qui et illum laborum debitis omnis. Odit impedit cupiditate praesentium hic. Ut perferendis sit dolorem sit.','30212 Balistreri Village\nHermannport, MT 91107','[\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\"]',15,10,2,41,630,799700.00,NULL,1,3,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.533087','-76.244984',80692,3,3,'7HNZ7B',NULL),(56,'Magnolia Manor','sale','Aut quam ut deleniti et exercitationem cum sunt eos. Facilis sed non dolores assumenda eos nihil a. Totam doloremque quo quidem accusantium et. Quo quo tempora laudantium doloremque ducimus ratione enim.','Aut aut sint aperiam impedit quas est quod tempora. Libero eligendi earum dolor dolorem sit est. Dicta sint consectetur sed quo quasi dolorem vel. Est dolor maiores consequuntur omnis molestias. Facilis quis voluptate libero expedita. Dolor non magni voluptas quod ea mollitia culpa aperiam. Perferendis id et voluptates sit ipsam illum. Quae sunt est doloribus impedit.','8250 Grant Mews\nNew Tressiemouth, ME 43632-9090','[\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\"]',12,9,1,45,220,456400.00,NULL,0,4,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.317141','-75.873809',64506,4,4,'STM2SU',NULL),(57,'Cherry Blossom Estates','rent','Ut non ullam et totam non et beatae omnis. Facilis officiis tempora assumenda. Quisquam fugiat odio rerum illo et voluptate voluptatem blanditiis.','Sapiente minima neque impedit et dolor. Dolores beatae delectus voluptatem neque. Modi voluptates possimus quod eveniet ipsa autem. Consequatur qui ut est. In cumque autem laborum voluptatibus natus quas. Sit veniam rerum quia dolorum consequatur. Dolorum optio perferendis eaque consequatur. Velit magnam quas impedit delectus voluptate consectetur voluptas. Qui ullam illo suscipit illum.','2931 Treutel Hollow Suite 950\nBartolettimouth, DE 43116-6744','[\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]',17,2,3,52,40,81400.00,NULL,1,6,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:42','2024-07-31 06:44:42','43.100799','-76.208308',71474,6,6,'A1NMH6',NULL),(58,'Windsor Park','sale','Qui qui rerum id quas odio voluptates ipsa. Sed tempore ducimus accusantium. Et deleniti sunt recusandae magni ut incidunt ut.','Et excepturi veniam iusto qui harum est optio. Deserunt itaque vel harum nemo et qui. Doloremque sit voluptatem ex deleniti quidem culpa nostrum. Sint tenetur quasi non reiciendis quia eaque. Ut voluptas et reiciendis possimus tempora dicta. Reiciendis totam voluptatibus ut dolore vitae quia necessitatibus cum. Quia blanditiis maiores id voluptas amet ab quisquam. Ut officiis officiis quis velit. Voluptatibus quae illo neque. A error qui corrupti debitis odio natus porro. Delectus blanditiis neque itaque vitae iure reprehenderit rerum. Delectus necessitatibus tempora est dolore. Qui asperiores illo voluptatem dolores consequatur voluptas. Ea quidem repellat voluptas ducimus maxime facilis.','2733 Lyda Flats Suite 255\nMacejkovictown, AL 27207','[\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\"]',18,4,4,80,200,494700.00,NULL,1,3,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:43','2024-07-31 06:44:43','43.511817','-75.251915',90461,3,3,'X6AAEP',NULL),(59,'Seaside Villas','sale','Ab cum deserunt quis. Eum inventore laudantium distinctio porro. Ipsa cum qui magni earum. Repellat architecto quia nisi laboriosam est aliquam. Qui ipsa est aut sint fugit consequuntur corporis illum.','Aut libero modi sed quo. Quod veritatis eos ducimus enim eos earum. Voluptates culpa consequatur eius a quod minima aspernatur. Quasi tempore voluptatem quas voluptates iure quaerat. Sunt dicta aut voluptas adipisci officia neque repellendus. Facilis aut est autem odit deleniti fugit. Est sed ipsum molestiae expedita sit tempore. Aut autem maiores sunt praesentium.','8188 Clark Square\nLake Jedidiahchester, MA 34952','[\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\"]',1,5,3,91,770,378700.00,NULL,1,1,'month','selling',10,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:43','2024-07-31 06:44:43','43.556247','-76.191256',73388,1,1,'LQNJYS',NULL),(60,'Mountain View Retreat','sale','Nihil nemo autem atque sed nihil numquam dolorem. Illo et ea numquam ducimus et laborum. Est magnam enim voluptatem. At nobis omnis vel recusandae ab fugit.','Possimus sit eligendi quo laboriosam. Eum molestias illum sed suscipit. Consequatur eos delectus magnam optio illo sit. Dolor consequuntur autem consequatur neque. Provident et voluptatem repellendus beatae dignissimos non. Quae voluptas reprehenderit cupiditate et. Iure animi fuga rem et iusto voluptatem iure.','28039 Lang Turnpike Apt. 563\nSpinkafort, DE 23818-0016','[\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\"]',12,3,7,97,290,166300.00,NULL,1,1,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:43','2024-07-31 06:44:43','42.781308','-76.112406',95114,1,1,'WW49QP',NULL),(61,'Amberwood Apartments','sale','Sit quia ut tenetur quia. Explicabo hic voluptas blanditiis harum.','Praesentium est voluptatem quis sed rerum rerum consequatur. Iure repellendus velit consectetur quia placeat sed. Laudantium eum minima numquam quaerat. Vitae qui hic explicabo necessitatibus. Rerum porro a eius molestiae. Autem quisquam cupiditate rerum molestiae. Aut non eius aperiam qui et voluptas qui. Illum dolorem aliquam et laboriosam culpa. Corporis itaque natus reiciendis voluptates et assumenda sit. Tempore laudantium at et veniam magnam vitae. Consequatur maiores nesciunt distinctio temporibus. Ut ut non voluptatem aperiam cupiditate.','8292 Swaniawski Courts\nPadbergmouth, NJ 07617','[\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\"]',17,3,6,74,820,795800.00,NULL,0,6,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved','1970-01-01',0,1,'2024-07-31 06:44:43','2024-07-31 06:44:43','42.860359','-76.181232',24217,6,6,'4LSQGR',NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `property_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`property_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (1,2),(1,4),(1,6),(2,1),(2,5),(3,2),(3,5),(3,6),(4,1),(4,4),(5,1),(6,3),(7,1),(7,5),(7,6),(8,4),(8,6),(9,3),(9,5),(10,1),(11,4),(11,5),(11,6),(12,2),(13,2),(13,3),(14,2),(15,2),(15,3),(15,4),(16,2),(16,4),(16,5),(17,1),(17,3),(17,5),(18,1),(18,6),(19,4),(20,2),(21,2),(22,5),(23,3),(24,3),(24,5),(24,6),(25,1),(25,2),(25,6),(26,4),(27,1),(27,3),(28,3),(28,4),(28,5),(29,2),(29,5),(29,6),(30,1),(31,3),(32,1),(32,2),(32,5),(33,2),(33,3),(34,1),(34,4),(34,6),(35,6),(36,4),(37,2),(38,3),(38,5),(39,2),(39,3),(39,6),(40,1),(40,2),(40,3),(41,3),(41,4),(41,6),(42,1),(42,4),(42,6),(43,1),(43,4),(44,1),(45,1),(46,6),(47,1),(47,5),(48,3),(49,3),(49,4),(50,2),(50,6),(51,4),(52,1),(52,4),(53,5),(54,4),(55,3),(55,5),(56,2),(56,3),(57,1),(57,4),(58,3),(58,4),(59,1),(59,2),(60,3),(60,4),(60,6),(61,2),(61,5),(61,6);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,4),(1,6),(1,8),(1,9),(1,12),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,8),(2,9),(2,10),(2,11),(2,12),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,9),(3,10),(3,11),(3,12),(4,3),(4,4),(4,5),(4,6),(4,7),(4,9),(4,11),(5,1),(5,2),(5,5),(5,8),(5,9),(6,4),(6,6),(6,8),(6,9),(6,11),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,7),(7,8),(7,10),(7,12),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,4),(10,5),(10,9),(10,11),(11,2),(11,3),(11,6),(11,7),(11,9),(11,10),(11,11),(12,1),(12,2),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,4),(13,6),(13,7),(13,8),(13,9),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,12),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,8),(16,9),(16,10),(16,11),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12),(18,3),(18,5),(18,7),(18,9),(18,10),(18,11),(19,1),(19,5),(19,6),(19,7),(19,8),(19,9),(19,11),(19,12),(20,1),(20,3),(20,4),(20,6),(20,10),(20,11),(21,1),(21,2),(21,3),(21,4),(21,5),(21,6),(21,7),(21,8),(21,9),(21,11),(21,12),(22,2),(22,3),(22,4),(22,5),(22,6),(22,7),(22,9),(22,10),(22,11),(22,12),(23,2),(23,3),(23,4),(23,5),(23,9),(23,10),(23,11),(23,12),(24,2),(24,3),(24,5),(24,8),(24,11),(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(25,8),(25,9),(25,10),(25,11),(25,12),(26,1),(26,2),(26,3),(26,4),(26,5),(26,6),(26,7),(26,9),(26,11),(26,12),(27,1),(27,2),(27,4),(27,5),(27,6),(27,11),(28,1),(28,2),(28,6),(28,8),(28,10),(29,1),(29,4),(29,6),(29,8),(29,9),(29,10),(29,11),(29,12),(30,1),(30,3),(30,7),(30,9),(31,1),(31,2),(31,5),(31,7),(31,8),(31,9),(31,12),(32,1),(32,7),(32,11),(32,12),(33,1),(33,4),(33,5),(33,6),(33,10),(33,12),(34,1),(34,2),(34,3),(34,4),(34,5),(34,7),(34,8),(34,9),(34,10),(34,11),(34,12),(35,1),(35,3),(35,4),(35,6),(35,7),(35,8),(35,9),(35,10),(35,11),(35,12),(36,1),(36,2),(36,3),(36,5),(36,6),(36,7),(36,8),(36,10),(37,1),(37,2),(37,5),(37,9),(37,11),(38,1),(38,3),(38,4),(38,6),(38,8),(38,10),(38,11),(38,12),(39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(39,7),(39,8),(39,9),(39,10),(39,11),(39,12),(40,1),(40,2),(40,3),(40,4),(40,5),(40,6),(40,7),(40,8),(40,9),(40,10),(40,11),(40,12),(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(41,7),(41,8),(41,9),(41,10),(41,11),(41,12),(42,1),(42,2),(42,4),(42,5),(42,6),(42,7),(42,8),(42,9),(42,10),(42,12),(43,1),(43,6),(43,9),(43,11),(44,1),(44,2),(44,4),(44,5),(44,6),(44,7),(44,9),(44,10),(44,11),(44,12),(45,2),(45,5),(45,6),(45,7),(45,8),(45,9),(45,10),(45,11),(45,12),(46,3),(46,4),(46,7),(46,9),(46,10),(46,11),(47,1),(47,5),(47,6),(47,7),(47,9),(47,12),(48,1),(48,2),(48,4),(48,7),(48,8),(48,9),(48,10),(48,11),(49,4),(49,6),(49,10),(49,11),(50,1),(50,2),(50,3),(50,4),(50,5),(50,6),(50,7),(50,8),(50,9),(50,10),(50,11),(50,12),(51,6),(51,7),(51,9),(51,10),(51,11),(52,4),(52,5),(52,6),(52,7),(52,10),(52,11),(53,2),(53,3),(53,4),(53,5),(53,6),(53,7),(53,8),(53,10),(53,11),(53,12),(54,2),(54,5),(54,7),(54,8),(54,9),(54,10),(55,4),(55,6),(55,11),(55,12),(56,2),(56,4),(56,6),(56,8),(57,2),(57,3),(57,4),(57,11),(58,3),(58,4),(58,5),(58,6),(58,9),(58,10),(58,11),(58,12),(59,1),(59,2),(59,6),(59,7),(59,9),(59,11),(60,2),(60,3),(60,6),(60,8),(60,9),(60,11),(60,12),(61,1),(61,2),(61,3),(61,5),(61,6),(61,8),(61,9),(61,11);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,4,'Botble\\RealEstate\\Models\\Property',60,3,'By the time she found she could not remember the.','approved','2024-05-22 06:44:47','2024-07-31 06:44:47'),(2,9,'Botble\\RealEstate\\Models\\Project',12,2,'Duchess sneezed occasionally; and as he said in a melancholy tone. \'Nobody seems to.','approved','2024-04-05 06:44:47','2024-07-31 06:44:47'),(3,4,'Botble\\RealEstate\\Models\\Property',48,2,'Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice: he had come back with the birds and beasts, as well as the Rabbit, and had just begun \'Well, of all this time. \'I want a clean cup,\'.','approved','2024-04-10 06:44:47','2024-07-31 06:44:47'),(4,9,'Botble\\RealEstate\\Models\\Project',11,4,'For the Mouse had changed his mind, and was beating her violently with its wings. \'Serpent!\' screamed the Queen. \'Well, I never knew so much surprised, that for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to go among.','approved','2024-05-27 06:44:47','2024-07-31 06:44:47'),(5,11,'Botble\\RealEstate\\Models\\Property',52,3,'Between yourself and me.\' \'That\'s the reason is--\' here the conversation dropped, and the fall was over. Alice was only a child!\' The Queen turned crimson with fury, and, after waiting till she had got burnt, and eaten up by.','approved','2024-04-19 06:44:47','2024-07-31 06:44:47'),(6,1,'Botble\\RealEstate\\Models\\Project',5,5,'IS his business!\' said Five, in a dreamy sort of meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t think! And oh, I wish you were all turning into little cakes as they lay sprawling about, reminding her very much.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(7,9,'Botble\\RealEstate\\Models\\Property',34,1,'But, now that I\'m doubtful about the crumbs,\' said the King: \'however, it may kiss my hand if it makes me grow smaller, I suppose.\' So she was nine feet high, and her face like the look of things at all, as the Caterpillar called after it; and the jury.','approved','2024-05-15 06:44:47','2024-07-31 06:44:47'),(8,11,'Botble\\RealEstate\\Models\\Project',17,3,'Alice was very likely it can talk: at any rate it would be quite as much as she couldn\'t answer either question, it didn\'t sound at all the rest waited in.','approved','2024-06-18 06:44:47','2024-07-31 06:44:47'),(9,12,'Botble\\RealEstate\\Models\\Property',42,4,'Was kindly permitted to pocket the spoon: While the Owl had the door and went down to her very much to-night, I should think!\' (Dinah was the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all looked.','approved','2024-06-04 06:44:47','2024-07-31 06:44:47'),(10,12,'Botble\\RealEstate\\Models\\Project',1,3,'Cat remarked. \'Don\'t be impertinent,\' said the Dodo, pointing to the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Duck. \'Found IT,\' the Mouse to Alice as she spoke; \'either you or your head must be.','approved','2024-07-21 06:44:47','2024-07-31 06:44:47'),(11,4,'Botble\\RealEstate\\Models\\Property',34,3,'VERY wide, but she ran out of that is--\"Birds of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of his great wig.\' The judge, by the time when I was thinking I should say what you mean,\' said Alice. \'And be quick about it,\' added the.','approved','2024-06-13 06:44:47','2024-07-31 06:44:47'),(12,1,'Botble\\RealEstate\\Models\\Project',16,1,'Pigeon. \'I can tell you how the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not gone much farther.','approved','2024-04-14 06:44:47','2024-07-31 06:44:47'),(13,5,'Botble\\RealEstate\\Models\\Property',56,1,'Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t talk about her and to hear it say, as it settled down again, the cook and the.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(14,3,'Botble\\RealEstate\\Models\\Project',3,4,'King. The next thing was snorting like a telescope! I think you\'d take a fancy to herself how this same little sister of hers that you have to whisper a hint to Time, and.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(15,11,'Botble\\RealEstate\\Models\\Property',49,2,'I know all sorts of things--I can\'t remember things as I tell you!\' said Alice. \'Then you may stand down,\' continued the King. The White Rabbit interrupted: \'UNimportant, your Majesty.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(17,2,'Botble\\RealEstate\\Models\\Property',52,3,'Alice hastily replied; \'at least--at least I know THAT well enough; don\'t be particular--Here, Bill! catch hold of its voice. \'Back to land again, and Alice guessed who it was, and, as there was a table in the pictures of him), while the Mock Turtle to.','approved','2024-05-01 06:44:47','2024-07-31 06:44:47'),(18,8,'Botble\\RealEstate\\Models\\Project',3,5,'I\'ve got back to them, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about it!\' and he says it\'s so.','approved','2024-06-23 06:44:47','2024-07-31 06:44:47'),(20,5,'Botble\\RealEstate\\Models\\Project',8,1,'The Knave shook his head mournfully.','approved','2024-05-03 06:44:47','2024-07-31 06:44:47'),(21,11,'Botble\\RealEstate\\Models\\Property',40,3,'March Hare interrupted in a long, low hall, which was a queer-shaped little creature, and held it out into the wood for fear of their wits!\' So she went nearer to make personal remarks,\' Alice said very politely, feeling quite pleased to have no.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(22,9,'Botble\\RealEstate\\Models\\Project',14,4,'March Hare. \'Exactly so,\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the children she knew she had a.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(23,2,'Botble\\RealEstate\\Models\\Property',9,5,'And the muscular strength, which it gave to my jaw.','approved','2024-07-19 06:44:47','2024-07-31 06:44:47'),(24,8,'Botble\\RealEstate\\Models\\Project',7,5,'Alice, who always took a great hurry. \'You did!\' said the Dodo, pointing to the Gryphon. \'It all came different!\' the Mock Turtle interrupted, \'if you only kept on puzzling about it while the Dodo suddenly called out to be.','approved','2024-04-29 06:44:47','2024-07-31 06:44:47'),(25,6,'Botble\\RealEstate\\Models\\Property',20,1,'FIT you,\' said Alice, \'and if it began ordering people about like mad things all this time. \'I want a clean cup,\' interrupted.','approved','2024-04-11 06:44:47','2024-07-31 06:44:47'),(26,5,'Botble\\RealEstate\\Models\\Project',2,1,'Gryphon, with a round face, and was going on, as she had grown so large in the shade: however, the moment how large she had brought herself down to look down and.','approved','2024-04-20 06:44:47','2024-07-31 06:44:47'),(27,5,'Botble\\RealEstate\\Models\\Property',52,3,'Alice. \'You must be,\' said the Mock Turtle: \'why, if a dish or kettle had been all the children she knew that it would feel with all their simple joys, remembering her own children. \'How should I know?\' said Alice, as she swam nearer to make out which were the two sides of it, and.','approved','2024-07-09 06:44:47','2024-07-31 06:44:47'),(28,1,'Botble\\RealEstate\\Models\\Project',14,2,'Alice noticed with some severity; \'it\'s very rude.\' The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a mouse, you know. Come on!\' \'Everybody says.','approved','2024-04-12 06:44:47','2024-07-31 06:44:47'),(29,3,'Botble\\RealEstate\\Models\\Property',17,5,'I never understood what it might belong to one of the e--e--evening.','approved','2024-07-18 06:44:47','2024-07-31 06:44:47'),(30,11,'Botble\\RealEstate\\Models\\Project',10,3,'White Rabbit with pink eyes ran close by her. There was a different person then.\' \'Explain all that,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he found it so quickly that the cause of this.','approved','2024-04-24 06:44:47','2024-07-31 06:44:47'),(31,7,'Botble\\RealEstate\\Models\\Property',45,4,'THAT direction,\' the Cat again, sitting on the floor, and a scroll of parchment in the pictures of him), while the Dodo could not even.','approved','2024-05-29 06:44:47','2024-07-31 06:44:47'),(32,10,'Botble\\RealEstate\\Models\\Project',12,2,'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\' \'Perhaps not,\' Alice.','approved','2024-05-22 06:44:47','2024-07-31 06:44:47'),(33,6,'Botble\\RealEstate\\Models\\Property',24,3,'English,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she kept tossing the baby violently up and straightening itself out again, and that\'s very like a writing-desk?\' \'Come, we shall have to go nearer till she.','approved','2024-07-25 06:44:47','2024-07-31 06:44:47'),(34,5,'Botble\\RealEstate\\Models\\Project',3,1,'In the very middle of her hedgehog. The hedgehog was.','approved','2024-07-06 06:44:47','2024-07-31 06:44:47'),(35,11,'Botble\\RealEstate\\Models\\Property',14,4,'Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come.','approved','2024-06-12 06:44:47','2024-07-31 06:44:47'),(36,12,'Botble\\RealEstate\\Models\\Project',5,5,'Wonderland of long ago: and how she would feel with all her life. Indeed, she had made her look up and repeat something now. Tell her to carry it further. So she stood looking at them with the Mouse to tell me who YOU are.','approved','2024-04-19 06:44:47','2024-07-31 06:44:47'),(37,9,'Botble\\RealEstate\\Models\\Property',26,2,'Alice asked. The Hatter shook his head contemptuously. \'I dare say you never had fits, my dear, I think?\' \'I had NOT!\' cried the Mouse, turning to the jury, who instantly made a memorandum of the house if it began.','approved','2024-04-03 06:44:47','2024-07-31 06:44:47'),(38,4,'Botble\\RealEstate\\Models\\Project',16,3,'I can say.\' This was not going to give the hedgehog to, and, as she went on eagerly: \'There is such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(39,10,'Botble\\RealEstate\\Models\\Property',60,3,'Hearts, and I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the Mouse to Alice again. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then her head impatiently; and, turning to Alice with one.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(40,5,'Botble\\RealEstate\\Models\\Project',7,2,'I BEG your pardon!\' said the Hatter. \'Does YOUR watch tell you his.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(41,3,'Botble\\RealEstate\\Models\\Property',6,5,'I don\'t know one,\' said Alice. \'Call it what you mean,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t like the look of the court. (As that is rather a handsome pig, I think.\' And she went hunting about, and called out as loud as she added, \'and the moral of.','approved','2024-07-21 06:44:47','2024-07-31 06:44:47'),(42,12,'Botble\\RealEstate\\Models\\Project',18,2,'For, you see, because some of them with the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they saw the White Rabbit, jumping up in a whisper, half afraid that she had found her way out. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(43,6,'Botble\\RealEstate\\Models\\Property',30,4,'Alice, who felt ready to ask the question?\' said the.','approved','2024-04-04 06:44:47','2024-07-31 06:44:47'),(44,4,'Botble\\RealEstate\\Models\\Project',2,2,'Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'I might as well say,\' added the Queen. First came ten soldiers carrying clubs; these were all turning into little cakes as they used to read fairy-tales, I fancied that kind of thing that would be like, but.','approved','2024-07-15 06:44:47','2024-07-31 06:44:47'),(45,5,'Botble\\RealEstate\\Models\\Property',34,1,'The Cat\'s head with great curiosity, and this Alice thought the whole pack rose up into a tidy little room with a melancholy way, being quite unable to move. She soon got it.','approved','2024-04-29 06:44:47','2024-07-31 06:44:47'),(46,8,'Botble\\RealEstate\\Models\\Project',8,2,'Alice, and her eyes immediately met those of a dance is it?\' Alice panted as.','approved','2024-05-11 06:44:47','2024-07-31 06:44:47'),(47,2,'Botble\\RealEstate\\Models\\Property',32,3,'Queen. \'I haven\'t opened it yet,\' said Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a bright idea came into Alice\'s shoulder as she spoke; \'either you or your head must be getting home; the night-air doesn\'t suit.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(48,8,'Botble\\RealEstate\\Models\\Project',5,2,'King. \'Nothing whatever,\' said Alice. \'Then it doesn\'t understand English,\' thought Alice; \'but a grin without a grin,\' thought Alice; but she did not see anything that looked like the look of it in the air, I\'m afraid, but.','approved','2024-06-17 06:44:47','2024-07-31 06:44:47'),(49,12,'Botble\\RealEstate\\Models\\Property',49,4,'King eagerly, and he called the Queen, in a hurry: a large one, but it said in an impatient tone: \'explanations.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(50,8,'Botble\\RealEstate\\Models\\Project',13,4,'THAT in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on your head-- Do you think you could keep it to make out who was a body to cut it off from: that.','approved','2024-06-05 06:44:47','2024-07-31 06:44:47'),(51,2,'Botble\\RealEstate\\Models\\Property',25,3,'They had a large plate came skimming out, straight at the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you couldn\'t cut off a little startled when she was ready to agree to everything that was linked into hers began to repeat it, but her.','approved','2024-04-02 06:44:47','2024-07-31 06:44:47'),(52,4,'Botble\\RealEstate\\Models\\Project',18,5,'Dormouse said--\' the Hatter added as an explanation; \'I\'ve none of YOUR adventures.\' \'I could tell you what year it is?\' \'Of course not,\' said Alice as it went, \'One side of the Queen was.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(53,4,'Botble\\RealEstate\\Models\\Property',58,2,'Alice said; \'there\'s a large arm-chair at one corner of it: \'No room! No room!\' they cried out when they liked, so that.','approved','2024-06-24 06:44:47','2024-07-31 06:44:47'),(55,9,'Botble\\RealEstate\\Models\\Property',43,5,'Alice very politely; but she felt that she ran off at once, with a knife, it usually bleeds; and she soon made out the Fish-Footman was gone, and, by the whole thing, and longed to get rather sleepy, and went down on one of the sense, and.','approved','2024-05-03 06:44:47','2024-07-31 06:44:47'),(56,12,'Botble\\RealEstate\\Models\\Project',3,1,'Alice, \'it\'ll never do to ask: perhaps I shall remember it in time,\' said the King. \'Then it doesn\'t matter a bit,\' she thought at.','approved','2024-04-06 06:44:47','2024-07-31 06:44:47'),(57,11,'Botble\\RealEstate\\Models\\Property',50,5,'Alice to herself, (not in a great hurry; \'this paper has just been reading about; and when she had to kneel down on the English coast you find a number of bathing machines in the distance.','approved','2024-06-18 06:44:47','2024-07-31 06:44:47'),(58,9,'Botble\\RealEstate\\Models\\Project',7,2,'Cat. \'--so long as you are; secondly, because they\'re making such VERY short remarks, and she walked up towards it rather timidly, as she came suddenly upon an open place, with a sigh: \'it\'s always tea-time, and we\'ve no time to go, for the first day,\' said the Gryphon: \'I went to.','approved','2024-04-15 06:44:47','2024-07-31 06:44:47'),(59,3,'Botble\\RealEstate\\Models\\Property',19,3,'There ought to be no use now,\' thought Alice, \'or perhaps they won\'t walk the way out of the.','approved','2024-04-27 06:44:47','2024-07-31 06:44:47'),(60,12,'Botble\\RealEstate\\Models\\Project',10,5,'Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no.','approved','2024-04-12 06:44:47','2024-07-31 06:44:47'),(61,3,'Botble\\RealEstate\\Models\\Property',27,3,'I don\'t know,\' he went on again:-- \'I didn\'t write it, and they went up to them.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(63,12,'Botble\\RealEstate\\Models\\Property',31,3,'Knave of Hearts, she made it out to her chin upon Alice\'s shoulder, and it sat down again in a natural way again. \'I should think it so VERY much out of sight: \'but it sounds uncommon nonsense.\' Alice said to the other was sitting between them, fast asleep, and the Panther were sharing a pie--\'.','approved','2024-07-27 06:44:47','2024-07-31 06:44:47'),(64,1,'Botble\\RealEstate\\Models\\Project',7,3,'Rabbit noticed Alice, as the Dormouse again, so violently, that she was trying to put it into his plate. Alice did not wish to offend the Dormouse crossed the court, arm-in-arm with the.','approved','2024-06-14 06:44:47','2024-07-31 06:44:47'),(65,2,'Botble\\RealEstate\\Models\\Property',5,4,'Soup, so rich and green, Waiting in a large fan in the distance, and she went on, \'and most of.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(66,9,'Botble\\RealEstate\\Models\\Project',9,1,'Alice dodged behind a great hurry to change the subject. \'Ten hours the first day,\' said the Duchess, \'as pigs have to beat time when she had been wandering, when a sharp hiss made her draw back in a tone of this elegant thimble\'; and, when it had some kind of.','approved','2024-04-08 06:44:47','2024-07-31 06:44:47'),(67,2,'Botble\\RealEstate\\Models\\Property',58,2,'Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know all the while, and fighting for the accident of the well, and noticed that one.','approved','2024-06-05 06:44:47','2024-07-31 06:44:47'),(68,7,'Botble\\RealEstate\\Models\\Project',8,3,'Shakespeare, in the wind, and was.','approved','2024-04-30 06:44:47','2024-07-31 06:44:47'),(69,8,'Botble\\RealEstate\\Models\\Property',5,1,'Alice, whose thoughts were still running on the ground as she could. The next witness would be grand, certainly,\' said Alice, a good deal worse off than before, as the.','approved','2024-05-19 06:44:47','2024-07-31 06:44:47'),(71,4,'Botble\\RealEstate\\Models\\Property',11,2,'They all returned from him to be afraid of it. She went in without knocking, and hurried off to other parts of the table, but it is.\' \'I quite agree with you,\' said Alice, \'how am I to get out at.','approved','2024-05-10 06:44:47','2024-07-31 06:44:47'),(72,11,'Botble\\RealEstate\\Models\\Project',18,3,'I am, sir,\' said Alice; \'I might as well as she went nearer to watch them, and the baby with some curiosity. \'What a curious dream, dear, certainly: but now run in to your tea; it\'s getting.','approved','2024-05-29 06:44:47','2024-07-31 06:44:47'),(73,6,'Botble\\RealEstate\\Models\\Property',40,1,'She waited for a minute or two she walked up towards it rather timidly, saying to herself, for she could guess, she was ready to ask help of any one; so, when the tide rises and sharks are around, His voice has a timid voice at her feet, for it now, I suppose, by being drowned in my.','approved','2024-04-05 06:44:47','2024-07-31 06:44:47'),(74,2,'Botble\\RealEstate\\Models\\Project',11,4,'Five, in a sort of knot, and then said, \'It was much pleasanter at home,\' thought poor Alice, and she set to work at once and put it in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD go with Edgar Atheling to meet William and offer him the crown.','approved','2024-05-28 06:44:47','2024-07-31 06:44:47'),(75,3,'Botble\\RealEstate\\Models\\Property',3,4,'I to get out again. The rabbit-hole went straight on like a writing-desk?\' \'Come, we shall have to go on in the newspapers, at the March Hare interrupted, yawning. \'I\'m getting tired of this. I vote the young lady to see if he thought it must be.','approved','2024-06-03 06:44:47','2024-07-31 06:44:47'),(76,8,'Botble\\RealEstate\\Models\\Project',10,3,'In another minute there was generally a ridge or furrow in the pool, \'and she sits purring so nicely by the officers of the court,\" and I could show you our cat Dinah: I think it was,\' the March Hare, who had been (Before she had a VERY good opportunity for repeating his remark, with variations.','approved','2024-05-21 06:44:47','2024-07-31 06:44:47'),(78,7,'Botble\\RealEstate\\Models\\Project',3,3,'And yet I wish you could draw treacle out of a muchness\"--did you.','approved','2024-05-10 06:44:47','2024-07-31 06:44:47'),(79,3,'Botble\\RealEstate\\Models\\Property',36,1,'Shark, But, when the Rabbit say, \'A barrowful of WHAT?\' thought Alice to herself, \'the way all the same, shedding gallons of tears, but said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to.','approved','2024-07-06 06:44:47','2024-07-31 06:44:47'),(81,5,'Botble\\RealEstate\\Models\\Property',14,3,'Take your choice!\' The Duchess took no notice of them.','approved','2024-07-19 06:44:47','2024-07-31 06:44:47'),(82,2,'Botble\\RealEstate\\Models\\Project',8,4,'Alice desperately: \'he\'s perfectly idiotic!\' And she began fancying the sort of way, \'Do cats eat bats? Do cats eat bats, I wonder?\' And here poor Alice began telling them her adventures from the time.','approved','2024-07-19 06:44:47','2024-07-31 06:44:47'),(83,6,'Botble\\RealEstate\\Models\\Property',3,2,'The Mouse looked at them with the other: the Duchess said after a few minutes she heard a little way off, and found quite a conversation of it.','approved','2024-04-07 06:44:47','2024-07-31 06:44:47'),(84,7,'Botble\\RealEstate\\Models\\Project',11,4,'I\'d taken the highest tree in the act of crawling away: besides all this, there was no more to be no sort of lullaby to it in with a T!\' said the King; and the party went back to my boy, I beat him when he finds out.','approved','2024-04-03 06:44:47','2024-07-31 06:44:47'),(85,9,'Botble\\RealEstate\\Models\\Property',48,1,'I think you\'d take a fancy to cats if you don\'t know much,\' said Alice; \'I must go and take it away!\' There was a good thing!\' she said to herself; \'his eyes are so VERY much out of the crowd below, and there was a child,\' said the March Hare, who had been.','approved','2024-04-08 06:44:47','2024-07-31 06:44:47'),(86,11,'Botble\\RealEstate\\Models\\Project',14,3,'I\'ve got to?\' (Alice had no pictures or conversations in it, \'and what is the driest thing I.','approved','2024-06-23 06:44:47','2024-07-31 06:44:47'),(87,10,'Botble\\RealEstate\\Models\\Property',29,5,'Gryphon, \'that they WOULD put their heads down!.','approved','2024-04-05 06:44:47','2024-07-31 06:44:47'),(88,11,'Botble\\RealEstate\\Models\\Project',2,2,'Mock Turtle at last, with a round face, and was in confusion, getting the Dormouse into the air. This time Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the wind, and was going on, as she could. The.','approved','2024-06-30 06:44:47','2024-07-31 06:44:47'),(89,5,'Botble\\RealEstate\\Models\\Property',58,5,'Oh, how I wish you would seem to come out among the trees, a little ledge of rock.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(91,3,'Botble\\RealEstate\\Models\\Property',11,4,'SIT down,\' the King hastily said, and went on in these words: \'Yes, we went to school in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said to one of the right-hand bit.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(92,8,'Botble\\RealEstate\\Models\\Project',17,2,'Alice, as she ran. \'How surprised he\'ll be when he sneezes: He only does it to his son, \'I feared it might end, you know,\' Alice gently remarked; \'they\'d have been that,\' said the Hatter. \'Stolen!\' the King added in a thick wood. \'The first thing she heard the Rabbit say, \'A barrowful of WHAT?\'.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(93,10,'Botble\\RealEstate\\Models\\Property',37,2,'So she swallowed one of the mushroom, and raised herself to some tea and bread-and-butter, and then at the sides of it, and they.','approved','2024-05-06 06:44:47','2024-07-31 06:44:47'),(94,8,'Botble\\RealEstate\\Models\\Project',4,5,'I to do?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon in an undertone to the Gryphon. \'They can\'t have anything to put everything upon Bill! I wouldn\'t say anything about it, even if my head would go anywhere without a moment\'s delay would cost them their.','approved','2024-07-27 06:44:47','2024-07-31 06:44:47'),(95,7,'Botble\\RealEstate\\Models\\Property',22,5,'Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can do no more, whatever happens. What WILL become of it.','approved','2024-05-29 06:44:47','2024-07-31 06:44:47'),(96,11,'Botble\\RealEstate\\Models\\Project',15,4,'Queen\'s shrill cries to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon, sighing in his confusion he bit a large arm-chair at one end of the song. \'What trial is it?\'.','approved','2024-05-22 06:44:47','2024-07-31 06:44:47'),(97,5,'Botble\\RealEstate\\Models\\Property',41,3,'King. (The jury all looked puzzled.) \'He must have been that,\' said the Hatter. \'Nor I,\' said the King. The White Rabbit read out, at the window, and some \'unimportant.\' Alice could hear the words.','approved','2024-04-10 06:44:47','2024-07-31 06:44:47'),(98,2,'Botble\\RealEstate\\Models\\Project',3,1,'Seaography: then Drawling--the Drawling-master was an old crab, HE was.\' \'I never said I could not even get her head down to look over their heads. She felt that she had grown.','approved','2024-04-20 06:44:47','2024-07-31 06:44:47'),(99,11,'Botble\\RealEstate\\Models\\Property',30,3,'And took them quite away!\' \'Consider your verdict,\' he said do. Alice looked very uncomfortable. The moment Alice appeared, she was not quite sure whether it was addressed to the three gardeners, oblong and flat, with their heads!\' and the White.','approved','2024-05-08 06:44:47','2024-07-31 06:44:47'),(100,10,'Botble\\RealEstate\\Models\\Project',7,4,'She was close behind it was addressed to the Knave. The Knave shook his head contemptuously. \'I dare say you never even spoke to Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had it written down: but I hadn\'t begun my tea--not above a week or so--and what.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(101,4,'Botble\\RealEstate\\Models\\Property',2,2,'I wonder if I must, I must,\' the King added in a game of croquet she was saying, and the game was going to begin at HIS time of life. The King\'s argument was, that her neck would bend about easily in any direction, like a.','approved','2024-04-02 06:44:47','2024-07-31 06:44:47'),(102,8,'Botble\\RealEstate\\Models\\Project',1,3,'Cat went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the mushroom (she had grown to.','approved','2024-07-21 06:44:47','2024-07-31 06:44:47'),(103,9,'Botble\\RealEstate\\Models\\Property',24,3,'Alice. \'And be quick about it,\' added the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, quite forgetting her promise. \'Treacle,\' said the Mouse replied rather crossly: \'of course you know about this.','approved','2024-06-07 06:44:47','2024-07-31 06:44:47'),(104,2,'Botble\\RealEstate\\Models\\Project',14,2,'Conqueror, whose cause was favoured by the officers of the Mock Turtle at last, they must needs come wriggling down from the roof. There were doors all round her, about the twentieth time that day. \'A.','approved','2024-07-01 06:44:47','2024-07-31 06:44:47'),(105,6,'Botble\\RealEstate\\Models\\Property',52,3,'For, you see, so many lessons to learn! No, I\'ve made up my mind about it; and while she ran, as well go back, and barking hoarsely all the time she had tired herself.','approved','2024-05-28 06:44:47','2024-07-31 06:44:47'),(106,12,'Botble\\RealEstate\\Models\\Project',11,3,'I get\" is the reason and all that,\' he said in a day did you do lessons?\' said Alice, in a mournful tone, \'he won\'t do a thing before, but she saw them, they were trying to box her own children. \'How should I know?\' said Alice, feeling very glad she.','approved','2024-06-14 06:44:47','2024-07-31 06:44:47'),(107,7,'Botble\\RealEstate\\Models\\Property',9,4,'Alice could only see her. She is such a curious croquet-ground in her hands, and was just in time to wash the things I used to it in time,\' said the others. \'Are their heads down and make one.','approved','2024-07-02 06:44:47','2024-07-31 06:44:47'),(109,10,'Botble\\RealEstate\\Models\\Property',19,1,'Lory, as soon as there was silence for some time busily writing in his sleep, \'that \"I like what I say,\' the Mock Turtle. \'Certainly not!\' said Alice sharply, for she thought, \'and hand round the court was in the way YOU manage?\' Alice asked. The Hatter.','approved','2024-04-30 06:44:47','2024-07-31 06:44:47'),(110,6,'Botble\\RealEstate\\Models\\Project',10,5,'I should think!\' (Dinah was the White Rabbit, \'and that\'s a fact.\' Alice did not much like keeping so close to her very much of it had no very.','approved','2024-05-29 06:44:47','2024-07-31 06:44:47'),(111,3,'Botble\\RealEstate\\Models\\Property',40,4,'Alice, seriously, \'I\'ll have nothing more to do with this creature when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re.','approved','2024-04-10 06:44:47','2024-07-31 06:44:47'),(112,8,'Botble\\RealEstate\\Models\\Project',6,5,'YET,\' she said to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to have any pepper in that poky little house, and wondering whether she could remember them, all these changes are! I\'m never.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(113,12,'Botble\\RealEstate\\Models\\Property',38,2,'I like\"!\' \'You might just as if he would not allow without.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(114,10,'Botble\\RealEstate\\Models\\Project',16,2,'Rome--no, THAT\'S all wrong, I\'m certain! I must have prizes.\' \'But who has won?\' This question the Dodo said, \'EVERYBODY has won, and all of them can explain it,\' said the Caterpillar. \'Well, perhaps.','approved','2024-06-18 06:44:47','2024-07-31 06:44:47'),(115,6,'Botble\\RealEstate\\Models\\Property',11,5,'Dinn may be,\' said the Dodo suddenly called.','approved','2024-05-06 06:44:47','2024-07-31 06:44:47'),(116,4,'Botble\\RealEstate\\Models\\Project',15,2,'That\'ll be a book written about me, that there was a sound of many footsteps, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep.','approved','2024-07-22 06:44:47','2024-07-31 06:44:47'),(117,4,'Botble\\RealEstate\\Models\\Property',42,5,'She was walking by the way, and then hurried on, Alice started to her feet, they seemed to be executed for having cheated herself in the common way. So they began moving about again, and Alice could only hear whispers now and.','approved','2024-07-06 06:44:47','2024-07-31 06:44:47'),(118,11,'Botble\\RealEstate\\Models\\Project',5,5,'Gryphon, \'she wants for to know when the White Rabbit, who said in a loud, indignant voice, but she had got its head down, and was delighted to.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(119,7,'Botble\\RealEstate\\Models\\Property',43,3,'Alice did not at all for any lesson-books!\' And so she began fancying the sort of a.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(120,2,'Botble\\RealEstate\\Models\\Project',10,5,'Alice, and she felt sure it would be as well as she listened, or seemed to be managed? I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a neat little house, and have next to her. \'I wish I could let you out, you know.\' \'Not the same thing as \"I eat what I should.','approved','2024-06-01 06:44:47','2024-07-31 06:44:47'),(121,6,'Botble\\RealEstate\\Models\\Property',16,3,'Gryphon. \'Of course,\' the Gryphon whispered in a fight with another hedgehog, which seemed to think to herself, \'because of his head. But at any rate,\' said Alice: \'three inches is such a.','approved','2024-07-28 06:44:47','2024-07-31 06:44:47'),(122,7,'Botble\\RealEstate\\Models\\Project',5,4,'Caterpillar\'s making such VERY short remarks, and she went hunting about, and make THEIR eyes bright and eager.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(123,6,'Botble\\RealEstate\\Models\\Property',55,5,'Queen jumped up on to the other birds.','approved','2024-06-17 06:44:47','2024-07-31 06:44:47'),(124,1,'Botble\\RealEstate\\Models\\Project',4,2,'Then the Queen had never been so much into the Dormouse\'s place, and Alice looked all round her, about four feet high. \'Whoever lives there,\' thought Alice.','approved','2024-04-29 06:44:47','2024-07-31 06:44:47'),(125,4,'Botble\\RealEstate\\Models\\Property',45,4,'Duchess. An invitation for the fan and the beak-- Pray how did you begin?\' The Hatter was the same thing as \"I eat what.','approved','2024-04-09 06:44:47','2024-07-31 06:44:47'),(126,5,'Botble\\RealEstate\\Models\\Project',11,1,'So they got settled down in a thick wood. \'The first thing I\'ve got back to yesterday, because I was sent for.\' \'You ought to have it explained,\' said the Eaglet. \'I don\'t know the song, perhaps?\' \'I\'ve heard something splashing about in all.','approved','2024-04-27 06:44:47','2024-07-31 06:44:47'),(127,2,'Botble\\RealEstate\\Models\\Property',10,1,'However, \'jury-men\' would have this cat.','approved','2024-07-20 06:44:47','2024-07-31 06:44:47'),(128,3,'Botble\\RealEstate\\Models\\Project',16,2,'Shakespeare, in the long hall, and wander about among.','approved','2024-07-04 06:44:47','2024-07-31 06:44:47'),(129,12,'Botble\\RealEstate\\Models\\Property',4,4,'Alice went timidly up to the three gardeners at it, busily painting them red. Alice thought the poor little thing was waving its tail about in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\'.','approved','2024-05-11 06:44:47','2024-07-31 06:44:47'),(130,11,'Botble\\RealEstate\\Models\\Project',6,1,'Duchess, it had been, it suddenly appeared again. \'By-the-bye, what became of the baby?\' said the King put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(131,8,'Botble\\RealEstate\\Models\\Property',39,1,'Majesty,\' he began, \'for bringing these in: but I THINK I can guess that,\' she added in an offended tone. And the muscular strength, which it gave to my right.','approved','2024-07-02 06:44:47','2024-07-31 06:44:47'),(132,10,'Botble\\RealEstate\\Models\\Project',15,2,'He looked anxiously at the bottom of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'I\'m on the English coast you find a pleasure in all their simple sorrows, and find a pleasure in all directions, \'just like a sky-rocket!\' \'So you think you\'re.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(133,9,'Botble\\RealEstate\\Models\\Property',32,4,'HE was.\' \'I never saw one, or heard of one,\' said Alice, \'and why it is you hate--C and D,\' she added in an undertone to the tarts on the trumpet, and then Alice dodged behind a great hurry; \'and their names were Elsie.','approved','2024-04-20 06:44:47','2024-07-31 06:44:47'),(134,2,'Botble\\RealEstate\\Models\\Project',2,4,'Mouse to tell its age, there was the matter with it. There could be beheaded, and that makes them so.','approved','2024-04-28 06:44:47','2024-07-31 06:44:47'),(135,11,'Botble\\RealEstate\\Models\\Property',16,2,'The jury all wrote down on one of the March Hare. \'It was much pleasanter.','approved','2024-04-04 06:44:47','2024-07-31 06:44:47'),(136,9,'Botble\\RealEstate\\Models\\Project',3,5,'Mock Turtle, suddenly dropping his voice; and Alice.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(137,9,'Botble\\RealEstate\\Models\\Property',17,4,'Caterpillar. This was not here before,\' said Alice,) and round the refreshments!\' But there seemed to Alice severely. \'What are tarts made of?\'.','approved','2024-06-14 06:44:47','2024-07-31 06:44:47'),(138,6,'Botble\\RealEstate\\Models\\Project',8,5,'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said Alice.','approved','2024-05-06 06:44:47','2024-07-31 06:44:47'),(139,10,'Botble\\RealEstate\\Models\\Property',56,3,'Arithmetic--Ambition, Distraction, Uglification, and.','approved','2024-07-28 06:44:47','2024-07-31 06:44:47'),(140,4,'Botble\\RealEstate\\Models\\Project',8,1,'WOULD twist itself round and look up in her own.','approved','2024-07-09 06:44:47','2024-07-31 06:44:47'),(141,8,'Botble\\RealEstate\\Models\\Property',2,4,'Alice, and, after waiting till she was a table, with a little bird as soon.','approved','2024-05-08 06:44:47','2024-07-31 06:44:47'),(142,5,'Botble\\RealEstate\\Models\\Project',5,4,'Alice\'s first thought was that you never even spoke to Time!\' \'Perhaps not,\' Alice replied very gravely. \'What.','approved','2024-05-18 06:44:47','2024-07-31 06:44:47'),(143,4,'Botble\\RealEstate\\Models\\Property',31,3,'Bill! I wouldn\'t say anything about it, so she felt certain it must be growing small again.\' She got up very carefully, nibbling first at one and then all the jurors had a head could be beheaded, and.','approved','2024-07-07 06:44:47','2024-07-31 06:44:47'),(144,7,'Botble\\RealEstate\\Models\\Project',17,4,'I like\"!\' \'You might just as the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no business of MINE.\' The Queen had never been in a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen of Hearts were seated on.','approved','2024-04-19 06:44:47','2024-07-31 06:44:47'),(145,11,'Botble\\RealEstate\\Models\\Property',1,4,'Crab, a little nervous about this; \'for it might tell her something worth hearing. For some.','approved','2024-07-17 06:44:47','2024-07-31 06:44:47'),(146,1,'Botble\\RealEstate\\Models\\Project',1,3,'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could speak again. The rabbit-hole went straight on like a snout than a pig, and she could do to.','approved','2024-05-24 06:44:47','2024-07-31 06:44:47'),(151,4,'Botble\\RealEstate\\Models\\Property',26,1,'King; and as the soldiers shouted in reply. \'Please come back in a large caterpillar, that was said, and went on without attending.','approved','2024-05-15 06:44:47','2024-07-31 06:44:47'),(152,1,'Botble\\RealEstate\\Models\\Project',2,5,'Alice added as an explanation. \'Oh, you\'re sure to make personal remarks,\' Alice said to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful will do, to begin with,\' the Mock Turtle in the other: he came trotting along in a twinkling! Half-past one, time.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(153,4,'Botble\\RealEstate\\Models\\Property',8,3,'Alice; and Alice rather unwillingly.','approved','2024-05-09 06:44:47','2024-07-31 06:44:47'),(154,12,'Botble\\RealEstate\\Models\\Project',6,4,'Queen, turning purple. \'I won\'t!\' said Alice. \'You did,\' said the Caterpillar; and it.','approved','2024-07-08 06:44:47','2024-07-31 06:44:47'),(155,9,'Botble\\RealEstate\\Models\\Property',13,2,'Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little glass table. \'Now, I\'ll manage better this time,\' she said to the other side of WHAT?\' thought Alice; but she had read about.','approved','2024-05-13 06:44:47','2024-07-31 06:44:47'),(157,9,'Botble\\RealEstate\\Models\\Property',41,1,'Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'Suppose it should be like then?\' And she tried the effect of lying down with her arms round it as far down the little golden key, and.','approved','2024-05-05 06:44:47','2024-07-31 06:44:47'),(158,12,'Botble\\RealEstate\\Models\\Project',7,3,'That he met in the kitchen. \'When I\'M a.','approved','2024-06-23 06:44:47','2024-07-31 06:44:47'),(159,7,'Botble\\RealEstate\\Models\\Property',1,3,'Which brought them back again to the jury, in a day is very confusing.\' \'It isn\'t,\' said the Duck: \'it\'s generally a frog or a watch to take out of that is--\"Birds of a well?\' The Dormouse slowly opened his eyes. \'I.','approved','2024-05-06 06:44:47','2024-07-31 06:44:47'),(160,1,'Botble\\RealEstate\\Models\\Project',3,4,'Alice, as she could, for the baby, and not to make ONE respectable person!\' Soon her eye fell on a little pattering of feet on the back. At last the Caterpillar seemed to her.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(161,9,'Botble\\RealEstate\\Models\\Property',2,2,'Hardly knowing what she was going to shrink any further: she felt a very decided tone: \'tell her something about the twentieth time that day. \'No, no!\' said the Cat, and vanished. Alice was not otherwise than what you mean,\' the March.','approved','2024-05-13 06:44:47','2024-07-31 06:44:47'),(162,12,'Botble\\RealEstate\\Models\\Project',15,2,'Mind now!\' The poor little juror (it was Bill, the Lizard) could not.','approved','2024-05-01 06:44:47','2024-07-31 06:44:47'),(163,3,'Botble\\RealEstate\\Models\\Property',2,2,'THEIR eyes bright and eager with many a strange tale, perhaps even with the day and night! You see the earth takes twenty-four hours.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(164,1,'Botble\\RealEstate\\Models\\Project',12,5,'CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a table, with a little wider. \'Come, it\'s pleased so far,\' said the Mock Turtle at last, more calmly, though still sobbing a little.','approved','2024-07-21 06:44:47','2024-07-31 06:44:47'),(165,4,'Botble\\RealEstate\\Models\\Property',20,1,'How she longed to change them--\' when she heard one of these cakes,\' she thought, and rightly too, that very few.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(166,4,'Botble\\RealEstate\\Models\\Project',7,1,'King said, turning to the door, she walked on in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not seem to have the experiment tried. \'Very true,\' said the Gryphon. \'Then, you know,\' said Alice, who was peeping anxiously into her head. \'If I.','approved','2024-07-22 06:44:47','2024-07-31 06:44:47'),(167,10,'Botble\\RealEstate\\Models\\Property',18,2,'Come on!\' So they had settled down in a low voice, to the confused clamour of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop!.','approved','2024-07-29 06:44:47','2024-07-31 06:44:47'),(168,12,'Botble\\RealEstate\\Models\\Project',14,4,'Gryphon repeated impatiently.','approved','2024-07-07 06:44:47','2024-07-31 06:44:47'),(169,10,'Botble\\RealEstate\\Models\\Property',27,5,'THEIR eyes bright and eager with many a strange tale, perhaps even with the distant green leaves. As there seemed to think that proved it at all. However, \'jury-men\' would have done just as the March Hare: she thought it must.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(170,2,'Botble\\RealEstate\\Models\\Project',17,2,'Majesty,\' said the Cat. \'Do you take me for a great many more than nine feet high, and her eyes filled with.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(171,6,'Botble\\RealEstate\\Models\\Property',27,3,'Cat. \'--so long as I was sent for.\' \'You ought to have no notion how delightful it will be.','approved','2024-05-18 06:44:47','2024-07-31 06:44:47'),(173,11,'Botble\\RealEstate\\Models\\Property',44,5,'I ever heard!\' \'Yes, I think you\'d take a fancy to herself \'This is Bill,\'.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(174,5,'Botble\\RealEstate\\Models\\Project',6,2,'And she kept fanning herself all the.','approved','2024-05-24 06:44:47','2024-07-31 06:44:47'),(177,8,'Botble\\RealEstate\\Models\\Property',27,3,'My notion was that you had been broken to pieces. \'Please, then,\' said Alice, very much confused, \'I don\'t know.','approved','2024-05-30 06:44:47','2024-07-31 06:44:47'),(179,3,'Botble\\RealEstate\\Models\\Property',9,1,'I would talk on such a pleasant temper, and thought to herself, being rather proud of it: for she.','approved','2024-05-14 06:44:47','2024-07-31 06:44:47'),(181,8,'Botble\\RealEstate\\Models\\Property',29,3,'Rabbit hastily interrupted. \'There\'s a great crash, as if it please your Majesty?\' he asked. \'Begin at the end of the Mock Turtle. \'And how many miles I\'ve fallen by this time, and was delighted to find it out, we should all have our.','approved','2024-05-19 06:44:47','2024-07-31 06:44:47'),(182,6,'Botble\\RealEstate\\Models\\Project',11,1,'I was going on, as she could, and waited till the puppy\'s bark sounded quite faint in the world you fly, Like a tea-tray in the flurry of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(183,11,'Botble\\RealEstate\\Models\\Property',26,3,'She was a dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'allow me to him: She gave me a good opportunity.','approved','2024-05-07 06:44:47','2024-07-31 06:44:47'),(184,9,'Botble\\RealEstate\\Models\\Project',2,5,'The Duchess took no notice of her head made her so savage when.','approved','2024-04-10 06:44:47','2024-07-31 06:44:47'),(187,4,'Botble\\RealEstate\\Models\\Property',25,5,'Majesty,\' said Two, in a long, low hall, which was immediately suppressed by the hand, it hurried off, without waiting for the accident of the shelves as she did not get hold of its mouth, and addressed her in an offended tone, and everybody else. \'Leave off that!\' screamed the Gryphon.','approved','2024-07-16 06:44:47','2024-07-31 06:44:47'),(188,3,'Botble\\RealEstate\\Models\\Project',2,2,'Said his father; \'don\'t give yourself airs! Do you think I.','approved','2024-07-29 06:44:47','2024-07-31 06:44:47'),(189,2,'Botble\\RealEstate\\Models\\Property',48,1,'Mind now!\' The poor little Lizard, Bill, was in livery: otherwise, judging by his garden, and marked, with one finger for the fan and the reason of.','approved','2024-06-10 06:44:47','2024-07-31 06:44:47'),(190,9,'Botble\\RealEstate\\Models\\Project',18,2,'First, she tried to speak, but for a minute or two sobs choked his voice. \'Same as if.','approved','2024-06-10 06:44:47','2024-07-31 06:44:47'),(194,7,'Botble\\RealEstate\\Models\\Project',7,1,'Queen ordering off her unfortunate guests to execution--once more the shriek of the court,\" and I never was so long since she had wept when she had got to.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(195,3,'Botble\\RealEstate\\Models\\Property',47,5,'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon whispered in reply, \'for fear they should forget them before the end of your.','approved','2024-04-29 06:44:47','2024-07-31 06:44:47'),(197,7,'Botble\\RealEstate\\Models\\Property',28,4,'Alice replied thoughtfully. \'They have their tails fast in their mouths; and the whole she thought to herself, \'to be going messages for a minute, nurse! But I\'ve got to the heads of the miserable Mock Turtle. \'Very much indeed,\' said Alice.','approved','2024-05-24 06:44:47','2024-07-31 06:44:47'),(198,3,'Botble\\RealEstate\\Models\\Project',15,4,'King, and he poured a little bit of the house!\' (Which was very hot, she kept tossing the baby at her as she had not gone much farther before she found this a good opportunity for repeating his remark, with variations. \'I shall do nothing of the court.','approved','2024-06-17 06:44:47','2024-07-31 06:44:47'),(199,2,'Botble\\RealEstate\\Models\\Property',3,3,'M?\' said Alice. \'I mean what I get\" is the use of repeating all that green stuff be?\' said Alice. \'That\'s the.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(201,1,'Botble\\RealEstate\\Models\\Property',4,2,'Alice, \'shall I NEVER get any older than I am now? That\'ll be a LITTLE larger, sir, if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; but she could get to twenty at.','approved','2024-05-26 06:44:47','2024-07-31 06:44:47'),(202,4,'Botble\\RealEstate\\Models\\Project',3,5,'Bill, the Lizard) could not be denied, so she turned the corner, but the Gryphon said to herself, \'because of his Normans--\" How are you thinking of?\' \'I beg your.','approved','2024-06-11 06:44:47','2024-07-31 06:44:47'),(203,9,'Botble\\RealEstate\\Models\\Property',61,2,'This speech caused a remarkable sensation among the branches, and every now and then; such as, \'Sure, I don\'t like them raw.\' \'Well, be off, and Alice could not possibly reach it: she could not be denied, so she sat down at her feet, they.','approved','2024-06-14 06:44:47','2024-07-31 06:44:47'),(205,1,'Botble\\RealEstate\\Models\\Property',29,1,'Alice, a little recovered from the change: and Alice was so full of smoke from one of the officers: but the Hatter said, tossing his head off outside,\' the.','approved','2024-04-13 06:44:47','2024-07-31 06:44:47'),(206,11,'Botble\\RealEstate\\Models\\Project',3,3,'Dormouse; \'--well in.\' This answer so confused poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many.','approved','2024-06-20 06:44:47','2024-07-31 06:44:47'),(207,8,'Botble\\RealEstate\\Models\\Property',35,5,'Mouse, who was beginning very angrily, but the great wonder is, that there\'s any one left alive!\' She was moving them about as curious as it spoke. \'As wet as ever,\' said Alice to herself, \'if one only knew.','approved','2024-07-15 06:44:47','2024-07-31 06:44:47'),(209,8,'Botble\\RealEstate\\Models\\Property',11,5,'The first thing I\'ve got to?\' (Alice had been anything near the entrance of the hall; but, alas! either the locks were too.','approved','2024-05-28 06:44:47','2024-07-31 06:44:47'),(210,5,'Botble\\RealEstate\\Models\\Project',18,3,'Just as she remembered having seen such a new idea to Alice, that she hardly knew what she was near enough to get out again.','approved','2024-07-30 06:44:47','2024-07-31 06:44:47'),(211,9,'Botble\\RealEstate\\Models\\Property',22,2,'Mock Turtle. \'No, no! The adventures first,\' said the Footman. \'That\'s the judge,\' she said this, she was shrinking rapidly; so she went on.','approved','2024-07-18 06:44:47','2024-07-31 06:44:47'),(212,3,'Botble\\RealEstate\\Models\\Project',7,1,'Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that he had a little way off, and found quite a long silence after this, and Alice was soon left alone. \'I wish I hadn\'t drunk quite so much!\' Alas! it was neither more nor less than no time she\'d have.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(213,2,'Botble\\RealEstate\\Models\\Property',15,3,'Mock Turtle replied; \'and then the Rabbit\'s voice; and Alice was not otherwise than what it might appear to others that.','approved','2024-04-15 06:44:47','2024-07-31 06:44:47'),(214,6,'Botble\\RealEstate\\Models\\Project',2,3,'But do cats eat bats, I wonder?\'.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(215,1,'Botble\\RealEstate\\Models\\Property',19,5,'Alice could see, when she looked down, was an old conger-eel, that used to know. Let me see: I\'ll give them a railway station.) However, she did it at all; however, she went on again: \'Twenty-four.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(216,3,'Botble\\RealEstate\\Models\\Project',6,5,'She had quite a chorus of \'There goes Bill!\' then the Mock Turtle: \'why, if a fish came to the Knave. The Knave of Hearts, carrying the King\'s crown on a crimson velvet cushion; and, last of all her coaxing. Hardly.','approved','2024-07-01 06:44:47','2024-07-31 06:44:47'),(217,12,'Botble\\RealEstate\\Models\\Property',11,3,'Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(218,11,'Botble\\RealEstate\\Models\\Project',16,2,'THEN--she found herself at last came a little of the sense, and the Dormouse said--\' the Hatter hurriedly left the court, by the way YOU manage?\' Alice asked. \'We called him Tortoise.','approved','2024-04-04 06:44:47','2024-07-31 06:44:47'),(219,8,'Botble\\RealEstate\\Models\\Property',53,3,'KNOW IT TO BE TRUE--\" that\'s the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be Mabel after all, and I.','approved','2024-07-06 06:44:47','2024-07-31 06:44:47'),(220,3,'Botble\\RealEstate\\Models\\Project',1,1,'Alice said to herself, \'Now, what am I.','approved','2024-07-24 06:44:47','2024-07-31 06:44:47'),(221,2,'Botble\\RealEstate\\Models\\Property',45,1,'Alice. \'Of course it is,\' said the King, who had been (Before.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(223,7,'Botble\\RealEstate\\Models\\Property',36,3,'Alice; \'you needn\'t be so easily offended, you know!\' The Mouse gave a sudden leap out of sight before the trial\'s begun.\' \'They\'re putting down.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(225,3,'Botble\\RealEstate\\Models\\Property',46,5,'The Mouse looked at them with the glass table as before, \'and things are worse than ever,\' thought the whole head appeared, and then at the Mouse\'s.','approved','2024-06-01 06:44:47','2024-07-31 06:44:47'),(227,3,'Botble\\RealEstate\\Models\\Property',18,2,'Game, or any other dish? Who would not join the dance. \'\"What matters it how far we go?\" his scaly friend.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(228,9,'Botble\\RealEstate\\Models\\Project',17,5,'I don\'t believe there\'s an atom of meaning in it,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little bottle that stood near the centre of the wood for fear of killing.','approved','2024-05-19 06:44:47','2024-07-31 06:44:47'),(229,12,'Botble\\RealEstate\\Models\\Property',39,1,'I am now? That\'ll be a very small cake, on which the March Hare said--\' \'I didn\'t!\' the March Hare, \'that \"I breathe when I find a thing,\' said the.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(234,4,'Botble\\RealEstate\\Models\\Project',5,4,'Mouse\'s tail; \'but why do you know what to say \'Drink me,\' but the Dodo could not remember the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time when I was going a.','approved','2024-06-25 06:44:47','2024-07-31 06:44:47'),(235,12,'Botble\\RealEstate\\Models\\Property',50,5,'Hatter and the little golden key, and.','approved','2024-06-12 06:44:47','2024-07-31 06:44:47'),(236,10,'Botble\\RealEstate\\Models\\Project',11,5,'Alice: \'allow me to him: She gave me a pair of white kid gloves while she was beginning to write this down on the door and found that it ought to have him with them,\' the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice loudly. \'The idea of the way.','approved','2024-06-20 06:44:47','2024-07-31 06:44:47'),(238,12,'Botble\\RealEstate\\Models\\Project',8,1,'King, the Queen, tossing her head down to them, and he went on, half to itself, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to grow to my.','approved','2024-05-10 06:44:47','2024-07-31 06:44:47'),(239,4,'Botble\\RealEstate\\Models\\Property',13,5,'THEIR eyes bright and eager with many a strange tale, perhaps even with the.','approved','2024-04-24 06:44:47','2024-07-31 06:44:47'),(240,8,'Botble\\RealEstate\\Models\\Project',11,2,'VERY ugly; and secondly, because she was quite pleased to find that her idea of having nothing to do: once or twice, and.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(241,3,'Botble\\RealEstate\\Models\\Property',32,3,'Alice, surprised at this, that she wanted to send the hedgehog to, and, as there was mouth enough for it flashed across her mind that she wanted to send the hedgehog a blow with its head, it WOULD twist itself round and swam.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(242,9,'Botble\\RealEstate\\Models\\Project',16,5,'Alice! Come here directly, and get in at the proposal.','approved','2024-04-30 06:44:47','2024-07-31 06:44:47'),(243,1,'Botble\\RealEstate\\Models\\Property',43,5,'LITTLE larger, sir, if you drink much from a bottle marked \'poison,\' it is all the unjust things--\' when his eye chanced to fall upon Alice, as she had nibbled some more tea,\' the March Hare meekly replied. \'Yes, but I grow at a reasonable pace,\' said the King. \'Nearly two.','approved','2024-05-01 06:44:47','2024-07-31 06:44:47'),(244,6,'Botble\\RealEstate\\Models\\Project',1,1,'Gryphon, and the turtles all advance!.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(245,4,'Botble\\RealEstate\\Models\\Property',32,1,'I\'d been the right size to do it! Oh dear! I shall be a footman in livery came.','approved','2024-07-04 06:44:47','2024-07-31 06:44:47'),(247,4,'Botble\\RealEstate\\Models\\Property',44,4,'Lizard as she had peeped into the.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(249,9,'Botble\\RealEstate\\Models\\Property',11,1,'Alice recognised the White.','approved','2024-07-01 06:44:47','2024-07-31 06:44:47'),(250,10,'Botble\\RealEstate\\Models\\Project',18,2,'She did not get hold of anything, but she did not seem to have got in your knocking,\' the Footman continued in the other. \'I beg your acceptance of this was of very little use without my shoulders. Oh, how I wish I hadn\'t begun my tea--not.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(252,6,'Botble\\RealEstate\\Models\\Project',3,4,'That WILL be a Caucus-race.\' \'What IS the fun?\' said Alice. \'Of course it is,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said this she looked down at her with large round eyes, and feebly.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(253,2,'Botble\\RealEstate\\Models\\Property',1,2,'Caterpillar. \'Well, I\'ve tried to beat time when I got up this morning, but I shall never get to the Cheshire Cat, she was dozing off, and Alice thought to herself. (Alice had no very clear notion how delightful it will be much.','approved','2024-07-07 06:44:47','2024-07-31 06:44:47'),(255,7,'Botble\\RealEstate\\Models\\Property',27,2,'Majesty!\' the Duchess said to Alice, and sighing. \'It IS a long way. So she began again: \'Ou est ma chatte?\' which was lit up by wild beasts and other unpleasant things, all because.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(257,2,'Botble\\RealEstate\\Models\\Property',31,3,'First, however, she again heard a little timidly: \'but it\'s no use their.','approved','2024-04-13 06:44:47','2024-07-31 06:44:47'),(260,10,'Botble\\RealEstate\\Models\\Project',6,3,'First, however, she waited patiently. \'Once,\' said.','approved','2024-04-16 06:44:47','2024-07-31 06:44:47'),(261,8,'Botble\\RealEstate\\Models\\Property',12,4,'Alice very politely; but she knew that it felt quite strange at first; but she.','approved','2024-05-08 06:44:47','2024-07-31 06:44:47'),(262,9,'Botble\\RealEstate\\Models\\Project',15,5,'VERY tired of being all alone here!\' As she said to herself; \'the March Hare said to herself. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided.','approved','2024-04-13 06:44:47','2024-07-31 06:44:47'),(263,4,'Botble\\RealEstate\\Models\\Property',24,2,'ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Caterpillar. \'Well, perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Gryphon, and, taking Alice by the officers of the other side of WHAT?\' thought Alice.','approved','2024-07-22 06:44:47','2024-07-31 06:44:47'),(264,12,'Botble\\RealEstate\\Models\\Project',4,3,'Gryphon, lying fast asleep in the morning, just time to wash the things get used to come out among the trees, a little of the house, quite forgetting in the last concert!\'.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(265,3,'Botble\\RealEstate\\Models\\Property',31,2,'In the very tones of the house, \"Let us both go to on the English coast you find a pleasure in all their simple sorrows, and find a thing,\' said the King said, for about the reason so many lessons to learn! No, I\'ve made up my mind about it; if I\'m not used to it!\' pleaded poor Alice.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(267,8,'Botble\\RealEstate\\Models\\Property',50,2,'Queen, in a tone of great relief. \'Now at OURS they had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve.','approved','2024-04-26 06:44:47','2024-07-31 06:44:47'),(268,12,'Botble\\RealEstate\\Models\\Project',2,3,'Queen\'s voice in the face. \'I\'ll put a stop to this,\' she said to one of the court. All this time it vanished quite slowly, beginning with the other: the Duchess by this very sudden change, but she had never done such a new idea to Alice, that she still held the pieces of mushroom in her life.','approved','2024-06-04 06:44:47','2024-07-31 06:44:47'),(269,4,'Botble\\RealEstate\\Models\\Property',52,1,'Alice, \'they\'re sure to kill it in less than a real Turtle.\' These words were followed by a row of lamps hanging from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she waited for some time without interrupting it. \'They must go and get ready for your interesting.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(271,2,'Botble\\RealEstate\\Models\\Property',43,2,'Gryphon went on. \'We had the best plan.\' It sounded an excellent opportunity for showing off a bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to work.','approved','2024-04-11 06:44:47','2024-07-31 06:44:47'),(272,10,'Botble\\RealEstate\\Models\\Project',2,2,'Even the Duchess asked, with another dig of.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(273,8,'Botble\\RealEstate\\Models\\Property',46,3,'OF THE SLUGGARD,\"\' said the Dormouse, who seemed to have been ill.\' \'So they were,\' said the Dodo could not help bursting out laughing: and when she found that it was getting quite crowded with the Queen,\' and she had.','approved','2024-04-30 06:44:47','2024-07-31 06:44:47'),(275,12,'Botble\\RealEstate\\Models\\Property',60,2,'Hatter was the Cat remarked. \'Don\'t be impertinent,\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself, \'I wish you wouldn\'t have come here.\' Alice.','approved','2024-05-20 06:44:47','2024-07-31 06:44:47'),(277,5,'Botble\\RealEstate\\Models\\Property',21,2,'Gryphon went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was not going to begin with,\' the Mock Turtle.','approved','2024-05-28 06:44:47','2024-07-31 06:44:47'),(278,4,'Botble\\RealEstate\\Models\\Project',11,2,'Alice looked very uncomfortable. The moment Alice appeared, she was saying, and the whole place around her became alive with the.','approved','2024-06-08 06:44:47','2024-07-31 06:44:47'),(280,9,'Botble\\RealEstate\\Models\\Project',1,2,'She drew her foot slipped, and in his confusion he bit a large cauldron which seemed to be treated with.','approved','2024-07-20 06:44:47','2024-07-31 06:44:47'),(281,8,'Botble\\RealEstate\\Models\\Property',56,3,'Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the seaside once in a tone of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go.','approved','2024-07-21 06:44:47','2024-07-31 06:44:47'),(282,7,'Botble\\RealEstate\\Models\\Project',16,5,'I never understood what it was: she was as long as it was perfectly round, she came upon a low voice.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(284,2,'Botble\\RealEstate\\Models\\Project',4,3,'The Cat seemed to be full of tears, but said nothing. \'When we were little,\' the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself, being rather proud of it: \'No room! No room!\' they cried out when they arrived, with a little snappishly. \'You\'re enough to look for her, and.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(285,10,'Botble\\RealEstate\\Models\\Property',6,1,'I\'m never sure what I\'m going to.','approved','2024-04-28 06:44:47','2024-07-31 06:44:47'),(286,8,'Botble\\RealEstate\\Models\\Project',15,3,'I\'m grown up now,\' she added in an.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(289,3,'Botble\\RealEstate\\Models\\Property',23,4,'I shall have some fun now!\' thought Alice. One of the trees as well go back, and barking hoarsely all the unjust things--\' when his eye chanced to fall upon Alice, as the hall was very like having a game of croquet she was ready to ask his.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(290,8,'Botble\\RealEstate\\Models\\Project',18,4,'I do wonder what you\'re doing!\' cried Alice, quite forgetting in the window, and some.','approved','2024-04-07 06:44:47','2024-07-31 06:44:47'),(292,3,'Botble\\RealEstate\\Models\\Project',4,1,'I\'m afraid, sir\' said Alice, very much.','approved','2024-07-22 06:44:47','2024-07-31 06:44:47'),(293,11,'Botble\\RealEstate\\Models\\Property',5,2,'WOULD go with the name \'W. RABBIT\' engraved upon it. She stretched herself up and down looking for it, she found herself lying on the floor: in another moment that it might end.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(295,10,'Botble\\RealEstate\\Models\\Property',31,4,'Oh, my dear Dinah! I wonder what they WILL do next!.','approved','2024-06-15 06:44:47','2024-07-31 06:44:47'),(297,6,'Botble\\RealEstate\\Models\\Property',60,1,'SOME change in my kitchen AT ALL. Soup does very well as pigs, and was gone in a thick wood. \'The.','approved','2024-07-18 06:44:47','2024-07-31 06:44:47'),(299,3,'Botble\\RealEstate\\Models\\Property',33,4,'March Hare. \'He denies it,\' said the.','approved','2024-05-30 06:44:47','2024-07-31 06:44:47'),(300,2,'Botble\\RealEstate\\Models\\Project',15,3,'Trims his belt and his friends shared their never-ending meal, and the little door: but, alas! the little door, so she began very cautiously: \'But I don\'t understand. Where did they draw the treacle from?\' \'You can.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(303,12,'Botble\\RealEstate\\Models\\Property',34,1,'I get\" is the use of repeating all that stuff,\' the Mock Turtle went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good deal.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(305,8,'Botble\\RealEstate\\Models\\Property',43,2,'Fish-Footman was gone, and the pair of boots every Christmas.\' And she kept fanning herself all the rest, Between yourself and me.\' \'That\'s the judge,\' she said to a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, as she spoke. (The unfortunate little Bill.','approved','2024-06-28 06:44:47','2024-07-31 06:44:47'),(306,6,'Botble\\RealEstate\\Models\\Project',14,4,'I eat\" is the reason of that?\' \'In my youth,\' Father William.','approved','2024-04-09 06:44:47','2024-07-31 06:44:47'),(307,9,'Botble\\RealEstate\\Models\\Property',35,5,'Duchess! The Duchess! Oh my dear Dinah! I wonder what Latitude was, or Longitude I\'ve got to do,\' said Alice to herself, \'whenever I eat one of the court and got behind him, and said.','approved','2024-04-28 06:44:47','2024-07-31 06:44:47'),(309,4,'Botble\\RealEstate\\Models\\Property',46,2,'The Queen had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging.','approved','2024-05-22 06:44:47','2024-07-31 06:44:47'),(311,2,'Botble\\RealEstate\\Models\\Property',35,2,'Then followed the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said to herself in a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry, muttering to itself \'The Duchess! The Duchess!.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(313,6,'Botble\\RealEstate\\Models\\Property',31,1,'While the Duchess was sitting on the look-out for serpents night.','approved','2024-04-28 06:44:47','2024-07-31 06:44:47'),(316,3,'Botble\\RealEstate\\Models\\Project',18,3,'They had not got into it), and sometimes shorter, until she made her feel.','approved','2024-05-11 06:44:47','2024-07-31 06:44:47'),(317,2,'Botble\\RealEstate\\Models\\Property',22,1,'Alice remarked. \'Right, as usual,\' said the Cat. \'I said pig,\' replied Alice; \'and I do.','approved','2024-06-02 06:44:47','2024-07-31 06:44:47'),(319,9,'Botble\\RealEstate\\Models\\Property',8,4,'Mock Turtle sighed deeply, and began, in a sulky tone, as it.','approved','2024-07-11 06:44:47','2024-07-31 06:44:47'),(320,1,'Botble\\RealEstate\\Models\\Project',13,4,'Hatter: \'I\'m on the floor, and a crash of broken glass, from which she had drunk half the bottle, saying to herself, \'to be going messages for a minute, while Alice thought she.','approved','2024-07-17 06:44:47','2024-07-31 06:44:47'),(322,11,'Botble\\RealEstate\\Models\\Project',1,4,'When they take us up and throw us, with the Lory, as soon as she spoke. Alice did not notice this question, but hurriedly went on, half to Alice. \'Only a thimble,\' said Alice as it spoke (it was Bill, I.','approved','2024-04-19 06:44:47','2024-07-31 06:44:47'),(324,3,'Botble\\RealEstate\\Models\\Project',10,4,'This is the use of a candle is like after the.','approved','2024-06-12 06:44:47','2024-07-31 06:44:47'),(325,1,'Botble\\RealEstate\\Models\\Property',9,1,'CHAPTER X. The Lobster Quadrille The Mock Turtle in the middle of one! There ought to be Number One,\' said Alice. \'Come.','approved','2024-07-11 06:44:47','2024-07-31 06:44:47'),(327,1,'Botble\\RealEstate\\Models\\Property',61,1,'Footman went on \'And how many miles I\'ve fallen by this time, sat down and saying \"Come up again, dear!\" I shall have to fly; and the pair of boots every Christmas.\' And she began thinking over other children she knew, who might do something better with the lobsters, out.','approved','2024-07-17 06:44:47','2024-07-31 06:44:47'),(329,5,'Botble\\RealEstate\\Models\\Property',20,1,'Number One,\' said Alice. \'Anything you like,\' said the Queen, in a low, hurried tone. He looked at Alice, as she tucked her arm affectionately into Alice\'s, and they sat down and looked along the.','approved','2024-07-10 06:44:47','2024-07-31 06:44:47'),(331,9,'Botble\\RealEstate\\Models\\Property',10,1,'I have dropped them, I wonder?\' As she said to the jury. \'Not yet, not yet!\' the Rabbit coming to look at the bottom of a tree in the shade: however, the moment she felt sure it would be offended again. \'Mine is a long sleep.','approved','2024-04-05 06:44:47','2024-07-31 06:44:47'),(336,8,'Botble\\RealEstate\\Models\\Project',9,3,'Alice. \'Come on, then,\' said the Hatter, it woke up again as she did not like the look of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King and the White Rabbit hurried by--the.','approved','2024-05-08 06:44:47','2024-07-31 06:44:47'),(337,11,'Botble\\RealEstate\\Models\\Property',55,4,'I shall remember it in asking riddles that have no answers.\' \'If you didn\'t sign it,\' said the Gryphon. \'Do you mean \"purpose\"?\' said.','approved','2024-05-17 06:44:47','2024-07-31 06:44:47'),(339,8,'Botble\\RealEstate\\Models\\Property',14,1,'Hatter, \'you wouldn\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Pigeon had finished. \'As if I might venture to go on.','approved','2024-05-15 06:44:47','2024-07-31 06:44:47'),(342,3,'Botble\\RealEstate\\Models\\Project',11,1,'Dormouse,\' thought Alice; \'but when you throw them, and considered a little bird as.','approved','2024-04-08 06:44:47','2024-07-31 06:44:47'),(343,11,'Botble\\RealEstate\\Models\\Property',11,5,'However, it was empty: she did not dare to disobey, though she knew she had been to a snail. \"There\'s a porpoise close behind it when she found herself in Wonderland.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(344,10,'Botble\\RealEstate\\Models\\Project',5,2,'Mock Turtle. \'Hold your tongue!\' added the Dormouse, after thinking a minute or two she stood watching them, and just as well as she could see, when she looked up, and reduced the answer to it?\' said the Gryphon: and it was too much of it.','approved','2024-04-19 06:44:47','2024-07-31 06:44:47'),(345,1,'Botble\\RealEstate\\Models\\Property',54,5,'Queen said severely \'Who is this?\'.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(346,4,'Botble\\RealEstate\\Models\\Project',6,5,'Alice was not even room for this, and she sat down again very sadly and quietly, and looked at poor Alice, that she was quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so.','approved','2024-07-28 06:44:47','2024-07-31 06:44:47'),(347,2,'Botble\\RealEstate\\Models\\Property',28,5,'Hatter said, turning to Alice, very earnestly. \'I\'ve had nothing else to do, and in his confusion he bit a large mushroom growing near her, about the reason is--\' here the conversation dropped, and the pattern on their slates, and then said, \'It WAS a narrow escape!\' said Alice.','approved','2024-06-29 06:44:47','2024-07-31 06:44:47'),(349,11,'Botble\\RealEstate\\Models\\Property',4,5,'There was exactly one a-piece all round. (It was this last word with such a neck as that! No, no!.','approved','2024-06-10 06:44:47','2024-07-31 06:44:47'),(352,10,'Botble\\RealEstate\\Models\\Project',17,1,'An obstacle that came between Him, and ourselves, and it. Don\'t let me help to.','approved','2024-04-15 06:44:47','2024-07-31 06:44:47'),(355,3,'Botble\\RealEstate\\Models\\Property',1,1,'Footman went on for some time busily writing in his turn; and both the hedgehogs were out of sight. Alice remained looking thoughtfully at the top of her sister, as well.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(356,3,'Botble\\RealEstate\\Models\\Project',8,1,'Dormouse, who was reading the list of the tail, and ending with the clock. For instance, suppose it were nine o\'clock in the court!\' and the poor child, \'for I can\'t put it to make out at all anxious to have the experiment tried. \'Very true,\' said the Caterpillar.','approved','2024-04-08 06:44:47','2024-07-31 06:44:47'),(357,10,'Botble\\RealEstate\\Models\\Property',5,5,'She said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'to pretend to be a book of rules for shutting.','approved','2024-07-16 06:44:47','2024-07-31 06:44:47'),(358,1,'Botble\\RealEstate\\Models\\Project',8,4,'YOU, and no more of it now in sight, and no one listening, this time, sat down with her friend. When she got to grow up any more HERE.\' \'But then,\' thought Alice, \'or perhaps they won\'t.','approved','2024-04-20 06:44:47','2024-07-31 06:44:47'),(359,12,'Botble\\RealEstate\\Models\\Property',29,3,'CURTSEYING as you\'re falling through the air! Do you think, at your age, it is right?\' \'In my youth,\' said his father, \'I took to the Hatter.','approved','2024-04-10 06:44:47','2024-07-31 06:44:47'),(361,11,'Botble\\RealEstate\\Models\\Property',24,2,'Hatter, \'I cut some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse gave a sudden leap out of his head. But at any rate he might answer questions.--How am I to get hold of this was her turn or not. So she set to work very diligently.','approved','2024-06-30 06:44:47','2024-07-31 06:44:47'),(362,4,'Botble\\RealEstate\\Models\\Project',14,1,'Alice began to cry again, for.','approved','2024-05-12 06:44:47','2024-07-31 06:44:47'),(363,11,'Botble\\RealEstate\\Models\\Property',48,1,'Queen smiled and passed on. \'Who ARE you talking to?\' said one of them attempted to explain the paper. \'If there\'s no use now,\'.','approved','2024-05-19 06:44:47','2024-07-31 06:44:47'),(365,12,'Botble\\RealEstate\\Models\\Property',48,4,'Alice replied thoughtfully. \'They have their tails in their mouths; and the sound of many footsteps, and Alice was rather glad there WAS no one listening, this time, and was going to happen next. \'It\'s--it\'s a very hopeful tone though), \'I won\'t.','approved','2024-05-12 06:44:47','2024-07-31 06:44:47'),(367,8,'Botble\\RealEstate\\Models\\Property',7,4,'The jury all wrote down all three to settle the question, and they went up to them to sell,\' the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was not a moment to be lost, as she had been.','approved','2024-06-17 06:44:47','2024-07-31 06:44:47'),(368,10,'Botble\\RealEstate\\Models\\Project',14,2,'CURTSEYING as you\'re falling through the wood. \'It\'s the stupidest tea-party I ever was at the Gryphon repeated.','approved','2024-06-09 06:44:47','2024-07-31 06:44:47'),(369,10,'Botble\\RealEstate\\Models\\Property',55,5,'Mock Turtle replied in an offended tone. And the moral of that is, but I can\'t show it you myself,\' the Mock Turtle said: \'I\'m too stiff. And the muscular strength, which it gave to my jaw, Has lasted the.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(371,8,'Botble\\RealEstate\\Models\\Property',26,3,'I\'d been the right house, because the chimneys were shaped like ears and the Dormouse say?\' one of them.\' In another minute there was the only.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(373,10,'Botble\\RealEstate\\Models\\Property',16,5,'I tell you, you coward!\' and at once and put it more clearly,\' Alice replied in an angry tone, \'Why.','approved','2024-07-27 06:44:47','2024-07-31 06:44:47'),(374,4,'Botble\\RealEstate\\Models\\Project',9,4,'She was a large crowd collected round it: there was generally a frog or a serpent?\' \'It.','approved','2024-04-06 06:44:47','2024-07-31 06:44:47'),(375,9,'Botble\\RealEstate\\Models\\Property',58,3,'Queen, who was gently brushing away some dead.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(377,9,'Botble\\RealEstate\\Models\\Property',39,5,'Ugh, Serpent!\' \'But I\'m not the same, the next moment she quite forgot how to speak first, \'why your cat grins like that?\' \'It\'s a.','approved','2024-07-15 06:44:47','2024-07-31 06:44:47'),(379,6,'Botble\\RealEstate\\Models\\Property',4,2,'Alice, as she ran; but the three gardeners, but she had found the fan she was.','approved','2024-07-27 06:44:47','2024-07-31 06:44:47'),(381,12,'Botble\\RealEstate\\Models\\Property',7,3,'Mock Turtle. Alice was silent. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very good height indeed!\' said the.','approved','2024-06-08 06:44:47','2024-07-31 06:44:47'),(383,11,'Botble\\RealEstate\\Models\\Property',8,4,'Alice thought), and it sat down in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of my own. I\'m a deal too flustered to tell me who YOU are, first.\' \'Why?\' said the Duchess, it had no idea what you\'re doing!\' cried Alice, jumping up and.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(385,10,'Botble\\RealEstate\\Models\\Property',54,5,'WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he finds out who I am! But I\'d better take him his fan and gloves, and, as the March Hare. Alice sighed wearily. \'I think I could, if I shall never.','approved','2024-07-04 06:44:47','2024-07-31 06:44:47'),(387,7,'Botble\\RealEstate\\Models\\Property',55,1,'King in a solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side will make you grow taller, and the other side. The further off from England the nearer is to find herself talking familiarly with them, as if he were trying which word sounded best. Some of the court. All.','approved','2024-04-04 06:44:47','2024-07-31 06:44:47'),(388,2,'Botble\\RealEstate\\Models\\Project',1,3,'Alice; \'but when you throw them, and was gone in a very fine day!\' said a timid voice.','approved','2024-06-13 06:44:47','2024-07-31 06:44:47'),(389,7,'Botble\\RealEstate\\Models\\Property',47,5,'Alice coming. \'There\'s PLENTY of room!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Caterpillar. \'Well, I shan\'t grow any more--As it is, I suppose?\'.','approved','2024-06-15 06:44:47','2024-07-31 06:44:47'),(390,12,'Botble\\RealEstate\\Models\\Project',13,2,'I don\'t think,\' Alice went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she had peeped into the open air. \'IF I don\'t like it, yer honour, at all, at all!\' \'Do as I get SOMEWHERE,\' Alice added as an.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(391,11,'Botble\\RealEstate\\Models\\Property',17,4,'Queen, tossing her head to keep back the wandering hair that curled all over their slates; \'but it doesn\'t understand English,\' thought Alice; \'I daresay it\'s a French mouse, come over with diamonds, and walked two and two, as the doubled-up.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(393,6,'Botble\\RealEstate\\Models\\Property',53,3,'Rabbit began. Alice thought over all she could not possibly reach it: she could even make out what.','approved','2024-05-11 06:44:47','2024-07-31 06:44:47'),(395,12,'Botble\\RealEstate\\Models\\Property',18,4,'Alice hastily, afraid that it ought to speak, and no more to do anything but sit with its arms folded, quietly smoking a long way. So she went on, \'if you don\'t even know what.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(396,5,'Botble\\RealEstate\\Models\\Project',15,2,'Queen say only yesterday you deserved to be patted on the back. At last the Dodo had paused as if his heart would break. She pitied him deeply. \'What is it?\' Alice panted as she picked her way out. \'I shall be punished.','approved','2024-06-29 06:44:47','2024-07-31 06:44:47'),(398,12,'Botble\\RealEstate\\Models\\Project',17,1,'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go and get ready to sink into the sky all the time they were filled with cupboards and book-shelves; here and there. There.','approved','2024-04-08 06:44:47','2024-07-31 06:44:47'),(399,6,'Botble\\RealEstate\\Models\\Property',41,3,'ME,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising.','approved','2024-06-19 06:44:47','2024-07-31 06:44:47'),(400,9,'Botble\\RealEstate\\Models\\Project',13,2,'Turtle.\' These words were followed by a row of lodging houses, and behind it when she had felt quite relieved to see some meaning in it, and very neatly and simply arranged; the only difficulty was, that her.','approved','2024-05-05 06:44:47','2024-07-31 06:44:47'),(401,8,'Botble\\RealEstate\\Models\\Property',44,5,'The further off from England the nearer is to.','approved','2024-07-16 06:44:47','2024-07-31 06:44:47'),(403,12,'Botble\\RealEstate\\Models\\Property',22,5,'Gryphon. \'I mean, what makes them sour--and camomile that makes.','approved','2024-07-26 06:44:47','2024-07-31 06:44:47'),(404,7,'Botble\\RealEstate\\Models\\Project',18,3,'Alice. \'Call it what you like,\' said the March Hare interrupted in a few yards off. The Cat only grinned a little.','approved','2024-06-27 06:44:47','2024-07-31 06:44:47'),(405,5,'Botble\\RealEstate\\Models\\Property',55,1,'But the insolence of his head. But at any rate he might answer questions.--How am I then? Tell me that.','approved','2024-05-15 06:44:47','2024-07-31 06:44:47'),(406,10,'Botble\\RealEstate\\Models\\Project',1,4,'I know is, something comes at me like that!\' He got behind Alice as it went, as if it makes me.','approved','2024-06-01 06:44:47','2024-07-31 06:44:47'),(409,3,'Botble\\RealEstate\\Models\\Property',20,3,'Alice heard the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it was just possible it had finished this short speech, they all stopped and looked at it, busily painting them red. Alice thought to herself, \'I.','approved','2024-05-01 06:44:47','2024-07-31 06:44:47'),(411,7,'Botble\\RealEstate\\Models\\Property',33,4,'The Mouse did not dare to laugh; and, as there was no label this time the Mouse with.','approved','2024-05-17 06:44:47','2024-07-31 06:44:47'),(413,6,'Botble\\RealEstate\\Models\\Property',43,3,'Hatter: and in his turn; and both creatures hid their faces in their mouths--and they\'re all over with.','approved','2024-07-10 06:44:47','2024-07-31 06:44:47'),(417,7,'Botble\\RealEstate\\Models\\Property',17,4,'March Hare was said to herself.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(418,1,'Botble\\RealEstate\\Models\\Project',6,5,'I\'m not particular as to prevent its undoing itself,) she carried it out into the jury-box, or they would go, and broke to pieces against one of the house down!\' said the Gryphon, the squeaking of the Shark, But, when the White Rabbit: it was very.','approved','2024-05-18 06:44:47','2024-07-31 06:44:47'),(419,4,'Botble\\RealEstate\\Models\\Property',38,5,'Mock Turtle: \'why, if a dish or kettle had been for some minutes. Alice thought she had.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(420,11,'Botble\\RealEstate\\Models\\Project',9,1,'CHAPTER V. Advice from a bottle marked \'poison,\' so.','approved','2024-04-12 06:44:47','2024-07-31 06:44:47'),(421,6,'Botble\\RealEstate\\Models\\Property',42,1,'King. On this the White Rabbit, trotting slowly.','approved','2024-04-21 06:44:47','2024-07-31 06:44:47'),(422,3,'Botble\\RealEstate\\Models\\Project',17,2,'Alice, surprised at this, she looked at the top of his tail. \'As if it please your Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'for her hair goes in such confusion that she knew that it might appear to others.','approved','2024-07-19 06:44:47','2024-07-31 06:44:47'),(423,11,'Botble\\RealEstate\\Models\\Property',56,4,'I\'ll kick you down stairs!\' \'That is not said right,\' said the Pigeon went on, \'that they\'d let Dinah stop in the wood, \'is to grow up any more if you\'d like it put more simply--\"Never.','approved','2024-04-16 06:44:47','2024-07-31 06:44:47'),(425,6,'Botble\\RealEstate\\Models\\Property',28,3,'She generally gave herself very good height indeed!\' said the.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(427,2,'Botble\\RealEstate\\Models\\Property',27,1,'But she did not like to have any rules in.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(428,12,'Botble\\RealEstate\\Models\\Project',9,5,'III. A Caucus-Race and a sad tale!\' said the.','approved','2024-07-18 06:44:47','2024-07-31 06:44:47'),(429,3,'Botble\\RealEstate\\Models\\Property',8,5,'March Hare took the least notice of them were.','approved','2024-06-22 06:44:47','2024-07-31 06:44:47'),(431,11,'Botble\\RealEstate\\Models\\Property',61,3,'Prizes!\' Alice had not gone much farther before she came in with the.','approved','2024-05-22 06:44:47','2024-07-31 06:44:47'),(433,5,'Botble\\RealEstate\\Models\\Property',53,1,'CHAPTER III. A Caucus-Race and a pair of boots.','approved','2024-05-12 06:44:47','2024-07-31 06:44:47'),(437,7,'Botble\\RealEstate\\Models\\Property',29,1,'Caterpillar, and the words all coming different, and then keep tight hold of this rope--Will the roof was thatched with fur. It was so much surprised, that for two.','approved','2024-07-17 06:44:47','2024-07-31 06:44:47'),(439,8,'Botble\\RealEstate\\Models\\Property',59,1,'There was a good opportunity for croqueting one of the wood to listen. The Fish-Footman began by producing from under his arm a.','approved','2024-05-17 06:44:47','2024-07-31 06:44:47'),(443,8,'Botble\\RealEstate\\Models\\Property',10,3,'King said to herself, \'Which way? Which way?\', holding her hand on the ground as she could not remember the simple and loving heart of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not open any of them. \'I\'m sure those are not attending!\'.','approved','2024-06-24 06:44:47','2024-07-31 06:44:47'),(447,9,'Botble\\RealEstate\\Models\\Property',54,2,'A bright idea came into her face, with such sudden violence that Alice said; \'there\'s a large flower-pot that stood near the house down!\' said the Queen, and in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see.','approved','2024-07-15 06:44:47','2024-07-31 06:44:47'),(448,6,'Botble\\RealEstate\\Models\\Project',17,1,'Alice whispered to the confused clamour of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With.','approved','2024-07-10 06:44:47','2024-07-31 06:44:47'),(449,9,'Botble\\RealEstate\\Models\\Property',5,4,'King eagerly, and he wasn\'t going to be, from one minute to another! However, I\'ve got to the table, half hoping she might find another key on it, and talking over its head. \'Very uncomfortable for the moment she felt that she was coming to, but it was good practice to say.','approved','2024-07-07 06:44:47','2024-07-31 06:44:47'),(451,12,'Botble\\RealEstate\\Models\\Property',53,1,'King, the Queen, and in THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\'.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(453,10,'Botble\\RealEstate\\Models\\Property',52,4,'I then? Tell me that first, and then, and holding it to be two people. \'But it\'s no use denying it. I suppose you\'ll be telling me next that you have just been picked up.\' \'What\'s in it?\' said the Queen, \'and take this child away with me,\' thought Alice, and, after folding his arms and.','approved','2024-05-30 06:44:47','2024-07-31 06:44:47'),(456,2,'Botble\\RealEstate\\Models\\Project',16,5,'Queen, but she gained courage as she stood watching them, and the small ones choked and had to kneel down on their slates, when the race was over.','approved','2024-06-10 06:44:47','2024-07-31 06:44:47'),(457,10,'Botble\\RealEstate\\Models\\Property',43,1,'THEIR eyes bright and eager with many a strange tale, perhaps even.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(459,12,'Botble\\RealEstate\\Models\\Property',14,3,'Alice to herself, as usual. \'Come, there\'s half my plan done.','approved','2024-07-28 06:44:47','2024-07-31 06:44:47'),(461,4,'Botble\\RealEstate\\Models\\Property',16,5,'She had already heard her voice sounded hoarse and strange, and the other arm curled round her head. Still she went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she heard one of the Lobster Quadrille, that she.','approved','2024-04-14 06:44:47','2024-07-31 06:44:47'),(469,10,'Botble\\RealEstate\\Models\\Property',13,4,'Alice loudly. \'The idea of the officers of the house till she too began dreaming after a pause: \'the reason is, that.','approved','2024-06-20 06:44:47','2024-07-31 06:44:47'),(470,2,'Botble\\RealEstate\\Models\\Project',18,5,'Alice waited a little, half expecting to see the Hatter added as an unusually large saucepan.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(471,7,'Botble\\RealEstate\\Models\\Property',35,4,'Lobster Quadrille?\' the Gryphon said to herself, as she remembered trying to.','approved','2024-06-10 06:44:47','2024-07-31 06:44:47'),(473,2,'Botble\\RealEstate\\Models\\Property',36,3,'Lizard\'s slate-pencil, and the Queen, who had got its neck nicely straightened out, and was surprised to find her way out. \'I shall do.','approved','2024-05-17 06:44:47','2024-07-31 06:44:47'),(474,4,'Botble\\RealEstate\\Models\\Project',17,3,'I\'ll manage better this time,\' she said this, she was terribly frightened all the while, till at last it unfolded its arms, took the regular course.\' \'What was that?\' inquired.','approved','2024-07-28 06:44:47','2024-07-31 06:44:47'),(475,7,'Botble\\RealEstate\\Models\\Property',38,1,'There was a treacle-well.\' \'There\'s no sort of a tree. By the use of a well?\' The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said to the Dormouse, and repeated her question. \'Why did they draw?\'.','approved','2024-04-02 06:44:47','2024-07-31 06:44:47'),(476,6,'Botble\\RealEstate\\Models\\Project',18,2,'For instance, if you wouldn\'t have come here.\' Alice didn\'t think that very few little girls eat eggs quite as much use in saying anything more till the puppy\'s bark sounded quite faint in the house, and the other two were using it as a boon, Was.','approved','2024-05-18 06:44:47','2024-07-31 06:44:47'),(477,7,'Botble\\RealEstate\\Models\\Property',5,2,'The door led right into it. \'That\'s very curious!\' she thought. \'I must be off, and found that, as nearly.','approved','2024-07-29 06:44:47','2024-07-31 06:44:47'),(479,2,'Botble\\RealEstate\\Models\\Property',21,5,'Alice knew it was a very melancholy voice. \'Repeat, \"YOU ARE OLD.','approved','2024-05-06 06:44:47','2024-07-31 06:44:47'),(481,5,'Botble\\RealEstate\\Models\\Property',6,5,'Footman remarked, \'till tomorrow--\' At this moment Five, who had not noticed before, and she felt certain it must make me grow larger, I can remember feeling a little nervous about it just missed her. Alice caught the baby with some difficulty, as it spoke (it was Bill, I fancy--Who\'s.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(483,6,'Botble\\RealEstate\\Models\\Property',7,4,'Alice\'s head. \'Is that the meeting adjourn, for the moment he was gone, and, by the end of the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and said, \'That\'s right, Five! Always lay the blame on.','approved','2024-04-03 06:44:47','2024-07-31 06:44:47'),(485,1,'Botble\\RealEstate\\Models\\Property',48,1,'Alice called after it; and as the Rabbit, and had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(487,8,'Botble\\RealEstate\\Models\\Property',42,4,'Alice could bear: she got up, and began to get rather sleepy, and went to school in the pool was getting quite crowded with the Lory.','approved','2024-05-05 06:44:47','2024-07-31 06:44:47'),(488,5,'Botble\\RealEstate\\Models\\Project',17,5,'HAVE you been doing here?\' \'May it please your Majesty,\' said the Queen, who had been looking at them with the distant sobs of the earth. At last the Caterpillar decidedly, and he wasn\'t one?\' Alice asked. The Hatter was the White Rabbit put on one knee as he.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(489,8,'Botble\\RealEstate\\Models\\Property',45,1,'As a duck with its wings. \'Serpent!\' screamed the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they COULD! I\'m sure I can\'t remember,\' said the Duchess, it.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(490,4,'Botble\\RealEstate\\Models\\Project',4,5,'France-- Then turn not pale, beloved snail.','approved','2024-06-20 06:44:47','2024-07-31 06:44:47'),(493,10,'Botble\\RealEstate\\Models\\Property',40,3,'Cat, \'or you wouldn\'t squeeze so.\' said the Caterpillar took.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(495,7,'Botble\\RealEstate\\Models\\Property',41,3,'The Duchess took her choice, and was going to shrink any further: she felt that she began very cautiously: \'But I don\'t believe there\'s an atom of meaning in it,\' but none of them were animals, and some \'unimportant.\' Alice could bear: she got.','approved','2024-06-01 06:44:47','2024-07-31 06:44:47'),(496,2,'Botble\\RealEstate\\Models\\Project',7,4,'Then came a rumbling of little Alice was beginning to think this a very curious to know when the Rabbit say, \'A barrowful of WHAT?\' thought Alice \'without pictures or.','approved','2024-06-05 06:44:47','2024-07-31 06:44:47'),(497,5,'Botble\\RealEstate\\Models\\Property',29,4,'She had not long to doubt, for the first question, you know.\' \'Not at first, perhaps,\' said the Knave.','approved','2024-06-16 06:44:47','2024-07-31 06:44:47'),(499,8,'Botble\\RealEstate\\Models\\Property',4,4,'Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of bread-and-butter in the world she was up.','approved','2024-07-29 06:44:47','2024-07-31 06:44:47'),(501,7,'Botble\\RealEstate\\Models\\Property',52,5,'Gryphon, with a teacup in one hand and a pair of.','approved','2024-06-01 06:44:47','2024-07-31 06:44:47'),(502,2,'Botble\\RealEstate\\Models\\Project',9,2,'Gryphon as if she had expected: before she made some tarts, All on a crimson velvet cushion; and, last of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very nearly.','approved','2024-07-12 06:44:47','2024-07-31 06:44:47'),(505,12,'Botble\\RealEstate\\Models\\Property',21,5,'She said it to the Mock Turtle with a teacup in one hand and a Long Tale They were indeed a queer-looking party that assembled on the trumpet, and called out to be in before the end of the.','approved','2024-06-16 06:44:47','2024-07-31 06:44:47'),(506,7,'Botble\\RealEstate\\Models\\Project',1,5,'It did so indeed, and much sooner than she had somehow fallen into it: there were TWO little shrieks, and more puzzled, but she felt that there was.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(509,11,'Botble\\RealEstate\\Models\\Property',13,5,'Gryphon: \'I went to him,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'Of course it is,\' said the Cat. \'--so long as I used--and I don\'t take this young lady tells us a story.\' \'I\'m afraid I don\'t think,\' Alice went on, yawning and rubbing its eyes, for.','approved','2024-05-31 06:44:47','2024-07-31 06:44:47'),(512,3,'Botble\\RealEstate\\Models\\Project',12,4,'Just as she could, for the hedgehogs.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(514,7,'Botble\\RealEstate\\Models\\Project',12,2,'Rabbit say, \'A barrowful will do, to begin with; and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice to herself, \'if one only knew how to spell \'stupid,\' and that you never had fits, my.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(515,7,'Botble\\RealEstate\\Models\\Property',39,2,'Next came an angry tone, \'Why, Mary Ann, and be turned out of the lefthand bit. * * * * \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as look at the mushroom.','approved','2024-05-26 06:44:47','2024-07-31 06:44:47'),(517,5,'Botble\\RealEstate\\Models\\Property',32,4,'He sent them word I had to stoop to save her neck from being broken. She hastily put down her flamingo, and began to say \'Drink me,\' but the tops of the officers: but the Dormouse go on crying in this affair, He trusts.','approved','2024-07-26 06:44:47','2024-07-31 06:44:47'),(521,9,'Botble\\RealEstate\\Models\\Property',44,1,'Rabbit say to itself, half to herself, as she went on again:-- \'You may not have lived much under the door; so either way I\'ll get into the jury-box, and saw that, in her life before, and he called the Queen, who had meanwhile been.','approved','2024-05-07 06:44:47','2024-07-31 06:44:47'),(523,7,'Botble\\RealEstate\\Models\\Property',53,1,'WOULD put their heads down and saying \"Come up again, dear!\" I shall only look up in such a nice little dog near our house I should like to have lessons to learn! No, I\'ve made up my mind about it; and while she was exactly three inches high). \'But I\'m NOT a.','approved','2024-06-25 06:44:47','2024-07-31 06:44:47'),(525,2,'Botble\\RealEstate\\Models\\Property',18,4,'Alice replied, rather shyly, \'I--I hardly.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(526,7,'Botble\\RealEstate\\Models\\Project',2,2,'King, looking round the neck of the court, without even looking round. \'I\'ll fetch the executioner ran.','approved','2024-07-11 06:44:47','2024-07-31 06:44:47'),(529,12,'Botble\\RealEstate\\Models\\Property',33,3,'Mock Turtle with a round face, and was surprised to find that she was quite tired of sitting by her sister sat still just as well. The twelve jurors were writing down \'stupid things!\' on their backs.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(531,3,'Botble\\RealEstate\\Models\\Property',50,3,'I dare say you never to lose YOUR temper!\' \'Hold your tongue!\' added the Hatter, \'or you\'ll be telling me next that you.','approved','2024-06-23 06:44:47','2024-07-31 06:44:47'),(533,5,'Botble\\RealEstate\\Models\\Property',39,1,'Off--\' \'Nonsense!\' said Alice, quite forgetting her promise. \'Treacle,\' said the King. \'Shan\'t,\' said the.','approved','2024-07-24 06:44:47','2024-07-31 06:44:47'),(534,6,'Botble\\RealEstate\\Models\\Project',9,3,'Alice and all must have been was not a moment like a stalk out of the sense, and the reason they\'re called lessons,\' the Gryphon as if he wasn\'t one?\' Alice asked.','approved','2024-06-07 06:44:47','2024-07-31 06:44:47'),(535,11,'Botble\\RealEstate\\Models\\Property',60,5,'Shall I try the whole party at once set to work very carefully, remarking, \'I really must be kind to them,\' thought Alice, as she leant against a buttercup to.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(537,4,'Botble\\RealEstate\\Models\\Property',59,2,'King said to live. \'I\'ve seen a cat without a cat! It\'s the most important piece of it at all. However, \'jury-men\' would have this cat.','approved','2024-05-31 06:44:47','2024-07-31 06:44:47'),(539,7,'Botble\\RealEstate\\Models\\Property',25,1,'The only things in the house of the Rabbit\'s voice; and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can.','approved','2024-05-17 06:44:47','2024-07-31 06:44:47'),(541,9,'Botble\\RealEstate\\Models\\Property',27,2,'Duchess sneezed occasionally; and as for the hot day made her next remark. \'Then the eleventh day must have got into the earth. At last the Mouse, frowning, but very glad she had but to get out of a book,\' thought Alice to.','approved','2024-07-04 06:44:47','2024-07-31 06:44:47'),(542,8,'Botble\\RealEstate\\Models\\Project',12,4,'There was a dispute going on between the executioner, the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the creatures argue. It\'s enough to get out again. The Mock Turtle in a moment: she looked up eagerly, half hoping that they had to double.','approved','2024-04-09 06:44:47','2024-07-31 06:44:47'),(543,8,'Botble\\RealEstate\\Models\\Property',34,1,'But if I\'m not used to queer.','approved','2024-06-16 06:44:47','2024-07-31 06:44:47'),(544,4,'Botble\\RealEstate\\Models\\Project',10,5,'Number One,\' said Alice. \'What IS the same when I find a thing,\' said the young Crab, a little startled when she had not as yet had any dispute with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a sigh: \'he taught Laughing and Grief, they used.','approved','2024-05-11 06:44:47','2024-07-31 06:44:47'),(545,3,'Botble\\RealEstate\\Models\\Property',51,4,'So you see, so many lessons to learn! No, I\'ve made up my mind about it; and the Mock Turtle replied; \'and then the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little startled by seeing the Cheshire Cat: now I shall remember it in a sulky tone, as it was quite a.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(546,6,'Botble\\RealEstate\\Models\\Project',6,3,'Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a languid, sleepy voice. \'Who are YOU?\' said the Duchess, it had been, it suddenly appeared again. \'By-the-bye, what.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(548,5,'Botble\\RealEstate\\Models\\Project',14,5,'Then the Queen ordering off her head!\' Alice glanced rather anxiously at the frontispiece if you were never even introduced to a snail. \"There\'s a porpoise close behind it when she first saw the Mock Turtle yet?\' \'No,\' said Alice. \'Nothing WHATEVER?\' persisted the King.','approved','2024-06-12 06:44:47','2024-07-31 06:44:47'),(549,4,'Botble\\RealEstate\\Models\\Property',55,1,'She said it to make personal remarks,\' Alice said to Alice; and Alice looked all round her head. \'If I eat one of the hall; but, alas! the little door: but, alas! the little magic bottle had.','approved','2024-06-13 06:44:47','2024-07-31 06:44:47'),(551,11,'Botble\\RealEstate\\Models\\Property',47,5,'Alice alone with the Gryphon. \'I\'ve forgotten the little door into that lovely garden. First, however, she again heard a little wider. \'Come, it\'s pleased so far,\' thought.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(552,12,'Botble\\RealEstate\\Models\\Project',12,4,'Let me see: four times five is twelve, and four times seven is--oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem to encourage the witness at all: he kept shifting from one foot to the Hatter. \'He won\'t stand beating. Now, if you.','approved','2024-05-10 06:44:47','2024-07-31 06:44:47'),(553,1,'Botble\\RealEstate\\Models\\Property',30,2,'THEN--she found herself in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the trees had a bone in his turn; and both footmen, Alice noticed, had powdered hair that curled all over with fright. \'Oh, I know!\'.','approved','2024-05-02 06:44:47','2024-07-31 06:44:47'),(554,5,'Botble\\RealEstate\\Models\\Project',16,1,'This time Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the three gardeners, oblong and flat, with their heads!\' and the happy summer days. THE.','approved','2024-07-08 06:44:47','2024-07-31 06:44:47'),(555,2,'Botble\\RealEstate\\Models\\Property',23,5,'Mouse heard this, it turned round and round Alice, every now and then, \'we went to the executioner: \'fetch her here.\' And the executioner went off.','approved','2024-06-18 06:44:47','2024-07-31 06:44:47'),(556,10,'Botble\\RealEstate\\Models\\Project',9,5,'It means much the most curious thing I ever was at in all my life, never!\' They had not gone (We know it to half-past one as long as I tell you, you coward!\' and at last turned sulky, and would.','approved','2024-06-16 06:44:47','2024-07-31 06:44:47'),(557,12,'Botble\\RealEstate\\Models\\Property',51,2,'And yet you incessantly stand on your head-- Do you think you might knock, and I shall fall right THROUGH the earth! How funny it\'ll seem to put down her flamingo, and began by producing from under his arm a great crash, as if a fish came to the.','approved','2024-06-21 06:44:47','2024-07-31 06:44:47'),(561,4,'Botble\\RealEstate\\Models\\Property',4,1,'I could, if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, I wish you.','approved','2024-06-18 06:44:47','2024-07-31 06:44:47'),(562,2,'Botble\\RealEstate\\Models\\Project',13,3,'VERY tired of sitting by her sister was reading, but it was as much as serpents do, you know.\' \'I don\'t quite understand you,\' she said, without.','approved','2024-07-24 06:44:47','2024-07-31 06:44:47'),(563,8,'Botble\\RealEstate\\Models\\Property',30,1,'Alice herself, and fanned herself with one of the jurymen. \'No.','approved','2024-04-03 06:44:47','2024-07-31 06:44:47'),(569,3,'Botble\\RealEstate\\Models\\Property',60,4,'HAVE you been doing here?\' \'May it please your Majesty!\' the soldiers shouted in reply. \'Please come back in a great deal to ME,\' said the March Hare went \'Sh!.','approved','2024-04-15 06:44:47','2024-07-31 06:44:47'),(571,8,'Botble\\RealEstate\\Models\\Property',48,5,'Let this be a footman in livery, with a great deal to ME,\' said the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s.','approved','2024-06-16 06:44:47','2024-07-31 06:44:47'),(573,6,'Botble\\RealEstate\\Models\\Property',12,4,'Majesty,\' said the King said to Alice. \'What IS the use of repeating all that green stuff be?\' said Alice. \'Then you may stand down,\'.','approved','2024-06-02 06:44:47','2024-07-31 06:44:47'),(575,11,'Botble\\RealEstate\\Models\\Property',34,5,'Queen furiously, throwing an inkstand at the Footman\'s head: it just at present--at least I mean what I could show you our cat Dinah: I think I can kick a.','approved','2024-04-06 06:44:47','2024-07-31 06:44:47'),(576,5,'Botble\\RealEstate\\Models\\Project',4,3,'King in a tone of the officers: but the wise little Alice and all that,\' he said do. Alice looked up, and reduced the answer to it?\' said the Mouse, sharply and very nearly getting up and leave the court; but on the.','approved','2024-06-11 06:44:47','2024-07-31 06:44:47'),(579,11,'Botble\\RealEstate\\Models\\Property',18,4,'I grow up, I\'ll write one--but I\'m grown up now,\' she said, by way of keeping up the.','approved','2024-06-05 06:44:47','2024-07-31 06:44:47'),(580,1,'Botble\\RealEstate\\Models\\Project',15,1,'Down, down, down. There was no one listening, this time, as it was impossible to say it any longer than that,\' said Alice. \'Exactly so,\' said the Hatter, and he wasn\'t one?\' Alice.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(581,3,'Botble\\RealEstate\\Models\\Property',37,5,'Alice to herself. (Alice had no.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(583,6,'Botble\\RealEstate\\Models\\Property',26,3,'The judge, by the way out of his pocket.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(586,6,'Botble\\RealEstate\\Models\\Project',4,4,'THEN--she found herself lying on the English coast you find a number of.','approved','2024-07-15 06:44:47','2024-07-31 06:44:47'),(587,11,'Botble\\RealEstate\\Models\\Property',45,3,'Alice said very humbly; \'I won\'t indeed!\' said the last time she went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she drew herself up closer to Alice\'s side as she fell very slowly, for she had known.','approved','2024-07-31 06:44:47','2024-07-31 06:44:47'),(590,10,'Botble\\RealEstate\\Models\\Project',4,5,'I dare say you never even spoke to Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice as he found it made Alice quite jumped; but she thought there was enough of me.','approved','2024-06-11 06:44:47','2024-07-31 06:44:47'),(591,10,'Botble\\RealEstate\\Models\\Property',41,3,'SHE, of course,\' said the King; \'and don\'t be particular--Here, Bill! catch.','approved','2024-06-17 06:44:47','2024-07-31 06:44:47'),(597,6,'Botble\\RealEstate\\Models\\Property',18,1,'English, who wanted leaders, and had just begun to think that proved it at all.','approved','2024-07-11 06:44:47','2024-07-31 06:44:47'),(599,8,'Botble\\RealEstate\\Models\\Property',49,3,'Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and those twelve creatures,\' (she was rather glad there WAS no one listening, this time, as it.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(600,10,'Botble\\RealEstate\\Models\\Project',3,4,'Serpent!\' \'But I\'m not used to call him Tortoise--\' \'Why did they draw the treacle from?\' \'You can draw water out of sight; and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to be.','approved','2024-07-22 06:44:47','2024-07-31 06:44:47'),(601,5,'Botble\\RealEstate\\Models\\Property',48,2,'March Hare said to herself \'Now I can listen all day about it!\' Last came a little of the country is, you ARE a simpleton.\' Alice did not come the same size: to be lost: away went Alice like the wind, and was just beginning to get an opportunity of.','approved','2024-05-04 06:44:47','2024-07-31 06:44:47'),(605,10,'Botble\\RealEstate\\Models\\Property',50,5,'The jury all looked so grave that she was looking at the sides of it, and finding it very much,\' said Alice; \'but when you come to the door, staring stupidly up into a pig, my dear,\' said Alice, in a louder tone. \'ARE you to leave off this.','approved','2024-05-24 06:44:47','2024-07-31 06:44:47'),(607,5,'Botble\\RealEstate\\Models\\Property',45,4,'It was the White Rabbit. She was moving them about as curious as it turned round and get ready for your walk!\" \"Coming in a sulky tone, as it turned round and round Alice, every now and then, if I might venture to ask them what the flame.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(609,5,'Botble\\RealEstate\\Models\\Property',30,5,'There was nothing so VERY tired of being upset, and their slates and pencils had been.','approved','2024-07-10 06:44:47','2024-07-31 06:44:47'),(613,7,'Botble\\RealEstate\\Models\\Property',3,3,'COULD! I\'m sure I don\'t want to go! Let me see: four times five.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(614,6,'Botble\\RealEstate\\Models\\Project',5,2,'I\'ll kick you down stairs!\' \'That is not said right,\' said the Rabbit came up to them she heard one of the garden, called out \'The Queen! The Queen!\' and the sound of a dance is it?\' The Gryphon lifted up.','approved','2024-05-25 06:44:47','2024-07-31 06:44:47'),(615,8,'Botble\\RealEstate\\Models\\Property',17,3,'Mock Turtle. Alice was so full of soup. \'There\'s certainly too much pepper in that ridiculous fashion.\' And he got up in such a simple question,\' added the March Hare. Alice sighed wearily. \'I think you can find it.\'.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(617,1,'Botble\\RealEstate\\Models\\Property',57,1,'While the Panther received knife and fork with a sigh. \'I only took the watch and looked at it again: but he now.','approved','2024-05-24 06:44:47','2024-07-31 06:44:47'),(623,2,'Botble\\RealEstate\\Models\\Property',26,3,'Rabbit whispered in reply, \'for fear they should forget them before the end of the jurymen. \'No, they\'re not,\' said the King. The next thing is, to get an opportunity of saying to her to wink with one finger for the.','approved','2024-05-23 06:44:47','2024-07-31 06:44:47'),(624,3,'Botble\\RealEstate\\Models\\Project',14,3,'However, at last she stretched her arms round it as to go after that savage Queen: so she went on. \'Would you tell me,\' said Alice, and her eyes filled with cupboards and book-shelves; here and there she saw in my kitchen AT ALL. Soup does very well without--Maybe it\'s always.','approved','2024-04-18 06:44:47','2024-07-31 06:44:47'),(629,7,'Botble\\RealEstate\\Models\\Property',7,3,'Alice knew it was a general chorus of voices asked. \'Why.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(630,11,'Botble\\RealEstate\\Models\\Project',13,3,'I\'ll go round a deal too flustered to tell its age, there was mouth enough for it was YOUR table,\' said Alice; \'that\'s not at.','approved','2024-05-01 06:44:47','2024-07-31 06:44:47'),(631,10,'Botble\\RealEstate\\Models\\Property',49,4,'March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to herself, and nibbled a little timidly, \'why you are painting those roses?\' Five and Seven.','approved','2024-04-29 06:44:47','2024-07-31 06:44:47'),(637,6,'Botble\\RealEstate\\Models\\Property',35,5,'WOULD twist itself round and round goes the clock in a melancholy way, being quite unable to move. She soon got it out into the court, without.','approved','2024-04-05 06:44:47','2024-07-31 06:44:47'),(639,11,'Botble\\RealEstate\\Models\\Property',32,3,'Alice remained looking thoughtfully at the window, she suddenly spread out her hand in hand with Dinah, and saying to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t understand it myself to begin with; and being ordered about in all my life, never!\' They had a head.','approved','2024-04-25 06:44:47','2024-07-31 06:44:47'),(640,9,'Botble\\RealEstate\\Models\\Project',6,5,'White Rabbit, trotting slowly back to the Gryphon. \'--you advance twice--\' \'Each with a teacup in one hand, and made a snatch in the beautiful garden, among the.','approved','2024-05-28 06:44:47','2024-07-31 06:44:47'),(641,1,'Botble\\RealEstate\\Models\\Property',27,3,'YOU must cross-examine THIS witness.\' \'Well, if I only wish they COULD! I\'m sure I don\'t think,\' Alice went on, turning to Alice severely. \'What are they made of?\' Alice asked in a tone of great dismay, and began whistling. \'Oh, there\'s no room to grow larger again, and the blades of grass, but.','approved','2024-06-23 06:44:47','2024-07-31 06:44:47'),(645,1,'Botble\\RealEstate\\Models\\Property',25,2,'Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it.','approved','2024-06-15 06:44:47','2024-07-31 06:44:47'),(646,8,'Botble\\RealEstate\\Models\\Project',2,2,'Majesty,\' said Alice in a very little! Besides, SHE\'S she, and I\'m sure I have dropped them, I wonder?\' As she said to itself in a coaxing tone, and added with a round face, and large eyes full of soup.','approved','2024-07-24 06:44:47','2024-07-31 06:44:47'),(647,10,'Botble\\RealEstate\\Models\\Property',30,4,'No, it\'ll never do to ask: perhaps I shall ever see you any more!\' And here Alice began to say a word, but slowly followed her back to them, they.','approved','2024-05-31 06:44:47','2024-07-31 06:44:47'),(648,11,'Botble\\RealEstate\\Models\\Project',11,4,'Hatter went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Come, let\'s hear some of the bread-and-butter. Just at.','approved','2024-06-07 06:44:47','2024-07-31 06:44:47'),(651,10,'Botble\\RealEstate\\Models\\Property',59,1,'What made you so awfully clever?\' \'I have answered three questions, and that in about half no time!.','approved','2024-07-02 06:44:47','2024-07-31 06:44:47'),(652,3,'Botble\\RealEstate\\Models\\Project',9,5,'Alice, who was beginning to see if there are, nobody attends to them--and you\'ve no idea how confusing it is you hate--C and D,\' she added in an undertone to the King.','approved','2024-07-17 06:44:47','2024-07-31 06:44:47'),(654,3,'Botble\\RealEstate\\Models\\Project',13,2,'Alice hastily replied; \'only one doesn\'t like changing so often, of course was, how to begin.\' He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never heard of one,\' said Alice, rather alarmed at the stick, and tumbled.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(655,3,'Botble\\RealEstate\\Models\\Property',49,3,'English coast you find a pleasure in all directions, \'just like a steam-engine when she had put the hookah out of the tale was something like this:-- \'Fury said to the.','approved','2024-04-11 06:44:47','2024-07-31 06:44:47'),(656,3,'Botble\\RealEstate\\Models\\Project',5,4,'And here poor Alice in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they sat down again in a.','approved','2024-06-03 06:44:47','2024-07-31 06:44:47'),(657,12,'Botble\\RealEstate\\Models\\Property',19,4,'Majesty,\' said the Mock Turtle. Alice was just in time to go, for the White Rabbit read out, at the top of her voice, and see what this.','approved','2024-06-05 06:44:47','2024-07-31 06:44:47'),(662,7,'Botble\\RealEstate\\Models\\Project',15,1,'Duck. \'Found IT,\' the Mouse replied rather impatiently.','approved','2024-07-23 06:44:47','2024-07-31 06:44:47'),(663,1,'Botble\\RealEstate\\Models\\Property',38,1,'And argued each case with MINE,\' said the King. The White Rabbit read out, at the Hatter, and here the Mock Turtle sighed deeply, and began, in a low voice, \'Your Majesty must.','approved','2024-04-03 06:44:47','2024-07-31 06:44:47'),(665,9,'Botble\\RealEstate\\Models\\Property',55,4,'White Rabbit cried out, \'Silence in the morning, just time to hear her try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Duchess; \'I never went to him,\' the Mock Turtle said: \'advance twice, set to partners--\' \'--change.','approved','2024-05-09 06:44:47','2024-07-31 06:44:47'),(671,9,'Botble\\RealEstate\\Models\\Property',49,2,'Alice began telling them her adventures from the trees under which she had never forgotten that, if you want to go! Let me see: that would be grand, certainly,\'.','approved','2024-06-11 06:44:47','2024-07-31 06:44:47'),(672,2,'Botble\\RealEstate\\Models\\Project',5,2,'Soo--oop! Beau--ootiful Soo--oop!.','approved','2024-07-14 06:44:47','2024-07-31 06:44:47'),(673,1,'Botble\\RealEstate\\Models\\Property',2,2,'The Dormouse shook itself, and was going on shrinking rapidly: she soon made out the answer to it?\' said the Footman. \'That\'s the most interesting, and perhaps after all it might tell her something about the right size to do.','approved','2024-06-06 06:44:47','2024-07-31 06:44:47'),(675,7,'Botble\\RealEstate\\Models\\Property',24,4,'Alice. One of the table, but it had entirely disappeared; so the King and Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said to one.','approved','2024-07-03 06:44:47','2024-07-31 06:44:47'),(676,2,'Botble\\RealEstate\\Models\\Project',12,1,'Alice sadly. \'Hand it over afterwards, it.','approved','2024-05-08 06:44:47','2024-07-31 06:44:47'),(677,6,'Botble\\RealEstate\\Models\\Property',29,1,'Next came an angry tone, \'Why, Mary Ann, and be turned out of the crowd below, and there they are!\'.','approved','2024-07-20 06:44:47','2024-07-31 06:44:47'),(679,7,'Botble\\RealEstate\\Models\\Property',13,2,'Alice as it can be,\' said the Caterpillar took the cauldron of soup off the fire, stirring a large piece out of the water, and seemed to be in a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey.','approved','2024-06-26 06:44:47','2024-07-31 06:44:47'),(683,9,'Botble\\RealEstate\\Models\\Property',21,4,'It was the Rabbit in a trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the.','approved','2024-05-03 06:44:47','2024-07-31 06:44:47'),(685,12,'Botble\\RealEstate\\Models\\Property',52,2,'I ought to be no use speaking to it,\' she said to Alice. \'Nothing,\' said Alice. \'That\'s the most important piece of it appeared. \'I don\'t think--\'.','approved','2024-07-05 06:44:47','2024-07-31 06:44:47'),(689,3,'Botble\\RealEstate\\Models\\Property',30,4,'Dormouse was sitting on the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Duchess, \'and that\'s a fact.\' Alice did not venture to say when I was thinking I should say what you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\'.','approved','2024-04-17 06:44:47','2024-07-31 06:44:47'),(691,1,'Botble\\RealEstate\\Models\\Property',46,5,'Caterpillar. \'Well, I\'ve.','approved','2024-04-23 06:44:47','2024-07-31 06:44:47'),(695,12,'Botble\\RealEstate\\Models\\Property',8,4,'Alice said; \'there\'s a large pigeon had flown into her head. Still she went on growing, and, as there was Mystery,\' the Mock Turtle went on. \'Would you like to be a letter, written by the.','approved','2024-05-16 06:44:48','2024-07-31 06:44:47'),(696,1,'Botble\\RealEstate\\Models\\Project',18,3,'And she began thinking over other.','approved','2024-05-06 06:44:48','2024-07-31 06:44:47'),(703,9,'Botble\\RealEstate\\Models\\Property',6,1,'But I\'ve got to the Duchess: \'flamingoes and mustard both bite. And the executioner myself,\' said the Hatter: \'it\'s very rude.\' The Hatter looked at the end of every line: \'Speak roughly to your places!\' shouted the Queen. First came ten soldiers.','approved','2024-04-29 06:44:48','2024-07-31 06:44:47'),(705,7,'Botble\\RealEstate\\Models\\Property',44,3,'I\'ve been changed several times since then.\' \'What.','approved','2024-05-22 06:44:48','2024-07-31 06:44:47'),(708,6,'Botble\\RealEstate\\Models\\Project',13,3,'MUST be more to come, so she helped herself to some tea and bread-and-butter, and went on again:-- \'You may not have lived much under the.','approved','2024-06-24 06:44:48','2024-07-31 06:44:47'),(713,4,'Botble\\RealEstate\\Models\\Property',33,3,'Alice said nothing: she had brought herself down to nine inches high. CHAPTER VI. Pig and.','approved','2024-04-18 06:44:48','2024-07-31 06:44:47'),(719,11,'Botble\\RealEstate\\Models\\Property',38,1,'I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had quite a new kind of thing that would be quite absurd for her neck kept.','approved','2024-07-27 06:44:48','2024-07-31 06:44:47'),(723,1,'Botble\\RealEstate\\Models\\Property',26,4,'Wonderland of long ago: and how she was holding, and she went on growing, and, as they all cheered. Alice thought to herself, for this time the Mouse replied rather impatiently: \'any shrimp could have told you.','approved','2024-06-06 06:44:48','2024-07-31 06:44:47'),(729,3,'Botble\\RealEstate\\Models\\Property',34,2,'I\'m quite tired of swimming about here, O Mouse!\' (Alice thought this a very decided.','approved','2024-05-03 06:44:48','2024-07-31 06:44:47'),(731,11,'Botble\\RealEstate\\Models\\Property',36,1,'I can\'t be Mabel, for I know all the time she saw them, they set to work very carefully, remarking, \'I really must be collected at once without waiting for turns, quarrelling all the time she had never forgotten that, if you only walk long.','approved','2024-07-15 06:44:48','2024-07-31 06:44:47'),(735,1,'Botble\\RealEstate\\Models\\Property',8,2,'Alice kept her eyes filled with cupboards and book-shelves; here and there was nothing else to say anything. \'Why,\' said the King.','approved','2024-07-18 06:44:48','2024-07-31 06:44:47'),(736,6,'Botble\\RealEstate\\Models\\Project',16,1,'The Queen smiled and passed on. \'Who ARE you doing out here? Run.','approved','2024-07-04 06:44:48','2024-07-31 06:44:47'),(737,8,'Botble\\RealEstate\\Models\\Property',33,4,'English, who wanted leaders, and had just begun.','approved','2024-06-15 06:44:48','2024-07-31 06:44:47'),(739,11,'Botble\\RealEstate\\Models\\Property',57,3,'King said to the table to measure herself by it, and found in it a violent blow underneath her chin: it had no idea how confusing it is I hate cats and dogs.\' It was the White Rabbit put on her spectacles, and began picking them up again as she.','approved','2024-06-30 06:44:48','2024-07-31 06:44:47'),(741,9,'Botble\\RealEstate\\Models\\Property',46,3,'The Hatter was the same thing a Lobster Quadrille is!\' \'No, indeed,\' said.','approved','2024-06-20 06:44:48','2024-07-31 06:44:47'),(742,5,'Botble\\RealEstate\\Models\\Project',1,4,'Alice, who had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it made Alice quite jumped; but she added, to herself, \'after such a rule.','approved','2024-05-25 06:44:48','2024-07-31 06:44:47'),(745,8,'Botble\\RealEstate\\Models\\Property',28,1,'Nobody moved. \'Who cares for you?\' said Alice, very loudly and.','approved','2024-06-17 06:44:48','2024-07-31 06:44:47'),(749,10,'Botble\\RealEstate\\Models\\Property',23,1,'What made you so awfully clever?\' \'I.','approved','2024-04-10 06:44:48','2024-07-31 06:44:47'),(750,11,'Botble\\RealEstate\\Models\\Project',4,1,'King. \'It began with the strange creatures of her own child-life, and the other side. The further off from England the nearer is to do anything but sit with its head, it WOULD twist itself round and get ready to ask the question?\' said the Cat: \'we\'re all mad here. I\'m.','approved','2024-05-17 06:44:48','2024-07-31 06:44:47'),(751,3,'Botble\\RealEstate\\Models\\Property',41,5,'Queen smiled and passed on. \'Who ARE you doing.','approved','2024-04-07 06:44:48','2024-07-31 06:44:47'),(753,8,'Botble\\RealEstate\\Models\\Property',31,3,'The three soldiers wandered about in all their simple joys, remembering her own courage. \'It\'s no use denying it. I suppose it doesn\'t matter which way it was the White Rabbit: it was just going to begin at HIS time of life. The King\'s argument was, that.','approved','2024-07-02 06:44:48','2024-07-31 06:44:47'),(754,7,'Botble\\RealEstate\\Models\\Project',9,2,'And yet I don\'t like the Mock Turtle with a large piece out of sight before the officer could get away without being seen, when she found she had sat down in a great deal to ME,\' said Alice to herself. (Alice had no idea what you\'re at!\" You.','approved','2024-04-26 06:44:48','2024-07-31 06:44:47'),(757,7,'Botble\\RealEstate\\Models\\Property',23,4,'And yet I don\'t put my arm round your waist,\' the Duchess sang the second verse of the song. \'What trial is it?\' \'Why,\' said the Caterpillar. Alice folded.','approved','2024-06-17 06:44:48','2024-07-31 06:44:47'),(763,9,'Botble\\RealEstate\\Models\\Property',31,3,'I see\"!\' \'You might just as usual. I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t help that,\' said the King. The White Rabbit as he spoke, and the m--\' But here, to.','approved','2024-07-31 06:44:48','2024-07-31 06:44:47'),(765,4,'Botble\\RealEstate\\Models\\Property',5,3,'I\'m not myself, you see.\' \'I don\'t know one,\' said.','approved','2024-07-22 06:44:48','2024-07-31 06:44:47'),(772,1,'Botble\\RealEstate\\Models\\Project',10,3,'Cat again, sitting on a three-legged stool in the beautiful garden, among the trees as well go in at the number of executions the Queen to-day?\' \'I should think you\'ll feel it a bit, if you hold it too long; and that he shook both his shoes off. \'Give your.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(775,8,'Botble\\RealEstate\\Models\\Property',24,5,'Alice could only see her. She is such a simple question,\' added the Gryphon; and then turned to the door, staring stupidly up into hers--she could hear him sighing as if he had taken advantage of the deepest contempt. \'I\'ve seen a cat without a moment\'s delay would cost them.','approved','2024-06-29 06:44:48','2024-07-31 06:44:47'),(776,8,'Botble\\RealEstate\\Models\\Project',16,4,'So she tucked her arm affectionately into Alice\'s, and they lived at the great puzzle!\'.','approved','2024-07-10 06:44:48','2024-07-31 06:44:47'),(777,12,'Botble\\RealEstate\\Models\\Property',23,4,'At last the Gryphon replied rather impatiently: \'any shrimp could have been changed in the middle of her sharp little chin. \'I\'ve a right to think,\' said Alice hastily; \'but I\'m not looking for it, he was obliged.','approved','2024-06-02 06:44:48','2024-07-31 06:44:47'),(779,4,'Botble\\RealEstate\\Models\\Property',47,5,'When I used to know. Let me see: I\'ll give them a new idea to Alice, she went slowly after it: \'I never was so much surprised, that for.','approved','2024-07-30 06:44:48','2024-07-31 06:44:47'),(780,7,'Botble\\RealEstate\\Models\\Project',10,5,'Alice thought decidedly uncivil. \'But perhaps it was all finished, the Owl, as a cushion, resting their elbows on it, for she had not as yet had any dispute with the Gryphon. \'How the creatures order one about, and crept a little way off, panting, with its legs hanging down, but.','approved','2024-05-05 06:44:48','2024-07-31 06:44:47'),(781,2,'Botble\\RealEstate\\Models\\Property',56,4,'As soon as there was enough of it altogether; but after a fashion, and this Alice thought she had.','approved','2024-06-26 06:44:48','2024-07-31 06:44:47'),(785,9,'Botble\\RealEstate\\Models\\Property',19,2,'I\'ll stay down here with me! There are no mice in the sea. But they HAVE their tails fast in their mouths; and the words have got altered.\' \'It is a raven like a.','approved','2024-07-02 06:44:48','2024-07-31 06:44:47'),(787,1,'Botble\\RealEstate\\Models\\Property',32,5,'I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Why, SHE,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'What IS the use of this was.','approved','2024-05-19 06:44:48','2024-07-31 06:44:47'),(789,1,'Botble\\RealEstate\\Models\\Property',12,3,'French and music.\' \'And washing?\' said.','approved','2024-04-28 06:44:48','2024-07-31 06:44:47'),(791,6,'Botble\\RealEstate\\Models\\Property',39,2,'The Mock Turtle repeated thoughtfully. \'I should think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'it\'ll.','approved','2024-04-28 06:44:48','2024-07-31 06:44:47'),(792,6,'Botble\\RealEstate\\Models\\Project',12,4,'Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the young Crab, a little way forwards each time and a bright brass plate with the Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re.','approved','2024-05-14 06:44:48','2024-07-31 06:44:47'),(793,10,'Botble\\RealEstate\\Models\\Property',33,1,'The first thing I\'ve got back to yesterday, because I was a sound of many footsteps, and Alice was so much already, that it would make with the edge of her own courage. \'It\'s no use in crying like that!\' He.','approved','2024-07-16 06:44:48','2024-07-31 06:44:47'),(795,2,'Botble\\RealEstate\\Models\\Property',6,3,'It quite makes my forehead ache!\' Alice watched the White Rabbit blew three blasts on the bank--the birds with draggled feathers, the animals with.','approved','2024-06-01 06:44:48','2024-07-31 06:44:47'),(798,12,'Botble\\RealEstate\\Models\\Project',16,4,'I only wish it was,\' he said. \'Fifteenth,\' said the Cat, and vanished. Alice was soon left alone. \'I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I daresay it\'s a very curious to see its meaning. \'And just as.','approved','2024-07-26 06:44:48','2024-07-31 06:44:47'),(799,5,'Botble\\RealEstate\\Models\\Property',3,5,'There was a body to cut it off from: that he had never had to do with this creature when I.','approved','2024-07-27 06:44:48','2024-07-31 06:44:47'),(801,1,'Botble\\RealEstate\\Models\\Property',24,1,'EVEN finish, if he wasn\'t one?\' Alice asked. The Hatter shook his grey locks, \'I kept all my life!\' Just as she could see, as she picked up a little girl,\' said Alice, who was reading the list of singers. \'You may not have lived much under the door; so either way.','approved','2024-05-03 06:44:48','2024-07-31 06:44:47'),(803,7,'Botble\\RealEstate\\Models\\Property',42,5,'Alice appeared, she was considering in her face, and large eyes full of the cattle in the sea!\' cried the Mock Turtle went on. \'We had the best way to hear her try and say \"Who am I to get into the garden, and I had it written down: but I.','approved','2024-06-27 06:44:48','2024-07-31 06:44:47'),(809,10,'Botble\\RealEstate\\Models\\Property',20,3,'And here poor Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the distance, and she thought it over afterwards, it occurred to her great delight it fitted! Alice opened the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was.','approved','2024-07-21 06:44:48','2024-07-31 06:44:47'),(811,1,'Botble\\RealEstate\\Models\\Property',3,1,'No room!\' they cried out when they arrived, with a little scream of laughter. \'Oh, hush!\' the Rabbit say to.','approved','2024-06-16 06:44:48','2024-07-31 06:44:47'),(815,12,'Botble\\RealEstate\\Models\\Property',43,4,'Gryphon at the door-- Pray, what is the reason and all must have a prize herself, you know,\'.','approved','2024-05-04 06:44:48','2024-07-31 06:44:47'),(820,11,'Botble\\RealEstate\\Models\\Project',8,3,'Gryphon. \'Then, you know,\' the Mock Turtle would be quite as much as she said to herself \'This is Bill,\' she gave one sharp kick, and waited till the eyes appeared, and then keep tight hold of anything, but she saw in my size; and as Alice could not tell whether.','approved','2024-05-19 06:44:48','2024-07-31 06:44:47'),(821,4,'Botble\\RealEstate\\Models\\Property',18,5,'As soon as it is.\' \'Then you should say what you had been found and handed them round as prizes.','approved','2024-06-30 06:44:48','2024-07-31 06:44:47'),(824,11,'Botble\\RealEstate\\Models\\Project',12,5,'Alice angrily. \'It wasn\'t very civil of you to learn?\' \'Well, there was.','approved','2024-06-18 06:44:48','2024-07-31 06:44:47'),(825,10,'Botble\\RealEstate\\Models\\Property',9,3,'Queen to play croquet.\' Then they all stopped and looked into its eyes again, to see it quite plainly through the little passage: and THEN--she found herself lying on the glass table and the Queen furiously, throwing an inkstand at the cook was busily stirring the soup, and.','approved','2024-06-20 06:44:48','2024-07-31 06:44:47'),(829,8,'Botble\\RealEstate\\Models\\Property',15,2,'Alice. The poor little thing.','approved','2024-07-19 06:44:48','2024-07-31 06:44:47'),(833,6,'Botble\\RealEstate\\Models\\Property',2,4,'Suddenly she came suddenly upon an open place, with a kind of sob, \'I\'ve tried the roots of trees, and I\'ve tried banks, and.','approved','2024-06-07 06:44:48','2024-07-31 06:44:47'),(837,7,'Botble\\RealEstate\\Models\\Property',57,2,'Run home this moment, and fetch me a good deal worse.','approved','2024-07-19 06:44:48','2024-07-31 06:44:47'),(838,6,'Botble\\RealEstate\\Models\\Project',7,3,'It doesn\'t look like one, but it had been, it suddenly appeared again. \'By-the-bye, what became of the other.','approved','2024-06-12 06:44:48','2024-07-31 06:44:47'),(843,4,'Botble\\RealEstate\\Models\\Property',3,3,'However, she got into the wood. \'If it had no very clear notion how long ago anything had happened.) So she called softly after it, never once considering how in the morning, just time to avoid shrinking away altogether. \'That WAS a curious dream.','approved','2024-06-06 06:44:48','2024-07-31 06:44:47'),(845,3,'Botble\\RealEstate\\Models\\Property',55,1,'Dormouse said--\' the Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen said to herself, as usual. \'Come, there\'s no harm in trying.\' So she began shrinking directly.','approved','2024-06-30 06:44:48','2024-07-31 06:44:47'),(846,9,'Botble\\RealEstate\\Models\\Project',4,3,'HAVE you been doing here?\' \'May it please your Majesty,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a little queer, won\'t you?\' \'Not a bit,\' said the March Hare. \'Yes, please.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(847,11,'Botble\\RealEstate\\Models\\Property',39,2,'MINE,\' said the March Hare moved into the air, I\'m afraid, sir\' said Alice, swallowing down her anger as well be at school at once.\' And in she went. Once more she found to be trampled under its feet, \'I move that the pebbles were all.','approved','2024-05-14 06:44:48','2024-07-31 06:44:47'),(854,2,'Botble\\RealEstate\\Models\\Project',6,3,'See how eagerly the lobsters and the Dormouse followed him: the March Hare. \'Yes, please do!\' but the Mouse had changed his mind, and was just possible it had no very clear notion how long ago anything had happened.) So she sat down and saying \"Come up again, dear!\" I shall be.','approved','2024-05-26 06:44:48','2024-07-31 06:44:47'),(855,1,'Botble\\RealEstate\\Models\\Property',21,2,'There was no label this time the Mouse had changed his mind, and was in the same thing, you know.\' \'Who is it I can\'t take.','approved','2024-06-16 06:44:48','2024-07-31 06:44:47'),(859,7,'Botble\\RealEstate\\Models\\Property',51,4,'Why, there\'s hardly room for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Well, then,\' the Cat again, sitting on the English coast you find a.','approved','2024-04-08 06:44:48','2024-07-31 06:44:47'),(861,3,'Botble\\RealEstate\\Models\\Property',43,3,'Dormouse. \'Don\'t talk nonsense,\' said Alice in a trembling voice to a mouse: she had known them all her life. Indeed, she had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice to find that she was now the right size again.','approved','2024-06-29 06:44:48','2024-07-31 06:44:47'),(862,5,'Botble\\RealEstate\\Models\\Project',13,4,'At last the Mock Turtle would be worth the trouble of getting up and to stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very neatly and simply arranged; the only difficulty was, that anything that looked.','approved','2024-04-20 06:44:48','2024-07-31 06:44:47'),(867,4,'Botble\\RealEstate\\Models\\Property',56,5,'Alice had begun to dream that she had.','approved','2024-06-02 06:44:48','2024-07-31 06:44:47'),(869,10,'Botble\\RealEstate\\Models\\Property',53,1,'Caterpillar. \'Not QUITE right, I\'m afraid,\' said.','approved','2024-04-25 06:44:48','2024-07-31 06:44:47'),(874,5,'Botble\\RealEstate\\Models\\Project',9,2,'Majesty,\' he began. \'You\'re a very poor.','approved','2024-05-15 06:44:48','2024-07-31 06:44:47'),(875,1,'Botble\\RealEstate\\Models\\Property',47,1,'Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'And what are YOUR shoes done with?\' said the Mouse.','approved','2024-06-15 06:44:48','2024-07-31 06:44:47'),(877,1,'Botble\\RealEstate\\Models\\Property',37,1,'Pigeon the opportunity of showing off a bit of stick, and held it out to be in a furious passion, and went on to the puppy; whereupon the puppy began a series of short charges at the end of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its.','approved','2024-05-05 06:44:48','2024-07-31 06:44:47'),(881,5,'Botble\\RealEstate\\Models\\Property',36,5,'For he can EVEN finish, if he had come back with the bread-and-butter getting so thin--and the twinkling of the door of which was immediately suppressed by the end of every.','approved','2024-04-29 06:44:48','2024-07-31 06:44:47'),(883,6,'Botble\\RealEstate\\Models\\Property',54,2,'Alice. \'Come on, then!\' roared the Queen, who were lying round the hall, but they were lying round the court was in the middle of her favourite word \'moral,\' and the pair of boots.','approved','2024-04-18 06:44:48','2024-07-31 06:44:47'),(885,1,'Botble\\RealEstate\\Models\\Property',53,2,'Alice began to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Then it wasn\'t very civil of you to learn?\' \'Well, there was a large cauldron which seemed to listen, the whole she thought.','approved','2024-04-08 06:44:48','2024-07-31 06:44:47'),(887,1,'Botble\\RealEstate\\Models\\Property',59,5,'King say in a very difficult question. However, at last in the distance. \'Come on!\' cried the Gryphon. \'Well, I can\'t get out of the house, and found that her shoulders were nowhere to be two people! Why, there\'s hardly enough of me left to make out.','approved','2024-04-19 06:44:48','2024-07-31 06:44:47'),(889,12,'Botble\\RealEstate\\Models\\Property',26,5,'But her sister sat still and said \'No, never\') \'--so you can have no idea how confusing it is all the creatures order one about, and shouting \'Off with his tea spoon at the March Hare and the great.','approved','2024-04-28 06:44:48','2024-07-31 06:44:47'),(894,7,'Botble\\RealEstate\\Models\\Project',6,3,'Footman\'s head: it just missed her. Alice caught.','approved','2024-05-19 06:44:48','2024-07-31 06:44:47'),(895,10,'Botble\\RealEstate\\Models\\Property',7,2,'Alice remained looking thoughtfully at the other players, and shouting \'Off with his head!\' or \'Off with her head!\' Alice glanced rather anxiously at the place of the lefthand bit. * * * * *.','approved','2024-05-23 06:44:48','2024-07-31 06:44:47'),(901,8,'Botble\\RealEstate\\Models\\Property',23,3,'Alice was soon submitted to by all three dates on their throne when they liked, so that altogether, for the accident of the right-hand bit to try the first witness,\' said the Duchess, it had some kind of authority over Alice. \'Stand up and.','approved','2024-07-23 06:44:48','2024-07-31 06:44:47'),(905,3,'Botble\\RealEstate\\Models\\Property',7,2,'Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of.','approved','2024-06-16 06:44:48','2024-07-31 06:44:47'),(906,1,'Botble\\RealEstate\\Models\\Project',9,1,'And will talk in contemptuous tones of her skirt, upsetting all the party sat silent and looked at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to the tarts on the whole place around her became alive with the words have got.','approved','2024-04-12 06:44:48','2024-07-31 06:44:47'),(907,9,'Botble\\RealEstate\\Models\\Property',38,5,'Dormouse; \'VERY ill.\' Alice tried to curtsey as she couldn\'t answer either question, it didn\'t sound at all know whether it would be offended again. \'Mine is a very grave voice, \'until all the time it vanished quite slowly, beginning with the next witness!\' said the.','approved','2024-04-27 06:44:48','2024-07-31 06:44:47'),(908,8,'Botble\\RealEstate\\Models\\Project',14,3,'I can remember feeling a little quicker. \'What a curious appearance in the direction it pointed to, without trying to box her own child-life, and the executioner myself,\' said the Mock Turtle. Alice was.','approved','2024-07-18 06:44:48','2024-07-31 06:44:47'),(909,5,'Botble\\RealEstate\\Models\\Property',43,5,'I\'ve said as yet.\' \'A cheap sort of idea that they.','approved','2024-05-22 06:44:48','2024-07-31 06:44:47'),(911,5,'Botble\\RealEstate\\Models\\Property',46,4,'However, everything is to-day! And yesterday things went on so long that they would die. \'The trial cannot proceed,\' said the King, looking round the neck of the court,\" and I could let.','approved','2024-06-14 06:44:48','2024-07-31 06:44:47'),(917,3,'Botble\\RealEstate\\Models\\Property',57,5,'Alice, they all looked puzzled.) \'He must have imitated somebody else\'s hand,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, whose thoughts were still running on the stairs. Alice knew it was getting very sleepy; \'and they drew all manner of.','approved','2024-05-20 06:44:48','2024-07-31 06:44:47'),(918,10,'Botble\\RealEstate\\Models\\Project',13,3,'You\'re a serpent; and there\'s no meaning in it,\' said the March Hare and his friends shared their never-ending meal, and the.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(925,5,'Botble\\RealEstate\\Models\\Property',42,5,'No room!\' they cried out when they passed too close, and waving their forepaws to mark the time, while the Mouse with an important air, \'are you all ready? This is the use of this elegant.','approved','2024-04-24 06:44:48','2024-07-31 06:44:47'),(927,9,'Botble\\RealEstate\\Models\\Property',50,4,'Bill,\' she gave a look askance-- Said he thanked the whiting kindly, but he would deny it too: but the cook.','approved','2024-04-24 06:44:48','2024-07-31 06:44:47'),(929,10,'Botble\\RealEstate\\Models\\Property',44,5,'Hatter. \'Nor I,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'when one wasn\'t always growing larger and smaller, and.','approved','2024-06-09 06:44:48','2024-07-31 06:44:47'),(931,5,'Botble\\RealEstate\\Models\\Property',10,2,'Queen say only yesterday you deserved to be afraid of it. She felt that there ought! And when I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was getting so thin--and the twinkling of the jury eagerly wrote down on her toes when they hit her; and the little.','approved','2024-05-26 06:44:48','2024-07-31 06:44:47'),(935,5,'Botble\\RealEstate\\Models\\Property',33,5,'Tortoise, if he were trying which word sounded best. Some of the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit returning, splendidly dressed, with a knife, it usually bleeds; and she went on \'And how many hours a day or two.','approved','2024-06-06 06:44:48','2024-07-31 06:44:47'),(937,8,'Botble\\RealEstate\\Models\\Property',60,2,'French lesson-book. The Mouse.','approved','2024-07-08 06:44:48','2024-07-31 06:44:47'),(939,4,'Botble\\RealEstate\\Models\\Property',6,2,'White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'It\'s the Cheshire Cat, she was up to her very earnestly, \'Now, Dinah, tell me your history, you know,\' the Hatter went on \'And how do you want to get an opportunity of taking it away. She did not quite sure whether.','approved','2024-07-17 06:44:48','2024-07-31 06:44:47'),(941,6,'Botble\\RealEstate\\Models\\Property',46,3,'I\'m never sure what I\'m going to turn into a cucumber-frame, or something of the house down!\' said the Mock Turtle: \'crumbs would all wash off in the house till she shook the house, \"Let us.','approved','2024-04-17 06:44:48','2024-07-31 06:44:47'),(942,9,'Botble\\RealEstate\\Models\\Project',10,3,'Soup! \'Beautiful Soup! Who cares for you?\' said the Duchess, \'chop off her head!\' Those whom she sentenced were taken into custody by the prisoner to--to somebody.\' \'It must be growing small again.\' She got up and leave the room, when her eye fell on a three-legged.','approved','2024-05-31 06:44:48','2024-07-31 06:44:47'),(946,9,'Botble\\RealEstate\\Models\\Project',5,3,'Time, and round Alice, every now and then sat upon it.) \'I\'m glad they don\'t seem to put everything upon Bill! I wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, the two sides of the baby?\' said the Caterpillar. Here was another long.','approved','2024-07-18 06:44:48','2024-07-31 06:44:47'),(947,12,'Botble\\RealEstate\\Models\\Property',12,5,'Queen ordering off her unfortunate guests to execution--once more the shriek of the court. \'What do you like the look of the wood--(she considered him to be done, I wonder?\' And here poor Alice began to cry again.','approved','2024-07-30 06:44:48','2024-07-31 06:44:47'),(957,3,'Botble\\RealEstate\\Models\\Property',5,1,'Was kindly permitted to pocket the spoon: While the Owl had the door of which was full of the busy farm-yard--while the lowing of the miserable Mock Turtle. Alice was not here before,\' said Alice,) and round Alice, every now and then, \'we went to work shaking him and.','approved','2024-07-27 06:44:48','2024-07-31 06:44:47'),(967,6,'Botble\\RealEstate\\Models\\Property',61,5,'VERY tired of being all alone here!\' As she said to the law, And argued each case with my wife; And the Gryphon added \'Come, let\'s hear some of the words don\'t.','approved','2024-06-21 06:44:48','2024-07-31 06:44:47'),(969,3,'Botble\\RealEstate\\Models\\Property',42,1,'I goes like a mouse, That he.','approved','2024-05-13 06:44:48','2024-07-31 06:44:47'),(971,1,'Botble\\RealEstate\\Models\\Property',41,4,'Hatter trembled so, that Alice could see, when she.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(975,5,'Botble\\RealEstate\\Models\\Property',31,2,'Gryphon said, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'It proves nothing of the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want to be?\' it asked. \'Oh, I\'m not the right way of keeping up the little creature down, and.','approved','2024-06-01 06:44:48','2024-07-31 06:44:47'),(981,6,'Botble\\RealEstate\\Models\\Property',22,5,'Quick, now!\' And Alice was just in time to wash the things I used to it as she could get to the executioner: \'fetch her here.\' And the moral of that is--\"Be what you were me?\' \'Well, perhaps not,\' said the Hatter. \'I deny it!\' said the.','approved','2024-04-15 06:44:48','2024-07-31 06:44:47'),(985,9,'Botble\\RealEstate\\Models\\Property',7,4,'I almost wish I\'d gone to see it quite plainly through the wood. \'It\'s the Cheshire Cat, she was exactly one a-piece all round. (It was this last remark. \'Of course twinkling begins with an M?\' said Alice. \'Come, let\'s try Geography. London is the same solemn tone, only changing.','approved','2024-05-27 06:44:48','2024-07-31 06:44:47'),(989,12,'Botble\\RealEstate\\Models\\Property',58,5,'Down, down, down. There was a large rabbit-hole under the circumstances. There was a body to cut it off from: that he had to kneel down on her toes when they liked, so that her shoulders were nowhere to be lost: away went Alice after it, and found that it might injure the brain.','approved','2024-06-19 06:44:48','2024-07-31 06:44:47'),(991,10,'Botble\\RealEstate\\Models\\Property',4,3,'Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the Mock Turtle yawned.','approved','2024-07-13 06:44:48','2024-07-31 06:44:47'),(993,8,'Botble\\RealEstate\\Models\\Property',58,1,'Which way?\', holding her hand in hand, in couples: they were.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(997,6,'Botble\\RealEstate\\Models\\Property',17,5,'Caterpillar. Here was another puzzling question; and as it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the birds hurried off at once took up the chimney, has he?\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow to my boy, I beat him.','approved','2024-05-24 06:44:48','2024-07-31 06:44:47'),(999,7,'Botble\\RealEstate\\Models\\Property',59,2,'I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet I wish you wouldn\'t squeeze.','approved','2024-06-11 06:44:48','2024-07-31 06:44:47'),(1000,7,'Botble\\RealEstate\\Models\\Project',13,3,'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice sharply, for she thought.','approved','2024-05-09 06:44:48','2024-07-31 06:44:47'),(1003,9,'Botble\\RealEstate\\Models\\Property',42,5,'Hatter were having tea at it: a Dormouse was sitting on a little pattering of feet on the door between us. For instance, if you drink much from a.','approved','2024-04-11 06:44:48','2024-07-31 06:44:47'),(1013,6,'Botble\\RealEstate\\Models\\Property',56,5,'An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be on the ground as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re nervous or not.\'.','approved','2024-07-08 06:44:48','2024-07-31 06:44:47'),(1022,4,'Botble\\RealEstate\\Models\\Project',1,2,'I don\'t want to see the Hatter with a sigh. \'I only took the hookah out of the house down!\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Anything you like,\' said the March Hare, \'that \"I breathe when I was going.','approved','2024-04-14 06:44:48','2024-07-31 06:44:47'),(1023,4,'Botble\\RealEstate\\Models\\Property',29,4,'Adventures, till she heard the King triumphantly, pointing to the other was sitting on the English coast you find a thing,\' said the Queen, \'and take this young lady tells us a.','approved','2024-04-02 06:44:48','2024-07-31 06:44:47'),(1025,3,'Botble\\RealEstate\\Models\\Property',52,1,'VERY wide, but she stopped hastily, for the accident of the March Hare and the poor animal\'s feelings. \'I quite agree with you,\' said Alice, looking down with one of the.','approved','2024-07-12 06:44:48','2024-07-31 06:44:47'),(1027,4,'Botble\\RealEstate\\Models\\Property',57,1,'CAN all that stuff,\' the Mock Turtle is.\' \'It\'s the first really clever thing the King replied. Here the Queen to play croquet with the Queen,\' and she grew no larger: still it was YOUR.','approved','2024-07-30 06:44:48','2024-07-31 06:44:47'),(1029,2,'Botble\\RealEstate\\Models\\Property',57,1,'William and offer him the crown. William\'s conduct at first she would get.','approved','2024-05-03 06:44:48','2024-07-31 06:44:47'),(1031,11,'Botble\\RealEstate\\Models\\Property',10,5,'English!\' said the Cat, and vanished. Alice was more than Alice could hear the very tones of her going, though she knew the right way to hear his history. I must.','approved','2024-06-23 06:44:48','2024-07-31 06:44:47'),(1035,7,'Botble\\RealEstate\\Models\\Property',58,5,'Then followed the Knave of Hearts, carrying the King\'s crown on a three-legged stool in the wood, \'is to grow to my right size to do so. \'Shall we try another figure of the ground.','approved','2024-04-07 06:44:48','2024-07-31 06:44:47'),(1043,4,'Botble\\RealEstate\\Models\\Property',36,2,'Pigeon, but in a moment that it seemed quite natural); but when the race was over. However, when they saw Alice coming. \'There\'s PLENTY of room!\'.','approved','2024-06-04 06:44:48','2024-07-31 06:44:47'),(1045,12,'Botble\\RealEstate\\Models\\Property',13,4,'As she said to the whiting,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was, and waited. When the pie was all finished, the Owl, as a drawing of a well?\' The Dormouse shook its head down, and.','approved','2024-06-25 06:44:48','2024-07-31 06:44:47'),(1048,10,'Botble\\RealEstate\\Models\\Project',8,4,'Alice put down her anger as well.','approved','2024-04-23 06:44:48','2024-07-31 06:44:47'),(1055,12,'Botble\\RealEstate\\Models\\Property',54,5,'Caterpillar. \'I\'m afraid I am, sir,\' said Alice; \'it\'s laid for a minute or two, looking for it, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle.','approved','2024-07-15 06:44:48','2024-07-31 06:44:47'),(1061,3,'Botble\\RealEstate\\Models\\Property',45,3,'Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice.','approved','2024-04-18 06:44:48','2024-07-31 06:44:47'),(1062,5,'Botble\\RealEstate\\Models\\Project',12,1,'Alice began to tremble. Alice looked at her feet as the rest of the bottle was NOT marked \'poison,\' so Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon went on, \'\"--found it advisable to go after that into a butterfly, I should be free of them at.','approved','2024-05-01 06:44:48','2024-07-31 06:44:47'),(1063,9,'Botble\\RealEstate\\Models\\Property',14,3,'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go near the door and went back to finish his story. CHAPTER IV. The Rabbit Sends in a game of play with a pair of the leaves: \'I should like to be sure; but I don\'t care which happens!\' She ate a.','approved','2024-06-30 06:44:48','2024-07-31 06:44:47'),(1064,10,'Botble\\RealEstate\\Models\\Project',10,5,'Gryphon, and the pair of white kid gloves in one hand and a piece of bread-and-butter in the schoolroom, and though this was of very little use without my shoulders. Oh, how I wish I could let you out, you know.\' It was, no doubt.','approved','2024-06-18 06:44:48','2024-07-31 06:44:47'),(1067,3,'Botble\\RealEstate\\Models\\Property',29,2,'You know the way I want to stay in here any longer!\' She waited for a little shriek, and went by without noticing her. Then followed the Knave of.','approved','2024-05-12 06:44:48','2024-07-31 06:44:47'),(1069,7,'Botble\\RealEstate\\Models\\Property',56,4,'Alice, and her eyes filled with cupboards and book-shelves; here and there was a good deal until she had never before seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what?\'.','approved','2024-06-12 06:44:48','2024-07-31 06:44:47'),(1071,2,'Botble\\RealEstate\\Models\\Property',13,1,'I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what.','approved','2024-06-25 06:44:48','2024-07-31 06:44:47'),(1073,12,'Botble\\RealEstate\\Models\\Property',59,2,'And she began nursing her child again, singing a sort of idea that they could not possibly reach it: she could not be denied, so she went out, but it said in a soothing tone: \'don\'t be angry.','approved','2024-06-13 06:44:48','2024-07-31 06:44:47'),(1081,1,'Botble\\RealEstate\\Models\\Property',52,3,'I don\'t keep the same year for such dainties would not open any of them. However, on the shingle--will you come and join the dance. Will you, won\'t you join the dance? \"You can really have no notion how delightful.','approved','2024-04-15 06:44:48','2024-07-31 06:44:47'),(1083,3,'Botble\\RealEstate\\Models\\Property',39,5,'Alice asked in a very short time the Queen in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice.','approved','2024-07-08 06:44:48','2024-07-31 06:44:47'),(1087,6,'Botble\\RealEstate\\Models\\Property',23,5,'Turtle in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, and Alice could see.','approved','2024-04-14 06:44:48','2024-07-31 06:44:47'),(1091,6,'Botble\\RealEstate\\Models\\Property',14,4,'Bill,\' thought Alice,) \'Well, I can\'t tell you his history,\' As they walked off together, Alice heard it muttering to himself as he spoke, and added with a shiver. \'I beg pardon, your Majesty,\' said the March Hare, who had been looking at it gloomily: then he dipped it into his.','approved','2024-05-21 06:44:48','2024-07-31 06:44:47'),(1093,11,'Botble\\RealEstate\\Models\\Property',31,5,'Alice, whose thoughts were still running.','approved','2024-07-08 06:44:48','2024-07-31 06:44:47'),(1095,10,'Botble\\RealEstate\\Models\\Property',35,1,'Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\'.','approved','2024-07-30 06:44:48','2024-07-31 06:44:47'),(1097,1,'Botble\\RealEstate\\Models\\Property',23,3,'I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice.','approved','2024-05-15 06:44:48','2024-07-31 06:44:47'),(1099,6,'Botble\\RealEstate\\Models\\Property',58,1,'Queen was to twist it up into a tidy little room with a deep sigh, \'I was a table, with a sigh: \'he taught Laughing.','approved','2024-07-18 06:44:48','2024-07-31 06:44:47'),(1103,10,'Botble\\RealEstate\\Models\\Property',42,3,'Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one finger, as he spoke. \'UNimportant, of course, to begin with,\' said the King triumphantly, pointing to the seaside once in the sea. But they HAVE.','approved','2024-04-14 06:44:48','2024-07-31 06:44:47'),(1107,11,'Botble\\RealEstate\\Models\\Property',27,5,'Alice had been anxiously looking across the field.','approved','2024-07-15 06:44:48','2024-07-31 06:44:47'),(1109,8,'Botble\\RealEstate\\Models\\Property',22,5,'Duchess, \'chop off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a moment\'s pause. The only things in the act of crawling.','approved','2024-04-26 06:44:48','2024-07-31 06:44:47'),(1111,1,'Botble\\RealEstate\\Models\\Property',35,5,'I was a dead silence instantly, and Alice rather unwillingly took the place of the players to be.','approved','2024-07-08 06:44:48','2024-07-31 06:44:47'),(1115,5,'Botble\\RealEstate\\Models\\Property',8,1,'Gryphon. \'Well, I should be like then?\' And she began very cautiously: \'But I don\'t take this young lady tells us a story!\' said the March Hare meekly replied. \'Yes, but some crumbs must have got in your knocking,\' the Footman continued in the long hall, and wander.','approved','2024-05-22 06:44:48','2024-07-31 06:44:47'),(1117,1,'Botble\\RealEstate\\Models\\Property',33,4,'Alice started to her to carry it further. So she tucked her arm affectionately into Alice\'s, and they lived at the Queen, pointing to the game. CHAPTER IX. The Mock Turtle sighed deeply, and began, in a large mustard-mine near here. And.','approved','2024-05-01 06:44:48','2024-07-31 06:44:47'),(1118,4,'Botble\\RealEstate\\Models\\Project',12,3,'The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white.','approved','2024-05-21 06:44:48','2024-07-31 06:44:47'),(1125,4,'Botble\\RealEstate\\Models\\Property',22,1,'Her first idea was that she was ever to get very tired of swimming about here, O Mouse!\' (Alice thought this must be on the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose!.','approved','2024-06-10 06:44:48','2024-07-31 06:44:47'),(1132,6,'Botble\\RealEstate\\Models\\Project',15,2,'The only things in the air. She did not dare to laugh; and, as there was no use speaking to a snail. \"There\'s a porpoise close behind it was over at last, and managed to.','approved','2024-06-05 06:44:48','2024-07-31 06:44:47'),(1135,6,'Botble\\RealEstate\\Models\\Property',37,1,'Alice,) \'Well, I hardly know--No.','approved','2024-06-26 06:44:48','2024-07-31 06:44:47'),(1138,7,'Botble\\RealEstate\\Models\\Project',4,2,'Duchess sneezed occasionally; and as it left no mark on the breeze that followed them, the melancholy words:-- \'Soo--oop of the deepest contempt.','approved','2024-05-27 06:44:48','2024-07-31 06:44:47'),(1151,4,'Botble\\RealEstate\\Models\\Property',19,5,'Hardly knowing what she was now about a foot high: then she noticed that one of the table. \'Have some wine,\' the March Hare.','approved','2024-04-11 06:44:48','2024-07-31 06:44:47'),(1157,9,'Botble\\RealEstate\\Models\\Property',4,4,'I\'ll never go THERE again!\' said Alice loudly. \'The idea of the shepherd boy--and the sneeze of the guinea-pigs cheered, and was coming to, but it was quite pleased to find that she ought to.','approved','2024-05-27 06:44:48','2024-07-31 06:44:47'),(1167,9,'Botble\\RealEstate\\Models\\Property',60,1,'Will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you, will you, won\'t you, will you, won\'t.','approved','2024-07-24 06:44:48','2024-07-31 06:44:47'),(1169,9,'Botble\\RealEstate\\Models\\Property',9,4,'WAS a curious plan!\' exclaimed Alice. \'That\'s the reason they\'re called lessons,\' the Gryphon remarked: \'because they lessen from day to day.\' This was quite out of sight, he said to Alice, she went on so long that they were gardeners, or.','approved','2024-06-17 06:44:48','2024-07-31 06:44:47'),(1173,6,'Botble\\RealEstate\\Models\\Property',57,1,'Time, and round goes the clock in a low voice, \'Why the fact is, you see, Alice had got so close to her: its face was quite out of it, and found quite a crowd of little Alice herself, and once she remembered how small she was playing.','approved','2024-06-22 06:44:48','2024-07-31 06:44:47'),(1177,3,'Botble\\RealEstate\\Models\\Property',10,5,'VERY nearly at the bottom of a tree in the last few minutes to see the Hatter and the procession moved on, three of the jurymen. \'No.','approved','2024-06-26 06:44:48','2024-07-31 06:44:47'),(1179,11,'Botble\\RealEstate\\Models\\Property',21,5,'Alice, that she did it so VERY remarkable in that; nor did Alice think it was,\' the March Hare. \'I didn\'t know how to get in?\' asked Alice again, for this time it vanished quite slowly, beginning with the Dormouse. \'Write that down,\' the King had said that day. \'That PROVES his.','approved','2024-07-14 06:44:48','2024-07-31 06:44:47'),(1181,12,'Botble\\RealEstate\\Models\\Property',17,4,'COULD grin.\' \'They all can,\' said the King. Here one of the jurymen. \'No, they\'re not,\' said the Hatter, \'I cut some more of it in time,\' said the Queen, tossing her head through the wood. \'It\'s the.','approved','2024-06-05 06:44:48','2024-07-31 06:44:47'),(1183,10,'Botble\\RealEstate\\Models\\Property',48,4,'Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then.','approved','2024-04-13 06:44:48','2024-07-31 06:44:47'),(1187,3,'Botble\\RealEstate\\Models\\Property',44,2,'I goes like a Jack-in-the-box, and up the other, trying every door, she walked.','approved','2024-07-15 06:44:48','2024-07-31 06:44:47'),(1191,5,'Botble\\RealEstate\\Models\\Property',24,2,'I think you\'d take a fancy to cats if you drink much from a bottle marked \'poison,\' so Alice went on in a minute or two, and the poor animal\'s feelings. \'I quite forgot you didn\'t sign it,\' said the Gryphon: and it said in a hoarse, feeble voice: \'I.','approved','2024-05-08 06:44:48','2024-07-31 06:44:47'),(1193,1,'Botble\\RealEstate\\Models\\Property',55,2,'WHAT?\' thought Alice; but she knew she had somehow fallen into it: there was nothing on it in her pocket, and was going on, as she could. \'The Dormouse is asleep again,\' said the.','approved','2024-04-22 06:44:48','2024-07-31 06:44:47'),(1195,6,'Botble\\RealEstate\\Models\\Property',13,2,'I don\'t like them raw.\' \'Well, be off, then!\' said the.','approved','2024-05-02 06:44:48','2024-07-31 06:44:47'),(1197,5,'Botble\\RealEstate\\Models\\Property',50,3,'Dormouse; \'--well in.\' This answer so confused poor Alice, \'it would be offended again. \'Mine is a very little use without my shoulders. Oh, how I wish you were INSIDE, you might catch a bat, and that\'s very like having a game of croquet.','approved','2024-06-13 06:44:48','2024-07-31 06:44:47'),(1201,10,'Botble\\RealEstate\\Models\\Property',51,3,'King, looking round the rosetree; for, you see, because some of the jurors had a large mustard-mine near here. And the muscular strength, which it gave to my boy, I beat him.','approved','2024-04-16 06:44:48','2024-07-31 06:44:47'),(1203,3,'Botble\\RealEstate\\Models\\Property',48,1,'So she tucked it away under her arm, that it made no mark; but he now hastily began again, using the ink, that was lying under the door; so either way I\'ll get into her face. \'Very,\' said Alice: \'three inches is such a thing as a.','approved','2024-06-09 06:44:48','2024-07-31 06:44:47'),(1205,4,'Botble\\RealEstate\\Models\\Property',14,4,'THEN--she found herself safe in a fight with another hedgehog, which seemed to be ashamed of yourself for asking such a long hookah, and taking not.','approved','2024-06-11 06:44:48','2024-07-31 06:44:47'),(1209,10,'Botble\\RealEstate\\Models\\Property',22,5,'Footman, \'and that for the immediate adoption of.','approved','2024-07-19 06:44:48','2024-07-31 06:44:47'),(1211,8,'Botble\\RealEstate\\Models\\Property',20,5,'And she\'s such a noise inside, no one else seemed inclined to say \'creatures,\' you see.','approved','2024-05-20 06:44:48','2024-07-31 06:44:47'),(1217,5,'Botble\\RealEstate\\Models\\Property',28,5,'The Hatter was the White Rabbit cried out, \'Silence in the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said this, she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King said, for about.','approved','2024-07-13 06:44:48','2024-07-31 06:44:47');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"careers.index\":true,\"careers.create\":true,\"careers.edit\":true,\"careers.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-07-31 06:44:35','2024-07-31 06:44:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','ab6bfd1d9216bec98f0868222022fdce',NULL,'2024-07-31 06:44:48'),(2,'api_enabled','0',NULL,'2024-07-31 06:44:48'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-07-31 06:44:48'),(4,'analytics_dashboard_widgets','0','2024-07-31 06:44:32','2024-07-31 06:44:32'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-07-31 06:44:33','2024-07-31 06:44:33'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-07-31 06:44:33','2024-07-31 06:44:33'),(7,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2024-07-31 06:44:48'),(8,'theme','homzen',NULL,'2024-07-31 06:44:48'),(9,'show_admin_bar','1',NULL,'2024-07-31 06:44:48'),(10,'language_hide_default','1',NULL,'2024-07-31 06:44:48'),(11,'language_switcher_display','dropdown',NULL,'2024-07-31 06:44:48'),(12,'language_display','all',NULL,'2024-07-31 06:44:48'),(13,'language_hide_languages','[]',NULL,'2024-07-31 06:44:48'),(14,'permalink-botble-blog-models-post','news',NULL,'2024-07-31 06:44:48'),(15,'permalink-botble-blog-models-category','news',NULL,'2024-07-31 06:44:48'),(16,'payment_cod_status','1',NULL,'2024-07-31 06:44:48'),(17,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-07-31 06:44:48'),(18,'payment_bank_transfer_status','1',NULL,'2024-07-31 06:44:48'),(19,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-07-31 06:44:48'),(20,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-07-31 06:44:48'),(21,'theme-homzen-site_title','Homzen',NULL,'2024-07-31 06:44:48'),(22,'theme-homzen-seo_description','Find your favorite homes at Homzen',NULL,'2024-07-31 06:44:48'),(23,'theme-homzen-copyright','©%Y Homzen is Proudly Powered by Botble Team.',NULL,'2024-07-31 06:44:48'),(24,'theme-homzen-favicon','general/favicon.png',NULL,'2024-07-31 06:44:48'),(25,'theme-homzen-logo','general/logo.png',NULL,'2024-07-31 06:44:48'),(26,'theme-homzen-logo_light','general/logo-light.png',NULL,'2024-07-31 06:44:48'),(27,'theme-homzen-preloader_enabled','yes',NULL,'2024-07-31 06:44:48'),(28,'theme-homzen-preloader_version','v2',NULL,'2024-07-31 06:44:48'),(29,'theme-homzen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2024-07-31 06:44:48'),(30,'theme-homzen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-07-31 06:44:48'),(31,'theme-homzen-primary_color','#db1d23',NULL,'2024-07-31 06:44:48'),(32,'theme-homzen-hover_color','#cd380f',NULL,'2024-07-31 06:44:48'),(33,'theme-homzen-footer_background_color','#161e2d',NULL,'2024-07-31 06:44:48'),(34,'theme-homzen-footer_background_image','general/banner-footer.png',NULL,'2024-07-31 06:44:48'),(35,'theme-homzen-use_modal_for_authentication','1',NULL,'2024-07-31 06:44:48'),(36,'theme-homzen-homepage_id','1',NULL,'2024-07-31 06:44:48'),(37,'theme-homzen-blog_page_id','6',NULL,'2024-07-31 06:44:48'),(38,'theme-homzen-hotline','0123 456 789',NULL,'2024-07-31 06:44:48'),(39,'theme-homzen-email','contact@botble.com',NULL,'2024-07-31 06:44:48'),(40,'theme-homzen-breadcrumb_background_color','#f7f7f7',NULL,'2024-07-31 06:44:48'),(41,'theme-homzen-breadcrumb_text_color','#161e2d',NULL,'2024-07-31 06:44:48'),(42,'theme-homzen-lazy_load_images','1',NULL,'2024-07-31 06:44:48'),(43,'theme-homzen-lazy_load_placeholder_image','general/placeholder.png',NULL,'2024-07-31 06:44:48'),(44,'theme-homzen-newsletter_popup_enable','1',NULL,'2024-07-31 06:44:48'),(45,'theme-homzen-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2024-07-31 06:44:48'),(46,'theme-homzen-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-07-31 06:44:48'),(47,'theme-homzen-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-07-31 06:44:48'),(48,'theme-homzen-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-07-31 06:44:48'),(49,'theme-homzen-properties_list_page_id','14',NULL,'2024-07-31 06:44:48'),(50,'theme-homzen-projects_list_page_id','15',NULL,'2024-07-31 06:44:48'),(51,'announcement_max_width','2481',NULL,NULL),(52,'announcement_text_color','#161e2d',NULL,NULL),(53,'announcement_background_color','transparent',NULL,NULL),(54,'announcement_text_alignment','start',NULL,NULL),(55,'announcement_dismissible','0',NULL,NULL),(56,'announcement_placement','theme',NULL,NULL),(57,'announcement_autoplay','1',NULL,NULL),(58,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(2,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(3,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(4,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(5,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(6,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2024-07-31 06:44:35','2024-07-31 06:44:35'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(8,'sunshine-wonder-villas',2,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(9,'diamond-island',3,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(10,'the-nassim',4,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(11,'vinhomes-grand-park',5,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(12,'the-metropole-thu-thiem',6,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(13,'villa-on-grand-avenue',7,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(14,'traditional-food-restaurant',8,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(15,'villa-on-hollywood-boulevard',9,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(16,'office-space-at-northwest-107th',10,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(17,'home-in-merrick-way',11,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(18,'adarsh-greens',12,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(19,'rustomjee-evershine-global-city',13,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(20,'godrej-exquisite',14,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(21,'godrej-prime',15,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(22,'ps-panache',16,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(23,'upturn-atmiya-centria',17,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(24,'brigade-oasis',18,'Botble\\RealEstate\\Models\\Project','projects','2024-07-31 06:44:40','2024-07-31 06:44:40'),(25,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(26,'lavida-plus-office-tel-1-bedroom',2,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(27,'vinhomes-grand-park-studio-1-bedroom',3,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(28,'the-sun-avenue-office-tel-1-bedroom',4,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(29,'property-for-sale-johannesburg-south-africa',5,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(30,'stunning-french-inspired-manor',6,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(31,'villa-for-sale-at-bermuda-dunes',7,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(32,'walnut-park-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(33,'5-beds-luxury-house',9,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(34,'family-victorian-view-home',10,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(35,'osaka-heights-apartment',11,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(36,'private-estate-magnificent-views',12,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(37,'thompson-road-house-for-rent',13,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(38,'brand-new-1-bedroom-apartment-in-first-class-location',14,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(39,'elegant-family-home-presents-premium-modern-living',15,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(40,'luxury-apartments-in-singapore-for-sale',16,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(41,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',17,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(42,'2-floor-house-in-compound-pejaten-barat-kemang',18,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:40','2024-07-31 06:44:40'),(43,'apartment-muiderstraatweg-in-diemen',19,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(44,'nice-apartment-for-rent-in-berlin',20,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(45,'pumpkin-key-private-island',21,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(46,'maplewood-estates',22,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(47,'pine-ridge-manor',23,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(48,'oak-hill-residences',24,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(49,'sunnybrook-villas',25,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(50,'riverstone-condominiums',26,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(51,'cedar-park-apartments',27,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(52,'lakeside-retreat',28,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(53,'willow-creek-homes',29,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(54,'grandview-heights',30,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(55,'forest-glen-cottages',31,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(56,'harborview-towers',32,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(57,'meadowlands-estates',33,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(58,'highland-meadows',34,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(59,'brookfield-gardens',35,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(60,'silverwood-villas',36,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(61,'evergreen-terrace',37,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(62,'golden-gate-residences',38,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:41','2024-07-31 06:44:41'),(63,'spring-blossom-park',39,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(64,'horizon-pointe',40,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(65,'whispering-pines-lodge',41,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(66,'sunset-ridge',42,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(67,'timberline-estates',43,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(68,'crystal-lake-condos',44,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(69,'briarwood-apartments',45,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(70,'summit-view',46,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(71,'elmwood-park',47,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(72,'stonegate-homes',48,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(73,'rosewood-villas',49,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(74,'prairie-meadows',50,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(75,'hawthorne-heights',51,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(76,'sierra-vista',52,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(77,'autumn-leaves',53,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(78,'blue-sky-residences',54,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(79,'pebble-creek',55,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(80,'magnolia-manor',56,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:42','2024-07-31 06:44:42'),(81,'cherry-blossom-estates',57,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:43','2024-07-31 06:44:43'),(82,'windsor-park',58,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:43','2024-07-31 06:44:43'),(83,'seaside-villas',59,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:43','2024-07-31 06:44:43'),(84,'mountain-view-retreat',60,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:43','2024-07-31 06:44:43'),(85,'amberwood-apartments',61,'Botble\\RealEstate\\Models\\Property','properties','2024-07-31 06:44:43','2024-07-31 06:44:43'),(86,'buying-a-home',1,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(87,'selling-a-home',2,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(88,'market-trends',3,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(89,'home-improvement',4,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(90,'real-estate-investing',5,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(91,'neighborhood-guides',6,'Botble\\Blog\\Models\\Category','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(92,'tips',1,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(93,'investing',2,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(94,'market-analysis',3,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(95,'diy',4,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(96,'luxury-homes',5,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(97,'first-time-buyers',6,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(98,'property-management',7,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(99,'renovation',8,'Botble\\Blog\\Models\\Tag','tag','2024-07-31 06:44:44','2024-07-31 06:44:44'),(100,'top-10-tips-for-first-time-home-buyers',1,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(101,'how-to-stage-your-home-for-a-quick-sale',2,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(102,'understanding-the-current-real-estate-market-trends',3,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(103,'diy-home-improvement-projects-that-add-value',4,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(104,'a-beginners-guide-to-real-estate-investing',5,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(105,'how-to-choose-the-right-neighborhood-for-your-family',6,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(106,'luxury-homes-what-to-look-for',7,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(107,'property-management-best-practices-for-landlords',8,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(108,'renovation-ideas-to-increase-your-homes-value',9,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(109,'the-ultimate-guide-to-buying-a-vacation-home',10,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(110,'how-to-successfully-sell-your-home-in-a-buyers-market',11,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(111,'home-inspection-what-to-expect-and-how-to-prepare',12,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(112,'eco-friendly-home-improvements-for-sustainable-living',13,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(113,'how-to-navigate-the-mortgage-process',14,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(114,'real-estate-market-analysis-what-you-need-to-know',15,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(115,'tips-for-renting-out-your-property',16,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(116,'understanding-property-taxes-and-how-to-lower-them',17,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(117,'the-benefits-of-smart-home-technology',18,'Botble\\Blog\\Models\\Post','news','2024-07-31 06:44:44','2024-07-31 06:44:44'),(118,'homepage-1',1,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(119,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(120,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(121,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(122,'homepage-5',5,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(123,'blog',6,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(124,'contact-us',7,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(125,'our-services',8,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(126,'faqs',9,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(127,'about-us',10,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(128,'pricing-plans',11,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(129,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(130,'coming-soon',13,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(131,'properties',14,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(132,'projects',15,'Botble\\Page\\Models\\Page','','2024-07-31 06:44:47','2024-07-31 06:44:47'),(133,'senior-full-stack-engineer-creator-success-full-time',1,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(134,'data-science-specialist-analytics-division',2,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(135,'product-marketing-manager-growth-team',3,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(136,'uxui-designer-user-experience-team',4,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(137,'operations-manager-supply-chain-division',5,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(138,'financial-analyst-investment-group',6,'ArchiElite\\Career\\Models\\Career','careers','2024-07-31 06:44:48','2024-07-31 06:44:48'),(139,'lavern',1,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(140,'colt',2,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(141,'ada',3,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(142,'rafaela',4,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(143,'elijah',5,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(144,'karl',6,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(145,'kamille',7,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(146,'marisa',8,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(147,'leonardo',9,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(148,'ferne',10,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(149,'kasandra',11,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48'),(150,'corbin',12,'Botble\\RealEstate\\Models\\Account','agents','2024-07-31 06:44:48','2024-07-31 06:44:48');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,'locations/1.jpg',0,'published',NULL,NULL),(2,'England','england','EN',2,0,'locations/5.jpg',0,'published',NULL,NULL),(3,'New York','new-york','NY',3,0,'locations/4.jpg',0,'published',NULL,NULL),(4,'Holland','holland','HL',4,0,'locations/5.jpg',0,'published',NULL,NULL),(5,'Denmark','denmark','DN',5,0,'locations/5.jpg',0,'published',NULL,NULL),(6,'Bavaria','bavaria','BY',6,0,'locations/3.jpg',0,'published',NULL,NULL),(7,'Tokyo','tokyo','TK',7,0,'locations/4.jpg',0,'published',NULL,NULL),(8,'Ontario','ontario','ON',8,0,'locations/3.jpg',0,'published',NULL,NULL),(9,'New South Wales','new-south-wales','NSW',9,0,'locations/2.jpg',0,'published',NULL,NULL),(10,'Lombardy','lombardy','LO',10,0,'locations/2.jpg',0,'published',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tips',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(2,'Investing',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(3,'Market Analysis',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(4,'DIY',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(5,'Luxury Homes',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(6,'First-time Buyers',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(7,'Property Management',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44'),(8,'Renovation',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-31 06:44:44','2024-07-31 06:44:44');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Jennifer Lee','From the initial consultation to closing day, the real estate team went above and beyond to ensure I found the perfect home. Their dedication and professionalism made the entire process seamless. Thank you!','avatars/10.png','Happy Home Seeker','published','2024-07-31 06:44:43','2024-07-31 06:44:43'),(2,'Robert Evans','I am impressed by the level of expertise and commitment demonstrated by this real estate team. Their insights into the market helped me make informed investment decisions, and I couldn\'t be happier with the results.','avatars/9.png','Property Investor','published','2024-07-31 06:44:43','2024-07-31 06:44:43'),(3,'Jessica White','Selling my home with the help of this real estate team was a breeze. They provided valuable advice, staged my property beautifully, and negotiated a great deal. I highly recommend their services to anyone looking to sell their home!','avatars/9.png','Delighted Home Seller','published','2024-07-31 06:44:43','2024-07-31 06:44:43'),(4,'Daniel Miller','Thanks to the expertise and guidance of this real estate team, I am now the proud owner of my dream home. They listened to my preferences, answered all my questions, and made the entire home buying process a positive experience.','avatars/4.jpg','Happy New Homeowner','published','2024-07-31 06:44:43','2024-07-31 06:44:43');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'renner.kieran@murray.com',NULL,'$2y$12$ZXFeepBWkjqwy2EgYdNr5Oui/1yAEmSoRyNXrnMGh7T0qbzW4FbZi',NULL,'2024-07-31 06:44:35','2024-07-31 06:44:35','Derek','Gerhold','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteLogoWidget','top_footer_sidebar','homzen',1,'[]','2024-07-31 06:44:35','2024-07-31 06:44:35'),(2,'SocialLinksWidget','top_footer_sidebar','homzen',2,'{\"title\":\"Follow Us:\"}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(3,'SiteInformationWidget','inner_footer_sidebar','homzen',1,'{\"about\":\"Specializes in providing high-class tours for those in need. Contact Us\",\"items\":[[{\"key\":\"icon\",\"value\":\"ti ti-map-pin\"},{\"key\":\"text\",\"value\":\"101 E 129th St, East Chicago, IN 46312, US\"}],[{\"key\":\"icon\",\"value\":\"ti ti-phone-call\"},{\"key\":\"text\",\"value\":\"1-333-345-6868\"}],[{\"key\":\"icon\",\"value\":\"ti ti-mail\"},{\"key\":\"text\",\"value\":\"contact@botble.com\"}]]}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(4,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Pricing Plans\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Services\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact Us\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(5,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Company\",\"items\":[[{\"key\":\"label\",\"value\":\"Property For Sale\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Property For Rent\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Property For Buy\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Agents\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(6,'NewsletterWidget','inner_footer_sidebar','homzen',4,'{\"title\":\"Newsletter\",\"subtitle\":\"Your Weekly\\/Monthly Dose of Knowledge and Inspiration\"}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(7,'SiteCopyrightWidget','bottom_footer_sidebar','homzen',1,'[]','2024-07-31 06:44:35','2024-07-31 06:44:35'),(8,'Botble\\Widget\\Widgets\\CoreSimpleMenu','bottom_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"items\":[[{\"key\":\"label\",\"value\":\"Terms Of Services\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Cookie Policy\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(9,'BlogSearchWidget','blog_sidebar','homzen',1,'{\"name\":\"Search\"}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(10,'BlogPostsWidget','blog_sidebar','homzen',2,'{\"name\":\"Recent Posts\",\"limit\":3}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(11,'BlogCategoriesWidget','blog_sidebar','homzen',3,'{\"name\":\"By Categories\",\"number_display\":8}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(12,'BlogTagsWidget','blog_sidebar','homzen',4,'{\"name\":\"Popular Tag\",\"number_display\":9}','2024-07-31 06:44:35','2024-07-31 06:44:35'),(13,'RelatedPostsWidget','bottom_post_detail_sidebar','homzen',1,'{\"title\":\"News insight\",\"subtitle\":\"Related Posts\",\"limit\":3}','2024-07-31 06:44:35','2024-07-31 06:44:35');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-31 20:44:48
