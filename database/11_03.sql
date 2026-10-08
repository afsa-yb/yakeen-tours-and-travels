-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 04:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yakeen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `adm_id` int(15) NOT NULL,
  `adm_name` varchar(30) NOT NULL,
  `adm_email` varchar(30) NOT NULL,
  `adm_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`adm_id`, `adm_name`, `adm_email`, `adm_password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_master`
--

CREATE TABLE `booking_master` (
  `book_id` int(15) NOT NULL,
  `book_date` varchar(100) NOT NULL,
  `book_day` varchar(100) NOT NULL,
  `no_of_person` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `pack_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_master`
--

INSERT INTO `booking_master` (`book_id`, `book_date`, `book_day`, `no_of_person`, `total_amount`, `pack_id`, `user_id`) VALUES
(2, '03-03-25', '2025-03-27', '3', '98700', 4, 2),
(3, '08-03-25', '2025-04-30', '2', '219998', 20, 2),
(4, '08-03-25', '2025-03-30', '6', '389994', 18, 2),
(5, '08-03-25', '2025-05-05', '2', '55000', 12, 2),
(6, '08-03-25', '2025-03-30', '6', '197400', 4, 2),
(7, '08-03-25', '2025-03-31', '2', '133000', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cat_master`
--

CREATE TABLE `cat_master` (
  `cat_id` int(15) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_photo` varchar(500) NOT NULL,
  `cat_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat_master`
--

INSERT INTO `cat_master` (`cat_id`, `cat_name`, `cat_photo`, `cat_desc`) VALUES
(3, 'Tours Packages', 'cat_photo.jpg', 'Escape with us! We offer a diverse range of travel experiences, from exciting family adventures and romantic getaways to relaxing holidays and unforgettable international journeys. Find your perfect package today!'),
(4, 'Travels ', 'cat_ptoto2.jpg', 'Experience hassle-free travel with our diverse transportation options. From quick and convenient tempos to comfortable and relaxing buses, and reliable door-to-door cab services, we offer safe and efficient travel solutions to suit every need and budget!');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `fb_id` int(15) NOT NULL,
  `fb_msg` varchar(500) NOT NULL,
  `fb_date` varchar(50) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pack_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`fb_id`, `fb_msg`, `fb_date`, `user_id`, `pack_id`) VALUES
(5, 'This packages is very nice packages', '20-02-25', 2, 4),
(6, 'It is a awesome packages and very costly.', '08-03-25', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_veh`
--

CREATE TABLE `feedback_veh` (
  `fb_id` int(15) NOT NULL,
  `fb_msg` varchar(500) NOT NULL,
  `fb_date` varchar(100) NOT NULL,
  `user_id` int(15) NOT NULL,
  `veh_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_veh`
--

INSERT INTO `feedback_veh` (`fb_id`, `fb_msg`, `fb_date`, `user_id`, `veh_id`) VALUES
(4, 'It is very comfortable and safely for traveling.  ', '20/02/2025', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `packages_master`
--

CREATE TABLE `packages_master` (
  `pack_id` int(15) NOT NULL,
  `pack_name` varchar(100) NOT NULL,
  `pack_desc` varchar(5000) NOT NULL,
  `pack_price` varchar(100) NOT NULL,
  `pack_photo` varchar(500) NOT NULL,
  `days` varchar(100) NOT NULL,
  `nights` varchar(100) NOT NULL,
  `pack_type` varchar(100) NOT NULL,
  `sub_cat_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages_master`
--

INSERT INTO `packages_master` (`pack_id`, `pack_name`, `pack_desc`, `pack_price`, `pack_photo`, `days`, `nights`, `pack_type`, `sub_cat_id`) VALUES
(4, 'KASHMIR LUXURY', 'The best time to visit Kashmir for most travelers seeking a balanced experience would be during the summer months, from June to August. The weather is pleasant, and most attractions are open and easily accessible during this time.', '32900', 'p1.jpg', '9 Days', '8 Nights', 'Luxury', 7),
(5, 'VAISHNODEVI PATNITOP SHIVKHODI', 'This tour offers a unique blend of spiritual fulfillment and natural beauty. It begins with a visit to the sacred Vaishno Devi shrine, allowing pilgrims to immerse themselves in the divine aura of the place. The challenging trek acts as a metaphorical journey of self-discovery and devotion. ', '5999', 'p2.png', '6 Days ', '5 Nights', 'Deluxe', 7),
(6, 'AYODHYA-VARANSHI-CHITRAKOOT', 'Ayodhya, situated in the state of Uttar Pradesh, India, holds profound cultural and religious significance. It is primarily known as the birthplace of Lord Rama, revered as a major deity in Hinduism and central to the epic Ramayana. The city is dotted with numerous temples and pilgrimage sites, including the prominent Ram Janmabhoomi Temple, believed to be the exact birthplace of Lord Rama.', '17999', 'p3.jpg', '8 Days', '7 Nights', 'Royal', 7),
(7, 'SIKKIM & DARJEELING', 'Nathulapas, Changulek and Baba Mandir in this tour cost around Rs.1 per vehicle. 6000 is done which is included. They will be taken only if they get a permit to go to Nathulapas. 2. This tour includes Namchi (Chardham) and Rawangla (Buddha Temple) per 1 vehicle at around Rs. 3000 which is included.', '30999', 'p4.jpg', '8 Days', '7 Nights', 'Royal', 7),
(8, 'Agra-Delhi-Shimla-Kullu-Manali', 'Last night travel on tour, come back fourteenth day morining, two nights travel on tour. Delhi - Shimla - Manali - Dalhousie all local site scence in a their small vehicles (at own expense) A.C. Rooms in Jaipur - Delhi - Amritsar - Bikaner 1 Liter single bottle of mineral water plain (not cold) will be provided per seat per day.', '57750', 'p5.jpg', '14 Days', '13 Nights', 'Premium', 7),
(9, 'Bangalore-Mysore-Ooty', 'Indulge in a captivating journey through the vibrant city of Bangalore, the majestic palaces of Mysore, and the serene beauty of Ooty. This romantic escape is designed for couples seeking a blend of urban excitement, cultural immersion, and breathtaking natural landscapes.', '66500', 'p6.jpg', '13 Days', '12 Nights', 'Standard', 8),
(10, 'SINGAPORE MALASIYA', 'Singapore, Thailand, and Malaysia, without a doubt, wonderfully balance traditional and modern aspects. As a result, the Singapore Malaysia Thailand travel package including a cruise will be ideal for you.', '113020', 'p7.png', '8 Days', '7 Nights', 'Royal', 8),
(11, 'KERALA SEASON', 'Kerala, often referred to as God\'s Own Country, is a captivating destination in South India that offers a diverse range of experiences for travelers. Here is an overview that a travel company might find useful.', '26999', 'p8.jpg', '9 Days', '8 Nights', 'Royal', 8),
(12, 'Jaipur-Jodhpur-Jaisalmer', 'Escape to the heart of Rajasthan on this romantic journey! Explore the vibrant Pink City of Jaipur, the majestic Mehrangarh Fort in Jodhpur, and the golden dunes of Jaisalmer. Experience royal palaces, vibrant markets, and unforgettable desert adventures.', '27500', 'p9.jpg', '7 Days ', '6 Nights', 'Premium', 8),
(13, 'Goa-Mahabaleshwar-Lonawala', 'Sun, Serenity, & Scenery: Goa\'s beaches, Mahabaleshwar\'s charm, Lonawala is allure. A perfect romantic escape.', '34000', 'p10.jpg', '8 Days', '7 Nights', 'Standard', 8),
(14, 'Meghalaya - Shillong and Kaziranga Special', 'Explore the magic of Meghalaya! Experience the living root bridges of Cherrapunji, the vibrant culture of Shillong, and the thrilling wildlife encounters in Kaziranga National Park.', '44603', 'p11.jpg', '7 Days ', '6 Nights', 'Deluxe', 9),
(15, 'Dubai - Winter Special', 'Embrace the magic of Dubai in winter! This special package offers a unique blend of luxurious experiences, thrilling winter activities, and breathtaking desert landscapes. Enjoy world-class shopping, indulge in fine dining, witness the mesmerizing Dubai Fountain shows, and experience the thrill of skiing indoors.', '86999', 'p12.jpg', '8 Days', '7 Nights', 'Deluxe', 9),
(16, 'Uttrakhand', 'Welcome to Uttarakhand, a land of stunning landscapes, spiritual havens, and exhilarating adventures. Nestled in the majestic Himalayas, Uttarakhand is a treasure trove of natural beauty and cultural richness.', '25499', 'p13.png', '8 Days', '7 Nights', 'Royal', 9),
(17, 'MADHYA PRADESH', 'Madhya Pradesh, a land of rich heritage and natural beauty, offers a memorable short tour experience. Highlights include the world-famous Khajuraho Temples with their stunning sculptures, the spiritual hub of Ujjain, home to the revered Mahakaleshwar Temple, and the historic Gwalior Fort, one of India is most magnificent hilltop forts.', '25500', 'p14.jpg', '8 Days', '7 Nights', 'Premium', 9),
(18, 'ASSAM - MEGHALAYA ARUNACHAL PRADESH', 'Assam offers a unique blend of natural beauty, wildlife, and traditional Assamese hospitality. Adventure enthusiasts can enjoy trekking, caving, and exploring the pristine natural beauty of this enchanting state. Meghalaya promises an unforgettable journey into the heart of nature.', '64999', 'p15.png', '12 Days ', '11 Nights', 'Luxury', 9),
(19, 'Hongkong Shenzhen Macau', 'Indulge in the Pearl of the Orient: Experience World-Class Shopping, Fine Dining, and Luxurious Accommodations in Hong Kong, Shenzhen, and Macau.', '169999', 'p16.jpg', '10 Days', '9 Nights', 'Deluxe', 10),
(20, 'Bali Honeymoon Special', 'Bali Adventure Honeymoon: Hike Volcanoes, Surf World-Class Waves, and Explore Underwater Worlds with Exciting Dive Adventures.', '109999', 'p17.jpg', '10 Days', '9 Nights', 'Permium', 10),
(21, 'Experience Cruise Singapore Malaysia Thailand', 'Cultural Tapestry: Immerse Yourself in the Rich Traditions of Singapore, Malaysia, and Thailand on a Cruise Adventure.', '194599', 'p18.jpg', '15 Days', '14 Nights', 'Royal', 10),
(22, 'South Africa', 'African Safari Adventure: Encounter Lions, Elephants, and Rhinos on an Unforgettable Wildlife Safari in South Africa.', '239999', 'p19.jpg', '13 Days', '12 Nights', 'Deluxe', 10),
(23, 'Explore Europe', 'Conquer Europe: Hike the Alps, Cycle the Danube, and Explore Hidden Gems Off the Beaten Path.', '289999', 'p20.jpg', '12 Days ', '11 Nights', 'Standard', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat_master`
--

CREATE TABLE `sub_cat_master` (
  `sub_cat_id` int(15) NOT NULL,
  `sub_cat_name` varchar(100) NOT NULL,
  `sub_cat_photo` varchar(500) NOT NULL,
  `sub_cat_desc` varchar(500) NOT NULL,
  `cat_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_cat_master`
--

INSERT INTO `sub_cat_master` (`sub_cat_id`, `sub_cat_name`, `sub_cat_photo`, `sub_cat_desc`, `cat_id`) VALUES
(3, 'Tempo Travel', 'tempo.jpg', 'Skip the traffic and save time with our tempo booking service. Enjoy a smooth and affordable ride to your destination.', 4),
(6, 'Buses', 'bus.jpg', 'Travel further, relax more. Book your luxury bus tickets and enjoy a comfortable and convenient journey to your destination.', 4),
(7, 'Family Tour', 'family.jpg', 'Create unforgettable memories with your loved ones on a family adventure! Explore exciting destinations, enjoy thrilling activities, and bond over shared experiences.', 3),
(8, 'Couple Tour', 'couple.jpg', 'Explore the world together on an exhilarating adventure. Hike breathtaking trails, discover hidden gems, and create unforgettable memories.', 3),
(9, 'Holiday Tour', 'holidays.jpg', 'Escape to paradise on a relaxing holiday. Enjoy pristine beaches, luxurious accommodations, and rejuvenating spa treatments.', 3),
(10, 'International Tour', 'international.jpg', 'Explore diverse landscapes, from pristine beaches and thrilling safaris to serene hill stations. Discover the world with unforgettable experiences.', 3),
(12, 'Cab', 'cab.jpg', 'Travel in style. Book your premium cab for a comfortable and luxurious ride.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_pincode` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `user_address`, `user_city`, `user_pincode`, `user_email`, `user_password`, `user_mobile`) VALUES
(1, 'mariya', 'ratanpar', 'snagar', '363020', 'mariya123@gmail.com', 'mariya@123', '9979903670'),
(2, 'Khushi', 'Dholipol, Wadhawan', 'Surendranagar', '363030', 'khushi123@gmail.com', 'khushi@123', '8530536786');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_master`
--

CREATE TABLE `vehicles_master` (
  `veh_id` int(15) NOT NULL,
  `veh_name` varchar(100) NOT NULL,
  `veh_number` varchar(100) NOT NULL,
  `veh_desc` varchar(500) NOT NULL,
  `veh_photo` varchar(500) NOT NULL,
  `seat_capacity` varchar(100) NOT NULL,
  `price_per_km` varchar(100) NOT NULL,
  `sub_cat_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles_master`
--

INSERT INTO `vehicles_master` (`veh_id`, `veh_name`, `veh_number`, `veh_desc`, `veh_photo`, `seat_capacity`, `price_per_km`, `sub_cat_id`) VALUES
(4, 'Volvo Mini Bus', 'GJ 01 RX 2375', 'Volvo is renowned for its commitment to safety, and its mini buses are equipped with advanced safety features.', 'v1.jpg', '20', '29', 6),
(5, 'Volvo Luxury Bus', 'GJ 01 W 540', 'Spacious seating, climate control, and smooth rides are hallmarks of Volvo luxury buses.', 'v2.jpg', '56', '47', 6),
(6, 'Mini Bus', 'GJ 01 RX 2345', 'They offer a more economical transportation solution compared to larger buses or multiple taxis. ', 'v3.jpg', '29', '35', 6),
(7, 'Sleeper Bus', 'GJ 01 RN 5343', 'Travel in comfort with our sleeper buses, equipped with cozy berths for a relaxing journey.', 'v4.jpg', '41', '50', 6),
(8, 'Maharaja Coach Tempo Traveller', 'GJ 01 F 1896', 'Designed for comfortable transportation of medium-sized groups, ideal for family trips, tours, or corporate outings.', 'v5.jpg', '11', '21', 3),
(9, 'Maharaja Tempo Travellers', 'GJ 01 UE 0421', 'Often include comfortable seating, ample legroom, and sometimes amenities like air conditioning and entertainment systems.', 'v6.jpg', '14', '22', 3),
(10, 'Laxmi tempo traveller', 'GJ 01 BE 79', 'Used for diverse purposes, including tourism, staff transportation, and school buses.', 'v7.jpg', '20', '28', 3),
(11, 'Laxmi Sleeper tempo', 'GJ 01 BE 656', 'Depending on the tempo, amenities may include comfortable berths, charging points, blankets, etc.', 'v8.jpg', '12', '40', 3),
(12, 'Innova Crysta', 'GJ 01 JD 9759', 'Innova Crysta offers ample space and comfortable seating for passengers, making it ideal for families or groups.', 'v9.jpg', '7', '17', 12),
(13, 'Toyota Yaris', 'GJ 01 RN 8252', 'The Yaris is known for its excellent gas mileage, which can save you money on fuel costs.', 'v10.jpg', '5', '22', 12),
(14, 'Toyota Corolla', 'GJ 01 JN 7383', 'Smooth handling and spacious interior for a pleasant journey.', 'v11.jpg', '5', '29', 12),
(15, 'Swift Dzire', 'GJ 01 RD 1139', 'The Swift Dzire offers a comfortable ride with a stylish design, making it perfect for both city commutes and longer journeys.', 'v12.jpg', '5', '10', 12),
(16, 'Honda City', 'GJ 01 DY 6502', 'Relax in a spacious cabin with comfortable seating for up to 5 passengers, perfect for families or small groups.', 'v13.jpg', '5', '22', 12);

-- --------------------------------------------------------

--
-- Table structure for table `veh_book_master`
--

CREATE TABLE `veh_book_master` (
  `vb_id` int(15) NOT NULL,
  `vb_date` varchar(100) NOT NULL,
  `vb_day` varchar(50) NOT NULL,
  `pick_up_loc` varchar(500) NOT NULL,
  `drop_of_loc` varchar(500) NOT NULL,
  `pick_up_time` varchar(100) NOT NULL,
  `drop_of_time` varchar(100) NOT NULL,
  `total_distance` varchar(200) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `veh_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veh_book_master`
--

INSERT INTO `veh_book_master` (`vb_id`, `vb_date`, `vb_day`, `pick_up_loc`, `drop_of_loc`, `pick_up_time`, `drop_of_time`, `total_distance`, `total_amount`, `veh_id`, `user_id`) VALUES
(3, '03-03-25', '2025-03-06', 'Ratanpar', 'Rajkot', '16:46', '19:46', '80', '2240', 10, 2),
(4, '08-03-25', '2025-03-11', 'Ahmedabad', 'Baroda', '11:45', '13:46', '110', '2420', 13, 2),
(5, '08-03-25', '2025-05-15', 'Suredranagar', 'Jaipur', '23:00', '13:00', '745', '37250', 7, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `booking_master`
--
ALTER TABLE `booking_master`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cat_master`
--
ALTER TABLE `cat_master`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `feedback_veh`
--
ALTER TABLE `feedback_veh`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `packages_master`
--
ALTER TABLE `packages_master`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `sub_cat_master`
--
ALTER TABLE `sub_cat_master`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicles_master`
--
ALTER TABLE `vehicles_master`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `veh_book_master`
--
ALTER TABLE `veh_book_master`
  ADD PRIMARY KEY (`vb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `adm_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_master`
--
ALTER TABLE `booking_master`
  MODIFY `book_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cat_master`
--
ALTER TABLE `cat_master`
  MODIFY `cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `fb_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback_veh`
--
ALTER TABLE `feedback_veh`
  MODIFY `fb_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages_master`
--
ALTER TABLE `packages_master`
  MODIFY `pack_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sub_cat_master`
--
ALTER TABLE `sub_cat_master`
  MODIFY `sub_cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles_master`
--
ALTER TABLE `vehicles_master`
  MODIFY `veh_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `veh_book_master`
--
ALTER TABLE `veh_book_master`
  MODIFY `vb_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
