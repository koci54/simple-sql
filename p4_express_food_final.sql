-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 03:30 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p4_express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `city`, `postcode`, `street`, `house_number`) VALUES
(1, 1, 'Hampton Bays', '98145', 'Feathers Hooves Drive', 1574),
(2, 2, 'Charleston', '78963', 'Kessla Way', 3701),
(3, 3, 'Seattle', '98101', 'Elliot Avenue', 3975),
(4, 4, 'Tampa', '33624', 'Badger Pond Lane', 2711),
(5, 5, 'Columbia', '29206', 'Hillview Street', 2862),
(6, 6, 'Redmond', '98052', 'Stockert Hollow Road', 4430),
(7, 7, 'Sacramento', '95815', 'Highland View Drive', 738),
(8, 8, 'Burbank', '91505', 'Kerry Way', 509),
(9, 9, 'Santa Clara', '95054', 'Brookview Drive', 2644),
(10, 10, 'Anaheim', '92801', 'Liberty Avenue', 3343),
(11, 11, 'Ontario', '91762', 'Clarence Cour', 3874),
(12, 12, 'San Francisco', '94108', 'Jim Rosa Lane', 547),
(13, 13, 'San Francisco', '94115', 'Boring Lane', 4362),
(14, 14, 'Garrison', '75946', 'Woodrow Way', 4074),
(15, 15, 'Manchester', '03103', 'Shearwood Forest Drive', 170),
(16, 16, 'Lakewood', '08701', 'Pennsylvania Avenue', 3467);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_content`
--

CREATE TABLE `delivery_content` (
  `delivery_content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` tinyint(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_content`
--

INSERT INTO `delivery_content` (`delivery_content_id`, `user_id`, `food_id`, `order_id`, `quantity`) VALUES
(1, 6, 4, 1, 1),
(2, 15, 2, 2, 2),
(3, 16, 4, 3, 1),
(4, 6, 2, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_process`
--

CREATE TABLE `delivery_process` (
  `delivery_process_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_date_time` datetime NOT NULL,
  `place_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_process`
--

INSERT INTO `delivery_process` (`delivery_process_id`, `user_id`, `order_id`, `delivery_date_time`, `place_date_time`) VALUES
(1, 6, 1, '2017-11-23 08:20:00', '2017-11-23 08:00:00'),
(2, 15, 2, '2017-11-23 08:20:00', '2017-11-23 08:00:00'),
(3, 16, 3, '2017-11-24 08:20:00', '2017-11-24 08:00:00'),
(4, 6, 4, '2017-11-25 08:20:00', '2017-11-25 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `create_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgUrl` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `user_id`, `name`, `price`, `create_date`, `description`, `imgUrl`) VALUES
(1, 2, 'Orange Pumpkin topped with Meat Roll', '2600', '2017-11-15', 'Unexpected combination of this typical meals made usually during the fall season. ', ''),
(2, 2, 'Decadent Roast Beef', '2200', '2017-11-14', 'Very well prepared and cooked for several hours in a brick oven.', ''),
(3, 1, 'Spiced Lime and Banana Paste ', '1000', '2017-11-13', 'Unusual combination imported from tropical islands in Pacific Ocean.', ''),
(4, 4, 'Tuna and Mussel Flatbread served with Reddish Hot Dog and Polish Sausage Pasta', '3000', '2017-11-12', 'Eastern Europe specialties mixed together. ', ''),
(5, 2, 'Frankfurter Noodles tossed with Walnut and Banana Pilaf', '4500', '2017-11-15', 'Exotic meal where west and east flavors blends together. ', ''),
(6, 1, 'Spicy Pine Nut Omelette served with Sweet and Sour Bass and Mushroom', '2200', '2017-11-14', 'Delicious gem from our chef.', ''),
(7, 3, 'Sweet Oatmeal Pie with Muskrat and Ketchup Pasta', '1200', '2017-11-13', 'Grandmother\'s recipe.', ''),
(8, 1, 'Steamed Tangerine Cake with Shellfish and Abalone', '1100', '2017-11-15', 'Brand new dessert!', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `adress_id`, `status`) VALUES
(1, 6, 6, 2),
(2, 15, 15, 2),
(3, 16, 16, 2),
(4, 6, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
(1, 'employee'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` binary(32) NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `role_id`, `password`, `email`, `first_name`, `last_name`, `phone_number`, `create_date`) VALUES
(1, 1, 0xad33ff0000000000000000000000000000000000000000000000000000000000, 'ChristineDoe@hok.com', 'Christine', 'Doe', '843-352-4571', '2017-11-20'),
(2, 1, 0xaa33ff0000000000000000000000000000000000000000000000000000000000, 'EdnaCosey@foe.fr', 'Edna', 'Cosey', ' 631-723-2123', '2017-11-14'),
(3, 1, 0xad22ff0000000000000000000000000000000000000000000000000000000000, 'EdgarHill@jol.com', 'Edgar', 'Hill', '631-788-5578', '2017-11-21'),
(4, 1, 0xff22ad0000000000000000000000000000000000000000000000000000000000, 'StephanieBernard@hlol.fr', 'Stephanie', 'Bernard', '878-723-5578', '2017-11-20'),
(5, 1, 0x0000000000000000000000000000000000000000000000000000000000000000, 'JanaJFerris@jourrapide.com', 'Jana ', 'Ferris', ' 631-723-5578', '2017-11-20'),
(6, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'ToddMWilmot@armyspy.com', 'Todd ', 'Wilmot', '843-352-4572', '2017-11-19'),
(7, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'DennisLHarold@teleworm.us', 'Dennis ', 'Harold', '206-490-6229', '2017-11-13'),
(8, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'OlgaMCortez@dayrep.com', 'Olga ', 'Cortez', '727-324-2787', '2017-11-20'),
(9, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'ReginaAAlbert@teleworm.us', 'Regina ', 'Albert', '803-787-8611', '2017-11-20'),
(10, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'HelenSScott@jourrapide.com', 'Betty ', 'Clark', '760-892-7011', '2017-11-16'),
(11, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'JohnMGilman@jourrapide.com', 'John ', 'Gilman', '916-649-0393', '2017-11-16'),
(12, 1, 0x0000000000000000000000000000000000000000000000000000000000000000, 'LonnieVRoberts@teleworm.us', 'Lonnie ', 'Roberts', '562-761-4430', '2017-11-16'),
(13, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'LuisJHickey@jourrapide.com', 'Luis ', 'Hickey', '408-980-7416', '2017-11-15'),
(14, 1, 0x0000000000000000000000000000000000000000000000000000000000000000, 'AddieEDuke@rhyta.com', 'Addie ', 'Duke', '714-463-3541', '2017-11-20'),
(15, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'PatrickMBrown@rhyta.com', 'Patrick ', 'Brown', '909-984-8308', '2017-11-20'),
(16, 2, 0x0000000000000000000000000000000000000000000000000000000000000000, 'JohnNSmith@rhyta.com', 'John ', 'Smith', '415-765-2404', '2017-11-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `delivery_content`
--
ALTER TABLE `delivery_content`
  ADD PRIMARY KEY (`delivery_content_id`);

--
-- Indexes for table `delivery_process`
--
ALTER TABLE `delivery_process`
  ADD PRIMARY KEY (`delivery_process_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `delivery_content`
--
ALTER TABLE `delivery_content`
  MODIFY `delivery_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_process`
--
ALTER TABLE `delivery_process`
  MODIFY `delivery_process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
