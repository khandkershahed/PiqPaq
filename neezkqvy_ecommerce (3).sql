-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2024 at 01:04 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neezkqvy_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `badge` varchar(11) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL COMMENT 'Image Dimension: 697 x 465',
  `button_name` varchar(11) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `subject_type` varchar(255) NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `description`, `subject_type`, `subject_id`, `user_type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nobis nisi sit esse aut recusandae.', 'App\\Models\\Non', 410496698, 'App\\Models\\Quia', 5607135, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(2, 'Sequi cum laborum sit quo nesciunt rerum impedit.', 'App\\Models\\Aliquam', 4551, 'App\\Models\\Explicabo', 640, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(3, 'Perferendis earum labore quia et voluptate cupiditate.', 'App\\Models\\Consequatur', 3387334, 'App\\Models\\Facere', 600241456, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(4, 'Veniam officiis ipsum praesentium rem.', 'App\\Models\\Sed', 578861118, 'App\\Models\\Facere', 874, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(5, 'Id earum pariatur ut sapiente voluptates ut illum.', 'App\\Models\\A', 8986, 'App\\Models\\Quidem', 33832659, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(6, 'Molestiae minus minima possimus facere velit velit.', 'App\\Models\\Et', 9923468, 'App\\Models\\Asperiores', 1073788, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(7, 'Labore rerum iusto est reprehenderit qui ea quia.', 'App\\Models\\Qui', 7826691, 'App\\Models\\Nisi', 4723, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(8, 'Sed temporibus nihil fugiat molestiae voluptatum sed recusandae non.', 'App\\Models\\Maiores', 57158, 'App\\Models\\Necessitatibus', 360914, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(9, 'Iusto possimus et aperiam non nemo tenetur nisi temporibus.', 'App\\Models\\Et', 160, 'App\\Models\\Culpa', 2627609, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(10, 'Vel aspernatur dolorum voluptatem maiores.', 'App\\Models\\Vel', 5, 'App\\Models\\Odit', 29535, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(11, 'User updated', 'App\\Models\\User', 3, 'App\\Models\\Admin', 2, '2024-08-30 17:28:57', '2024-08-30 17:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `biometric_id` varchar(255) DEFAULT NULL,
  `deactivation_start` date DEFAULT NULL,
  `deactivation_period` int(11) DEFAULT NULL,
  `deactivation_end` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `designation`, `phone`, `photo`, `country`, `city`, `zipcode`, `address`, `youtube`, `facebook`, `twitter`, `linkedin`, `website`, `biometric_id`, `deactivation_start`, `deactivation_period`, `deactivation_end`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '2024-08-27 11:32:41', '$2y$10$.9j9hYmGIpHqa6FZtmm68eYvJMPlQTGYf0vsOnHJWv85oTRFnIGKu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'gEHXXo3250', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(2, 'Shahed', 'khandkershahed23@gmail.com', NULL, '2024-08-27 11:32:41', '$2y$10$8IK.HnhfNqeBA3HpnfoEre4dZcPK5QF92EVU/pI8nda2VYBu6MPom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'krDKc1to6y', '2024-08-27 11:32:41', '2024-08-27 11:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `image`, `meta_title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product Reviews', 'product-reviews', NULL, NULL, NULL, 'active', '2024-08-28 12:22:21', '2024-08-28 12:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'multi_id' CHECK (json_valid(`category_id`)),
  `tag_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'multi_id' CHECK (json_valid(`tag_id`)),
  `featured` enum('0','1') DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `header` text DEFAULT NULL,
  `short_description` longtext DEFAULT NULL COMMENT 'text-editor',
  `long_description` longtext DEFAULT NULL COMMENT 'text-editor',
  `author` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `logo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `additional_url` varchar(255) DEFAULT NULL,
  `footer` text DEFAULT NULL COMMENT 'text-editor',
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `tag_id`, `featured`, `type`, `badge`, `title`, `slug`, `header`, `short_description`, `long_description`, `author`, `address`, `tags`, `logo`, `image`, `banner_image`, `additional_url`, `footer`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"1\"]', 'null', '1', 'blog', NULL, 'Why Choose 2 Compartment Meal Prep Containers (830ml) – BPA-Free for Your Restaurant', 'why-choose-2-compartment-meal-prep-containers-830ml-bpa-free-for-your-restaurant', NULL, '<p>In today’s fast-paced world, convenience and health are paramount for both restaurants and their customers. One essential item that can significantly enhance your food service is the <strong>2 Compartment Meal Prep Container (830ml) – BPA-Free</strong>. Here’s why these containers are a fantastic choice for your restaurant\'s meal prep and takeout needs.</p>', '<h4><strong>1. Perfect Portion Control</strong></h4><p>With a capacity of 830ml and two distinct compartments, these meal prep containers make portion control a breeze. Whether you’re serving a hearty lunch or a balanced dinner, the compartments allow for easy separation of different food items. This ensures that your meals look appealing and are well-organized, which can enhance the dining experience for your customers.</p><h4><strong>2. Eco-Friendly and Safe</strong></h4><p>These containers are made from BPA-free materials, ensuring that no harmful chemicals leach into your food. This is crucial for maintaining the quality and safety of your meals. Plus, by choosing BPA-free containers, you’re showing your commitment to the health of your customers and the environment. It’s a win-win!</p><h4><strong>3. Durable and Leak-Resistant</strong></h4><p>Durability is key when it comes to meal prep containers. Our 2 Compartment Meal Prep Containers are designed to withstand various conditions, from refrigeration to microwaving. The secure, leak-resistant design prevents spills and maintains the integrity of your food, making them ideal for both dine-in and takeout orders.</p><h4><strong>4. Versatile and Convenient</strong></h4><p>These containers are perfect for a range of uses, from meal prep for busy individuals to takeout orders for your restaurant. Their compact size and efficient design make them easy to stack and store, saving valuable space in your kitchen or storage area.</p><h4><strong>5. Easy to Clean and Reusable</strong></h4><p>Convenience doesn’t end with use; these containers are also easy to clean. They can be reused multiple times, making them a cost-effective choice for your restaurant. Simply wash and reuse, reducing the need for single-use plastics and supporting your sustainability goals.</p>', 'Neez Packages', NULL, NULL, 'blog_posts/logo/BIIRIRWGiy1724833646.jpg', 'blog_posts/image/89p5Hc2diR1724833632.jpg', 'blog_posts/banner_image/bdIia5H1Gy1724833632.jpg', NULL, '<h3><strong>In Conclusion</strong></h3><p>The <strong>2 Compartment Meal Prep Container (830ml) – BPA-Free</strong> is an excellent choice for restaurants looking to enhance their meal prep and takeout services. Its combination of convenience, safety, and durability makes it a standout option for keeping meals fresh, organized, and appealing. Invest in these containers to provide your customers with high-quality, well-presented meals that align with modern health and environmental standards.</p>', 'publish', '2024-08-28 12:26:26', '2024-08-28 12:27:26'),
(2, '[\"1\"]', 'null', '1', 'blog', NULL, 'Top 10 B2B Trade-Only Businesses of UK to Watch in 2024', 'top-10-b2b-trade-only-businesses-of-uk-to-watch-in-2024', NULL, '<p>In the world of business-to-business (B2B) commerce, certain trade-only businesses stand out for their innovative solutions, quality products, and exceptional service. If you\'re a company seeking reliable partners for your business needs, exploring top B2B trade-only businesses can offer valuable insights. Here are the top 10 B2B trade-only businesses to consider in 2024, including Neez Packages, a leader in restaurant packaging solutions.</p>', '<h4><strong>1. Neez Packages</strong></h4><p><strong>Neez Packages</strong> specializes in high-quality restaurant packaging solutions, including meal prep boxes, takeaway containers, and more. Catering exclusively to businesses, Neez Packages offers a range of durable, eco-friendly packaging options designed to meet the diverse needs of the food service industry. Their commitment to quality and customization makes them a top choice for restaurants looking to enhance their packaging.</p><h4><strong>2. Office Depot Business Solutions</strong></h4><p>Office Depot Business Solutions provides a comprehensive range of office supplies, equipment, and services tailored for businesses. From office furniture to technology solutions, their B2B focus ensures companies have access to the tools they need to operate efficiently.</p><h4><strong>3. Grainger Industrial Supply</strong></h4><p>Grainger Industrial Supply is a go-to source for industrial products, safety equipment, and maintenance supplies. Their extensive catalog and dedicated B2B services make them an essential partner for businesses in various industries, including manufacturing and construction.</p><h4><strong>4. Uline</strong></h4><p>Uline is a leading distributor of shipping, industrial, and packaging materials. Known for their vast inventory and reliable service, Uline serves a wide range of B2B customers, providing essential products for packaging, shipping, and workplace needs.</p><h4><strong>5. Fastenal</strong></h4><p>Fastenal offers industrial and construction supplies with a strong focus on inventory management and supply chain solutions. Their B2B services include customized inventory programs and specialized products for various sectors, making them a valuable partner for businesses.</p><h4><strong>6. MSC Industrial Direct</strong></h4><p>MSC Industrial Direct provides a broad range of metalworking and maintenance, repair, and operations (MRO) products. Their B2B approach ensures businesses have access to high-quality tools, equipment, and supplies essential for maintaining operations and enhancing productivity.</p><h4><strong>7. Staples Business Advantage</strong></h4><p>Staples Business Advantage caters to the needs of larger organizations, offering office supplies, technology solutions, and business services. Their B2B offerings are designed to streamline procurement processes and support efficient business operations.</p><h4><strong>8. Cintas</strong></h4><p>Cintas is known for its comprehensive range of business services, including uniform rentals, facility services, and safety products. Their B2B solutions are designed to enhance workplace safety, cleanliness, and professionalism.</p><h4><strong>9. Vistaprint</strong></h4><p>Vistaprint specializes in custom printing and marketing materials for businesses. From business cards to promotional products, Vistaprint’s B2B services help companies create impactful marketing collateral to support their branding and outreach efforts.</p><h4><strong>10. Amazon Business</strong></h4><p>Amazon Business provides a vast selection of products and services tailored for businesses, including bulk purchasing options and specialized business pricing. Their platform offers convenience and a broad range of products to meet diverse B2B needs.</p>', 'Neez Packages', NULL, NULL, 'blog_posts/logo/arHDvC1w1J1724833933.jpg', 'blog_posts/image/A1HVPgzYGC1724833933.jpg', 'blog_posts/banner_image/Q7bLuvXu6M1724833933.jpg', NULL, '<h3><strong>In Conclusion</strong></h3><p>Navigating the world of B2B trade-only businesses can be overwhelming, but focusing on industry leaders like <strong>Neez Packages</strong> and others can help you find reliable partners and solutions for your business needs. Whether you\'re looking for packaging solutions, office supplies, or industrial equipment, these top B2B businesses offer quality products and exceptional service to support your company\'s success in 2024 and beyond.</p>', 'publish', '2024-08-28 12:31:51', '2024-08-28 12:32:13'),
(3, '[\"1\"]', 'null', '1', 'blog', NULL, 'The Rise of Recyclable Packaging: Why It Matters for Your Business', 'the-rise-of-recyclable-packaging-why-it-matters-for-your-business', 'In today’s environmentally conscious world, businesses are increasingly turning to recyclable packaging as a crucial part of their sustainability strategies.', '<p>As concerns over plastic pollution and environmental impact grow, recyclable packaging offers a practical solution that benefits both the planet and your business. Here’s why embracing recyclable packaging is essential and how it can make a positive difference for your company.</p>', '<h4><strong>1. Reducing Environmental Impact</strong></h4><p>Recyclable packaging helps minimize the waste that ends up in landfills and oceans. By choosing materials that can be recycled, you contribute to reducing the overall environmental footprint of your business. Recycled materials require less energy to process than new materials, further decreasing your impact on natural resources.</p><h4><strong>2. Meeting Consumer Expectations</strong></h4><p>Today’s consumers are more aware than ever of the environmental practices of the companies they support. By using recyclable packaging, you align your brand with these values, demonstrating a commitment to sustainability. This can enhance your brand’s reputation, attract environmentally conscious customers, and differentiate your business from competitors.</p><h4><strong>3. Compliance with Regulations</strong></h4><p>Many regions are implementing stricter regulations and policies regarding packaging waste and recyclability. Adopting recyclable packaging helps ensure compliance with these regulations and prepares your business for future changes. Staying ahead of these requirements can also prevent potential fines and disruptions.</p><h4><strong>4. Cost-Effective Solutions</strong></h4><p>While recyclable packaging can sometimes be more expensive initially, it can lead to cost savings in the long run. Recycling programs and incentives can offset some of these costs, and many recyclable materials are becoming more affordable as technology and demand evolve. Investing in recyclable packaging can also reduce waste management expenses.</p><h4><strong>5. Enhancing Brand Loyalty</strong></h4><p>Consumers who value sustainability are likely to become loyal customers if they see your commitment to recyclable packaging. By showcasing your efforts in your marketing and branding, you can build a stronger connection with your audience and foster long-term loyalty.</p><h4><strong>6. Innovative Packaging Options</strong></h4><p>The market for recyclable packaging is expanding with innovative materials and designs. From biodegradable options to high-quality recycled materials, you can find packaging solutions that not only meet your sustainability goals but also enhance the aesthetic appeal and functionality of your products.</p><h4><strong>7. Educating and Engaging Customers</strong></h4><p>Using recyclable packaging provides an opportunity to educate your customers about recycling practices and the benefits of sustainable choices. Engage your audience by sharing information about how to properly recycle your packaging and the positive impact it has on the environment.</p>', 'Neez Packages', NULL, NULL, 'blog_posts/logo/FSG4J36Nal1724834194.jpg', 'blog_posts/image/QMzwsN78AK1724834194.jpg', 'blog_posts/banner_image/sXP0rRRBWS1724834194.jpg', NULL, '<h3><strong>In Conclusion</strong></h3><p>The shift towards recyclable packaging is more than just a trend; it’s a necessary step towards a more sustainable future. By incorporating recyclable materials into your packaging strategy, you contribute to environmental conservation, meet consumer expectations, and position your business as a responsible leader in your industry. Embrace the benefits of recyclable packaging and join the growing movement towards a greener, more sustainable world.</p>', 'publish', '2024-08-28 12:36:07', '2024-08-28 12:36:34'),
(4, '[\"1\"]', 'null', '1', 'blog', NULL, 'How Neez Packages’ Innovative Solutions Are Revolutionizing Restaurant Packaging', 'how-neez-packages-innovative-solutions-are-revolutionizing-restaurant-packaging', NULL, '<p>In the competitive world of food service, presentation and functionality are key to success. At Neez Packages, we understand that effective packaging is not just about containment—it\'s about enhancing the dining experience and supporting your restaurant\'s operations. Here’s how our innovative packaging solutions are setting new standards in the industry and why they could be the game-changer your restaurant needs.</p>', '<h4><strong>1. Streamlined Meal Prep with Our Containers</strong></h4><p>Our <strong>2 Compartment Meal Prep Containers</strong> are designed to simplify your meal prep process. With a capacity of 830ml and two separate compartments, these containers help you manage portion sizes effectively while keeping different meal components fresh and organized. Perfect for takeout or meal delivery, they ensure your customers receive their meals in optimal condition.</p><h4><strong>2. Eco-Friendly Packaging Solutions</strong></h4><p>Sustainability is a top priority at Neez Packages. Our range of <strong>eco-friendly packaging</strong> options, including biodegradable and compostable materials, aligns with modern environmental goals. By choosing our eco-friendly solutions, you not only reduce your carbon footprint but also appeal to the growing number of eco-conscious customers.</p><h4><strong>3. Versatile Takeaway Options</strong></h4><p>Whether you’re serving hot meals, cold salads, or beverages, our diverse selection of <strong>takeaway boxes</strong> and containers are designed to meet all your needs. Our packaging solutions are not only functional but also designed to maintain the quality and temperature of your food during transit, ensuring that your customers enjoy their meals just as you intended.</p><h4><strong>4. Customization for Brand Identity</strong></h4><p>At Neez Packages, we offer <strong>custom packaging</strong> solutions that allow you to brand your containers and packaging materials. Custom designs help reinforce your brand’s identity and create a memorable impression on your customers. From logo printing to bespoke designs, our customizable options are tailored to enhance your brand visibility.</p><h4><strong>5. Cost-Effective and Durable</strong></h4><p>We understand the importance of durability and cost-efficiency in restaurant operations. Our packaging solutions are designed to be both robust and affordable. By choosing Neez Packages, you ensure that your packaging stands up to the demands of daily use while keeping your costs manageable.</p><h4><strong>6. Exceptional Service and Support</strong></h4><p>Our commitment to customer satisfaction goes beyond providing high-quality products. At Neez Packages, we offer exceptional service and support to ensure that your packaging needs are met efficiently. Our knowledgeable team is here to assist with any queries, customize orders, and provide timely solutions.</p>', 'Neez Packages', NULL, NULL, 'blog_posts/logo/XPPkboryx41724835171.jpg', 'blog_posts/image/1PRRtPetf71724835171.jpg', 'blog_posts/banner_image/GbHc0m58TM1724835171.jpg', NULL, '<h3><strong>In Conclusion</strong></h3><p>Neez Packages is dedicated to revolutionizing restaurant packaging with innovative, eco-friendly, and customizable solutions. By integrating our packaging into your operations, you not only enhance the quality and presentation of your meals but also support sustainable practices and strengthen your brand. Explore our range of products today and discover how Neez Packages can transform your restaurant’s packaging approach.</p>', 'publish', '2024-08-28 12:45:30', '2024-08-28 12:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_comments`
--

CREATE TABLE `blog_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_settings`
--

CREATE TABLE `blog_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(40) NOT NULL,
  `logo` varchar(220) DEFAULT NULL,
  `image` varchar(220) DEFAULT NULL,
  `banner_image` varchar(220) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `image`, `banner_image`, `description`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Neez', 'neez', 'brands/logo/bgK3anSnme1724827484.png', NULL, NULL, NULL, 'https://neezonline.com/', 'active', '2024-08-28 10:44:44', '2024-08-29 10:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_id`)),
  `category_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`category_id`)),
  `brand_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`brand_id`)),
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(220) DEFAULT NULL,
  `image` varchar(220) DEFAULT NULL,
  `banner_image` varchar(220) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `logo`, `image`, `banner_image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(11, NULL, 'Meal Prep Boxes', 'meal-prep-boxes', 'category/logo/3cI9gDNKs41724823234.png', NULL, 'category/banner_image/4ghAnLqXDY1724823234.jpg', 'Meal Prep Boxes: Durable, convenient, and available in various sizes, perfect for organized meal storage. Ideal for restaurants offering meal prep services.', 'active', '2024-08-28 09:33:54', '2024-08-28 09:33:54'),
(12, NULL, 'Takeaway Boxes', 'takeaway-boxes', 'category/logo/46aKG21zuh1724824935.png', NULL, 'category/banner_image/IgRPBQHA1b1724824935.jpg', 'Sturdy and reliable packaging for all your takeout needs. Available in various materials and sizes to ensure food stays fresh during transit.', 'active', '2024-08-28 10:02:15', '2024-08-28 10:02:15'),
(13, NULL, 'Beverage Containers', 'beverage-containers', 'category/logo/WiWvkh9wit1724825688.png', NULL, 'category/banner_image/g0JyJxrGVO1724825688.jpg', 'High-quality cups and holders for hot and cold drinks, designed to maintain temperature and prevent leaks. Perfect for any beverage service.', 'active', '2024-08-28 10:14:48', '2024-08-28 10:14:48'),
(14, NULL, 'Cutlery & Accessories', 'cutlery-accessories', 'category/logo/D0AxzsipZQ1724826025.png', NULL, 'category/banner_image/LhOCuTWju51724826025.jpg', 'Essential, disposable cutlery and accessories designed for convenience and hygiene. Includes forks, spoons, knives, napkins, and straws.', 'active', '2024-08-28 10:20:25', '2024-08-28 10:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` enum('pending','replied','on_going','closed') NOT NULL DEFAULT 'pending',
  `priority` varchar(20) NOT NULL DEFAULT 'normal',
  `attachment` varchar(255) DEFAULT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `response_at` timestamp NULL DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `call` tinyint(1) DEFAULT 0 COMMENT '0 for inactive, 1 for active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `code`, `name`, `email`, `phone`, `address`, `subject`, `ip_address`, `message`, `status`, `priority`, `attachment`, `assigned_to`, `response`, `response_at`, `source`, `is_banned`, `call`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'MSG-280824-1', 'John Smith', 'johnsmith.web01@gmail.com', '1234567890', NULL, NULL, '122.162.148.72', 'Hy,\r\n\r\nI was going through your website have looked at your website and realized your website has nice design but your website ranking is not good on major search engines Google, Yahoo and Bing.\r\n\r\nOur main focus will be to help generate more conversations & online Views.\r\n\r\nWe can place your website on Google\'s 1st page. We will improve your website’s position on all search engines and getting more Views.\r\n\r\nPls share your Website, Email Id and Contact number if you are interested.\r\n\r\nKind regards,\r\nJohn Smith', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-08-28 15:21:07', '2024-08-28 15:21:07'),
(3, 'MSG-290824-1', 'Search Engine Index', 'submissions@searchindex.site', '6316214258', NULL, NULL, '45.129.13.34', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-08-29 18:42:51', '2024-08-29 18:42:51'),
(4, 'MSG-300824-1', 'Search Engine Index', 'submissions@searchindex.site', '7056843512', NULL, NULL, '45.129.13.34', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-08-30 18:35:31', '2024-08-30 18:35:31'),
(5, 'MSG-310824-1', 'Search Engine Index', 'submissions@searchindex.site', '7856167435', NULL, NULL, '45.129.13.34', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-08-31 21:25:26', '2024-08-31 21:25:26'),
(6, 'MSG-010924-1', 'Greg Di Bruno', 'info@letsgetuoptimize.com', '9497671355', NULL, NULL, '106.219.165.179', 'Hey team neezpackages.com,\r\n\r\nI was looking at your website and realized that despite having a good design; it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n*  Top ranking on Google search!\r\n*  Improve website clicks and views!\r\n*  Increase Your Leads, clients & Revenue!\r\n\r\nNote: - Please give us your phone number/ WhatsApp so that we can connect quickly to discuss it.\r\n\r\nWell wishes,\r\nGreg Di Bruno\r\nSenior Services Consultant - Let’s Get You Optimize\r\nEmail: info@letsgetuoptimize.com\r\nPhone: 9497671355\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “unsubscribe”', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-01 12:43:02', '2024-09-01 12:43:02'),
(7, 'MSG-020924-1', 'Greg Di Bruno', 'letsgetuoptimize@gmail.com', '9497671355', NULL, NULL, '106.219.165.201', 'Hey team neezpackages.com,\r\n\r\nI was looking at your website and realized that despite having a good design; it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n? Top ranking on Google search!\r\n? Improve website clicks and views!\r\n? Increase Your Leads, clients & Revenue!\r\n\r\nIf interested, May I send you a proposal & charges?\r\n\r\nRegards,\r\nGreg Di Bruno\r\nSenior Services Consultant - Let’s Get You Optimize\r\nEmail: info@letsgetuoptimize.com\r\nPhone: 9497671355\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “unsubscribe”', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-02 16:11:39', '2024-09-02 16:11:39'),
(8, 'MSG-050924-1', 'Virginia Prince', 'hoguko@mailinator.com', '01726111168', NULL, NULL, '220.247.129.9', 'Est temporibus dicta', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-05 14:36:34', '2024-09-05 14:36:34'),
(9, 'MSG-090924-1', 'Tedagipt', 'kayleighbpsteamship@gmail.com', '87432786934', NULL, NULL, '92.255.85.164', 'Hi, ego volo scire vestri pretium.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-09 17:34:39', '2024-09-09 17:34:39'),
(10, 'MSG-100924-1', 'Search Engine Index', 'submissions@searchindex.site', '3171334883', NULL, NULL, '212.64.211.218', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-10 18:23:13', '2024-09-10 18:23:13'),
(11, 'MSG-150924-1', 'Davidagipt', 'kayleighbpsteamship@gmail.com', '81471488524', NULL, NULL, '62.122.184.194', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-15 12:31:03', '2024-09-15 12:31:03'),
(12, 'MSG-150924-2', 'Tedagipt', 'kayleighbpsteamship@gmail.com', '86267181356', NULL, NULL, '92.255.85.164', 'Sveiki, es gribēju zināt savu cenu.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-16 02:33:10', '2024-09-16 02:33:10'),
(13, 'MSG-200924-1', 'Search Engine Index', 'submissions@searchindex.site', '537383685', NULL, NULL, '156.38.134.102', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-20 17:57:34', '2024-09-20 17:57:34'),
(14, 'MSG-220924-1', 'Masonagipt', 'yjdisantoyjdissemin@gmail.com', '83315559257', NULL, NULL, '152.89.198.68', 'Hi, kam dashur të di çmimin tuaj', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-22 12:46:27', '2024-09-22 12:46:27'),
(15, 'MSG-240924-1', 'Diana Cruz', 'dianacruz.mkt@gmail.com', '1234567890', NULL, NULL, '106.219.160.59', 'Hi, neezpackages.com\r\n\r\nI found your details on Google.com and I have looked at your website and realized your website has great design but your website ranking is not good on all search engines Google, AOL, Yahoo and Bing.\r\n\r\nOur main focus will be to help generate more sales & online traffic.\r\n\r\nWe can place your website on Google\'s 1st page. We will improve your website’s position on Google and get more traffic.\r\n\r\nIf interested, kindly provide me your name, phone number, and email.\r\n\r\nYour sincerely,\r\nDiana', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-24 21:07:34', '2024-09-24 21:07:34'),
(16, 'MSG-240924-2', 'Nitin Chaudhary', 'sales@rankinghat.co', '1234567890', NULL, NULL, '106.219.160.119', 'Hi,\r\n\r\nI\'m Nitin, I took a look at your website - www.neezpackages.com , and it looks fantastic, but it’s not appearing on Google or other search engines.\r\n\r\nI specialize in SEO, PPC, and SMM services to help businesses rank on the first page of Google. My services are budget-friendly.\r\n\r\nAre you interested in learning more?\r\n\r\nPlease give us your phone number/ WhatsApp so that we can connect quickly to discuss it.\r\n \r\nRegards,\r\nNitin Chaudhary | International Project Manager\r\nEmail:- sales@rankinghat.co\r\nContact Number:- +1- (209) 813-5119', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-24 21:20:42', '2024-09-24 21:20:42'),
(17, 'MSG-240924-3', 'Harvey Miller', 'harvey.websolution1@gmail.com', '8456404550', NULL, NULL, '223.228.213.79', 'Hello,\r\n\r\nYour website is currently experiencing significant SEO (Search Engine Optimization) issues, making it invisible on major search engines like Google, Bing, and Safari. This is a simple fix that we can resolve for you. If this business is a priority for you, please share your phone number and a suitable time for a call. We can discuss the details in depth and address the issue on a high-priority basis.\r\n\r\nBest regards,\r\nHarvey Miller', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-25 02:02:07', '2024-09-25 02:02:07'),
(18, 'MSG-250924-1', 'Tedagipt', 'kayleighbpsteamship@gmail.com', '84158755534', NULL, NULL, '92.255.85.164', 'Hi, I wanted to know your price.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-25 12:16:31', '2024-09-25 12:16:31'),
(19, 'MSG-270924-1', 'Nitin Chaudhary', 'sales@rankinghat.co', '1234567890', NULL, NULL, '103.48.197.4', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site \"www.neezpackages.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results.\r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIf this is something you are interested in, then allow me to send you a No Obligation Audit Report for your review. We will fix those errors with no extra cost if you choose any one of our monthly marketing plans.\r\n\r\nHave a nice day!\r\n\r\nRegards,\r\nNitin Chaudhary | International Project Manager                                                    \r\nEmail:- sales@rankinghat.co            \r\nContact Number:- +1- (209) 813-5119', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-27 19:32:33', '2024-09-27 19:32:33'),
(20, 'MSG-011024-1', 'Lucy Jhonson', 'lucyjohnson.web@gmail.com', '1234567890', NULL, NULL, '103.48.197.18', 'Hi Team,\r\n\r\nWanted to increase your business, ranking, clients and customers?\r\n\r\nWould you like your company [ http://www.neezpackages.com ] to be listed at the top of Google for multiple search phrases (Keywords) relevant to your products / services?\r\n\r\n1.      SEO - Full SEO Packages with Plan and Activities\r\n2.      SMO - Facebook, Twitter, LinkedIn, YouTube & Marketing etc.\r\n3.      PPC - Pay-per-Click\r\n4.      Web Designing – (Responsive, Re-Designing)\r\n\r\nWe will help them find you by putting you 1st page on Google with guaranteed!\r\n\r\nPlease let me know if you are interested. We have some special offers this season.\r\n\r\nJust reply my email or share your WhatsApp or cell number with suitable time to talk!\r\n\r\nThanks & Regards,\r\nLucy Jhonson - Sr SEO consultant\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n If you don’t want me to contact you again about this, reply with “no thanks”', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-01 18:14:16', '2024-10-01 18:14:16'),
(21, 'MSG-021024-1', 'Tedagipt', 'kayleighbpsteamship@gmail.com', '82126933528', NULL, NULL, '92.255.85.164', 'Hej, jeg ønskede at kende din pris.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-02 16:51:08', '2024-10-02 16:51:08'),
(22, 'MSG-071024-1', 'Davidagipt', 'kayleighbpsteamship@gmail.com', '86923692947', NULL, NULL, '62.122.184.194', 'Xin chào, tôi muốn biết giá của bạn.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-07 11:29:01', '2024-10-07 11:29:01'),
(23, 'MSG-081024-1', 'Masonagipt', 'agavapicod390@gmail.com', '86743946411', NULL, NULL, '152.89.198.68', 'Dia duit, theastaigh uaim do phraghas a fháil.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-08 06:17:16', '2024-10-08 06:17:16'),
(24, 'MSG-091024-1', 'Tedagipt', 'kayleighbpsteamship@gmail.com', '89147688914', NULL, NULL, '92.255.85.164', 'Hi, ego volo scire vestri pretium.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-10 03:48:52', '2024-10-10 03:48:52'),
(25, 'MSG-141024-1', 'IVzlubjLb', 'sandovalgenam872@gmail.com', '6682034116', NULL, NULL, '80.85.247.161', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-14 07:53:55', '2024-10-14 07:53:55'),
(26, 'MSG-141024-2', 'IVzlubjLb', 'sandovalgenam872@gmail.com', '6682034116', NULL, NULL, '80.85.247.161', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-14 07:53:57', '2024-10-14 07:53:57'),
(27, 'MSG-161024-1', 'Masonagipt', 'somasesokiyo31@gmail.com', '81555689369', NULL, NULL, '152.89.198.68', 'Ola, quería saber o seu prezo.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-16 19:10:41', '2024-10-16 19:10:41'),
(28, 'MSG-171024-1', 'Gary Charles', 'gary_charles@dominatingkeywords.com', '8054002077', NULL, NULL, '186.179.59.236', 'Want to know how to get more traffic to your website?\r\nHere is a simple 3-step online demo:\r\n\r\n- Go to our website and click on DEMO link;\r\n- Type your website and any keyword;\r\n- Click on VIEW ONLINE DEMO and see your website banner on top of search results.\r\n\r\nInterested?\r\nIf your answer is yes then fill in the online quote and start getting tons of organic search engine traffic from your keywords.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-17 14:51:09', '2024-10-17 14:51:09'),
(29, 'MSG-181024-1', 'Tedagipt', 'axobajigufo34@gmail.com', '87914152669', NULL, NULL, '92.255.85.164', 'Hi, მინდოდა ვიცოდე თქვენი ფასი.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-18 10:42:21', '2024-10-18 10:42:21'),
(30, 'MSG-191024-1', 'bBqQLKItGYrh', 'stantanneza@gmail.com', '4465191475', NULL, NULL, '212.118.53.218', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-19 15:26:31', '2024-10-19 15:26:31'),
(31, 'MSG-191024-2', 'bBqQLKItGYrh', 'stantanneza@gmail.com', '4465191475', NULL, NULL, '212.118.53.218', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-19 15:26:34', '2024-10-19 15:26:34'),
(32, 'MSG-211024-1', 'Robertlenry', 'yasen.krasen.13+74849@mail.ru', '81824291884', NULL, NULL, '212.102.35.4', 'Ojwdjiowkdeofjeij ifsfhoewdfeifhweui hieojkaskdfwjfghewejif eiwhfufdawdijwehfuihewguih jeifjeweijeruigherug neezpackages.com', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-21 14:08:36', '2024-10-21 14:08:36'),
(33, 'MSG-231024-1', 'UxxbBpXGMs', 'btemperansex48@gmail.com', '3408070306', NULL, NULL, '80.85.245.145', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 19:09:23', '2024-10-23 19:09:23'),
(34, 'MSG-231024-2', 'UxxbBpXGMs', 'btemperansex48@gmail.com', '3408070306', NULL, NULL, '80.85.245.145', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 19:09:26', '2024-10-23 19:09:26'),
(35, 'MSG-241024-1', 'Boyd Chacon', 'boyd.chacon@gmail.com', NULL, NULL, NULL, '149.34.252.8', 'Unlock Stress-Free Website Management—Just $25/Month\r\n\r\nExperience worry-free web hosting with our fully managed service designed to keep your website secure, fast, and always up-to-date. For only $25/month, we handle everything—WordPress core, PHP, plugin, and theme updates—along with daily offsite backups, powerful firewall protection, and proactive malware removal.\r\n\r\nPlus, our free migration service ensures your current website transitions to our optimized server with zero downtime. With 24/7 monitoring, a dedicated server, and weekly performance reports, you stay informed without lifting a finger.\r\n\r\nStop wasting time on tech headaches—let us handle it all for you!\r\n\r\nhttps://bestwebsite.link/hosting', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-24 23:47:22', '2024-10-24 23:47:22'),
(36, 'MSG-251024-1', 'Tedagipt', 'axobajigufo34@gmail.com', '82648854218', NULL, NULL, '92.255.85.164', 'Hi, roeddwn i eisiau gwybod eich pris.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-25 13:12:20', '2024-10-25 13:12:20'),
(37, 'MSG-271024-1', 'nlKEIwqz', 'rydolflambert159@gmail.com', '4489000827', NULL, NULL, '91.246.41.166', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-27 05:42:55', '2024-10-27 05:42:55'),
(38, 'MSG-271024-2', 'nlKEIwqz', 'rydolflambert159@gmail.com', '4489000827', NULL, NULL, '91.246.41.166', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-27 05:42:57', '2024-10-27 05:42:57'),
(39, 'MSG-291024-1', 'Desiree Ertel', 'ertel.desiree@msn.com', '249467886', NULL, NULL, '188.213.202.48', 'Looking to boost your website or video traffic economically? Visit: http://zaj4z6.contactblastingworks.my', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-29 23:24:32', '2024-10-29 23:24:32'),
(40, 'MSG-311024-1', 'Davidagipt', 'ibucezevuda439@gmail.com', '82531123265', NULL, NULL, '62.122.184.194', 'Sveiki, aš norėjau sužinoti jūsų kainą.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-31 19:38:04', '2024-10-31 19:38:04'),
(41, 'MSG-311024-2', 'akash', 'akashmirza01234@gmail.com', NULL, NULL, NULL, '220.247.129.8', NULL, 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-31 19:45:11', '2024-10-31 19:45:11'),
(42, 'MSG-311024-3', 'Masonagipt', 'duqotayowud23@gmail.com', '82445471918', NULL, NULL, '152.89.198.68', 'Hi, ego volo scire vestri pretium.', 'pending', 'normal', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-31 21:39:10', '2024-10-31 21:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `deal_banners`
--

CREATE TABLE `deal_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `badge` varchar(191) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `offer_price` double DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `button_name` varchar(200) DEFAULT NULL,
  `button_link` text DEFAULT NULL,
  `banner_link` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_mailer` varchar(50) DEFAULT NULL,
  `mail_host` varchar(100) DEFAULT NULL,
  `mail_port` varchar(10) DEFAULT NULL,
  `mail_username` varchar(100) DEFAULT NULL,
  `mail_password` varchar(100) DEFAULT NULL,
  `mail_encryption` varchar(10) DEFAULT NULL,
  `mail_from_address` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for inactive, 1 for active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `mail_mailer`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'illum', 'schamberger.biz', '372', 'lhauck', '/D8566Z4_o^fyUyabg3`', 'tls', 'torrey22@example.com', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(2, 'voluptatem', 'witting.com', '491', 'hkautzer', 'B<hwKbOkKp5', 'tls', 'predovic.willy@example.net', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(3, 'aliquid', 'koch.biz', '997', 'alba.jacobs', 'MGQ;ftu9Cs@Fg', 'ssl', 'ophelia.homenick@example.com', 1, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(4, 'error', 'maggio.com', '317', 'dyost', 'nUrvM4/.Q:rKS(', 'tls', 'gilda.lubowitz@example.net', 1, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(5, 'est', 'medhurst.org', '286', 'cordie25', '}o8*D-sAdLs4b3', 'tls', 'knolan@example.org', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(6, 'aut', 'rippin.org', '610', 'fdaniel', '`$zw54Z', 'tls', 'zking@example.net', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(7, 'eius', 'braun.com', '74', 'strosin.kayla', 'K*>mDd_tT&Q6p', 'ssl', 'bryon42@example.com', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(8, 'odit', 'rempel.biz', '947', 'nils.bechtelar', 'qxF\"xDq~J\\', 'ssl', 'hgraham@example.net', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(9, 'quae', 'berge.com', '740', 'weissnat.arvid', 'C8hL`NN', 'tls', 'sandra27@example.net', 1, '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(10, 'maxime', 'bins.com', '600', 'lonzo.terry', 'p`s+eS!c5gxNg', 'ssl', 'reta36@example.org', 0, '2024-08-27 11:32:42', '2024-08-27 11:32:42');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `views` int(11) DEFAULT 0,
  `related_faqs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`related_faqs`)),
  `is_featured` tinyint(1) DEFAULT 0,
  `additional_info` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Product Information', 'product-information', 'active', NULL, NULL, '2024-08-29 09:10:43', '2024-08-29 09:10:43');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_28_173624_create_admins_table', 1),
(6, '2024_02_23_061729_create_permission_tables', 1),
(7, '2024_02_25_013049_create_brands_table', 1),
(8, '2024_02_25_163558_create_categories_table', 1),
(9, '2024_02_26_061641_create_activity_logs_table', 1),
(10, '2024_02_27_053002_create_faq_categories_table', 1),
(11, '2024_02_28_050724_create_faqs_table', 1),
(12, '2024_03_01_044024_create_email_settings_table', 1),
(13, '2024_04_16_014100_create_contacts_table', 1),
(14, '2024_04_16_060623_create_settings_table', 1),
(15, '2024_04_17_104332_create_shipping_methods_table', 1),
(16, '2024_04_22_012900_create_newsletters_table', 1),
(17, '2024_04_22_014011_create_about_us_table', 1),
(18, '2024_07_21_172226_create_product_colors_table', 1),
(19, '2024_07_22_134930_create_terms_and_conditions_table', 1),
(20, '2024_07_22_135059_create_privacy_policies_table', 1),
(21, '2024_07_28_054949_create_page_banners_table', 1),
(22, '2024_08_02_060856_create_blog_categories_table', 1),
(23, '2024_08_02_060907_create_blog_tags_table', 1),
(24, '2024_08_02_061019_create_blog_posts_table', 1),
(25, '2024_08_02_061232_create_blog_settings_table', 1),
(26, '2024_08_02_061556_create_blog_post_comments_table', 1),
(27, '2024_08_10_170257_create_products_table', 1),
(28, '2024_08_10_183020_create_product_images_table', 1),
(29, '2024_08_13_053549_create_orders_table', 1),
(30, '2024_08_13_114443_create_wishlists_table', 1),
(31, '2024_08_15_100853_create_order_items_table', 1),
(32, '2024_08_19_083535_create_deal_banners_table', 1),
(33, '2024_08_20_183556_create_catalogues_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT 0 COMMENT '0 for inactive, 1 for active',
  `status` enum('subscribed','unsubscribed') NOT NULL DEFAULT 'subscribed',
  `promotional_email` tinyint(1) DEFAULT 1 COMMENT '0 for inactive, 1 for active',
  `newsletter` tinyint(1) DEFAULT 1 COMMENT '0 for inactive, 1 for active',
  `new_product` tinyint(1) DEFAULT 1 COMMENT '0 for inactive, 1 for active',
  `notification_email` tinyint(1) DEFAULT 1 COMMENT '0 for inactive, 1 for active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `ip_address`, `country`, `location`, `is_banned`, `status`, `promotional_email`, `newsletter`, `new_product`, `notification_email`, `created_at`, `updated_at`) VALUES
(2, 'akashvai01726@gmail.com', '203.17.65.230', NULL, NULL, 0, 'subscribed', 1, 1, 1, 1, '2024-08-29 10:24:14', '2024-08-29 10:24:14'),
(3, 'akashmirza01234@gmail.com', '220.247.129.9', NULL, NULL, 0, 'subscribed', 1, 1, 1, 1, '2024-09-05 14:37:36', '2024-09-05 14:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `coupon` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` enum('paid','unpaid','pending','failed','cancel') NOT NULL DEFAULT 'unpaid',
  `status` enum('new','pending','processing','shipped','delivered','cancelled','returned') NOT NULL DEFAULT 'pending',
  `shipped_to_different_address` varchar(255) DEFAULT 'no',
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `billing_zipcode` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `shipping_zipcode` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_company_name` varchar(255) DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `order_status_updated_at` timestamp NULL DEFAULT NULL,
  `order_created_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `external_order_id` varchar(255) DEFAULT NULL,
  `customer_request` text DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `fulfilled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `shipping_method_id`, `sub_total`, `coupon`, `discount`, `total_amount`, `quantity`, `shipping_charge`, `payment_method`, `payment_status`, `status`, `shipped_to_different_address`, `billing_first_name`, `billing_last_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_zipcode`, `billing_state`, `billing_country`, `billing_company_name`, `shipping_first_name`, `shipping_last_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_zipcode`, `shipping_state`, `shipping_country`, `shipping_company_name`, `order_note`, `order_status_updated_at`, `order_created_at`, `transaction_id`, `external_order_id`, `customer_request`, `invoice`, `created_by`, `updated_by`, `fulfilled_at`, `created_at`, `updated_at`) VALUES
(1, 'PQ-20241', 1, 1, 720, 0, 0, 720, 12, 0, 'stripe', 'paid', 'shipped', 'no', 'Rashed', 'Raj', 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', '1206', 'Dhaka', 'United Kingdom', NULL, NULL, NULL, 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-08-28 23:03:02', NULL, 'JW117343458GB', NULL, 'order/PQ-20241_invoice.pdf', 1, NULL, NULL, '2024-08-28 23:03:02', '2024-09-09 15:50:31'),
(2, 'PQ-20242', 3, 1, 540, 0, 0, 540, 7, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-08-29 09:38:13', NULL, NULL, NULL, 'order/PQ-20242_invoice.pdf', 3, NULL, NULL, '2024-08-29 09:38:13', '2024-08-29 09:38:13'),
(3, 'PQ-20243', 3, 1, 540, 0, 0, 540, 0, 0, 'stripe', 'paid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Bangladesh', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-08-29 09:40:07', NULL, NULL, NULL, 'order/PQ-20243_invoice.pdf', 3, NULL, NULL, '2024-08-29 09:40:07', '2024-08-29 09:58:58'),
(4, 'PQ-20244', 3, 1, 552, 0, 0, 552, 8, 0, 'stripe', 'paid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Bangladesh', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-08-31 13:21:17', NULL, NULL, NULL, 'order/PQ-20244_invoice.pdf', 3, NULL, NULL, '2024-08-31 13:21:17', '2024-08-31 13:25:09'),
(5, 'PQ-20245', 3, 1, 828, 0, 0, 828, 12, 0, 'stripe', 'paid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-01 18:34:49', NULL, NULL, NULL, 'order/PQ-20245_invoice.pdf', 3, NULL, NULL, '2024-09-01 18:34:49', '2024-09-01 18:35:58'),
(6, 'PQ-20246', 5, 1, 64, 0, 0, 64, 1, 0, 'stripe', 'unpaid', 'pending', 'no', 'Imran', 'Abdullah', 'imran@gmail.com', '4545455454', 'South Mollartek, Dhaka', '4545655', 'Essex', 'Afghanistan', NULL, NULL, NULL, 'imran@gmail.com', '4545455454', 'South Mollartek, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-02 13:14:42', NULL, NULL, NULL, 'order/PQ-20246_invoice.pdf', 5, NULL, NULL, '2024-09-02 13:14:42', '2024-09-02 13:14:42'),
(7, 'PQ-20247', 1, 1, 90, 0, 0, 90, 1, 0, 'stripe', 'unpaid', 'shipped', 'no', 'Rashed', 'Raj', 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', '1206', 'Dhaka', 'Afghanistan', NULL, NULL, NULL, 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-02 14:30:31', NULL, 'JW117343458GB', NULL, 'order/PQ-20247_invoice.pdf', 1, NULL, NULL, '2024-09-02 14:30:31', '2024-09-09 15:48:35'),
(8, 'PQ-20248', 3, 1, 89, 0, 0, 89, 1, 0, 'stripe', 'paid', 'pending', 'no', 'akash', 'mirza', 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', '48059', 'MI', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-02 15:29:16', NULL, NULL, NULL, 'order/PQ-20248_invoice.pdf', 3, NULL, NULL, '2024-09-02 15:29:16', '2024-09-02 15:29:35'),
(9, 'PQ-20249', 3, 1, 158, 0, 0, 158, 2, 0, 'stripe', 'paid', 'pending', 'no', 'akash', 'mirza', 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', '48059', 'MI', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-02 15:32:46', NULL, NULL, NULL, 'order/PQ-20249_invoice.pdf', 3, NULL, NULL, '2024-09-02 15:32:46', '2024-09-02 15:33:09'),
(10, 'PQ-202410', 3, 1, 233, 0, 0, 233, 3, 0, 'stripe', 'paid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-02 18:55:27', NULL, NULL, NULL, 'order/PQ-202410_invoice.pdf', 3, NULL, NULL, '2024-09-02 18:55:27', '2024-09-02 18:56:31'),
(11, 'PQ-202411', 6, 1, 832, 0, 0, 832, 13, 0, 'stripe', 'paid', 'pending', 'no', 'Passowrd', 'New', 'password@password.com', '01576614451', 'Blanditiis ut vel ve, Temporibus lorem dol', '14167', 'Voluptas est consequ', 'Afghanistan', NULL, NULL, NULL, 'password@password.com', '01576614451', 'Blanditiis ut vel ve, Temporibus lorem dol', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-03 18:47:30', NULL, NULL, NULL, 'order/PQ-202411_invoice.pdf', 6, NULL, NULL, '2024-09-03 18:47:30', '2024-09-03 18:48:23'),
(12, 'PQ-202412', 3, 1, 198, 0, 0, 198, 3, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-05 14:59:17', NULL, NULL, NULL, 'order/PQ-202412_invoice.pdf', 3, NULL, NULL, '2024-09-05 14:59:17', '2024-09-05 14:59:17'),
(13, 'PQ-202413', 3, 1, 203, 0, 0, 203, 3, 0, 'stripe', 'paid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-09 19:02:52', NULL, NULL, NULL, 'order/PQ-202413_invoice.pdf', 3, NULL, NULL, '2024-09-09 19:02:52', '2024-09-09 19:04:15'),
(14, 'PQ-202414', 1, 1, 79, 0, 0, 79, 1, 0, 'stripe', 'unpaid', 'pending', 'no', 'Rashed', 'Raj', 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', '1206', 'Dhaka', 'Afghanistan', NULL, NULL, NULL, 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-11 16:07:35', NULL, NULL, NULL, 'order/PQ-202414_invoice.pdf', 1, NULL, NULL, '2024-09-11 16:07:35', '2024-09-11 16:07:36'),
(15, 'PQ-202415', 3, 1, 138, 0, 0, 138, 2, 0, 'stripe', 'unpaid', 'pending', 'no', 'akash', 'mirza', 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', '48059', 'MI', 'Bangladesh', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-18 14:31:34', NULL, NULL, NULL, 'order/PQ-202415_invoice.pdf', 3, NULL, NULL, '2024-09-18 14:31:34', '2024-09-18 14:31:35'),
(16, 'PQ-202416', 3, 1, 138, 0, 0, 138, 2, 0, 'stripe', 'unpaid', 'pending', 'no', 'akash', 'mirza', 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', '48059', 'MI', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', '5000 Wildrose Lane, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-18 14:34:28', NULL, NULL, NULL, 'order/PQ-202416_invoice.pdf', 3, NULL, NULL, '2024-09-18 14:34:28', '2024-09-18 14:34:29'),
(17, 'PQ-202417', 3, 1, 124, 0, 0, 124, 2, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-22 17:30:47', NULL, NULL, NULL, 'order/PQ-202417_invoice.pdf', 3, NULL, NULL, '2024-09-22 17:30:47', '2024-09-22 17:30:48'),
(18, 'PQ-202418', 3, 1, 258, 0, 0, 258, 3, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-22 17:55:02', NULL, NULL, NULL, 'order/PQ-202418_invoice.pdf', 3, NULL, NULL, '2024-09-22 17:55:02', '2024-09-22 17:55:03'),
(19, 'PQ-202419', 3, 1, 54, 0, 0, 54, 1, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Akash', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-22 20:16:16', NULL, NULL, NULL, 'order/PQ-202419_invoice.pdf', 3, NULL, NULL, '2024-09-22 20:16:16', '2024-09-22 20:16:16'),
(20, 'PQ-202420', 3, 1, 54, 0, 0, 54, 0, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Akash', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-22 20:16:32', NULL, NULL, NULL, 'order/PQ-202420_invoice.pdf', 3, NULL, NULL, '2024-09-22 20:16:32', '2024-09-22 20:16:32'),
(21, 'PQ-202421', 3, 1, 143, 0, 0, 143, 2, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'BD', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'BD', 'Afghanistan', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-09-22 20:28:59', NULL, NULL, NULL, 'order/PQ-202421_invoice.pdf', 3, NULL, NULL, '2024-09-22 20:28:59', '2024-09-22 20:29:00'),
(22, 'PQ-202422', 1, 1, 99, 0, 0, 99, 1, 0, 'stripe', 'unpaid', 'pending', 'no', 'Rashed', 'Raj', 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', '1206', 'essex', 'Bangladesh', NULL, NULL, NULL, 'rpplabon@gmail.com', '01620222616', 'Mirpur, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-10-01 12:54:32', NULL, NULL, NULL, 'order/PQ-202422_invoice.pdf', 1, NULL, NULL, '2024-10-01 12:54:32', '2024-10-01 12:54:33'),
(23, 'PQ-202423', 3, 1, 514, 0, 0, 514, 6, 0, 'stripe', 'unpaid', 'pending', 'no', 'Akash', 'Mirza', 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', '1200', 'Bangladesh', 'Bangladesh', NULL, NULL, NULL, 'akashvai01726@gmail.com', '01918861101', 'flate number 2, Dhaka', NULL, NULL, 'Afghanistan', NULL, NULL, NULL, '2024-10-31 19:38:22', NULL, NULL, NULL, 'order/PQ-202423_invoice.pdf', 3, NULL, NULL, '2024-10-31 19:38:22', '2024-10-31 19:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_sku` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `user_id`, `product_name`, `product_color`, `product_sku`, `price`, `tax`, `quantity`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '1 Compartment Meal Prep Containers (950ml) – Pack Of 30', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 60, 0, 12, 720, '2024-08-28 23:03:02', '2024-08-28 23:03:02'),
(2, 2, 1, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 10', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 99, 0, 2, 198, '2024-08-29 09:38:13', '2024-08-29 09:38:13'),
(3, 2, 4, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 15', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 54, 0, 3, 162, '2024-08-29 09:38:13', '2024-08-29 09:38:13'),
(4, 2, 2, 3, '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', NULL, NULL, 90, 0, 2, 180, '2024-08-29 09:38:13', '2024-08-29 09:38:13'),
(5, 4, 16, 3, 'Airtight Food Storage Container Set- Leakproof Tupperware Sets with Lids (Pack of 7)', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 69, 0, 8, 552, '2024-08-31 13:21:17', '2024-08-31 13:21:17'),
(6, 5, 4, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 15', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 54, 0, 7, 378, '2024-09-01 18:34:49', '2024-09-01 18:34:49'),
(7, 5, 2, 3, '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', NULL, NULL, 90, 0, 5, 450, '2024-09-01 18:34:49', '2024-09-01 18:34:49'),
(8, 6, 21, 5, 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', NULL, NULL, 64, 0, 1, 64, '2024-09-02 13:14:42', '2024-09-02 13:14:42'),
(9, 7, 2, 1, '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', NULL, NULL, 90, 0, 1, 90, '2024-09-02 14:30:31', '2024-09-02 14:30:31'),
(10, 8, 15, 3, 'Food Containers Pack of 10 Microwavable, Freezable, Airtight (Mix Color)', '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 89, 0, 1, 89, '2024-09-02 15:29:16', '2024-09-02 15:29:16'),
(11, 9, 18, 3, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 16)', NULL, NULL, 79, 0, 2, 158, '2024-09-02 15:32:46', '2024-09-02 15:32:46'),
(12, 10, 15, 3, 'Food Containers Pack of 10 Microwavable, Freezable, Airtight (Mix Color)', '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 89, 0, 1, 89, '2024-09-02 18:55:27', '2024-09-02 18:55:27'),
(13, 10, 4, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 15', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 54, 0, 1, 54, '2024-09-02 18:55:27', '2024-09-02 18:55:27'),
(14, 10, 2, 3, '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', NULL, NULL, 90, 0, 1, 90, '2024-09-02 18:55:27', '2024-09-02 18:55:27'),
(15, 11, 21, 6, 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', NULL, NULL, 64, 0, 13, 832, '2024-09-03 18:47:30', '2024-09-03 18:47:30'),
(16, 12, 14, 3, 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Mix Color)', '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"}]', NULL, 69, 0, 1, 69, '2024-09-05 14:59:17', '2024-09-05 14:59:17'),
(17, 12, 13, 3, 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Blue)', '[{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 69, 0, 1, 69, '2024-09-05 14:59:17', '2024-09-05 14:59:17'),
(18, 12, 5, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 30', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 60, 0, 1, 60, '2024-09-05 14:59:17', '2024-09-05 14:59:17'),
(19, 13, 5, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 30', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 60, 0, 1, 60, '2024-09-09 19:02:52', '2024-09-09 19:02:52'),
(20, 13, 21, 3, 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', NULL, NULL, 64, 0, 1, 64, '2024-09-09 19:02:52', '2024-09-09 19:02:52'),
(21, 13, 17, 3, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 8)', NULL, NULL, 79, 0, 1, 79, '2024-09-09 19:02:52', '2024-09-09 19:02:52'),
(22, 14, 18, 1, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 16)', NULL, NULL, 79, 0, 1, 79, '2024-09-11 16:07:35', '2024-09-11 16:07:35'),
(23, 15, 16, 3, 'Airtight Food Storage Container Set- Leakproof Tupperware Sets with Lids (Pack of 7)', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 69, 0, 1, 69, '2024-09-18 14:31:34', '2024-09-18 14:31:34'),
(24, 15, 11, 3, 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Grey)', '[{\"value\":\"Gray\",\"color\":\"#BEBEBE\"}]', NULL, 69, 0, 1, 69, '2024-09-18 14:31:34', '2024-09-18 14:31:34'),
(25, 16, 16, 3, 'Airtight Food Storage Container Set- Leakproof Tupperware Sets with Lids (Pack of 7)', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 69, 0, 1, 69, '2024-09-18 14:34:28', '2024-09-18 14:34:28'),
(26, 16, 11, 3, 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Grey)', '[{\"value\":\"Gray\",\"color\":\"#BEBEBE\"}]', NULL, 69, 0, 1, 69, '2024-09-18 14:34:28', '2024-09-18 14:34:28'),
(27, 17, 5, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 30', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 60, 0, 1, 60, '2024-09-22 17:30:47', '2024-09-22 17:30:47'),
(28, 17, 21, 3, 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', NULL, NULL, 64, 0, 1, 64, '2024-09-22 17:30:47', '2024-09-22 17:30:47'),
(29, 18, 2, 3, '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', NULL, NULL, 90, 0, 1, 90, '2024-09-22 17:55:02', '2024-09-22 17:55:02'),
(30, 18, 15, 3, 'Food Containers Pack of 10 Microwavable, Freezable, Airtight (Mix Color)', '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 89, 0, 1, 89, '2024-09-22 17:55:02', '2024-09-22 17:55:02'),
(31, 18, 17, 3, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 8)', NULL, NULL, 79, 0, 1, 79, '2024-09-22 17:55:02', '2024-09-22 17:55:02'),
(32, 19, 4, 3, '1 Compartment Meal Prep Containers (950ml) – Pack Of 15', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 54, 0, 1, 54, '2024-09-22 20:16:16', '2024-09-22 20:16:16'),
(33, 21, 21, 3, 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', NULL, NULL, 64, 0, 1, 64, '2024-09-22 20:28:59', '2024-09-22 20:28:59'),
(34, 21, 17, 3, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 8)', NULL, NULL, 79, 0, 1, 79, '2024-09-22 20:28:59', '2024-09-22 20:28:59'),
(35, 22, 1, 1, '1 Compartment Meal Prep Containers (950ml) – Pack Of 10', '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 99, 0, 1, 99, '2024-10-01 12:54:32', '2024-10-01 12:54:32'),
(36, 23, 19, 3, 'Plastic Medium Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 250 ml (Pack Of 8)', NULL, NULL, 89, 0, 4, 356, '2024-10-31 19:38:22', '2024-10-31 19:38:22'),
(37, 23, 18, 3, 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 16)', NULL, NULL, 79, 0, 2, 158, '2024-10-31 19:38:22', '2024-10-31 19:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_banners`
--

CREATE TABLE `page_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `badge` varchar(191) DEFAULT NULL,
  `button_name` varchar(200) DEFAULT NULL,
  `button_link` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `banner_link` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'inactive,active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_banners`
--

INSERT INTO `page_banners` (`id`, `page_name`, `slug`, `image`, `bg_image`, `badge`, `button_name`, `button_link`, `title`, `subtitle`, `banner_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home_slider', 'home-slider', 'pagebanner/image/qaOMaw4eoP1724823997.png', 'pagebanner/bg_image/USplKd20wm1724824389.jpg', NULL, NULL, NULL, 'Premium Meal Prep Boxes', 'Keep Meals Fresh and Organized with Durable Packaging Solutions', NULL, 'inactive', '2024-08-28 09:40:45', '2024-09-16 17:17:30'),
(2, 'home_slider', 'home-slider-1', 'pagebanner/image/WMKAzKAkRM1724825184.png', 'pagebanner/bg_image/SIf7xPsvzh1724825184.jpg', NULL, NULL, NULL, 'Versatile Takeaway Boxes', 'Secure, Stylish, and Ready for Any Meal on the Go', NULL, 'inactive', '2024-08-28 10:06:24', '2024-09-16 17:17:24'),
(3, 'home_slider', 'home-slider-2', NULL, 'pagebanner/bg_image/sEEcKBQVRf1726573481.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-09-16 17:16:21', '2024-09-17 15:44:41'),
(4, 'home_slider', 'home-slider-3', NULL, 'pagebanner/bg_image/YdtAdjCMIU1726641925.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-09-18 10:45:25', '2024-09-18 10:45:25'),
(5, 'home_slider', 'home-slider-4', NULL, 'pagebanner/bg_image/TIyvqOiK411726641936.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-09-18 10:45:36', '2024-09-18 10:45:36'),
(6, 'home_slider', 'home-slider-5', NULL, 'pagebanner/bg_image/LOAUt826Nc1726652233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-09-18 10:45:48', '2024-09-18 13:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'view role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(2, 'edit role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(3, 'delete role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(4, 'create role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(5, 'give permission role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(6, 'store permission role', 'admin', 'Role', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(7, 'view permission', 'admin', 'Permission', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(8, 'edit permission', 'admin', 'Permission', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(9, 'delete permission', 'admin', 'Permission', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(10, 'create permission', 'admin', 'Permission', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(11, 'view email settings', 'admin', 'Email Settings', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(12, 'create email settings', 'admin', 'Email Settings', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(13, 'edit email settings', 'admin', 'Email Settings', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(14, 'delete email settings', 'admin', 'Email Settings', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(15, 'toggle status email settings', 'admin', 'Email Settings', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(16, 'view user', 'admin', 'User', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(17, 'create user', 'admin', 'User', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(18, 'show user', 'admin', 'User', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(19, 'edit user', 'admin', 'User', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(20, 'delete user', 'admin', 'User', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(21, 'view staff', 'admin', 'Staff', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(22, 'create staff', 'admin', 'Staff', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(23, 'show staff', 'admin', 'Staff', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(24, 'edit staff', 'admin', 'Staff', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(25, 'delete staff', 'admin', 'Staff', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(26, 'view categories', 'admin', 'Categories', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(27, 'show categories', 'admin', 'Categories', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(28, 'edit categories', 'admin', 'Categories', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(29, 'delete categories', 'admin', 'Categories', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(30, 'create categories', 'admin', 'Categories', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(31, 'download backup', 'admin', 'Backup', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(32, 'view log', 'admin', 'Log', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(33, 'show log', 'admin', 'Log', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(34, 'delete log', 'admin', 'Log', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(35, 'download log', 'admin', 'Log', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(36, 'view activity logs', 'admin', 'Activity Logs', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(37, 'show activity logs', 'admin', 'Activity Logs', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(38, 'delete activity logs', 'admin', 'Activity Logs', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(39, 'view tag', 'admin', 'Tags', '2024-08-27 11:32:41', '2024-08-27 11:32:41'),
(40, 'show tag', 'admin', 'Tags', '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(41, 'edit tag', 'admin', 'Tags', '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(42, 'delete tag', 'admin', 'Tags', '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(43, 'create tag', 'admin', 'Tags', '2024-08-27 11:32:42', '2024-08-27 11:32:42'),
(44, 'view banner', 'admin', 'Banners', '2024-08-27 11:32:42', '2024-08-27 11:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`category_id`)),
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku_code` varchar(255) DEFAULT NULL,
  `mf_code` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `barcode_id` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `color` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`color`)),
  `video_link` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `specification` longtext DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `box_contains` int(11) DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `box_price` double DEFAULT NULL,
  `box_discount_price` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `unit_discount_price` double DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `box_stock` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `is_refurbished` varchar(10) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_keywords`)),
  `meta_description` text DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `status` enum('published','draft','inactive') NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `slug`, `sku_code`, `mf_code`, `product_code`, `barcode_id`, `barcode`, `tags`, `color`, `video_link`, `short_description`, `overview`, `description`, `specification`, `warranty`, `thumbnail`, `box_contains`, `vat`, `tax`, `box_price`, `box_discount_price`, `unit_price`, `unit_discount_price`, `product_type`, `box_stock`, `stock`, `is_refurbished`, `length`, `width`, `height`, `meta_title`, `meta_keywords`, `meta_description`, `create_date`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"11\"]', '1 Compartment Meal Prep Containers (950ml) – Pack Of 10', '1-compartment-meal-prep-containers-950ml-pack-of-10', 'ARS-BR1', 'ARS-BR1', '5060683770800', '5060683770800', NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 'Versatile Usage: These containers are not just for meal prep—they are perfect for takeaway, providing a convenient option for on-the-go individuals.\r\n- Space-Saving and Eco-Friendly: The stackable design of these containers not only saves space in your kitchen or fridge but also contributes to eco-friendly practices by encouraging reusability.\r\n- Plastic construction: The containers are made from sturdy plastic, which is durable and long-lasting. This premium quality plastic makes it very sturdy and hardy.\r\n- Suitable for adults and kids: These containers are suitable for both adults and kids, making them a versatile option for meal prep and lunch packing.\r\n- Efficient Food Preservation: Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.', '<p><strong>Compact &amp; Stackable Design:</strong> Our meal prep containers are rectangular and stackable, with 10 boxes and 10 lids each. Made of durable BPA-free plastic, each box holds 830ml/28oz of food, sized at 8.7” x 6.1” x 2.2”.<br><strong>BPA-Free &amp; Food Safe:</strong> Crafted from BPA-free plastic, our containers are designed for food safety and storage, ensuring your meals stay fresh and free from harmful materials.<br><strong>Microwave &amp; Freezer Friendly:</strong> Microwave and freezer safe, these containers are perfect for meal prep, allowing you to plan ahead and keep your food fresh for longer. (Note: Avoid using lids in microwave or freezer)<br><strong>Reusable &amp; Versatile:</strong> These containers are reusable and stackable, ideal for various occasions like picnics, parties, or bulk food storage. Use them for meal prep, takeaway, or selling bulk food items.<br><strong>Fresh Food Anywhere:</strong> Keep your meals fresh and appetizing outside the home with our food storage boxes. Perfect for lunches, breakfasts, or portion-controlled servings, these containers ensure your food stays delicious wherever you go.</p>', '<p><strong>- Versatile Usage:</strong> These containers are not just for meal prep—they are perfect for takeaway, providing a convenient option for on-the-go individuals.<br><strong>- Space-Saving and Eco-Friendly:</strong> The stackable design of these containers not only saves space in your kitchen or fridge but also contributes to eco-friendly practices by encouraging reusability.<br><strong>- Plastic construction:</strong> The containers are made from sturdy plastic, which is durable and long-lasting. This premium quality plastic makes it very sturdy and hardy.<br><strong>- Suitable for adults and kids:</strong> These containers are suitable for both adults and kids, making them a versatile option for meal prep and lunch packing.<br><strong>- Efficient Food Preservation:</strong> Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.<br><br><strong>Satisfaction Guarantee:</strong><br>- At Neez, we prioritize customer satisfaction and aim to resolve any concerns related to our products and services. If you are facing any issues, please don\'t hesitate to get in touch with us for assistance.</p>', '<p><strong>Specifications:</strong><br>- Product Name: Reusable Meal Prep Containers<br>- Item Number: 30 Piece Food Prep Boxes<br>- Compartment: One Compartment of Each Box<br>- Each Item Capacity: 950 ML or 32 OZ<br>- Each Item Dimension: 8.7” (22CM) x 5.9” (15CM) x 2.2” (5.5CM)<br>- Material: Plastic<br>- Color: Black</p>', NULL, 'products/thumbnail/rvBMkP0kJk1724828238.jpg', 24, 10, NULL, 99, NULL, 4.13, 0, NULL, 49, NULL, '0', 45, 45, 48, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 10:57:18', '2024-10-01 12:54:32'),
(2, 1, '[\"11\"]', '2 Compartment Meal Prep Containers (830ml) – Pack Of 10', '2-compartment-meal-prep-containers-830ml-pack-of-10', 'ARS-BR2', 'ARS-BR2', '5060683770817', '5060683770817', NULL, NULL, NULL, NULL, 'Convenient and eco-friendly, these BPA-free containers feature two compartments for organized meal storage. Perfect for portion control and maintaining freshness.', '<h3>Benefits:</h3><p><strong>- Versatile Usage:</strong> These containers are not just for meal prep—they are perfect for takeaway, providing a convenient option for on-the-go individuals.<br><strong>- Space-Saving and Eco-Friendly:</strong> The stackable design of these containers not only saves space in your kitchen or fridge but also contributes to eco-friendly practices by encouraging reusability.<br><strong>- Plastic construction:</strong> The containers are made from sturdy plastic, which is durable and long-lasting. This premium quality plastic makes it very sturdy and hardy.<br><strong>- Suitable for adults and kids:</strong> These containers are suitable for both adults and kids, making them a versatile option for meal prep and lunch packing.<br><strong>- Efficient Food Preservation:</strong> Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</p>', '<h3><strong>Key Features</strong></h3><p><strong>Compact &amp; Stackable Design:</strong> Our meal prep containers are rectangular and stackable, with 10 boxes and 10 lids each. Made of durable BPA-free plastic, each box holds 830ml/28oz of food, sized at 8.7” x 6.1” x 2.2”.<br><strong>BPA-Free &amp; Food Safe:</strong> Crafted from BPA-free plastic, our containers are designed for food safety and storage, ensuring your meals stay fresh and free from harmful materials.<br><strong>Microwave &amp; Freezer Friendly:</strong> Microwave and freezer safe, these containers are perfect for meal prep, allowing you to plan ahead and keep your food fresh for longer. (Note: Avoid using lids in microwave or freezer)<br><strong>Reusable &amp; Versatile:</strong> These containers are reusable and stackable, ideal for various occasions like picnics, parties, or bulk food storage. Use them for meal prep, takeaway, or selling bulk food items.<br><strong>Fresh Food Anywhere:</strong> Keep your meals fresh and appetizing outside the home with our food storage boxes. Perfect for lunches, breakfasts, or portion-controlled servings, these containers ensure your food stays delicious wherever you go.</p><h3>Benefits:</h3><p><strong>- Versatile Usage:</strong> These containers are not just for meal prep—they are perfect for takeaway, providing a convenient option for on-the-go individuals.<br><strong>- Space-Saving and Eco-Friendly:</strong> The stackable design of these containers not only saves space in your kitchen or fridge but also contributes to eco-friendly practices by encouraging reusability.<br><strong>- Plastic construction:</strong> The containers are made from sturdy plastic, which is durable and long-lasting. This premium quality plastic makes it very sturdy and hardy.<br><strong>- Suitable for adults and kids:</strong> These containers are suitable for both adults and kids, making them a versatile option for meal prep and lunch packing.<br><strong>- Efficient Food Preservation:</strong> Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</p>', '<p><strong>Specifications:</strong><br>- Product Name: Reusable Meal Prep Containers<br>- Item Number: 30 Piece Food Prep Boxes<br>- Compartment: One Compartment of Each Box<br>- Each Item Capacity: 830 ML or 32 OZ<br>- Each Item Dimension: 8.7” (22CM) x 5.9” (15CM) x 2.2” (5.5CM)<br>- Material: Plastic<br>- Color: Black</p>', NULL, 'products/thumbnail/9Q192TgtGe1724833164.jpeg', 30, 10, NULL, 90, NULL, 3, 0, NULL, 8, NULL, '0', 48, 48, 15, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 12:19:24', '2024-09-22 17:55:02'),
(4, 1, '[\"11\"]', '1 Compartment Meal Prep Containers (950ml) – Pack Of 15', '1-compartment-meal-prep-containers-950ml-pack-of-15', 'NZ-BR4', 'NZ-BR4', NULL, NULL, NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 'Stay organized and efficient with the Neez 15 Pack Meal Prep Containers. These BPA-free plastic containers feature a single compartment, making them perfect for portioning out your meals. With microwave-safe and freezer-friendly properties, they’re versatile for both reheating and storing. Plus, the tight-fitting lids ensure your food stays fresh. Each container holds 950 ml, providing ample space for your favorite dishes.', '<p><strong>Neez 15 Pack Meal Prep Containers: Your Perfect Food Storage Solution</strong></p><p>🍽️ <strong>Stay Organized and Efficient:</strong> The Neez 15 Pack Meal Prep Containers are designed to simplify your meal planning. Whether you’re a busy professional, a fitness enthusiast, or a parent juggling family meals, these containers have got you covered.</p><p>🌟 <strong>Key Features:</strong></p><ul><li><strong>1 Compartment Design:</strong> Each container features a single compartment, allowing you to portion out your meals effectively. No more mixing flavors or worrying about leaky sauces!</li><li><strong>Generous Capacity:</strong> With a spacious 950 ml capacity, these containers hold substantial portions. Fill them with your favorite stir-fries, salads, or hearty stews.</li><li><strong>Microwave-Safe and Freezer-Friendly:</strong> These containers are built for convenience. Pop them in the microwave to reheat your meals, and when you need to store leftovers, toss them in the freezer.</li><li><strong>Tight-Fitting Lids:</strong> The secure lids keep your food fresh and prevent spills. Say goodbye to messy lunch bags!</li><li><strong>BPA-Free Plastic:</strong> Your health matters. These containers are made from BPA-free plastic, ensuring safe food storage.</li></ul>', '<p>🔥 <strong>Versatility at Its Best:</strong> Whether you’re prepping meals for the week, packing lunches for work, or storing leftovers, the Neez containers adapt effortlessly. They’re also great for picnics, road trips, and camping adventures.</p><p>👍 <strong>Why Choose Neez?</strong></p><ul><li><strong>Quality Assurance:</strong> Neez prioritizes quality and durability. These containers are built to withstand daily use.</li><li><strong>Eco-Friendly:</strong> Reusable containers mean less waste. Make a positive impact on the environment.</li><li><strong>Affordable Convenience:</strong> With 15 containers in one pack, you’ll always have a fresh one ready to go.</li></ul><p>🌮 <strong>Get Creative:</strong> Don’t limit yourself to just meal prep! Use these containers for organizing snacks, storing craft supplies, or even as mini planters</p>', '<ul><li>Material -Plastic</li><li>Product dimensions- 8.7” (22CM) x 5.9” (15CM) x 2.2” (5.5CM) (Approx)</li><li>Product care instructions- Refrigerator, dishwasher&amp;microwave safe</li><li>Item volume- 950 ML(Approx)</li><li>Shape - Rectangular</li><li>Unit count -15 count</li><li>Item Weight – 735gm(Approx)</li></ul>', NULL, 'products/thumbnail/Zyf7tKLuQO1724850661.jpg', 18, 15, NULL, 54, NULL, 3, 0, NULL, 18, NULL, '0', 46, 46, 52, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 17:11:01', '2024-09-22 20:16:16'),
(5, 1, '[\"11\"]', '1 Compartment Meal Prep Containers (950ml) – Pack Of 30', '1-compartment-meal-prep-containers-950ml-pack-of-30', 'NZ-BR5', 'NZ-BR5', NULL, NULL, NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 'Stay organized and efficient with the Neez 15 Pack Meal Prep Containers. These BPA-free plastic containers feature a single compartment, making them perfect for portioning out your meals. With microwave-safe and freezer-friendly properties, they’re versatile for both reheating and storing. Plus, the tight-fitting lids ensure your food stays fresh. Each container holds 950 ml, providing ample space for your favorite dishes.', '<ul><li>Compact Size: It has [30 Boxes + 30 Lids] Shape is Rectangular, Made of hardy plastic, Each box capacity of 950 ml or 32 OZ, Each product size is 8.7” (22CM) x 5.9” (15CM) x 2.2” (5.5CM). Box color Black and the lids Transparent.</li><li>BPA Free Plastic: This product is made of BPA Free plastic, there is no harmful material for food Because it is specially designed for food storage and food safety.</li><li>Microwave &amp; Freezer Safe: This food prep box is very hardy it\'s fully freezer and microwave-safe which makes them ideal for meal prepping and planning ahead. Keep your food for a long time.(NOTE: Avoid Lids In Microwave or Freeze)</li><li>Reusable &amp; Stackable Box Set: These food tubs with lids are completely reusable and stackable with each other. Perfect for Programmes, Occasions, picnic, Parties, Bulk food storage, takeaway food containers, or selling bulk food.</li><li>Food Storage Box: This food storage box keeps your food fresh for a long time and you take away outside the home, Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</li></ul>', '<p>🔥 <strong>Versatility at Its Best:</strong> Whether you’re prepping meals for the week, packing lunches for work, or storing leftovers, the Neez containers adapt effortlessly. They’re also great for picnics, road trips, and camping adventures.</p><p>👍 <strong>Why Choose Neez?</strong></p><ul><li><strong>Quality Assurance:</strong> Neez prioritizes quality and durability. These containers are built to withstand daily use.</li><li><strong>Eco-Friendly:</strong> Reusable containers mean less waste. Make a positive impact on the environment.</li><li><strong>Affordable Convenience:</strong> With 15 containers in one pack, you’ll always have a fresh one ready to go.</li></ul><p>🌮 <strong>Get Creative:</strong> Don’t limit yourself to just meal prep! Use these containers for organizing snacks, storing craft supplies, or even as mini planters</p>', '<ul><li>Material: Plastic</li><li>Product dimensions: 8.7” (22CM) x 5.9” (15CM) x 2.2” (5.5CM) (Approx)</li><li>Product care instructions: Refrigerator, dishwasher&amp;microwave safe</li><li>Item volume: 950 ML(Approx)</li><li>Shape: Rectangular</li><li>Unit count: 30 count</li><li>Item Weight: 1470 gm(Approx)</li></ul>', NULL, 'products/thumbnail/i0hPv5RXUq1724851015.jpg', 12, 15, NULL, 60, NULL, 5, 0, NULL, 17, NULL, '0', 46, 46, 58, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 17:16:55', '2024-09-22 17:30:47'),
(6, 1, '[\"11\"]', '2 Compartment Meal Prep Containers (830ml) – Pack Of 30', '2-compartment-meal-prep-containers-830ml-pack-of-30', 'NZ-BR6', 'NZ-BR6', NULL, NULL, NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, NULL, '<ul><li>Compact Size: It has [30 Boxes + 30 Lids] Shape is Rectangular, Made of hardy plastic, Each box capacity of 830 ml or 28 OZ, Each product size is 8.7” (22CM) x 6.1” (15.5CM) x 2.2” (5.5CM). Box color Black and the lids Transparent.</li><li>BPA Free Plastic: This product is made of BPA Free plastic, there is no harmful material for food Because it is specially designed for food storage and food safety.</li><li>Microwave &amp; Freezer Safe: This food prep box is very hardy it\'s fully freezer and microwave-safe which makes them ideal for meal prepping and planning ahead. Keep your food for a long time.(NOTE: Avoid Lids In Microwave or Freeze)</li><li>Reusable &amp; Stackable Box Set: These food tubs with lids are completely reusable and stackable with each other. Perfect for Programmes, Occasions, picnic, Parties, Bulk food storage, takeaway food containers, or selling bulk food.</li><li>Food Storage Box: This food storage box keeps your food fresh for a long time and you take away outside the home, Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</li></ul>', '<p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/052a182f-5db1-46b6-9a0a-03e6b37b29e2.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Kitchen products. We offer highest quality service possible.\"></p><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/91a30717-de6c-4080-96e0-2066375a40ef.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"2 compartment,Lunch Container,Meal Prep Boxes,Food Containers,Food Prep,Plastic Box\"></p><h3><strong>Premium Quality Design</strong></h3><p>&nbsp;</p><ul><li>Neez lunch boxes are made of sturdy plastic that is both long-lasting and durable.</li><li>These food containers are BPA-free and Food-Grade, providing excellent support for carrying your lunch.</li><li>These long-lasting containers can be reused as many times as you want.</li></ul><p>&nbsp;</p><h3><strong>Two Compartment Storage Containers</strong></h3><ul><li>When making a healthy meal for the week ahead or storing restaurants in your fridge, two-compartment storage containers are the ideal answer.</li></ul><p>&nbsp;</p><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/1aa7515c-d357-4150-b389-be9eeff156c3.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"2 compartment,Lunch Container,Meal Prep Boxes,Food Containers,Food Prep,Plastic Box\"></p><h3><strong>Features that are useful</strong></h3><ul><li>Neez plastic containers with lids have useful features like a transparent lid that is refrigerator-safe and dishwasher-safe.</li><li>Save space by stacking and reusing.</li><li>Chicken, rice, and vegetables may all be stored in the huge capacity box.</li><li>Also excellent for salads.</li></ul>', '<ul><li>Material: Plastic</li><li>Product dimensions: 8.7” (22CM) x 6.1” (15.5CM) x 2.2” (5.5CM)</li><li>Product care instructions: Refrigerator, Dishwasher&amp;Microwave Safe</li><li>Item volume: 830 ml (Approx)</li><li>Item Weight: 1400 gm (Approx)</li><li>Shape: Rectangular</li><li>Unit count: 30.0 count</li></ul>', NULL, 'products/thumbnail/mlO2lIA9qm1724851648.jpg', 12, 15, NULL, 60, NULL, 5, 0, NULL, NULL, NULL, '0', 48, 47, 44, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(7, 1, '[\"11\"]', '3 Compartment Meal Prep Containers (950ml) – Pack Of 10', '3-compartment-meal-prep-containers-950ml-pack-of-10', 'ARS-BR3', 'ARS-BR3', '5060683770787', '5060683770787', NULL, NULL, NULL, NULL, 'Stay organized and simplify your meal planning with our 3 Compartment Meal Prep Containers. This pack of 10 containers features three separate compartments, allowing you to portion out your meals effectively. Each container has a generous capacity of 950ml, making them ideal for hearty lunches or dinners. Whether you’re meal prepping for the week or need a convenient way to store leftovers, these BPA-free containers have got you covered.', '<ul><li>Compact Size: It has [10 Boxes + 10 Lids] Shape is Round, Made of hardy plastic, Each box capacity of 950 ml or 32 OZ, Each product size is 9.1” (23CM) x 1.8” (4.5CM). Box color Black and the lids Transparent.</li><li>BPA Free Plastic: This product is made of BPA Free plastic, there is no harmful material for food Because it is specially designed for food storage and food safety.</li><li>Microwave &amp; Freezer Safe: This food prep box is very hardy it\'s fully freezer and microwave-safe which makes them ideal for meal prepping and planning ahead. Keep your food for a long time.(NOTE: Avoid Lids In Microwave or Freeze)</li><li>Reusable &amp; Stackable Box Set: These food tubs with lids are completely reusable and stackable with each other. Perfect for Programmes, Occasions, picnic, Parties, Bulk food storage, takeaway food containers, or selling bulk food.</li><li>Food Storage Box: This food storage box keeps your food fresh for a long time and you take away outside the home, Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ea96e591-c036-4e53-847e-a33626cbafe5.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Kitchen products. We offer highest quality service possible.\"></figure><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/c363f19f-ed78-4db5-92e2-a934c062e046.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food containers, plastic box, salad lunch box, bento box, meal prep container, food storage \"></p><h3><strong>Premium Quality Design</strong></h3><ul><li>Neez 3-compartment food containers are made of sturdy plastic that is both long-lasting and durable.</li><li>These food containers are BPA-free and Food-Grade, making them ideal for transporting your lunch.</li><li>These long-lasting containers can be reused indefinitely.</li></ul><p>&nbsp;</p><h3><strong>3 Compartment Storage Containers</strong></h3><ul><li>When preparing a healthy meal for the week ahead or storing restaurants in your fridge, 3-compartment storage containers are the ideal solution.</li></ul><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/cbe929aa-1b6e-43d7-b263-8f840da46806.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food containers, plastic box, salad lunch box, bento box, meal prep container, food storage\"></p><h3><strong>Useful Features</strong></h3><p>&nbsp;</p><ul><li>Neez bento lunch boxes with lids have useful features like a transparent lid that is refrigerator-safe and dishwasher-safe.</li><li>Stacking and reusing items saves space.</li><li>The large capacity box can hold chicken, rice, and vegetables. Also great for salads.</li></ul>', '<p>Material -Plastic</p><p>Product dimensions - 9.1” (23CM) x 1.8” (4.5CM)</p><p>Product care instructions -Refrigerator, Dishwasher &amp; Microwave Safe</p><p>Item volume - 950 ML</p><p>Item Weight –680 gm</p><p>Shape - Round</p><p>Unit count -10.0 count</p>', NULL, 'products/thumbnail/QXAxXJKpyh1724919426.jpg', 20, 0, NULL, 80, NULL, 4, 0, NULL, NULL, NULL, '0', 58, 48, 47, NULL, NULL, NULL, '2024-08-28', '2', 'published', '2024-08-28 17:40:54', '2024-08-29 12:17:06'),
(8, 1, '[\"11\"]', '3 Compartment Meal Prep Containers (950ml) – Pack Of 30', '3-compartment-meal-prep-containers-950ml-pack-of-30', 'NZ-BR7', 'NZ-BR7', NULL, NULL, NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 'Stay organized and simplify your meal planning with our 3 Compartment Meal Prep Containers. This pack of 10 containers features three separate compartments, allowing you to portion out your meals effectively. Each container has a generous capacity of 950ml, making them ideal for hearty lunches or dinners. Whether you’re meal prepping for the week or need a convenient way to store leftovers, these BPA-free containers have got you covered.', '<ul><li>Compact Size: It has [10 Boxes + 10 Lids] Shape is Round, Made of hardy plastic, Each box capacity of 950 ml or 32 OZ, Each product size is 9.1” (23CM) x 1.8” (4.5CM). Box color Black and the lids Transparent.</li><li>BPA Free Plastic: This product is made of BPA Free plastic, there is no harmful material for food Because it is specially designed for food storage and food safety.</li><li>Microwave &amp; Freezer Safe: This food prep box is very hardy it\'s fully freezer and microwave-safe which makes them ideal for meal prepping and planning ahead. Keep your food for a long time.(NOTE: Avoid Lids In Microwave or Freeze)</li><li>Reusable &amp; Stackable Box Set: These food tubs with lids are completely reusable and stackable with each other. Perfect for Programmes, Occasions, picnic, Parties, Bulk food storage, takeaway food containers, or selling bulk food.</li><li>Food Storage Box: This food storage box keeps your food fresh for a long time and you take away outside the home, Whether it\'s lunch, breakfast, or portion-controlled servings, this box ensures your food remains appetizing outside the home.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ea96e591-c036-4e53-847e-a33626cbafe5.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Kitchen products. We offer highest quality service possible.\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/c363f19f-ed78-4db5-92e2-a934c062e046.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food containers, plastic box, salad lunch box, bento box, meal prep container, food storage\"></figure><h3><strong>Premium Quality Design</strong></h3><p>&nbsp;</p><ul><li>Neez 3 compartment food containers are made of sturdy plastic that is both long-lasting and durable.</li><li>These food containers are BPA-free and Food-Grade, making them ideal for transporting your lunch.</li><li>These long-lasting containers can be reused indefinitely.</li></ul><p>&nbsp;</p><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/5f3aa62c-6940-461e-ba83-9ffcfae27599.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food containers, plastic box, salad lunch box, bento box, meal prep container, food storage\"></figure><h3><strong>3 Compartment Storage Containers</strong></h3><p>&nbsp;</p><ul><li>When preparing a healthy meal for the week ahead or storing restaurants in your fridge, 3 compartment storage containers are the ideal solution.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/cbe929aa-1b6e-43d7-b263-8f840da46806.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food containers, plastic box, salad lunch box, bento box, meal prep container, food storage\"></figure><h3><strong>Useful Features</strong></h3><ul><li>Neez bento lunch boxes with lids have useful features like a transparent lid that is refrigerator-safe and dishwasher-safe.</li><li>Stacking and reusing items saves space.</li><li>The large capacity box can hold chicken, rice, and vegetables.</li><li>Also great for salads.</li></ul>', '<ul><li>Material: Plastic</li><li>Product dimensions: 9.1” (23CM) x 1.8” (4.5CM)</li><li>Product care instructions: Refrigerator, Dishwasher&amp;Microwave Safe</li><li>Item volume: 950 ml (Approx)</li><li>Item Weight: 2000 gm (Approx)</li><li>Shape: Round</li><li>Unit count: 30 count</li></ul>', NULL, 'products/thumbnail/HlOZCtfcT21724919745.jpg', 8, 0, NULL, 56, NULL, 7, 0, NULL, 20, NULL, '0', 47, 47, 58, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(9, 1, '[\"11\"]', '3 Compartments Bento Box (1.4L) - Lunch Box Airtight, BPA Free with Lids & Spoon (Purple)', '3-compartments-bento-box-14l-lunch-box-airtight-bpa-free-with-lids-spoon-purple', 'NZ-LBR3P', 'NZ-LBR3P', NULL, NULL, NULL, NULL, NULL, NULL, 'Get ready for versatile summer adventures with our Three-Sectioned Lunch Box! Whether you’re heading to the beach, enjoying a picnic in the park, or simply basking in the sun, this lightweight container is your ideal companion. With three compartments for organized snacking, microwave and freezer-safe features, and a transparent lid that lets you peek at your favorite treats, it’s the perfect addition to your sunny days. Plus, the vibrant purple color adds a splash of fun to your on-the-go lifestyle! 🌞🍉🥗', '<ul><li>Versatile Uses: Lunch Box is incredibly versatile and can be used for various purposes. It serves as storing and carrying snacks, a lunch box for adults, and more.</li><li>Three-sectioned lunch box Design: The lunch Box features three compartments, allowing for easy portion control and versatile packing of various foods in one container. Separate main course, sides, and snacks for a balanced meal.</li><li>Microwave and Freezer Safe: These meal prep containers are microwave and freezer safe, eliminating the need for additional containers. (Note: Its Recommended to avoid lids in Microwave)</li><li>Transparent Lid: The transparent lid of the bento Lunch Box allows you to easily see the contents inside without opening it. It helps you quickly identify your desired food items and plan your meals more efficiently.</li><li>Compact &amp; Lightweight: This Lunch Box is designed with dimensions of 23 x 17.5 x 5.5 with 1400ml capacity, It weighs just 150 grams &amp; Purple color which adds to its portability and convenience.</li></ul>', '<p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/774b2b0f-f26f-4b95-9cbf-6bf22234861a.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.We offer best quality service possible.\"></p><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/36468751-05cc-4745-a860-a37fab45a7ee.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></p><h3><strong>Superior Quality Purple Lunch Box</strong></h3><ul><li>Neez Lunch Box is made of high-quality plastic and provides long-lasting storage for your meals.</li><li>The robust design can sustain regular use and is ideal for a variety of uses.</li></ul><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/4c9a3b7e-b53c-407c-ba1c-cbd7a588eb47.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></p><h3><strong>Simple To Transport</strong></h3><ul><li>The size of the lunch box should be large enough to fulfill your meal requirements while remaining portable.</li><li>It should not be very large or hefty.</li><li>Lightweight &amp; easy to carry anywhere.</li></ul><figure class=\"table\"><table><thead><tr><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/cb8fad02-933b-47b5-bf78-6295add0d185.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></th><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/085613b4-207e-415e-b4f5-787ed1c57d4e.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></th></tr></thead><tbody><tr><td><h4>Lunch Container With Three Sections</h4><ul><li>The Lunch Box has three compartments for simple portion management and flexible packaging of different items in one container.</li><li>For a balanced dinner, separate the main entree, sides, and snacks.</li></ul></td><td><h4>Safe For The Microwave And The Freezer</h4><ul><li>These microwave and freezer-safe meal prep containers eliminate the need for additional containers.</li><li>(Note: It is best to avoid using lids in the microwave.)</li></ul></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎23L x 17.5W x 5.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Dry foods, Vegetables, Cake, Pastry, Crackers, Fruits</td></tr><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe</td></tr><tr><th>Container Shape</th><td>‎Rectangular</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎0.12 Kilograms</td></tr><tr><th>Product care instructions</th><td>‎Microwave safe</td></tr><tr><th>Item volume</th><td>‎1.4 Litres</td></tr><tr><th>Unit count</th><td>‎1.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎Rectangular</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Shape</th><td>‎Rectangular</td></tr><tr><th>Number of Pieces</th><td>‎1</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe</td></tr><tr><th>Included Components</th><td>‎1 Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎120 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/IDJod1MIrq1724920708.jpg', 54, 0, NULL, 19.99, NULL, 0.37, 0, NULL, NULL, NULL, '0', 63, 50, 47, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 12:38:28', '2024-08-29 12:42:08'),
(10, 1, '[\"11\"]', '3 Compartments Bento Box (1.4L) - Lunch Box Airtight, BPA Free with Lids & Spoon (Green)', '3-compartments-bento-box-14l-lunch-box-airtight-bpa-free-with-lids-spoon-green', 'NZ-LBR3C', 'NZ-LBR3C', NULL, NULL, NULL, NULL, '[{\"value\":\"Green\",\"color\":\"#33FF57\"}]', NULL, 'Get ready for versatile summer adventures with our Three-Sectioned Lunch Box! Whether you’re heading to the beach, enjoying a picnic in the park, or simply basking in the sun, this lightweight container is your ideal companion. With three compartments for organized snacking, microwave and freezer-safe features, and a transparent lid that lets you peek at your favorite treats, it’s the perfect addition to your sunny days. Plus, the vibrant purple color adds a splash of fun to your on-the-go lifestyle! 🌞🍉🥗', '<ul><li>Versatile Uses: Lunch Box is incredibly versatile and can be used for various purposes. It serves as storing and carrying snacks, a lunch box for adults, and more.</li><li>Three-sectioned lunch box Design: The lunch Box features three compartments, allowing for easy portion control and versatile packing of various foods in one container. Separate main course, sides, and snacks for a balanced meal.</li><li>Microwave and Freezer Safe: These meal prep containers are microwave and freezer safe, eliminating the need for additional containers. (Note: Its Recommended to avoid lids in Microwave)</li><li>Transparent Lid: The transparent lid of the bento Lunch Box allows you to easily see the contents inside without opening it. It helps you quickly identify your desired food items and plan your meals more efficiently.</li><li>Compact &amp; Lightweight: This Lunch Box is designed with dimensions of 23 x 17.5 x 5.5 with 1400ml capacity, It weighs just 150 grams &amp; Purple color which adds to its portability and convenience.</li></ul>', '<p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/1ddcf139-f30d-498c-926c-896e205663a3.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.We offer best quality service possible\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/be5d45e7-2543-44ce-a196-45bc2a38f724.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></figure><h3><strong>Premium Quality Green Lunch Box</strong></h3><p>&nbsp;</p><ul><li>Neez Lunch Box is made of high-quality plastic and provides long-lasting storage for your meals.</li><li>The robust design can sustain regular use and is ideal for a variety of uses.</li></ul><p>&nbsp;</p><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/04cd0bcf-8b0e-477e-9dd3-cc7a36483f83.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></figure><h3><strong>Product Specification</strong></h3><p>&nbsp;</p><ul><li>Material: PP(Polypropylene)</li><li>Product Dimensions: 9”(23 cm)x 6.88”(17.5 cm)x 2.16”(5.5 cm) (Approx)</li><li>Colour: Green</li><li>Weight: 115 gm (Approx)</li><li>Capacity: 1400ml (Approx)</li></ul><p>&nbsp;</p><p>&nbsp;</p><h3>&nbsp;</h3><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ce7b4d69-af53-4243-9989-abcd94572931.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"lunch box adults, bento box, food containers, lunch box compartments, multi compartment lunch box\"></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎23L x 17.5W x 5.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Dry foods, Vegetables, Cake, Pastry, Crackers, Fruits</td></tr><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe</td></tr><tr><th>Container Shape</th><td>‎Rectangular</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎0.12 Kilograms</td></tr><tr><th>Product care instructions</th><td>‎Microwave safe</td></tr><tr><th>Item volume</th><td>‎1.4 Litres</td></tr><tr><th>Unit count</th><td>‎1.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎Rectangular</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Shape</th><td>‎Rectangular</td></tr><tr><th>Number of Pieces</th><td>‎1</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe</td></tr><tr><th>Included Components</th><td>‎1 Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎120 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/aT60sFmYWH1724921915.jpg', 54, 0, NULL, 19.99, NULL, 0.37, 0, NULL, NULL, NULL, '0', 63, 50, 47, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(11, 1, '[\"11\"]', 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Grey)', 'food-containers-pack-of-5-microwavable-freezable-airtight-grey', 'NZ-FD5', 'NZ-FD5', NULL, NULL, NULL, NULL, NULL, NULL, 'Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats. Whether it’s crunchy nuts, juicy berries, or a mini salad, these BPA-free snack boxes keep your food fresh and ready to enjoy. They’re microwave-safe (just remember to remove the lids), freezer-friendly, and airtight. Say goodbye to spills and hello to snack convenience!” 🍱🔵', '<ul><li>Our plastic food containers with lids are fully microwave safe, so you can easily reheat meals without transferring. For safety, remove the lid before microwaving. Perfect for storing and reheating in small tupperware pots with lids.</li><li>Our food box features seals and secure lids to keep your food fresh and leak-free. Perfect as tupperware containers and food prep containers with lids, they come in various sizes for optimal pantry organization and extended food preservation.</li><li>Compact and Lightweight: Each small plastic container with lids has a 500ml capacity and dimensions of 15 x 10.5 x 5.5 centimeters, making them ideal as freezer boxes. They are compact, easy to store, and convenient to carry.</li><li>Our small plastic containers with lids are specially designed to withstand freezing temperatures, keeping your food fresh and protected from freezer burn. Ideal as small food containers with lids and versatile containers with lids for storage.</li><li>This plastic food storage box with lid is resistant to cracks, chips, and stains, ensuring durability for everyday use. Ideal as a food container, these Tupperware boxes and small containers with lids are perfect for long-term food storage needs.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/5872d16f-c656-4a2e-8559-d4c59de55d05.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.We offer best quality service\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/42becf73-af6b-4da2-8b4c-a0a49493e940.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers, food container, freezer storage boxes, airtight container, food containers\"></figure><h3><strong>Premium Quality Food Containers</strong></h3><ul><li>Neez freezer storage boxes are made of high-quality PP(polypropylene plastic).</li><li>Keep your food fresh for a long time.</li><li>These food container designs can withstand repeated usage and are suitable for a variety of applications.</li></ul><h3><strong>Semi Transparent Lids</strong></h3><ul><li>Neez food boxes are semi-transparent airtight containers that allow you to view what\'s inside without having to open them.</li><li>It makes it easier to choose foods you like and to plan your meals more efficiently.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/6df114c5-f942-4501-a7f6-2d25ef1f52dd.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers, food container, freezer storage boxes, airtight container, food containers\"></figure><h3><strong>Portable And Easy To Carry</strong></h3><ul><li>Neez food storage containers are lightweight and portable, making them ideal for on-the-go lives.</li><li>Pack your lunches, snacks, or dinners for work, school, or outdoor activities for easy, mess-free food storage.</li></ul>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎15L x 10.5W x 5.5H centimetres</td></tr><tr><th>Special feature</th><td>‎Microwave Safe, Air Tight</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎210 Grams</td></tr><tr><th>Product care instructions</th><td>‎Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎500 Millilitres</td></tr><tr><th>Unit count</th><td>‎5.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎container</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Number of Pack</th><td>‎5</td></tr><tr><th>Special Features</th><td>‎Microwave Safe, Air Tight</td></tr><tr><th>Included Components</th><td>‎Container Box with Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎210 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/NgWyBcjMot1724922530.jpg', 80, NULL, NULL, 69, NULL, 0.86, 0, NULL, 98, NULL, '0', 63, 59, 57, 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Grey)', NULL, '<p>Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats.</p>', '2024-08-29', '2', 'published', '2024-08-29 13:08:50', '2024-10-20 15:14:51'),
(12, 1, '[\"11\"]', 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Red)', 'food-containers-pack-of-5-microwavable-freezable-airtight-red', 'NZ-FD5-Red', 'NZ-FD5-Red', NULL, NULL, NULL, NULL, '[{\"value\":\"Red\",\"color\":\"#FF5733\"}]', NULL, 'Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats. Whether it’s crunchy nuts, juicy berries, or a mini salad, these BPA-free snack boxes keep your food fresh and ready to enjoy. They’re microwave-safe (just remember to remove the lids), freezer-friendly, and airtight. Say goodbye to spills and hello to snack convenience!” 🍱🔵', '<ul><li>Our plastic food containers with lids are fully microwave safe, so you can easily reheat meals without transferring. For safety, remove the lid before microwaving. Perfect for storing and reheating in small tupperware pots with lids.</li><li>Our food box features seals and secure lids to keep your food fresh and leak-free. Perfect as tupperware containers and food prep containers with lids, they come in various sizes for optimal pantry organization and extended food preservation.</li><li>Compact and Lightweight: Each small plastic container with lids has a 500ml capacity and dimensions of 15 x 10.5 x 5.5 centimeters, making them ideal as freezer boxes. They are compact, easy to store, and convenient to carry.</li><li>Our small plastic containers with lids are specially designed to withstand freezing temperatures, keeping your food fresh and protected from freezer burn. Ideal as small food containers with lids and versatile containers with lids for storage.</li><li>This plastic food storage box with lid is resistant to cracks, chips, and stains, ensuring durability for everyday use. Ideal as a food container, these Tupperware boxes and small containers with lids are perfect for long-term food storage needs.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/cc9e37b0-6939-4bf5-a81b-c73b49837b1d.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/57345c5e-e0dc-4acc-9a52-b62cd493e44a.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Premium Quality Food Containers</strong></h3><ul><li>Neez freezer storage boxes are produced from high-quality polypropylene plastic (PP).</li><li>Keep food fresh for a long time.</li><li>These food container designs can survive continuous use and are appropriate for a wide range of applications.</li></ul><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/dc19a591-6a85-4829-a763-c07cd4c18575.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Functional Design</strong></h3><ul><li>The container has a clean and functional design, including smooth sides and a secure top.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ef61c6e0-479c-4425-84b5-f47f605e6d9e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Portable and Easy To Carry</strong></h3><ul><li>Neez food storage containers are light and portable.</li><li>For convenient, mess-free food storage, pack salad or pasta dishes and snacks, as well as cut fruits or nuts for work, school, or outdoor activities.</li></ul>', '<figure class=\"table\"><table><tbody><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Closure type</th><td>‎Snap</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA Free</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe., Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎500 Millilitres</td></tr><tr><th>Unit count</th><td>‎5.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Product Dimensions</th><td>‎15 x 10.5 x 5.5 cm; 220 g</td></tr><tr><th>Item model number</th><td>‎5ps-Box-RedLids</td></tr><tr><th>Number of Pieces</th><td>‎5</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Included Components</th><td>‎Container Box with Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎220 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/GKp9SblgH21724923636.jpg', 80, NULL, NULL, 69, NULL, 0.86, 0, NULL, 100, NULL, '0', 61, 59, 57, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 13:27:17', '2024-08-29 13:27:17');
INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `slug`, `sku_code`, `mf_code`, `product_code`, `barcode_id`, `barcode`, `tags`, `color`, `video_link`, `short_description`, `overview`, `description`, `specification`, `warranty`, `thumbnail`, `box_contains`, `vat`, `tax`, `box_price`, `box_discount_price`, `unit_price`, `unit_discount_price`, `product_type`, `box_stock`, `stock`, `is_refurbished`, `length`, `width`, `height`, `meta_title`, `meta_keywords`, `meta_description`, `create_date`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(13, 1, '[\"11\"]', 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Blue)', 'food-containers-pack-of-5-microwavable-freezable-airtight-blue', 'NZ-FD5-Blue', 'NZ-FD5-Blue', NULL, NULL, NULL, NULL, '[{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 'Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats. Whether it’s crunchy nuts, juicy berries, or a mini salad, these BPA-free snack boxes keep your food fresh and ready to enjoy. They’re microwave-safe (just remember to remove the lids), freezer-friendly, and airtight. Say goodbye to spills and hello to snack convenience!” 🍱🔵', '<ul><li>Our plastic food containers with lids are fully microwave safe, so you can easily reheat meals without transferring. For safety, remove the lid before microwaving. Perfect for storing and reheating in small tupperware pots with lids.</li><li>Our food box features seals and secure lids to keep your food fresh and leak-free. Perfect as tupperware containers and food prep containers with lids, they come in various sizes for optimal pantry organization and extended food preservation.</li><li>Compact and Lightweight: Each small plastic container with lids has a 500ml capacity and dimensions of 15 x 10.5 x 5.5 centimeters, making them ideal as freezer boxes. They are compact, easy to store, and convenient to carry.</li><li>Our small plastic containers with lids are specially designed to withstand freezing temperatures, keeping your food fresh and protected from freezer burn. Ideal as small food containers with lids and versatile containers with lids for storage.</li><li>This plastic food storage box with lid is resistant to cracks, chips, and stains, ensuring durability for everyday use. Ideal as a food container, these Tupperware boxes and small containers with lids are perfect for long-term food storage needs.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/05fa2b5a-c04c-4654-9885-4858539e6cc7.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/c52733ca-471d-4653-a464-aea9133e40ec.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Premium Quality Food Containers</strong></h3><ul><li>Neez freezer storage boxes are produced from high-quality polypropylene plastic (PP).</li><li>Keep food fresh for a long time.</li><li>These food container designs can survive continuous use and are appropriate for a wide range of applications.</li></ul><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/76e9c1d7-67f2-43f6-a87b-b43fee43663b.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Functional Design</strong></h3><ul><li>The container has a clean and functional design, including smooth sides and a secure top.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/c84d3c15-84a2-481a-b495-f3b1e7425cc5.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Portable And Easy To Carry</strong></h3><ul><li>Neez food storage containers are light and portable.</li><li>For convenient, mess-free food storage, pack salad or pasta dishes and snacks, as well as cut fruits or nuts for work, school, or outdoor activities.</li></ul><figure class=\"table\"><table><thead><tr><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/43aef668-d9d7-495f-8c6c-4b32941462c3.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/e6a3719d-329d-4b19-8f3e-6a7cfba3f06d.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th></tr></thead><tbody><tr><td><h4>Freezer Storage Boxes</h4><ul><li>Neez freezer storage boxes are carefully constructed to withstand freezing temperatures, ensuring that your food stays fresh and free of freezer temperature.</li></ul><p>&nbsp;</p></td><td><h4>Microwavable Containers Box</h4><ul><li>The Neez food storage container is microwave-safe, making it convenient to reheat meals without transferring them.</li><li>(Note: For safety, remove the lids before microwaving).</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/bf911536-5017-4472-9d94-7c5e3b2aeadd.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Versatile Use</strong></h3><ul><li>These versatile food containers are packaged in a set of five boxes, making them adaptable to your culinary needs.</li><li>The secure seal allows you to safely microwave your food, keep leftovers, and cook meals on the go.</li></ul>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎10.5L x 5.5W x 15.5H centimetres</td></tr><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Closure type</th><td>‎Snap</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe., Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎500 Millilitres</td></tr><tr><th>Unit count</th><td>‎5.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Number of Pieces</th><td>‎5</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Included Components</th><td>‎Container Box with Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎210 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/JpBMz6txEv1724924465.jpg', 80, NULL, NULL, 69, NULL, 0.86, 0, NULL, 99, NULL, '0', 61, 59, 57, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 13:41:05', '2024-09-05 14:59:17'),
(14, 1, '[\"11\"]', 'Food Containers Pack of 5 Microwavable, Freezable, Airtight (Mix Color)', 'food-containers-pack-of-5-microwavable-freezable-airtight-mix-color', 'NZ-FD5-5MC', 'NZ-FD5-5MC', NULL, NULL, NULL, NULL, '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"}]', NULL, 'Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats. Whether it’s crunchy nuts, juicy berries, or a mini salad, these BPA-free snack boxes keep your food fresh and ready to enjoy. They’re microwave-safe (just remember to remove the lids), freezer-friendly, and airtight. Say goodbye to spills and hello to snack convenience!” 🍱🔵', '<ul><li>Our plastic food containers with lids are fully microwave safe, so you can easily reheat meals without transferring. For safety, remove the lid before microwaving. Perfect for storing and reheating in small tupperware pots with lids.</li><li>Our food box features seals and secure lids to keep your food fresh and leak-free. Perfect as tupperware containers and food prep containers with lids, they come in various sizes for optimal pantry organization and extended food preservation.</li><li>Compact and Lightweight: Each small plastic container with lids has a 500ml capacity and dimensions of 15 x 10.5 x 5.5 centimeters, making them ideal as freezer boxes. They are compact, easy to store, and convenient to carry.</li><li>Our small plastic containers with lids are specially designed to withstand freezing temperatures, keeping your food fresh and protected from freezer burn. Ideal as small food containers with lids and versatile containers with lids for storage.</li><li>This plastic food storage box with lid is resistant to cracks, chips, and stains, ensuring durability for everyday use. Ideal as a food container, these Tupperware boxes and small containers with lids are perfect for long-term food storage needs.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/0b4b2772-834e-489c-b3ef-797fc3f36d9b.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d316af3a-e183-4d14-b52f-2d6d731fcd1d.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Premium Quality Food Containers</strong></h3><ul><li>Neez freezer storage boxes are produced from high-quality polypropylene plastic (PP).</li><li>Keep food fresh for a long time.</li><li>These food container designs can survive continuous use and are appropriate for a wide range of applications.</li></ul><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/5206029f-86e8-4f6f-921f-2617b8a10f31.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Functional Design</strong></h3><ul><li>The container has a clean and functional design, including smooth sides and a secure top.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/4268a991-32c5-47aa-848f-3e7be6879454.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Portable and Easy to Carry</strong></h3><ul><li>Neez food storage containers are light and portable.</li><li>For convenient, mess-free food storage, pack salad or pasta dishes and snacks, as well as cut fruits or nuts for work, school, or outdoor activities.</li></ul><p>&nbsp;</p><figure class=\"table\"><table><thead><tr><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/506f7e23-6716-4e3b-b987-b6e681ec10f9.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th><th><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/58e9170a-06c8-457a-8dc8-3ce34ce5b67f.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th></tr></thead><tbody><tr><td><h4>Freezer Storage Boxes</h4><ul><li>Neez freezer storage boxes are carefully constructed to withstand freezing temperatures, ensuring that your food stays fresh and free of freezer temperature.</li></ul><p>&nbsp;</p></td><td><h4>Microwave Safe</h4><ul><li>The Neez food storage container is microwave-safe, making it convenient to reheat meals without transferring them.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><th>Recommended uses for product</th><td>‎Dry foods, Fruits, Vegetables, Rice, Pasta, Cookies, Cereal, Bread, Spices, Pet Food</td></tr><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Closure type</th><td>‎Snap</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA Free</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎210 Grams</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe, Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎500 Millilitres</td></tr><tr><th>Unit count</th><td>‎5.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Product Dimensions</th><td>‎15 x 10.5 x 5.5 cm; 210 g</td></tr><tr><th>Item model number</th><td>‎5ps-Box-MixLids</td></tr><tr><th>Number of Pieces</th><td>‎5</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Included Components</th><td>‎Container Box with Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎210 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/6t2OHGGnn81724924980.jpg', 80, NULL, NULL, 69, NULL, 0.86, 0, NULL, 99, NULL, '0', 61, 59, 57, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 13:49:40', '2024-09-05 14:59:17'),
(15, 1, '[\"11\"]', 'Food Containers Pack of 10 Microwavable, Freezable, Airtight (Mix Color)', 'food-containers-pack-of-10-microwavable-freezable-airtight-mix-color', 'NZ-FD5-10MC', 'NZ-FD5-10MC', NULL, NULL, NULL, NULL, '[{\"value\":\"Red\",\"color\":\"#FF5733\"},{\"value\":\"Gray\",\"color\":\"#BEBEBE\"},{\"value\":\"Blue\",\"color\":\"#3357FF\"}]', NULL, 'Meet your snack-time superheroes! Our Neez 500ml Microwavable Snack Boxes come in a set of 5, each with its own lid. These compact containers are perfect for storing small portions of your favorite treats. Whether it’s crunchy nuts, juicy berries, or a mini salad, these BPA-free snack boxes keep your food fresh and ready to enjoy. They’re microwave-safe (just remember to remove the lids), freezer-friendly, and airtight. Say goodbye to spills and hello to snack convenience!” 🍱🔵', '<ul><li>Our plastic food containers with lids are fully microwave safe, so you can easily reheat meals without transferring. For safety, remove the lid before microwaving. Perfect for storing and reheating in small tupperware pots with lids.</li><li>Our food box features seals and secure lids to keep your food fresh and leak-free. Perfect as tupperware containers and food prep containers with lids, they come in various sizes for optimal pantry organization and extended food preservation.</li><li>Compact and Lightweight: Each small plastic container with lids has a 500ml capacity and dimensions of 15 x 10.5 x 5.5 centimeters, making them ideal as freezer boxes. They are compact, easy to store, and convenient to carry.</li><li>Our small plastic containers with lids are specially designed to withstand freezing temperatures, keeping your food fresh and protected from freezer burn. Ideal as small food containers with lids and versatile containers with lids for storage.</li><li>This plastic food storage box with lid is resistant to cracks, chips, and stains, ensuring durability for everyday use. Ideal as a food container, these Tupperware boxes and small containers with lids are perfect for long-term food storage needs.</li></ul>', '<figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/4e92ff67-b13d-4f94-987b-4cc9b34b8d25.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established Brand for Food Container Products.\"></figure><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/5c47ccb9-7bd3-42ca-8a59-daca1519303c.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Premium Quality Food Containers</strong></h3><ul><li>Neez freezer storage boxes are produced from high-quality polypropylene plastic (PP).</li><li>Keep food fresh for a long time.</li><li>These food container designs can survive continuous use and are appropriate for a wide range of applications.</li></ul><figure class=\"image image-style-side\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/117e2434-abde-4951-b974-c65949de2d8a.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Functional Design</strong></h3><ul><li>The container has a clean and functional design, including smooth sides and a secure top.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/6918601b-174b-4110-a14a-b018d32ae45e.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></figure><h3><strong>Portable and Easy To Carry</strong></h3><ul><li>Neez food storage containers are light and portable.</li><li>For convenient, mess-free food storage, pack salad or pasta dishes and snacks, as well as cut fruits or nuts for work, school, or outdoor activities.</li></ul><figure class=\"table\"><table><thead><tr><th><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/b2325361-e0e2-45bd-95f2-b5ac4f896879.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th><th><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/e3a9cda5-dd67-4db6-9a6c-353aec0da3be.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"food storage containers,freezer boxes,airtight container,microwavable box,small hardy plastic\"></th></tr></thead><tbody><tr><td><h4>Freezer Storage Boxes</h4><ul><li>Neez freezer storage boxes are carefully constructed to withstand freezing temperatures, ensuring that your food stays fresh and free of freezer temperature.</li></ul><p>&nbsp;</p></td><td><h4>Microwave Safe</h4><ul><li>The Neez food storage container is microwave-safe, making it convenient to reheat meals without transferring them.</li></ul><p>(Note: For safety, remove the lids before microwaving).</p></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎10.5L x 5.5W x 15.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Dry foods</td></tr><tr><th>Special feature</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Container Shape</th><td>‎Rectangular Prism</td></tr><tr><th>Closure type</th><td>‎Snap</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA Free</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎400 Grams</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe, Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎500 Millilitres</td></tr><tr><th>Unit count</th><td>‎10.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Item model number</th><td>‎10ps-Box-MixLids</td></tr><tr><th>Number of Pieces</th><td>‎10</td></tr><tr><th>Special Features</th><td>‎Freezer Safe, Microwave Safe, Dishwasher Safe</td></tr><tr><th>Included Components</th><td>‎Container Box with Lid</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎400 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/8kX5zzoLN81724925519.jpg', 40, NULL, NULL, 89, NULL, 2.23, 0, NULL, -3, NULL, '0', 62, 57, 39, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 13:58:39', '2024-09-22 17:55:02'),
(16, 1, '[\"11\"]', 'Airtight Food Storage Container Set- Leakproof Tupperware Sets with Lids (Pack of 7)', 'airtight-food-storage-container-set-leakproof-tupperware-sets-with-lids-pack-of-7', '7PcVL-Neez', '7PcVL-Neez', 'X001PF934B', 'X001PF934B', NULL, NULL, '[{\"value\":\"Black\",\"color\":\"#000000\"}]', NULL, 'Introducing the 7-Piece Food Storage Container Set—your kitchen’s new best friend! This smartly sized collection includes a 2400 ml rectangular clip-lock container, 2 square containers (1200 ml each), 2 rectangular containers (700 ml each), and 2 square freezer containers with lids (500 ml each). Whether you’re storing leftovers, meal prepping, or organizing snacks, these air-tight wonders keep your food fresh without compromising style. Crafted from sturdy, clear, BPA-free plastic, they’re both heatproof and leakproof. Plus, they’re freezer-safe and microwave-friendly', '<ul><li>7-Piece Set of Food Storage Containers with Lids : Includes 1 rectangular clip lock food containers (2400 ml), 2 square containers (1200 ml), 2 rectangular containers (700 ml), and 2 square freezer containers with lids (500 ml).</li><li>Large Tupperware Set with Air Tight Food Storage Container : Features tightly sealed food containers with leakproof lids, some with Air Release Buttons to release extra air without opening the main lid for optimal freshness.</li><li>Durable Click Lock Food Storage Containers: These snap lock containers are made from sturdy, clear, BPA-free plastic. Designed to be heatproof, leak proof food containers that are also freezer-safe, they offer both durability and an elegant look.</li><li>Freezable Food Containers with Lids Airtight: These BPA free food containers are perfect for freezing and microwaving, crafted from sturdy plastic for durability (NOTE: Remove lids before microwaving).</li><li>Sealable Containers for Food Storage: This set includes 14 clear food storage boxes (7 boxes + 7 lids) in various sizes and shapes, ideal for all your kitchen needs. These klip lock food containers are perfect sealed containers for food storage.</li></ul>', '<figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/7599ca01-516f-43e6-b11b-3e48ea20881c.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a well-established brand for food containers products.We offer best quality service possible\"></figure><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/a939ea80-dc96-432f-b986-d7d7973f26bc.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"container set, air tight lock food container, food containers, set of food boxes, plastic food boxes\"></figure><h3><strong>Superior Quality</strong></h3><ul><li>Neez container sets are made of high-quality PP(polypropylene plastic).</li><li>Keep your food fresh for a long time.</li><li>These food container design can withstand repeated usage and is suitable for a variety of applications.</li></ul><figure class=\"image image-style-side\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/704845fc-241c-408f-adeb-e080c0db9d07.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"container set, air tight lock food container, food containers, set of food boxes, plastic food boxes\"></figure><h3><strong>Product Specification</strong></h3><p>Material: PP(polypropylene plastic)</p><p>Product Dimensions: 6.06\"(15.4 cm)x 6.06\"(15.4 cm)x 2.09\"(5.3 cm) 2Pcs</p><p>6.81\"(17.3 cm)x 4.45\"(11.3 cm)x 2.9\"(7.4 cm) 2Pcs</p><p>6.8\"(17.2 cm)x 6.8\"(17.2 cm)x 2.68\"(6.8 cm) 2Pcs</p><p>11.8\"(30 cm) 7.09\"(18 cm)x 2.99\"(7.6 cm) 1Pcs</p><p>Capacity: 2 Pcs 500 ml( Approx)</p><p>2 Pcs 700 ml( Approx)</p><p>2 Pcs 1300 ml( Approx)</p><p>1 Pcs 2400ml(Approx)</p><p>Item Weight: 930 gm( Approx)</p><p>&nbsp;</p><h3><strong>Transparent Boxes</strong></h3><ul><li>Neez food boxes are transparent and allow you to view what\'s inside without having to open them.</li><li>It makes it easier to choose foods you like and to plan your meals more efficiently.</li></ul><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/fb3c63de-d05b-42f9-886f-01d236628645.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"container set, air tight lock food container, food containers, set of food boxes, plastic food boxes\"></figure><h3><strong>Air Tight Containers</strong></h3><ul><li>The Secured food container function keeps food fresh and secure while keeping it from moisture and Odorless.</li><li>An secured food storage with an air-release snap button is included in the set.</li></ul><figure class=\"table\"><table><thead><tr><th><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/ae8b797d-77c9-4440-a6b2-4774d100ac15.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"container set, air tight lock food container, food containers, set of food boxes, plastic food boxes\"></th><th><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/97b5e07c-bcb9-47d5-a935-c0b0727b794e.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"container set, air tight lock food container, food containers, set of food boxes, plastic food boxes\"></th></tr></thead><tbody><tr><td><h4>Freezer Safe</h4><ul><li>Neez freezer-safe set of food boxes allows you to keep leftovers, bulk supplies, or meal prep for prolonged periods of time.</li><li>Maintain the freshness and usability of your food.</li></ul><p>&nbsp;</p></td><td><h4>Reusable</h4><ul><li>Neez plastic food boxes with lids are made of sturdy and high-quality plastic, reducing waste from single-use packaging.</li><li>While enjoying the convenience of these various storage solutions, you can help safeguard.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎30L x 18W x 7.6H centimetres</td></tr><tr><th>Special feature</th><td>‎Completely Air-Tight Lids, Microwavable, Transparent Box, Very Hardy Plastic, Air-Release Point</td></tr><tr><th>Closure type</th><td>‎Button</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎0.59 Kilograms</td></tr><tr><th>Product care instructions</th><td>‎Remove Lids in Microwave</td></tr><tr><th>Item volume</th><td>‎250 Millilitres</td></tr><tr><th>Unit count</th><td>‎7.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Part Number</th><td>‎NZ-FBA_7pcs_Vacklock_Food_Storage_Box</td></tr><tr><th>Item model number</th><td>‎VaclockB7pcs</td></tr><tr><th>Number of Pieces</th><td>‎7</td></tr><tr><th>Special Features</th><td>‎Completely Air-Tight Lids, Microwavable, Transparent Box, Very Hardy Plastic, Air-Release Point</td></tr><tr><th>Usage</th><td>‎Food Storage Container Sets,, Freezer &amp; Microwave Boxes</td></tr><tr><th>Included Components</th><td>‎Boxes &amp; Lids</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎590 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/yelEtx2iLe1724927050.jpg', 18, NULL, NULL, 69, NULL, 3.83, 0, NULL, 48, NULL, '0', 82, 56, 42, NULL, NULL, NULL, '2024-08-29', '2', 'published', '2024-08-29 14:24:10', '2024-09-18 14:34:28'),
(17, 1, '[\"11\",\"13\"]', 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 8)', 'plastic-mini-storage-boxes-baby-weaning-feeding-freezer-food-pots-containers-120-ml-pack-of-8', 'ARS-78804-8', 'ARS-78804-8', '8942854563671', '8942854563671', NULL, NULL, NULL, NULL, '8pcs Plastic Mini Storage Boxes—perfect for baby weaning and food storage! Each container holds up to 120ml and measures approximately 6.5cm x 6.5cm x 4.5cm. Made from BPA-free, recyclable polypropylene (PP) plastic, these eco-friendly boxes are ideal for storing baby food. They can withstand both high and low temperatures, making them suitable for the fridge, freezer, and microwave (just remember to remove the lids before heating). These versatile containers are perfect for meal prep, storing snacks, or organizing your kitchen. Plus, they’re reusable and dishwasher safe for easy cleaning! 🍱🌟', '<ul><li>Plastic Food Containers With Lids: ARSUK storage boxes with lids can hold up to 120ml of liquid and the dimension is approximately 6.5cm x 6.5cm x 4.5cm of each</li><li>Baby Food Storage Containers: Our stackable storage boxes are made from polypropylene (PP) plastic which are BPA-free, recyclable, and eco-friendly</li><li>Fridge Storage Containers: These freezer storage boxes can withstand high and low temperatures, so they can be heated up or cooled down</li><li>Meal Prep Containers Reusable: Perfect as meal prep containers and multipurpose use such as storing food, pasta containers, food carrier for the workplace, travel, picnics</li><li>Kitchen Storage &amp; Organisation: These kitchen storage containers are reusable and dishwasher safe</li></ul>', '<h2><strong>Product Description</strong></h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/b34d7181-d352-4b47-b5a7-084411a5aae5.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/17347383-3318-47e4-8ede-d626ca418550.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Product Specifications</h2><ul><li>Material: Good Quality Plastic</li><li>Item Size: 2.25\" (5.7 cm) X 1.5\" (3.8 cm) X 2.25\" (5.7 cm) (Approximately).</li><li>Lid Colour and Material: Multi-colour and high-quality plastic.</li><li>Single Container Weight, Capacity and Shape: 20 gm, 120 ml (Each) and Rectangle (Approximately).</li></ul><h2>Keeping Healthy Food for Your Kids</h2><ul><li>Start serving fresh and healthy food to your baby.</li><li>At ARSUK, we’re dedicated to creating the healthiest and highest quality food storage solutions for your family.</li><li>It’s ARSUK mission to make food preparation simpler &amp; less stressful.</li><li>Keep Your Baby Foods Fresher for a longer time.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/fff0987b-d380-4724-b83b-19f0d393d18f.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Perfect for Storing Small DIY Items</h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d4296eb4-f4d6-45ea-96ad-aa0a8828c342.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><p>You likewise can keep numerous little things in these containers for example; Pins, Paper cuts, Rubber Bands, Candy, Spices, and much more!</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/9adc4975-2c52-416a-bf6e-86c80c2b4c83.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Amazing Gift for Houses</h2><ul><li>No salad is complete without dressing on it. The perfect size Pots for dips and dressing, sauces and keeping toppings.</li><li>Finally, a neat solution for spices and herbs;</li><li>Imaginative Leak-proof Design. Recyclable Plastic.</li><li>Great gift ideas for friends and family.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/7b75a2c0-b13b-4620-94dc-04a9e176fd02.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎6.5L x 6.5W x 4.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Pasta, Food, Baby Food</td></tr><tr><th>Special feature</th><td>‎Air Tight</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎4 Ounces</td></tr><tr><th>Product care instructions</th><td>‎Refrigerator Safe, Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎0.12 Litres</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎rectangular</td></tr><tr><th>Part Number</th><td>‎SAL</td></tr><tr><th>Item model number</th><td>‎SAL</td></tr><tr><th>Size</th><td>‎8 Count (Pack of 1)</td></tr><tr><th>Special Features</th><td>‎Air Tight</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎113 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/StDfejv1Zf1725186102.jpg', 112, NULL, NULL, 79, NULL, 0.71, 0, NULL, -3, NULL, '0', 59, 55, 38, NULL, NULL, NULL, '2024-09-01', '2', 'published', '2024-09-01 14:21:42', '2024-09-22 20:28:59'),
(18, 1, '[\"11\",\"13\"]', 'Plastic Mini Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 120 ml (Pack Of 16)', 'plastic-mini-storage-boxes-baby-weaning-feeding-freezer-food-pots-containers-120-ml-pack-of-16', 'ARS-78804-16', 'ARS-78804-16', '8942854563688', '8942854563688', NULL, NULL, NULL, NULL, NULL, '<p>16pcs Plastic Mini Storage Boxes—perfect for baby weaning and food storage! Each container holds up to 120ml and measures approximately 6.5cm x 6.5cm x 4.5cm. Made from BPA-free, recyclable polypropylene (PP) plastic, these eco-friendly boxes are ideal for storing baby food. They can withstand both high and low temperatures, making them suitable for the fridge, freezer, and microwave (just remember to remove the lids before heating). These versatile containers are perfect for meal prep, storing snacks, or organizing your kitchen. Plus, they’re reusable and dishwasher safe for easy cleaning! 🍱🌟</p>', '<ul><li>Plastic Food Containers With Lids: ARSUK storage boxes with lids can hold up to 120ml of liquid and the dimension is approximately 6.5cm x 6.5cm x 4.5cm of each</li><li>Baby Food Storage Containers: Our stackable storage boxes are made from polypropylene (PP) plastic which are BPA-free, recyclable, and eco-friendly</li><li>Fridge Storage Containers: These freezer storage boxes can withstand high and low temperatures, so they can be heated up or cooled down</li><li>Meal Prep Containers Reusable: Perfect as meal prep containers and multipurpose use such as storing food, pasta containers, food carrier for the workplace, travel, picnics</li><li>Kitchen Storage &amp; Organisation: These kitchen storage containers are reusable and dishwasher safe</li></ul>', '<h2><strong>Product Description</strong></h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/b34d7181-d352-4b47-b5a7-084411a5aae5.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/17347383-3318-47e4-8ede-d626ca418550.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Product Specifications</h2><ul><li>Material: Good Quality Plastic</li><li>Item Size: 2.25\" (5.7 cm) X 1.5\" (3.8 cm) X 2.25\" (5.7 cm) (Approximately).</li><li>Lid Colour and Material: Multi-colour and high-quality plastic.</li><li>Single Container Weight, Capacity and Shape: 20 gm, 120 ml (Each) and Rectangle (Approximately).</li></ul><h2>Keeping Healthy Food for Your Kids</h2><ul><li>Start serving fresh and healthy food to your baby.</li><li>At ARSUK, we’re dedicated to creating the healthiest and highest quality food storage solutions for your family.</li><li>It’s ARSUK mission to make food preparation simpler &amp; less stressful.</li><li>Keep Your Baby Foods Fresher for a longer time.</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/fff0987b-d380-4724-b83b-19f0d393d18f.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Perfect for Storing Small DIY Items</h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d4296eb4-f4d6-45ea-96ad-aa0a8828c342.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><p>You likewise can keep numerous little things in these containers for example; Pins, Paper cuts, Rubber Bands, Candy, Spices, and much more!</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/9adc4975-2c52-416a-bf6e-86c80c2b4c83.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Amazing Gift for Houses</h2><ul><li>No salad is complete without dressing on it. The perfect size Pots for dips and dressing, sauces and keeping toppings.</li><li>Finally, a neat solution for spices and herbs;</li><li>Imaginative Leak-proof Design. Recyclable Plastic.</li><li>Great gift ideas for friends and family.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/7b75a2c0-b13b-4620-94dc-04a9e176fd02.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"120ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure>', NULL, 'products/thumbnail/rXwOZoSfRY1725186514.jpg', 56, NULL, NULL, 79, NULL, 1.41, 0, NULL, 15, NULL, '0', 58, 54, 38, NULL, NULL, NULL, '2024-09-01', '2', 'published', '2024-09-01 14:28:34', '2024-10-31 19:38:22'),
(19, 1, '[\"12\",\"11\"]', 'Plastic Medium Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 250 ml (Pack Of 8)', 'plastic-medium-storage-boxes-baby-weaning-feeding-freezer-food-pots-containers-250-ml-pack-of-8', 'ARS-78805-8', 'ARS-78805-8', '8942854565736', '8942854565736', NULL, NULL, NULL, NULL, '8pcs Plastic Medium Storage Boxes—perfect for baby weaning and food storage! Each container holds up to 120ml and measures approximately 13.5cm x 6.5cm x 4.5cm. Made from BPA-free, recyclable polypropylene (PP) plastic, these eco-friendly boxes are ideal for storing baby food. They can withstand both high and low temperatures, making them suitable for the fridge, freezer, and microwave (just remember to remove the lids before heating). These versatile containers are perfect for meal prep, storing snacks, or organizing your kitchen. Plus, they’re reusable and dishwasher safe for easy cleaning! 🍱🌟', '<ul><li>Food Container set of 8pcs Medium boxes comes with 4 colours lids and each of the container dimension is approximately 13.5cm x 6.5cm x 4.5cm. The containers also nest inside one another when not in use, making them easy to store efficiently.</li><li>Our storage boxes are BPA-free, recyclable plastic and eco-friendly. Each plastic lid makes them completely airtight and securely fastened for optimal food freshness and protection against harmful germs</li><li>Made from polypropylene (PP) plastic and certified BPA free, these containers can withstand high and low temperatures, so they can be heated up or cooled down. Perfect for meal preparation, lunchtime work snacks, storing food and leftovers.</li><li>These boxes can be used for multipurpose use such as food storage, lunch box, pasta containers and food carrier for the work place, travel, picnics, storing or freezing.</li><li>Reusable and safe to use in the microwave, freezer, and dishwasher. Our raised-lids means extra storage capacity so your food is not compressed.</li></ul>', '<h2><strong>Product Description</strong></h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/f7ee29b1-fc06-469b-b1bf-ce0d00c1399d.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/74dab3ba-24f2-45ca-bd0a-fafe9ccd7e6b.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Product Specifications</h2><ul><li>Material: Good Quality Plastic</li><li>Item Size: 5.75\" (14.6 cm) X 1.5\" (3.8 cm) X 2.7\" (7 cm) (Approximately).</li><li>Lid Colour and Material: Multi-colour and high quality plastic.</li><li>Single Container Weight, Capacity and Shape: 34 gm, 250 ml (Each) and Rectangle (Approximately).</li></ul><p>&nbsp;</p><h2>Keeping Healthy Food for Your Kids</h2><ul><li>Start serving fresh and healthy food to your baby.</li><li>At ARSUK, we’re dedicated to creating the healthiest and highest quality food storage solutions for your family.</li><li>It’s ARSUK mission to make food preparation simpler &amp; less stressful.</li><li>Keep Your Baby Foods Fresher for a longer time.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/918e7183-77ce-4c55-a424-2adfafbdbd2a.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Perfect for Storing Small DIY Items</h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d055e2a0-484c-481d-8a01-6bd729cca8ab.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><p>You likewise can keep numerous little things in these containers for example; Pins, Paper cuts, Rubber Bands, Candy, Spices, and much more!</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/4971f5cf-ae3c-4c28-a08c-044c7665c0a0.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>&nbsp;</h2><h2>Amazing Gift for Houses</h2><ul><li>No salad is complete without dressing on it. The perfect size Pots for dips and dressing, sauces and keeping toppings.</li><li>Finally, a neat solution for spices and herbs;</li><li>Imaginative Leak-proof Design. Recyclable Plastic.</li><li>Great gift ideas for friends and family.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/40491f41-7cdc-43d1-954b-27372fbfb89d.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎13.5L x 6.5W x 4.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Travel, Picnics, Lunch Box, Storing, Storing Leftovers, Storing Food, Meal Preparation, Freezing, Food Carrier</td></tr><tr><th>Special feature</th><td>‎Air Tight</td></tr><tr><th>Container Shape</th><td>‎Rectangular Prism</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎150 Grams</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe, Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎0.25 Litres</td></tr><tr><th>Unit count</th><td>‎8.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎Rectangular</td></tr><tr><th>Part Number</th><td>‎ARS-78805-8</td></tr><tr><th>Item model number</th><td>‎ARS-78805-8</td></tr><tr><th>Size</th><td>‎Pack of 8 Medium</td></tr><tr><th>Shape</th><td>‎round</td></tr><tr><th>Special Features</th><td>‎Air Tight</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎150 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/SNDYwETtNB1725187019.jpg', 72, NULL, NULL, 89, NULL, 1.24, 0, NULL, 16, NULL, '0', 60, 45, 55, NULL, NULL, NULL, '2024-09-01', '2', 'published', '2024-09-01 14:36:59', '2024-10-31 19:38:22');
INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `slug`, `sku_code`, `mf_code`, `product_code`, `barcode_id`, `barcode`, `tags`, `color`, `video_link`, `short_description`, `overview`, `description`, `specification`, `warranty`, `thumbnail`, `box_contains`, `vat`, `tax`, `box_price`, `box_discount_price`, `unit_price`, `unit_discount_price`, `product_type`, `box_stock`, `stock`, `is_refurbished`, `length`, `width`, `height`, `meta_title`, `meta_keywords`, `meta_description`, `create_date`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(20, 1, '[\"11\",\"12\"]', 'Plastic Medium Storage Boxes Baby Weaning Feeding Freezer Food Pots Containers 250 ml (Pack Of 16)', 'plastic-medium-storage-boxes-baby-weaning-feeding-freezer-food-pots-containers-250-ml-pack-of-16', 'ARS-78808-16', 'ARS-78808-16', '5060604700565', '5060604700565', NULL, NULL, NULL, NULL, '16pcs Plastic Medium Storage Boxes—perfect for baby weaning and food storage! Each container holds up to 120ml and measures approximately 13.5cm x 6.5cm x 4.5cm. Made from BPA-free, recyclable polypropylene (PP) plastic, these eco-friendly boxes are ideal for storing baby food. They can withstand both high and low temperatures, making them suitable for the fridge, freezer, and microwave (just remember to remove the lids before heating). These versatile containers are perfect for meal prep, storing snacks, or organizing your kitchen. Plus, they’re reusable and dishwasher safe for easy cleaning! 🍱🌟', '<ul><li>Food Container set of 8pcs Medium boxes comes with 4 colours lids and each of the container dimension is approximately 13.5cm x 6.5cm x 4.5cm. The containers also nest inside one another when not in use, making them easy to store efficiently.</li><li>Our storage boxes are BPA-free, recyclable plastic and eco-friendly. Each plastic lid makes them completely airtight and securely fastened for optimal food freshness and protection against harmful germs</li><li>Made from polypropylene (PP) plastic and certified BPA free, these containers can withstand high and low temperatures, so they can be heated up or cooled down. Perfect for meal preparation, lunchtime work snacks, storing food and leftovers.</li><li>These boxes can be used for multipurpose use such as food storage, lunch box, pasta containers and food carrier for the work place, travel, picnics, storing or freezing.</li><li>Reusable and safe to use in the microwave, freezer, and dishwasher. Our raised-lids means extra storage capacity so your food is not compressed.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/f7ee29b1-fc06-469b-b1bf-ce0d00c1399d.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/74dab3ba-24f2-45ca-bd0a-fafe9ccd7e6b.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Product Specifications</h2><ul><li>Material: Good Quality Plastic</li><li>Item Size: 5.75\" (14.6 cm) X 1.5\" (3.8 cm) X 2.7\" (7 cm) (Approximately).</li><li>Lid Colour and Material: Multi-colour and high quality plastic.</li><li>Single Container Weight, Capacity and Shape: 34 gm, 250 ml (Each) and Rectangle (Approximately).</li></ul><h2>Keeping Healthy Food for Your Kids</h2><ul><li>Start serving fresh and healthy food to your baby.</li><li>At ARSUK, we’re dedicated to creating the healthiest and highest quality food storage solutions for your family.</li><li>It’s ARSUK mission to make food preparation simpler &amp; less stressful.</li><li>Keep Your Baby Foods Fresher for a longer time.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/918e7183-77ce-4c55-a424-2adfafbdbd2a.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>Perfect for Storing Small DIY Items</h2><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d055e2a0-484c-481d-8a01-6bd729cca8ab.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><p>You likewise can keep numerous little things in these containers for example; Pins, Paper cuts, Rubber Bands, Candy, Spices, and much more!</p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/4971f5cf-ae3c-4c28-a08c-044c7665c0a0.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></figure><h2>&nbsp;</h2><h2>Amazing Gift for Houses</h2><ul><li>No salad is complete without dressing on it. The perfect size Pots for dips and dressing, sauces and keeping toppings.</li><li>Finally, a neat solution for spices and herbs;</li><li>Imaginative Leak-proof Design. Recyclable Plastic.</li><li>Great gift ideas for friends and family.</li></ul><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/40491f41-7cdc-43d1-954b-27372fbfb89d.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"250ml,small,food,snack,pots,storage,containers,freezer,microwave,dishwasher plastic,tubs,airtight\"></p>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎13.5L x 6.5W x 4.5H centimetres</td></tr><tr><th>Recommended uses for product</th><td>‎Dry foods, Pasta, Pizza, Lunch box, Food carrier for travel, picnics, storing or freezing</td></tr><tr><th>Special feature</th><td>‎Air Tight</td></tr><tr><th>Container Shape</th><td>‎Box</td></tr><tr><th>Closure type</th><td>‎Lid</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA, Chemicals</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎33.75 Grams</td></tr><tr><th>Product care instructions</th><td>‎Microwave Safe, Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎250 Millilitres</td></tr><tr><th>Unit count</th><td>‎16 Count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Item form</th><td>‎Rectangular</td></tr><tr><th>Part Number</th><td>‎ARS-78808-16</td></tr><tr><th>Item model number</th><td>‎ARS-78808-16</td></tr><tr><th>Size</th><td>‎Pack of 16 Medium</td></tr><tr><th>Shape</th><td>‎rectangular</td></tr><tr><th>Special Features</th><td>‎Air Tight</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎33.8 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/hgpbysUcBO1725187398.jpg', 36, NULL, NULL, 86, NULL, 2.39, 0, NULL, 20, NULL, '0', 60, 43, 55, NULL, NULL, NULL, '2024-09-01', '2', 'published', '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(21, 1, '[\"11\",\"13\"]', 'Baby Food Storage Containers Set Freezer Food Pots Glass Mini Boxes 200ml (Pack of 6)', 'baby-food-storage-containers-set-freezer-food-pots-glass-mini-boxes-200ml-pack-of-6', 'ARS-GB-6', 'ARS-GB-6', 'X0018UGUU3', 'X0018UGUU3', NULL, NULL, NULL, NULL, 'Introducing the Glass Food Container Set—a versatile and durable solution for all your food storage needs! This set includes 6 bowls, each with a colorful airtight lid, and a capacity of 200ml. Made from borosilicate glass, these bowls can withstand high-temperature changes without cracking. The BPA-free plastic lids ensure an airtight seal, keeping your food fresh and protected from germs. Perfect for meal prep, lunch boxes, pasta storage, and more, these containers are safe for use in the microwave, freezer, and dishwasher. Ideal for home, work, travel, and picnics, these reusable glass bowls are a must-have for any kitchen! 🍲🌈', '<ul><li>Glass Food Container Set of 6pcs bowls come with multicolor airtight lids and each of the bowls can hold up to 200ml of liquid</li><li>Our storage bowls are made of borosilicate glass which will not crack under high-temperature changes like regular glass</li><li>The BPA-free plastic lid makes them completely airtight and securely fastened for optimal food freshness and protection against harmful germs</li><li>These containers can be used for multipurpose use such as food storage, lunch box, pasta containers and food carrier for the workplace, travel, picnics, storing or freezing</li><li>These glass baby-weaning pots with plastic lid is reusable and safe to use in the microwave, freezer, and dishwasher</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d1ef778c-f881-4f45-b31c-3390a52b6f48.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/e35e81dd-c1d2-4676-acd4-fa906b29a47e.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><h2>Product Specifications</h2><ul><li>Material: Borosilicate glass</li><li>Item Size: 4.17’’ (10.6 cm) x 1.96’’ (5 cm) x 3.46’’ (8.8 cm) (Approximately).</li><li>Lid Colour and Material: Multi-colour and 4 sides locked lid with high-quality plastic.</li><li>Single Container Weight, Capacity and Shape: 270 gm, 200 ml (Each) and Round.</li><li>Max and Min Working temperature: 450℃ and -20℃</li></ul><h2>Easy To Operate and Airtight Seal</h2><ul><li>Are you still confused about the difficulty of closing the snap?</li><li>ARSUK baby weaning pots with lids are very easy to operate (lock or unlock).</li><li>Place a container on the table or on a plain surface area and keep the lid on top.</li><li>Then simply press two opposite sides of the lock same time. Do it for the remaining sides too. It will be locked airtightly.</li><li>The high-quality snap-style lids with a silicone gasket and four latches make them fit tightly, and airtight, with no spills or leakage.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/8c06e2cc-8466-4e0e-9303-9ad53acf8440.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/67e4403b-2fb6-407c-ba4a-7fda1be5f18e.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/022948f8-594a-4251-92ca-3e2cd7d78025.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/f8083c71-2d7b-4c5e-97be-0488ab58408a.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/46919314-73ca-4875-9e99-3a2aa2e79d00.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/45b54ffd-086b-4311-b5b1-7418f2d6c29d.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><p><strong>Reusable</strong> <strong>Snap Locking</strong> <strong>Leak-proof</strong> <strong>Multiple Usages</strong> <strong>Great Gift Ideas</strong></p><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/3cf260d2-1b6b-4bff-af7f-20cdde01bed8.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure><h2>Modernize Your Baby Meals on the Go</h2><ul><li>Six same sizes small pots with lids and removable silicone seals give you the freedom to enjoy home-cooked foods on the go or for storing leftovers, fruit juices, sauces, etc.</li><li>These square glass baby pots will ensure your food stays fresh inside for a longer time.</li><li>Nasty and bad bacteria will stay outside, and your toddler meal will be safe there.</li><li>Say no to disposable plastic containers and use our reusable glass ones instead.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ffacf263-7a60-480f-96b8-054d06e888dc.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"Mini Food Bowl,Bowls with Lids,meal preparing Bowls,Airtight Lock Lids,Crystal-clear containers\"></figure>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎6.5L x 6.5W x 4.5H centimetres</td></tr><tr><th>Special feature</th><td>‎Dishwasher, reusable</td></tr><tr><th>Container Shape</th><td>‎Round</td></tr><tr><th>Closure type</th><td>‎Lid,Lock</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎BPA Free</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎270 Grams</td></tr><tr><th>Product care instructions</th><td>‎Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎200 Millilitres</td></tr><tr><th>Unit count</th><td>‎1.0 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Model Number</th><td>‎part_B07DNC2H5J</td></tr><tr><th>Special Features</th><td>‎Dishwasher, reusable</td></tr><tr><th>Item Weight</th><td>‎270 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/drbrw8yd5U1725193233.jpg', 10, NULL, NULL, 64, NULL, 6.4, 0, NULL, 4, NULL, '0', 59, 24, 44, NULL, NULL, NULL, '2024-09-01', '2', 'published', '2024-09-01 16:20:33', '2024-09-22 20:28:59'),
(22, 1, '[\"14\"]', 'Pack of 3 Scissors with Ultra Sharp Thick Blades - Office Scissor with Stainless Blades (8.4\")', 'pack-of-3-scissors-with-ultra-sharp-thick-blades-office-scissor-with-stainless-blades-84', 'NZ-OS3-UK', 'NZ-OS3-UK', 'X001TCG2XP', 'X001TCG2XP', NULL, NULL, NULL, NULL, 'Introducing the Neez Scissors—your versatile cutting solution for all your crafting, sewing, and paper cutting needs. These all-in-one scissors feature ultra-sharp stainless steel blades (2CR13) for precision and durability, with individual blade dimensions of 11.4X1.5X0.2CM. The ergonomic handles, made from PP+TPR materials, provide a comfortable and secure grip, minimizing hand fatigue during extended use. This value pack includes three scissors in stylish colors: gray, purple, and blue. With overall package dimensions of 23X28X1.2CM and a weight of 285 grams, they are easily storable and portable. Perfect for home, school, and office use, these scissors are built to last and ready to tackle any cutting task! ✂️🌟', '<ul><li>Versatile Cutting Solution: Neez Scissors are your all-in-one cutting tool, perfect for fabric dressmaking, sewing, crafting, and precise paper cutting. Embrace versatility at home, school, and the office.</li><li>Precision with Premium Blades: Equipped with ultra-sharp stainless steel blades (2CR13), these scissors guarantee precision and durability. The individual blade dimensions of 11.4X1.5X0.2CM ensure top-notch cutting performance across diverse materials.</li><li>Ergonomic Comfort: Enjoy a comfortable and secure grip with the handle crafted from PP+TPR materials. The ergonomic design minimizes hand fatigue, providing control for extended and effortless cutting sessions.</li><li>Value Pack of Three: Get more done with the convenience of three Neez Scissors in one pack. Whether for various tasks or sharing with others, this value pack ensures you always have the right tools on hand.</li><li>Durability in Style: Built to last, these scissors are not only durable but also stylish, coming in three attractive colors: gray, purple, and blue. With overall package dimensions of 23X28X1.2CM and a weight of 285 grams, they are easily storable and portable.</li></ul>', '<figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/00bef3a8-31f7-475a-ac23-acb66d41b539.__CR0,0,600,180_PT0_SX600_V1___.jpg\" alt=\"Neez is a renowned brand in the field of Scissors products, known for delivering top-notch quality.\"></figure><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/a8e4af3e-3ed4-45d7-a89e-f7432713abf3.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></figure><h3><strong>Premium Quality</strong></h3><ul><li>Soft Grip Handles: Soft grip handles offer a comfortable hold, and fit right or left-handed users.</li><li>Sharper Blades &amp; Edges For Efficient Cutting: Sharper blades and edges of our Multipurpose scissors provide for accurate, clean cuts. Cut through various materials more quickly and easily. Using effective scissors, you may complete your jobs or projects in no time.</li><li>Sturdy Scissors For Long-Time Use: High-density steel, which is 3 times harder than stainless steel, is used to make Neez scissors. The blades stay sharp for more than 100,000 cuts, and these scissors last 6 times as long as normal scissors, making them a good investment.</li></ul><p>&nbsp;</p><figure class=\"image image-style-side\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/215c893d-714b-4f6d-817a-8bf2bc1c7864.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></figure><h3><strong>Product Specification</strong></h3><p>&nbsp;</p><ul><li>Handle Material: Plastic</li><li>Blade Material: Stainless Steel</li><li>Product Dimensions: 8.4\"(21.3 cm)x3.23\"(8.2 cm)x0.47\"(1.19 cm) (Approx)</li><li>Colour: 3 colours</li><li>Item Package Weight: 285gm(Approx)</li></ul><p>&nbsp;</p><p>&nbsp;</p><h3><strong>Ergonomic Design For Comfortable Use</strong></h3><ul><li>The ergonomic shape of Neez scissors allows you superior control of the scissors while cutting.</li><li>The handles are supple and comfortable to hold.</li><li>These scissors can be used with either the left or right hand.</li></ul><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/a8428510-8ef9-4c10-af17-5ab47ee59701.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></figure><h3><strong>Significant Characteristics</strong></h3><ul><li>Luxurious design, durable materials, and good-looking appearance can be used for a long time.</li><li>Stainless steel blade with micro-serrated edge.</li><li>Patented cushion grip and enlarged finger bows with cushioned inserts for comfort and maximum cutting precision ambidextrous.</li></ul><figure class=\"table\"><table><thead><tr><th><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/fdee78f4-82ed-4480-937d-53276bbc858f.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></figure></th><th><figure class=\"image\"><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/ca4bb43a-9188-4a9c-bb63-b6e54d46998d.__CR0,0,600,600_PT0_SX300_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></figure></th></tr></thead><tbody><tr><td><h4>Suitable For Office Works</h4><ul><li>You receive three extra sharp scissors that can be used in a variety of ways in Office Works.</li></ul></td><td><h4>Compact Design</h4><ul><li>They are often compact and lightweight, making them easy to store in a desk drawer or office supply organizer.</li></ul><p>&nbsp;</p></td></tr></tbody></table></figure><p><img src=\"https://c.media-amazon.com/images/S/aplus-media-library-service-media/d55594ac-beaf-4ed9-ad38-4b7b35bf7dc2.__CR0,0,970,600_PT0_SX970_V1___.jpg\" alt=\"fabric scissors, scissors for school, sewing, craft paper scissors, stationery, office scissors set\"></p><h3><strong>Multipurpose Use</strong></h3><ul><li>Neez office scissors set for multiple uses around the home, in the Handcraft Workshop, in the bathroom, on the dresser, in the study, in the laundry room, mail room, craft room, and at the office, great for most regular household tasks.</li><li>Suitable for teachers\' middle/high school classroom supplies, sewing, and stationery.</li></ul>', '<figure class=\"table\"><table><tbody><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Part Number</th><td>‎NZ-OS3-V</td></tr><tr><th>Product Dimensions</th><td>‎21.3 x 3.6 x 0.1 cm; 285 g</td></tr><tr><th>Item model number</th><td>‎Scissor_Grey</td></tr><tr><th>Colour</th><td>‎Blue, Gray, Purple</td></tr><tr><th>Material</th><td>‎Stainless Steel</td></tr><tr><th>Item Package Quantity</th><td>‎1</td></tr><tr><th>Handle material</th><td>‎Stainless Steel</td></tr><tr><th>Included Components</th><td>‎Scissors</td></tr><tr><th>Batteries included?</th><td>‎No</td></tr><tr><th>Batteries Required?</th><td>‎No</td></tr><tr><th>Item Weight</th><td>‎285 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/hXm3CmlFau1725266908.jpg', 50, NULL, NULL, 88, NULL, 1.76, 0, NULL, 100, NULL, '0', 49, 39, 30, 'Scissors - Versatile Cutting Tool for Fabric, Sewing, Crafting, and Paper Cutting', NULL, '<p>Discover Neez Scissors, your all-in-one cutting solution with ultra-sharp stainless steel blades, ergonomic handles, and a stylish design. Perfect for fabric, sewing, crafting, and precise paper cutting. Available in a value pack of three.</p>', '2024-09-02', '2', 'published', '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(25, 1, '[\"11\"]', 'Food Containers Storage Boxes with Lids Stackable Airtight- BPA Free (Set of 7Pcs)', 'food-containers-storage-boxes-with-lids-stackable-airtight-bpa-free-set-of-7pcs', 'ARS-78804-7', 'ARS-78804-7', '5060604703078', '5060604703078', NULL, NULL, NULL, NULL, 'Neez 7pcs food storage containers are made from high-strength, BPA-free plastic. This set includes 7 containers of various sizes with colorful lids, perfect for keeping food fresh, meal prep, and freezer storage. Their stylish, space-saving design brightens any kitchen.', '<ol><li><strong>High-Strength, BPA-Free Plastic</strong>: Made from durable, food-grade plastic with no harmful chemicals.</li><li><strong>Assorted Sizes and Colors</strong>: Includes 7 containers (5680ml to 220ml) with colorful lids (Red, Orange, Yellow, Green, Sky Blue, Blue, Violet).</li><li><strong>Versatile Use</strong>: Ideal for keeping baby food fresh, picnics, meal prep, and freezer storage.</li><li><strong>Stylish and Colorful</strong>: Brightens your kitchen with a stylish design, perfect for snacks and leftovers.</li><li><strong>Space-Saving Design</strong>: Nesting and stackable containers save space in cabinets and freezers.</li></ol>', '<figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/8486e4fb-eb0b-4d86-ad1e-1350b20152f4.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><figure class=\"image image-style-side\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/74d9f037-aec2-4cee-aa06-fad41ee3d174.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><h2>&nbsp;</h2><h2>Product Specifications</h2><ul><li>Material: Good quality plastic</li><li>Item Large Size: 10.23” (26 cm) x 4.72” (12 cm) x 10.23” (26 cm) (Approximately).</li><li>Base and Lids Colour: Transparent and Multicolour.</li><li>Item Weight and Each Containers Capacity: 605 gm and 5680ml / 3340ml / 1980ml / 1150ml / 680ml / 385ml / 220ml.</li></ul><h2>&nbsp;</h2><h2>&nbsp;</h2><h2>Beautiful Design and Rainbow Colours of Neez Food Containers</h2><ul><li>Neez 7-Piece Food Container Set is attractive too.</li><li>Each container comes with its own lid, furnished in a different bold colour to create a full rainbow when nested together.</li><li>Hostile to-slip bottoms keep the holders from slipping on any surface, while tabs on the tops an impermeable seal to safeguard your food while making it simple to open at the same time.</li></ul><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/1aa7d7dc-0a6f-4b0f-90a4-8ecbb2c0969c.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/5df76249-6fb5-4e45-aa13-5dab3bb472f5.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><h2>Dishwasher Safe</h2><ul><li>Neez rainbow food containers and lids are super easy to clean in a dishwasher with soap and warm water which saves your time and makes your life much more convenient.</li><li>Brighten up your kitchen with Neez stylish and colorful container set.</li></ul><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/0805d381-29c7-426e-a1d1-5a123687f42b.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/4558ac01-6963-49e0-9bba-84912c976ded.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/5fd8c007-7ffb-49b1-b490-b17d6bcf359a.__CR0,0,800,600_PT0_SX800_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><h2>Maintain Your Food Fresh with Neez Food Containers</h2><figure class=\"image\"><img src=\"https://m.media-amazon.com/images/S/aplus-media-library-service-media/48fc30d4-6e2d-4157-9f03-cb8089f8ffe1.__CR0,0,1464,600_PT0_SX1464_V1___.jpg\" alt=\"7Pcs,Rainbow,Storage,meal preparing Bowls,Airtight Lids,Crystal-clear containers,stackable,cabinets\"></figure><p>Store your food with the Neez 7-piece rainbow food container set. These seven containers with lids are the ideal method to safeguard your foods; and vegetables for longer timeframes, as well as store extras and dry food.</p>', '<figure class=\"table\"><table><tbody><tr><th>Product dimensions</th><td>‎27L x 27W x 13H centimetres</td></tr><tr><th>Special feature</th><td>‎Air Tight</td></tr><tr><th>Container Shape</th><td>‎Rectangular</td></tr><tr><th>Dishwasher safe?</th><td>‎Yes</td></tr><tr><th>Material Type Free</th><td>‎Plastic</td></tr><tr><th>Item package quantity</th><td>‎1</td></tr><tr><th>Item weight</th><td>‎605 Grams</td></tr><tr><th>Product care instructions</th><td>‎Dishwasher Safe</td></tr><tr><th>Item volume</th><td>‎0.22 Litres</td></tr><tr><th>Unit count</th><td>‎7 count</td></tr><tr><th>Is microwaveable</th><td>‎Yes</td></tr><tr><th>Manufacturer</th><td>‎Neez</td></tr><tr><th>Part Number</th><td>‎ARS-78804-7</td></tr><tr><th>Item model number</th><td>‎78804-7</td></tr><tr><th>Size</th><td>‎Pack of 7 Rainbow</td></tr><tr><th>Special Features</th><td>‎Air Tight</td></tr><tr><th>Item Weight</th><td>‎605 g</td></tr></tbody></table></figure>', NULL, 'products/thumbnail/YFcQxWdGUe1726648420.jpg', 10, NULL, NULL, 39.99, NULL, 4, 0, NULL, 90, NULL, '0', 53, 53, 42, 'Neez 7pcs Food Storage Containers - BPA-Free, Colorful, Space-Saving', NULL, '<p>Discover Neez 7pcs food storage containers made from high-strength, BPA-free plastic. Perfect for meal prep, keeping food fresh, and freezer storage. Stylish, colorful, and space-saving design.</p>', '2024-09-18', '2', 'published', '2024-09-18 12:33:40', '2024-10-20 13:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `photo`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'products/multi_images/aOSbmXdfcV1724828238.jpg', 2, NULL, '2024-08-28 10:57:18', '2024-08-28 10:57:18'),
(2, 1, 'products/multi_images/vpugeEjnzL1724828238.jpg', 2, NULL, '2024-08-28 10:57:18', '2024-08-28 10:57:18'),
(3, 1, 'products/multi_images/bH4DMHA4mv1724828238.jpg', 2, NULL, '2024-08-28 10:57:18', '2024-08-28 10:57:18'),
(4, 1, 'products/multi_images/6FJQWXwPFv1724828238.jpg', 2, NULL, '2024-08-28 10:57:18', '2024-08-28 10:57:18'),
(5, 1, 'products/multi_images/WNdYjP3uFB1724828238.jpg', 2, NULL, '2024-08-28 10:57:18', '2024-08-28 10:57:18'),
(6, 2, 'products/multi_images/WqmK3soNMh1724833164.jpg', 2, NULL, '2024-08-28 12:19:24', '2024-08-28 12:19:24'),
(7, 2, 'products/multi_images/wNu7mcXfhW1724833164.jpg', 2, NULL, '2024-08-28 12:19:24', '2024-08-28 12:19:24'),
(8, 2, 'products/multi_images/cVZQ77hV5E1724833165.jpg', 2, NULL, '2024-08-28 12:19:25', '2024-08-28 12:19:25'),
(9, 2, 'products/multi_images/OhDrj5TzGn1724833165.jpg', 2, NULL, '2024-08-28 12:19:25', '2024-08-28 12:19:25'),
(15, 4, 'products/multi_images/pQ5OLoaab01724850661.jpg', 2, NULL, '2024-08-28 17:11:01', '2024-08-28 17:11:01'),
(16, 4, 'products/multi_images/oIFRUm6CNg1724850661.jpg', 2, NULL, '2024-08-28 17:11:01', '2024-08-28 17:11:01'),
(17, 4, 'products/multi_images/bQDszL9T7Z1724850661.jpg', 2, NULL, '2024-08-28 17:11:01', '2024-08-28 17:11:01'),
(18, 4, 'products/multi_images/xDlGerWMTB1724850661.jpg', 2, NULL, '2024-08-28 17:11:01', '2024-08-28 17:11:01'),
(19, 4, 'products/multi_images/nqCtF5dTr21724850661.jpg', 2, NULL, '2024-08-28 17:11:01', '2024-08-28 17:11:01'),
(20, 5, 'products/multi_images/Gl3p1zg7hC1724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(21, 5, 'products/multi_images/dxG4jSLrtb1724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(22, 5, 'products/multi_images/bJrCaF6vMB1724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(23, 5, 'products/multi_images/lxtyqdBmt41724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(24, 5, 'products/multi_images/okmx1ZGMkw1724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(25, 5, 'products/multi_images/qyLw5Ma92E1724851015.jpg', 2, NULL, '2024-08-28 17:16:55', '2024-08-28 17:16:55'),
(26, 6, 'products/multi_images/64pn75ckzI1724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(27, 6, 'products/multi_images/WEibeStD0Y1724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(28, 6, 'products/multi_images/VPLl4gm7xE1724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(29, 6, 'products/multi_images/2lgJzf9OJE1724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(30, 6, 'products/multi_images/qyYfeR1Zf21724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(31, 6, 'products/multi_images/g0HI8D9hSh1724851648.jpg', 2, NULL, '2024-08-28 17:27:28', '2024-08-28 17:27:28'),
(38, 7, 'products/multi_images/YmqCEBTsno1724919426.jpg', 2, NULL, '2024-08-29 12:17:06', '2024-08-29 12:17:06'),
(39, 7, 'products/multi_images/GaKYkjAg3Y1724919426.jpg', 2, NULL, '2024-08-29 12:17:06', '2024-08-29 12:17:06'),
(40, 7, 'products/multi_images/pWBbVZA4Nb1724919426.jpg', 2, NULL, '2024-08-29 12:17:06', '2024-08-29 12:17:06'),
(41, 7, 'products/multi_images/hdY6R7LQww1724919426.jpg', 2, NULL, '2024-08-29 12:17:06', '2024-08-29 12:17:06'),
(42, 7, 'products/multi_images/lZZiirgLZX1724919426.jpg', 2, NULL, '2024-08-29 12:17:06', '2024-08-29 12:17:06'),
(43, 8, 'products/multi_images/PvEvXTq08v1724919745.jpg', 2, NULL, '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(44, 8, 'products/multi_images/bL3IG9BQWw1724919745.jpg', 2, NULL, '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(45, 8, 'products/multi_images/22tcYcNkCW1724919745.jpg', 2, NULL, '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(46, 8, 'products/multi_images/ZHkUMjcT5Q1724919745.jpg', 2, NULL, '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(47, 8, 'products/multi_images/sy4ZP6ERsB1724919745.jpg', 2, NULL, '2024-08-29 12:22:25', '2024-08-29 12:22:25'),
(48, 9, 'products/multi_images/y7CxdnZ2gg1724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(49, 9, 'products/multi_images/ys6E2hkZ531724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(50, 9, 'products/multi_images/Eitjh4OILr1724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(51, 9, 'products/multi_images/MKicETV59r1724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(52, 9, 'products/multi_images/bTxbO9stEn1724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(53, 9, 'products/multi_images/79plhXUpxc1724920708.jpg', 2, NULL, '2024-08-29 12:38:28', '2024-08-29 12:38:28'),
(54, 10, 'products/multi_images/J3yaTrTXHh1724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(55, 10, 'products/multi_images/ZD4OMsnyO31724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(56, 10, 'products/multi_images/M9f9MYDoWh1724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(57, 10, 'products/multi_images/x0FLWNTI0Q1724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(58, 10, 'products/multi_images/zePYkk31NL1724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(59, 10, 'products/multi_images/YOBVNJMOo31724921915.jpg', 2, NULL, '2024-08-29 12:58:35', '2024-08-29 12:58:35'),
(60, 11, 'products/multi_images/83Pczj3yQd1724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(61, 11, 'products/multi_images/9s2wHpIbMj1724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(62, 11, 'products/multi_images/9GmpxSRp811724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(63, 11, 'products/multi_images/CMM1OPYkiA1724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(64, 11, 'products/multi_images/k9ekG1bsYZ1724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(65, 11, 'products/multi_images/XtPwDuFzxC1724922530.jpg', 2, NULL, '2024-08-29 13:08:50', '2024-08-29 13:08:50'),
(66, 12, 'products/multi_images/48PI2KU9Ip1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(67, 12, 'products/multi_images/MZyc3PAf1t1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(68, 12, 'products/multi_images/JwDHBrf1rN1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(69, 12, 'products/multi_images/h2xIFFHChG1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(70, 12, 'products/multi_images/C9vYq0XmMh1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(71, 12, 'products/multi_images/6UmQ3gyqvi1724923637.jpg', 2, NULL, '2024-08-29 13:27:17', '2024-08-29 13:27:17'),
(72, 13, 'products/multi_images/PqFYEvtzDn1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(73, 13, 'products/multi_images/Q4NchYPXqV1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(74, 13, 'products/multi_images/ghFONfwBWJ1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(75, 13, 'products/multi_images/TisTMvneTD1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(76, 13, 'products/multi_images/CGkK06bPzn1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(77, 13, 'products/multi_images/MtCSlW8PYV1724924465.jpg', 2, NULL, '2024-08-29 13:41:05', '2024-08-29 13:41:05'),
(78, 14, 'products/multi_images/KuUH6JEsAU1724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(79, 14, 'products/multi_images/ky8Ee20GyJ1724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(80, 14, 'products/multi_images/iESx2Rrnwy1724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(81, 14, 'products/multi_images/nE0AaxqXCJ1724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(82, 14, 'products/multi_images/8bvUOYua251724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(83, 14, 'products/multi_images/uIDIAqGiIj1724924980.jpg', 2, NULL, '2024-08-29 13:49:40', '2024-08-29 13:49:40'),
(84, 15, 'products/multi_images/SRMsNvAhfe1724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(85, 15, 'products/multi_images/qpycOuwKN81724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(86, 15, 'products/multi_images/jfILRUkaTR1724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(87, 15, 'products/multi_images/Qpht5E0Fxp1724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(88, 15, 'products/multi_images/G1pfsRrjtD1724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(89, 15, 'products/multi_images/qSYFvi99Xy1724925519.jpg', 2, NULL, '2024-08-29 13:58:39', '2024-08-29 13:58:39'),
(90, 16, 'products/multi_images/7Kee5CvqT11724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(91, 16, 'products/multi_images/yoTDvBSGNR1724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(92, 16, 'products/multi_images/mpV5TaJmCZ1724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(93, 16, 'products/multi_images/Oysgo4xoEH1724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(94, 16, 'products/multi_images/VWmMmyKcKn1724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(95, 16, 'products/multi_images/f5vrOAhvEG1724927050.jpg', 2, NULL, '2024-08-29 14:24:10', '2024-08-29 14:24:10'),
(96, 17, 'products/multi_images/3YV6n89OAb1725186102.jpg', 2, NULL, '2024-09-01 14:21:42', '2024-09-01 14:21:42'),
(97, 17, 'products/multi_images/7vY37G5vrw1725186102.jpg', 2, NULL, '2024-09-01 14:21:42', '2024-09-01 14:21:42'),
(98, 17, 'products/multi_images/nSkEiQ7vbO1725186102.jpg', 2, NULL, '2024-09-01 14:21:42', '2024-09-01 14:21:42'),
(99, 17, 'products/multi_images/eTcI2Gy6yL1725186102.jpg', 2, NULL, '2024-09-01 14:21:42', '2024-09-01 14:21:42'),
(100, 17, 'products/multi_images/H36ZSV1mfS1725186102.jpg', 2, NULL, '2024-09-01 14:21:42', '2024-09-01 14:21:42'),
(101, 18, 'products/multi_images/vdbSZ1WbDF1725186514.jpg', 2, NULL, '2024-09-01 14:28:34', '2024-09-01 14:28:34'),
(102, 18, 'products/multi_images/HkD2bmqal61725186514.jpg', 2, NULL, '2024-09-01 14:28:34', '2024-09-01 14:28:34'),
(103, 18, 'products/multi_images/RatjgWFlq51725186514.jpg', 2, NULL, '2024-09-01 14:28:34', '2024-09-01 14:28:34'),
(104, 18, 'products/multi_images/WwA2EVSMod1725186514.jpg', 2, NULL, '2024-09-01 14:28:34', '2024-09-01 14:28:34'),
(105, 18, 'products/multi_images/GHnXmxbJkB1725186514.jpg', 2, NULL, '2024-09-01 14:28:34', '2024-09-01 14:28:34'),
(106, 19, 'products/multi_images/aTWi3E7AF91725187019.jpg', 2, NULL, '2024-09-01 14:36:59', '2024-09-01 14:36:59'),
(107, 19, 'products/multi_images/R2hC59QEuV1725187019.jpg', 2, NULL, '2024-09-01 14:36:59', '2024-09-01 14:36:59'),
(108, 19, 'products/multi_images/6JSW00XVNI1725187019.jpg', 2, NULL, '2024-09-01 14:36:59', '2024-09-01 14:36:59'),
(109, 19, 'products/multi_images/OSeMMixZWR1725187019.jpg', 2, NULL, '2024-09-01 14:36:59', '2024-09-01 14:36:59'),
(110, 19, 'products/multi_images/8GSU3nMphO1725187019.jpg', 2, NULL, '2024-09-01 14:36:59', '2024-09-01 14:36:59'),
(111, 20, 'products/multi_images/lBeIEA7F9m1725187398.jpg', 2, NULL, '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(112, 20, 'products/multi_images/wDNO5Sffzb1725187398.jpg', 2, NULL, '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(113, 20, 'products/multi_images/FH0GSjALtM1725187398.jpg', 2, NULL, '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(114, 20, 'products/multi_images/mkGwR6xTp01725187398.jpg', 2, NULL, '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(115, 20, 'products/multi_images/nzPgKKCSGI1725187398.jpg', 2, NULL, '2024-09-01 14:43:18', '2024-09-01 14:43:18'),
(116, 21, 'products/multi_images/46Mr7iouCR1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(117, 21, 'products/multi_images/RZyT6d1agi1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(118, 21, 'products/multi_images/0nKJNoDiiu1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(119, 21, 'products/multi_images/pYmNrm3KUw1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(120, 21, 'products/multi_images/2201vZe2rG1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(121, 21, 'products/multi_images/ziKCkJtCBD1725193233.jpg', 2, NULL, '2024-09-01 16:20:33', '2024-09-01 16:20:33'),
(122, 22, 'products/multi_images/riB42o9CUz1725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(123, 22, 'products/multi_images/qK56bqIqzT1725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(124, 22, 'products/multi_images/B22uuWXHq61725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(125, 22, 'products/multi_images/mdvNTWUQO51725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(126, 22, 'products/multi_images/EPxyUKrCM11725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(127, 22, 'products/multi_images/6WKy9F3TQr1725266908.jpg', 2, NULL, '2024-09-02 12:48:28', '2024-09-02 12:48:28'),
(140, 25, 'products/multi_images/cI8CFWuVIe1726648420.jpg', 2, NULL, '2024-09-18 12:33:40', '2024-09-18 12:33:40'),
(141, 25, 'products/multi_images/qNpnSoNaTB1726648420.jpg', 2, NULL, '2024-09-18 12:33:40', '2024-09-18 12:33:40'),
(142, 25, 'products/multi_images/QURCeRjCJn1726648420.jpg', 2, NULL, '2024-09-18 12:33:40', '2024-09-18 12:33:40'),
(143, 25, 'products/multi_images/yVKsTx8uqw1726648420.jpg', 2, NULL, '2024-09-18 12:33:40', '2024-09-18 12:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2024-08-27 11:32:41', '2024-08-27 11:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(250) DEFAULT NULL,
  `site_motto` text DEFAULT NULL,
  `site_favicon` varchar(255) DEFAULT NULL,
  `site_logo_white` varchar(255) DEFAULT NULL,
  `site_logo_black` varchar(255) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `support_email` varchar(100) DEFAULT NULL,
  `info_email` varchar(100) DEFAULT NULL,
  `sales_email` varchar(100) DEFAULT NULL,
  `primary_phone` varchar(20) DEFAULT NULL,
  `alternative_phone` varchar(20) DEFAULT NULL,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `default_language` varchar(50) DEFAULT NULL,
  `address_line_one` text DEFAULT NULL,
  `address_line_two` text DEFAULT NULL,
  `copyright_title` text DEFAULT NULL,
  `copyright_url` text DEFAULT NULL,
  `site_title` varchar(250) DEFAULT NULL,
  `site_url` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `google_adsense` text DEFAULT NULL,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0,
  `company_name` varchar(255) DEFAULT NULL,
  `system_timezone` varchar(255) DEFAULT NULL,
  `website_url` text DEFAULT NULL,
  `facebook_url` text DEFAULT NULL,
  `instagram_url` text DEFAULT NULL,
  `linkedin_url` text DEFAULT NULL,
  `whatsapp_url` text DEFAULT NULL,
  `twitter_url` text DEFAULT NULL,
  `youtube_url` text DEFAULT NULL,
  `pinterest_url` text DEFAULT NULL,
  `reddit_url` text DEFAULT NULL,
  `tumblr_url` text DEFAULT NULL,
  `tiktok_url` text DEFAULT NULL,
  `user_verification` enum('0','1') DEFAULT '0',
  `minimum_order_amount` int(11) DEFAULT NULL,
  `start_time_monday` varchar(150) DEFAULT NULL,
  `monday` varchar(150) DEFAULT NULL,
  `end_time_monday` varchar(150) DEFAULT NULL,
  `start_time_tuesday` varchar(150) DEFAULT NULL,
  `tuesday` varchar(150) DEFAULT NULL,
  `end_time_tuesday` varchar(150) DEFAULT NULL,
  `start_time_wednesday` varchar(150) DEFAULT NULL,
  `wednesday` varchar(150) DEFAULT NULL,
  `end_time_wednesday` varchar(150) DEFAULT NULL,
  `start_time_thursday` varchar(150) DEFAULT NULL,
  `thursday` varchar(150) DEFAULT NULL,
  `end_time_thursday` varchar(150) DEFAULT NULL,
  `start_time_friday` varchar(150) DEFAULT NULL,
  `friday` varchar(150) DEFAULT NULL,
  `end_time_friday` varchar(150) DEFAULT NULL,
  `start_time_saturday` varchar(150) DEFAULT NULL,
  `saturday` varchar(150) DEFAULT NULL,
  `end_time_saturday` varchar(150) DEFAULT NULL,
  `start_time_sunday` varchar(150) DEFAULT NULL,
  `sunday` varchar(150) DEFAULT NULL,
  `end_time_sunday` varchar(150) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `site_motto`, `site_favicon`, `site_logo_white`, `site_logo_black`, `contact_email`, `support_email`, `info_email`, `sales_email`, `primary_phone`, `alternative_phone`, `whatsapp_number`, `default_language`, `address_line_one`, `address_line_two`, `copyright_title`, `copyright_url`, `site_title`, `site_url`, `meta_keyword`, `meta_description`, `google_analytics`, `google_adsense`, `maintenance_mode`, `company_name`, `system_timezone`, `website_url`, `facebook_url`, `instagram_url`, `linkedin_url`, `whatsapp_url`, `twitter_url`, `youtube_url`, `pinterest_url`, `reddit_url`, `tumblr_url`, `tiktok_url`, `user_verification`, `minimum_order_amount`, `start_time_monday`, `monday`, `end_time_monday`, `start_time_tuesday`, `tuesday`, `end_time_tuesday`, `start_time_wednesday`, `wednesday`, `end_time_wednesday`, `start_time_thursday`, `thursday`, `end_time_thursday`, `start_time_friday`, `friday`, `end_time_friday`, `start_time_saturday`, `saturday`, `end_time_saturday`, `start_time_sunday`, `sunday`, `end_time_sunday`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Neez Packages', 'Dine green, Dispose clean', 'webSetting/site_favicon/L24e6M197B1724821892.png', 'webSetting/site_logo_white/sMadwQlklG1724833221.png', 'webSetting/site_logo_black/uARo74PAYg1724833221.png', 'info@neezpackages.com', 'support@neezpackages.com', 'info@neezpackages.com', NULL, '+447852802476', NULL, NULL, NULL, '402 High Road, Ilford, England', NULL, '© 2024 Neez Packages. All Rights Reserved. Unauthorized reproduction or distribution of any materials from this website is prohibited without prior written consent.', NULL, 'Wholesale Restaurant Packaging Supplies UK | Neez Packages', 'https://neezpackages.com/', 'wholesale packaging UK, restaurant packaging, bulk packaging supplies, takeaway boxes UK, meal prep packaging UK, eco-friendly packaging', 'Discover meal prep and takeaway packaging at Neez Packages. We offer bulk solutions for UK-based restaurants, ensuring quality, sustainability, and affordability', '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/66fa6576e5982d6c7bb68965/1i911om0h\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', NULL, 0, NULL, NULL, 'https://neezpackages.com/', '#', NULL, '#', NULL, '#', NULL, NULL, NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-27 14:06:38', '2024-10-04 16:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `duration` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `carrier` varchar(250) DEFAULT NULL,
  `min_weight` decimal(8,2) DEFAULT NULL,
  `max_weight` decimal(8,2) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `title`, `slug`, `location`, `duration`, `description`, `carrier`, `min_weight`, `max_weight`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'free-shipping', 'United Kingdom', '3-4 Days', NULL, NULL, NULL, NULL, 0, 'active', '2024-08-28 10:46:24', '2024-08-28 10:46:24'),
(2, 'Express Delivery', 'express-delivery', 'United Kingdom', 'UK non restricted post codes only', NULL, NULL, NULL, NULL, 45, 'active', '2024-08-28 10:48:25', '2024-08-28 10:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `title`, `content`, `version`, `effective_date`, `expiration_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Conditions', '<p>Welcome to Neez Packages! These Terms and Conditions (\"Terms\") govern your use of our website and services. By accessing or using Neez Packages, you agree to comply with and be bound by these Terms. Please read them carefully.</p><h3><strong>1. Introduction</strong></h3><p>1.1 <strong>Acceptance of Terms:</strong> By using our website or services, you agree to these Terms. If you do not agree, please do not use our website or services.</p><p>1.2 <strong>Changes to Terms:</strong> We may update these Terms from time to time. The updated Terms will be posted on this page, and your continued use of our website or services constitutes acceptance of any changes.</p><h3><strong>2. Use of Website</strong></h3><p>2.1 <strong>Eligibility:</strong> You must be at least 18 years old or have the consent of a parent or guardian to use our website and services.</p><p>2.2 <strong>Account Registration:</strong> To access certain features, you may need to register for an account. You are responsible for maintaining the confidentiality of your account information and for all activities under your account.</p><p>2.3 <strong>Prohibited Activities:</strong> You agree not to use our website for any unlawful or prohibited activities, including but not limited to, violating intellectual property rights, transmitting harmful or illegal content, or engaging in fraudulent activities.</p><h3><strong>3. Products and Services</strong></h3><p>3.1 <strong>Product Information:</strong> We strive to provide accurate and up-to-date information about our products. However, we do not warrant that the product descriptions or other content is accurate, complete, or error-free.</p><p>3.2 <strong>Pricing and Availability:</strong> Prices and availability of products are subject to change without notice. We reserve the right to modify or discontinue products and services at any time.</p><p>3.3 <strong>Orders and Payments:</strong> By placing an order, you agree to pay the total amount specified, including any applicable taxes and shipping fees. Payments are processed through secure payment methods, and you are responsible for providing accurate payment information.</p><h3><strong>4. Shipping and Delivery</strong></h3><p>4.1 <strong>Shipping Policy:</strong> We will make reasonable efforts to deliver your order within the estimated time frame. However, delivery times may vary depending on factors beyond our control.</p><p>4.2 <strong>Delivery Issues:</strong> If you experience any issues with your delivery, please contact us within [number] days of receiving your order. We will work to resolve any issues as promptly as possible.</p><h3><strong>5. Returns and Refunds</strong></h3><p>5.1 <strong>Return Policy:</strong> Our return policy allows for returns within [number] days of receipt. Products must be in their original condition and packaging. Certain items may be non-returnable or subject to specific return conditions.</p><p>5.2 <strong>Refunds:</strong> Refunds will be processed to the original payment method after we receive and inspect the returned item. Please allow [number] days for processing.</p><h3><strong>6. Intellectual Property</strong></h3><p>6.1 <strong>Ownership:</strong> All content, trademarks, and other intellectual property on our website are owned by or licensed to Neez Packages. You may not use, reproduce, or distribute any content without our prior written permission.</p><h3><strong>7. Limitation of Liability</strong></h3><p>7.1 <strong>Disclaimer:</strong> Our website and services are provided \"as is\" without warranties of any kind. We do not guarantee the accuracy, completeness, or reliability of our website or services.</p><p>7.2 <strong>Limitation of Liability:</strong> To the fullest extent permitted by law, Neez Packages shall not be liable for any indirect, incidental, special, or consequential damages arising from your use of our website or services.</p><h3><strong>8. Indemnification</strong></h3><p>8.1 <strong>Indemnity:</strong> You agree to indemnify and hold harmless Neez Packages, its affiliates, and their respective officers, directors, employees, and agents from any claims, liabilities, damages, and expenses arising from your use of our website or services.</p><h3><strong>9. Governing Law</strong></h3><p>9.1 <strong>Applicable Law:</strong> These Terms shall be governed by and construed in accordance with the laws of [Your State/Country], without regard to its conflict of law principles.</p><p>9.2 <strong>Dispute Resolution:</strong> Any disputes arising from these Terms or your use of our website shall be resolved through binding arbitration in [Your State/Country].</p><h3><strong>10. Contact Us</strong></h3><p>If you have any questions or concerns about these Terms, please contact us at:</p><p><strong>Neez Packages</strong><br>402 High Road, Ilford, England<br>+447852802476<br>info@neezpackages.com</p>', '1.0', '2024-08-28', '2025-10-28', 'active', NULL, NULL, '2024-08-28 12:49:28', '2024-08-28 12:49:28'),
(2, 'Privacy Policy', '<p>Welcome to Neez Packages! Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website and use our services. By accessing or using our website, you agree to the terms of this Privacy Policy.</p><h3><strong>1. Information We Collect</strong></h3><p>1.1 <strong>Personal Information:</strong> We may collect personal information that you provide directly to us, such as your name, email address, phone number, and payment information when you register for an account, place an order, or contact us.</p><p>1.2 <strong>Usage Data:</strong> We collect information about your interactions with our website, such as your IP address, browser type, pages visited, and the date and time of your visit. This helps us understand how you use our website and improve our services.</p><p>1.3 <strong>Cookies and Tracking Technologies:</strong> We use cookies and similar tracking technologies to enhance your experience on our website. Cookies are small data files stored on your device that help us remember your preferences and track usage patterns. You can control cookie settings through your browser.</p><h3><strong>2. How We Use Your Information</strong></h3><p>2.1 <strong>To Provide Services:</strong> We use your personal information to process orders, manage your account, and provide customer support.</p><p>2.2 <strong>To Improve Our Website:</strong> Usage data helps us analyze and improve our website’s performance and functionality.</p><p>2.3 <strong>To Communicate with You:</strong> We may use your contact information to send you updates, promotional materials, or other information related to our services. You can opt-out of receiving promotional communications at any time.</p><p>2.4 <strong>To Comply with Legal Obligations:</strong> We may use your information to comply with applicable laws, regulations, or legal requests.</p><h3><strong>3. How We Share Your Information</strong></h3><p>3.1 <strong>Service Providers:</strong> We may share your information with third-party service providers who assist us in operating our website, processing payments, and delivering services. These providers are contractually obligated to protect your information and use it only for the purposes specified.</p><p>3.2 <strong>Business Transfers:</strong> In the event of a merger, acquisition, or other business transaction, your information may be transferred to the new entity as part of the transaction.</p><p>3.3 <strong>Legal Requirements:</strong> We may disclose your information if required to do so by law or in response to legal processes, such as subpoenas or court orders.</p><h3><strong>4. Security of Your Information</strong></h3><p>We implement reasonable administrative, technical, and physical measures to protect your information from unauthorized access, use, or disclosure. However, no security system is impenetrable, and we cannot guarantee the absolute security of your information.</p><h3><strong>5. Your Rights and Choices</strong></h3><p>5.1 <strong>Access and Correction:</strong> You have the right to access, correct, or update your personal information. You can do this by logging into your account or contacting us directly.</p><p>5.2 <strong>Opt-Out:</strong> You can opt-out of receiving promotional emails from us by following the instructions in the email or contacting us. Note that even if you opt-out, we may still send you non-promotional communications related to your account or transactions.</p><p>5.3 <strong>Cookies:</strong> You can manage cookie settings through your browser. Please note that disabling cookies may affect your ability to use certain features of our website.</p><h3><strong>6. Links to Other Websites</strong></h3><p>Our website may contain links to third-party websites. We are not responsible for the privacy practices or content of these websites. We encourage you to review the privacy policies of any third-party sites you visit.</p><h3><strong>7. Children’s Privacy</strong></h3><p>Our website and services are not directed at individuals under the age of 18. We do not knowingly collect personal information from children under 18. If we become aware that we have collected such information, we will take steps to delete it.</p><h3><strong>8. Changes to This Privacy Policy</strong></h3><p>We may update this Privacy Policy from time to time. Any changes will be posted on this page with an updated effective date. Your continued use of our website after any changes constitutes your acceptance of the updated policy.</p><h3><strong>9. Contact Us</strong></h3><p>If you have any questions or concerns about this Privacy Policy, please contact us at:</p><p><strong>Neez Packages</strong><br>402 High Road, Ilford, England<br>+447852802476<br>info@neezpackages.com</p>', '1.0', '2024-08-28', '2025-10-28', 'active', NULL, NULL, '2024-08-28 12:51:08', '2024-08-28 12:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address_one` varchar(255) DEFAULT NULL,
  `address_two` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_registration_number` varchar(255) DEFAULT NULL,
  `company_vat_number` varchar(255) DEFAULT NULL,
  `selling_platforms` text DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `referral_source` varchar(255) DEFAULT NULL,
  `buying_group_membership` varchar(255) DEFAULT NULL,
  `website_address` varchar(255) DEFAULT NULL,
  `buying_group_name` text DEFAULT NULL,
  `current_suppliers` text DEFAULT NULL,
  `annual_spend` varchar(255) DEFAULT NULL,
  `newsletter_preference` varchar(255) DEFAULT 'yes',
  `terms_condition` varchar(255) DEFAULT 'yes',
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_image`, `title`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `phone`, `address_one`, `address_two`, `zipcode`, `state`, `country`, `company_name`, `company_registration_number`, `company_vat_number`, `selling_platforms`, `customer_type`, `referral_source`, `buying_group_membership`, `website_address`, `buying_group_name`, `current_suppliers`, `annual_spend`, `newsletter_preference`, `terms_condition`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mr', 'Rashed', 'Raj', 'rpplabon@gmail.com', NULL, '$2y$10$PWf.3f5BT2vKMX2ifmphIOIipUDOHkDcpHdp/YQXvCZy0R71o7A6i', '01620222616', 'Mirpur', 'Dhaka', '1206', NULL, NULL, 'Neez International', '4565454', '45475', 'ebay', 'Wholesaler', 'internet_search', 'yes', NULL, NULL, NULL, 'Under £500', 'yes', 'yes', 'active', 'mlMVBhgqhMXoTdyNkWz6mPdVRNrpxexYTqfiPnyqJiZaVPtYJvoxRM8L7T3l', '2024-08-28 13:58:42', '2024-08-28 14:00:23'),
(2, NULL, 'Ms', 'Khandker', 'Shahed', 'khandkershahed23@gmail.com', NULL, '$2y$10$IYmcOJHdK.sTd7mmX4eQrey5QAvrQrDqBbwtvDBTheyxQC30BvHQu', '+8801754348949', 'Reprehenderit asper', 'Neque ut similique m', '83329', NULL, NULL, 'Vaughn and Colon Trading', 'Pierce and Keller Trading', 'Moran Carson Traders', 'other', 'Tradesman', 'advert_in_news', 'yes', 'https://www.sen.co', 'Voluptate proident', 'Ex a ipsam provident', '£5,000 - £10,000', 'yes', 'yes', 'active', NULL, '2024-08-28 14:11:13', '2024-08-28 14:12:18'),
(3, NULL, 'Mr', 'Akash', 'Mirza', 'akashvai01726@gmail.com', NULL, '$2y$10$r///6mjlptBdgdGvIZW8teJEcu/GPRgTzH25m0YD/TpZRRJPLSp.O', '01918861101', 'flate number 2', 'Dhaka', '1200', 'Bangladesh', NULL, 'NG', '65487484', NULL, 'other', 'Market Trader', 'facebook', 'yes', NULL, NULL, NULL, 'Under £500', NULL, 'yes', 'active', 'NJZCV8vCG7WiOVRDfZ6WHB4NUdNITeelOBSdEygWESxfZLg2LvPGRMY6fLfi', '2024-08-29 09:29:48', '2024-10-31 19:04:48'),
(4, NULL, 'Mr', 'Tom', 'Mullar', 'tom@gmail.com', NULL, '$2y$10$PoZmZa4xhg3ym8C9HUnh/OD73WIk8pQDXB/8F8aFKpbFSGZAzC2He', '01575124527', '678/4, East Shewrapara, Kafrul', 'Dhaka', '1206', 'Gulistan', NULL, 'Tom & Sons', '457548458', '454212544', NULL, NULL, 'advert_in_news', NULL, 'https://tomnsons.com', NULL, NULL, '£1,000 - £2,000', 'no', 'yes', 'inactive', NULL, '2024-08-30 17:34:53', '2024-08-30 17:34:53'),
(5, NULL, 'Mr', 'Imran', 'Abdullah', 'imran@gmail.com', NULL, '$2y$10$wXqWZ9E9AJmtQG.ZL4ziLeTwqVrSUJDREZXnywbIhaEjBgFdd6vtu', '4545455454', 'South Mollartek', 'Dhaka', '4545655', 'Essex', NULL, 'GDB Ltd', '4545254', '4545444', NULL, NULL, 'internet_search', NULL, 'https://neezonline.com', NULL, NULL, 'Under £500', 'no', 'yes', 'active', NULL, '2024-09-02 13:09:24', '2024-09-02 13:09:24'),
(6, NULL, 'Mrs', 'Passowrd', 'New', 'password@password.com', NULL, '$2y$10$K8S01ugPnYZ8IgKjgw1LJ.5cTBD3iIvhm81bk5al9haBB7EonGPtK', '01576614451', 'Blanditiis ut vel ve', 'Temporibus lorem dol', '14167', 'Voluptas est consequ', NULL, 'Church Miles Plc', 'Duran Mckee Co', 'Coffey and Dejesus Plc', NULL, NULL, 'linked_in', NULL, 'https://www.wovusuquri.cm', NULL, NULL, '£30,000 - £50,000', 'yes', 'yes', 'active', 'RBpZy89wk6CwOGALH0VzDbB4hnhENi7ot9CdFP98lhzxtyewqczUXpEZ863f', '2024-09-03 18:41:48', '2024-09-03 19:23:07'),
(7, NULL, 'Mr', 'eryser', 'DASSS', 'foqovygu@teleg.eu', NULL, '$2y$10$zFiiNM2MWXtf0jdBWtzHWu9sMXeVdzfpAfU.gADjSI40lrHOR8a72', '+31212456789', 'RERWEWE', 'aFWEF', 'SDVAER', 'DfwEF', NULL, 'SeFwef', 'AEFq', 'DvEF', NULL, NULL, 'advert_in_news', NULL, NULL, NULL, NULL, 'Under £500', 'no', 'yes', 'active', NULL, '2024-09-11 17:06:25', '2024-09-11 17:06:25'),
(8, NULL, 'Mrs', 'Piper', 'Pratt', 'macyhyku@mailinator.com', NULL, '$2y$10$GNL2FmhDzPRKyMgTLi9pue7T0ra.S24mGeNoNMYfIU1mFrMP2Et2m', '01576614451', 'Do doloremque in eiu', 'Est expedita tempor', '35329', 'Iusto et qui perfere', NULL, 'Herrera Cleveland Plc', 'Hart and Dodson Traders', 'Price and Hansen Co', NULL, NULL, 'linked_in', NULL, 'https://www.sasek.info', NULL, NULL, '£1,000 - £2,000', 'no', 'yes', 'active', NULL, '2024-10-13 19:36:22', '2024-10-13 19:36:22'),
(9, NULL, 'Mr', 'Rashed', 'Raj', 'rashed.artificial@gmail.com', NULL, '$2y$10$8StKkL/PNeDpnROcI.l/8ezNJ8fz/Fcmi2iBziN60V9mfLF2uSf/m', '01917791856', '678/4, East Shewrapara', 'Dhaka', '1206', 'Dhaka', NULL, 'Arsuk Euro Ltd.', NULL, NULL, NULL, NULL, 'internet_search', NULL, NULL, NULL, NULL, 'Under £500', 'no', 'yes', 'active', NULL, '2024-10-13 20:02:51', '2024-10-13 20:02:51'),
(10, NULL, 'Mr', 'Al', 'Alrazi', 'alrazee2010@yahoo.co.uk', NULL, '$2y$10$M0ADuI1/sDckjFkz7mmuJugFvcVY6Ozjw7fcJvWXQSQt4KnVXhhEe', '+447903162740', '144 Hampton road', 'Ilford', 'Ig11pr', 'Essex', NULL, NULL, NULL, NULL, NULL, NULL, 'internet_search', NULL, NULL, NULL, NULL, 'Under £500', 'no', 'yes', 'active', NULL, '2024-10-13 20:14:32', '2024-10-13 20:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 3, 2, '2024-08-29 10:06:49', '2024-08-29 10:06:49'),
(7, 3, 21, '2024-09-05 14:48:37', '2024-09-05 14:48:37'),
(8, 3, 5, '2024-09-05 14:53:03', '2024-09-05 14:53:03'),
(9, 3, 19, '2024-09-30 09:45:17', '2024-09-30 09:45:17'),
(10, 3, 18, '2024-10-31 19:36:12', '2024-10-31 19:36:12'),
(11, 3, 22, '2024-10-31 19:39:46', '2024-10-31 19:39:46'),
(12, 3, 8, '2024-10-31 19:41:36', '2024-10-31 19:41:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_us_slug_unique` (`slug`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_posts_slug_unique` (`slug`);

--
-- Indexes for table `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_settings`
--
ALTER TABLE `blog_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_name_unique` (`name`),
  ADD UNIQUE KEY `blog_tags_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_name_index` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_code_unique` (`code`);

--
-- Indexes for table `deal_banners`
--
ALTER TABLE `deal_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_banners_product_id_foreign` (`product_id`),
  ADD KEY `deal_banners_category_id_foreign` (`category_id`),
  ADD KEY `deal_banners_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_category_id_foreign` (`category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_method_id_foreign` (`shipping_method_id`),
  ADD KEY `orders_created_by_foreign` (`created_by`),
  ADD KEY `orders_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_post_comments`
--
ALTER TABLE `blog_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_settings`
--
ALTER TABLE `blog_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `deal_banners`
--
ALTER TABLE `deal_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `page_banners`
--
ALTER TABLE `page_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deal_banners`
--
ALTER TABLE `deal_banners`
  ADD CONSTRAINT `deal_banners_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deal_banners_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deal_banners_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `faq_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_methods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
