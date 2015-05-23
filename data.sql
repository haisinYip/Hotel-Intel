-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.2.0.4954
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for hotel_intel_db
CREATE DATABASE IF NOT EXISTS `hotel_intel_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotel_intel_db`;


-- Dumping structure for table hotel_intel_db.app_categories
CREATE TABLE IF NOT EXISTS `app_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel_intel_db.app_categories: ~3 rows (approximately)
/*!40000 ALTER TABLE `app_categories` DISABLE KEYS */;
REPLACE INTO `app_categories` (`id`, `name`) VALUES
	(0, 'restaurants'),
	(1, 'arts'),
	(2, 'nightlife');
/*!40000 ALTER TABLE `app_categories` ENABLE KEYS */;


-- Dumping structure for table hotel_intel_db.yelp_categories
CREATE TABLE IF NOT EXISTS `yelp_categories` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel_intel_db.yelp_categories: ~56 rows (approximately)
/*!40000 ALTER TABLE `yelp_categories` DISABLE KEYS */;
REPLACE INTO `yelp_categories` (`id`, `tag`, `name`) VALUES
	(0, 'sushi', 'Sushi Bars'),
	(1, 'french', 'French'),
	(2, 'coffee', 'Coffee & Tea'),
	(3, 'bbq', 'Barbeque'),
	(4, 'bakeries', 'Bakeries'),
	(5, 'portuguese', 'Portuguese'),
	(6, 'breakfast_brunch', 'Breakfast & Brunch'),
	(7, 'mediterranean', 'Mediterranean'),
	(8, 'lebanese', 'Lebanese'),
	(9, 'newcanadian', 'Canadian (New)'),
	(10, 'cafes', 'Cafes'),
	(11, 'seafood', 'Seafood'),
	(12, 'burgers', 'Burgers'),
	(13, 'delis', 'Delis'),
	(14, 'australian', 'Australian'),
	(15, 'ethnicmarkets', 'Ethnic Food'),
	(16, 'hotdogs', 'Fast Food'),
	(17, 'mideastern', 'Middle Eastern'),
	(18, 'diners', 'Diners'),
	(19, 'poutineries', 'Poutineries'),
	(20, 'korean', 'Korean'),
	(21, 'fishnchips', 'Fish & Chips'),
	(22, 'venezuelan', 'Venezuelan'),
	(23, 'vegetarian', 'Vegetarian'),
	(24, 'cocktailbars', 'Cocktail Bars'),
	(25, 'arts', 'Arts & Entertainment'),
	(26, 'parks', 'Parks'),
	(27, 'jazzandblues', 'Jazz & Blues'),
	(28, 'comedyclubs', 'Comedy Clubs'),
	(29, 'vegan', 'Vegan'),
	(30, 'musicvenues', 'Music Venues'),
	(31, 'musicians', 'Musicians'),
	(32, 'tapas', 'Tapas Bars'),
	(33, 'movietheaters', 'Cinema'),
	(34, 'artsandcrafts', 'Arts & Crafts'),
	(35, 'womenscloth', 'Women\'s Clothing'),
	(36, 'costumes', 'Costumes'),
	(37, 'accessories', 'Accessories'),
	(38, 'artsupplies', 'Art Supplies'),
	(39, 'stationery', 'Cards & Stationery'),
	(40, 'artschools', 'Art Schools'),
	(41, 'bars', 'Bars'),
	(42, 'bookstores', 'Bookstores'),
	(43, 'divebars', 'Dive Bars'),
	(44, 'antiques', 'Antiques'),
	(45, 'galleries', 'Art Galleries'),
	(46, 'danceclubs', 'Dance Clubs'),
	(47, 'theater', 'Performing Arts'),
	(48, 'sportgoods', 'Sporting Goods'),
	(49, 'pubs', 'Pubs'),
	(50, 'wine_bars', 'Wine Bars'),
	(51, 'sportsbars', 'Sports Bars'),
	(52, 'lounges', 'Lounges'),
	(53, 'tapasmallplates', 'Tapas/Small Plates'),
	(54, 'mexican', 'Mexican'),
	(55, 'tradamerican', 'American (Traditional)');
/*!40000 ALTER TABLE `yelp_categories` ENABLE KEYS */;


-- Dumping structure for table hotel_intel_db.yelp_locations
CREATE TABLE IF NOT EXISTS `yelp_locations` (
  `id` int(11) NOT NULL,
  `yelp_id` varchar(100) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `url` text,
  `img_url` text,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel_intel_db.yelp_locations: ~57 rows (approximately)
/*!40000 ALTER TABLE `yelp_locations` DISABLE KEYS */;
REPLACE INTO `yelp_locations` (`id`, `yelp_id`, `name`, `url`, `img_url`, `lat`, `lon`) VALUES
	(0, 'saint-sushi-bar-montréal', 'Saint Sushi Bar', 'http://www.yelp.ca/biz/saint-sushi-bar-montr%C3%A9al', 'http://s3-media1.fl.yelpcdn.com/bphoto/hkUBbl08I30ZkhxKuPpL6A/ms.jpg', 45.5211182, -73.5753479),
	(1, 'le-quartier-général-montréal-2', 'Le Quartier Général', 'http://www.yelp.ca/biz/le-quartier-g%C3%A9n%C3%A9ral-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/lek8BsQLRWsQwBmPa6WFzA/ms.jpg', 45.5310898, -73.5814667),
	(2, 'la-famille-montréal', 'La Famille', 'http://www.yelp.ca/biz/la-famille-montr%C3%A9al', 'http://s3-media2.fl.yelpcdn.com/bphoto/5ZI6qIA9nBcIY4OLMPmLTQ/ms.jpg', 45.5257846, -73.5861567),
	(3, 'rotisserie-romados-montréal-2', 'Rotisserie Romados', 'http://www.yelp.ca/biz/rotisserie-romados-montr%C3%A9al-2', 'http://s3-media3.fl.yelpcdn.com/bphoto/Lx5OFZb1XrMpfb4hXWWHOg/ms.jpg', 45.51931, -73.5807037),
	(4, 'les-trois-petits-bouchons-montréal-3', 'Les Trois Petits Bouchons', 'http://www.yelp.ca/biz/les-trois-petits-bouchons-montr%C3%A9al-3', 'http://s3-media1.fl.yelpcdn.com/bphoto/MMfhAouRcTHMtyJ9h4TptA/ms.jpg', 45.5250702, -73.5848999),
	(5, 'lawrence-restaurant-montréal-3', 'Lawrence Restaurant', 'http://www.yelp.ca/biz/lawrence-restaurant-montr%C3%A9al-3', 'http://s3-media1.fl.yelpcdn.com/bphoto/U8-1znCmC_2DZbltgLuUyg/ms.jpg', 45.5241318, -73.5948181),
	(6, 'omnivore-montréal-2', 'Omnivore', 'http://www.yelp.ca/biz/omnivore-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/8ZxuOe9JqZgNr1QBoh1q6Q/ms.jpg', 45.5192413, -73.5840683),
	(7, 'pitarifique-montréal-3', 'Pitarifique', 'http://www.yelp.ca/biz/pitarifique-montr%C3%A9al-3', 'http://s3-media4.fl.yelpcdn.com/bphoto/LX-sX0g6eGxolXiBj71JWA/ms.jpg', 45.5178299, -73.5816574),
	(8, 'la-croissanterie-figaro-outremont', 'La Croissanterie Figaro', 'http://www.yelp.ca/biz/la-croissanterie-figaro-outremont', 'http://s3-media4.fl.yelpcdn.com/bphoto/3mYbS-DrQGuYVz9XMZSVhg/ms.jpg', 45.5194016, -73.5986481),
	(9, 'le-filet-montréal-2', 'Le Filet', 'http://www.yelp.ca/biz/le-filet-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/_Ir6Wvusdh7fot_1gUwDew/ms.jpg', 45.5224037, -73.5844879),
	(10, 'restaurant-l-avenue-montréal-4', 'Restaurant l\'avenue', 'http://www.yelp.ca/biz/restaurant-l-avenue-montr%C3%A9al-4', 'http://s3-media2.fl.yelpcdn.com/bphoto/d4uw0L7gUt8D1gfIZi6eJg/ms.jpg', 45.526743, -73.580274),
	(11, 'wilenskys-light-lunch-montréal-2', 'Wilensky\'s Light Lunch', 'http://www.yelp.ca/biz/wilenskys-light-lunch-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/q2OOsAvITddFmLjMAEFDbw/ms.jpg', 45.5233383, -73.5947876),
	(12, 'ta-pies-montréal-2', 'Ta Pies', 'http://www.yelp.ca/biz/ta-pies-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/4QgCOGk-KRFku3H1yvbFNg/ms.jpg', 45.5168915, -73.5901108),
	(13, 'kaza-maza-montréal-2', 'Kaza Maza', 'http://www.yelp.ca/biz/kaza-maza-montr%C3%A9al-2', 'http://s3-media3.fl.yelpcdn.com/bphoto/0cBTPfEpl8NkjE28Hu2-OQ/ms.jpg', 45.5178604, -73.591301),
	(14, 'patati-patata-montréal-2', 'Patati Patata', 'http://www.yelp.ca/biz/patati-patata-montr%C3%A9al-2', 'http://s3-media2.fl.yelpcdn.com/bphoto/NCuoN0hAdGxzAWjcgNLYNg/ms.jpg', 45.51805228082001, -73.58145705044299),
	(15, 'chingu-montréal', 'Chingu', 'http://www.yelp.ca/biz/chingu-montr%C3%A9al', 'http://s3-media2.fl.yelpcdn.com/bphoto/lCh-w-Y0lzlUo3XbXenkvA/ms.jpg', 45.520372, -73.5971231),
	(16, 'comptoir-21-montréal-2', 'Comptoir 21', 'http://www.yelp.ca/biz/comptoir-21-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/SA5QeVuSdcjCqBQ-RMODjQ/ms.jpg', 45.5255699, -73.5993805),
	(17, 'restaurant-le-ptit-plateau-montréal-3', 'Restaurant Le P\'tit Plateau', 'http://www.yelp.ca/biz/restaurant-le-ptit-plateau-montr%C3%A9al-3', 'http://s3-media3.fl.yelpcdn.com/bphoto/QfPxzkYc3wmCVnF1ib-cww/ms.jpg', 45.6782455, -73.8199005),
	(18, 'arepera-du-plateau-montréal-2', 'Arepera du Plateau', 'http://www.yelp.ca/biz/arepera-du-plateau-montr%C3%A9al-2', 'http://s3-media2.fl.yelpcdn.com/bphoto/tSvnKYo77PxZqrz9CalWUA/ms.jpg', 45.5182910772583, -73.5782760620222),
	(19, 'baldwin-barmacie-montréal-3', 'Baldwin Barmacie', 'http://www.yelp.ca/biz/baldwin-barmacie-montr%C3%A9al-3', 'http://s3-media3.fl.yelpcdn.com/bphoto/4_dA2iHJHd1umyBW079c0Q/ms.jpg', 45.5216484, -73.5943909),
	(20, 'park-mont-royal-montréal-2', 'Park Mont Royal', 'http://www.yelp.ca/biz/park-mont-royal-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/5YgYnd2Fa9aw0wbtAFMcTA/ms.jpg', 45.5031013, -73.5943832),
	(21, 'diese-onze-montréal-2', 'Diese Onze', 'http://www.yelp.ca/biz/diese-onze-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/Er3iWP2GS4kfeHcZG7x0Uw/ms.jpg', 45.521347, -73.576828),
	(22, 'résonance-café-montréal-2', 'Résonance Café', 'http://www.yelp.ca/biz/r%C3%A9sonance-caf%C3%A9-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/_sQ94aYoGNGdRZsughyfhA/ms.jpg', 45.5204888, -73.5971599),
	(23, 'la-sala-rossa-montréal-2', 'La Sala Rossa', 'http://www.yelp.ca/biz/la-sala-rossa-montr%C3%A9al-2', 'http://s3-media2.fl.yelpcdn.com/bphoto/JkZLyhnyeLuQAuT4KuyhAg/ms.jpg', 45.5217705, -73.5905075),
	(24, 'cinéma-du-parc-montréal-2', 'Cinéma du Parc', 'http://www.yelp.ca/biz/cin%C3%A9ma-du-parc-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/Vdd9h8qf8XqvaMjX2TJYZw/ms.jpg', 45.5103438, -73.5751145),
	(25, 'la-maison-tricotée-montréal', 'La Maison Tricotée', 'http://www.yelp.ca/biz/la-maison-tricot%C3%A9e-montr%C3%A9al', 'http://s3-media3.fl.yelpcdn.com/bphoto/10RiiGbZ-rE7osv0q6QjRw/ms.jpg', 45.5274443, -73.5856481),
	(26, 'imagine-le-fun-montréal-2', 'Imagine Le Fun', 'http://www.yelp.ca/biz/imagine-le-fun-montr%C3%A9al-2', 'http://s3-media2.fl.yelpcdn.com/bphoto/2fiWkXMeStfebLSeYNqRUQ/ms.jpg', 45.5218391, -73.5896378),
	(27, 'au-papier-japonais-montréal-5', 'Au Papier Japonais', 'http://www.yelp.ca/biz/au-papier-japonais-montr%C3%A9al-5', 'http://s3-media3.fl.yelpcdn.com/bphoto/HiAqSwINOp_48GLuE6AO2g/ms.jpg', 45.5234032, -73.594696),
	(28, 'divan-orange-montréal-2', 'Divan Orange', 'http://www.yelp.ca/biz/divan-orange-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/SYH4oNjFY74kdlguxfhQxA/ms.jpg', 45.5181389, -73.5825729),
	(29, 'librairie-le-port-de-tête-montréal-3', 'Librairie Le port de tête', 'http://www.yelp.ca/biz/librairie-le-port-de-t%C3%AAte-montr%C3%A9al-3', 'http://s3-media4.fl.yelpcdn.com/bphoto/cyQSVBiPO50dUUIfbHuKDw/ms.jpg', 45.5225487, -73.5839081),
	(30, 'barfly-montréal-2', 'Barfly', 'http://www.yelp.ca/biz/barfly-montr%C3%A9al-2', 'http://s3-media2.fl.yelpcdn.com/bphoto/KdpwmWoONt_oRpWdo1IeaQ/ms.jpg', 45.5170403, -73.5799408),
	(31, 'monastiraki-montréal-2', 'Monastiraki', 'http://www.yelp.ca/biz/monastiraki-montr%C3%A9al-2', 'http://s3-media3.fl.yelpcdn.com/bphoto/kRGcl-2XLwskMAPCWk6pyQ/ms.jpg', 45.5255394, -73.5987167),
	(32, 'quai-des-brumes-montréal-4', 'Quai Des Brumes', 'http://www.yelp.ca/biz/quai-des-brumes-montr%C3%A9al-4', 'http://s3-media4.fl.yelpcdn.com/bphoto/9wYrjY_8wpZGpkm28iP-Gg/ms.jpg', 45.5238876, -73.5823822),
	(33, 'la-tulipe-montréal-2', 'La Tulipe', 'http://www.yelp.ca/biz/la-tulipe-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/oLWGVSK6l_fqlGDlI92ezA/ms.jpg', 45.5330505, -73.5753937),
	(34, 'theatre-espace-go-montréal-2', 'Theatre Espace Go', 'http://www.yelp.ca/biz/theatre-espace-go-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/ZE0O2izWEMgaSfY3X6q5NQ/ms.jpg', 45.5220413, -73.5909882),
	(35, 'maison-de-la-culture-du-plateau-mont-royal-montréal', 'Maison de la culture du Plateau Mont-Royal', 'http://www.yelp.ca/biz/maison-de-la-culture-du-plateau-mont-royal-montr%C3%A9al', '', 45.525, -73.582547),
	(36, 'snack-n-blues-montréal-3', 'Snack \'n Blues', 'http://www.yelp.ca/biz/snack-n-blues-montr%C3%A9al-3', 'http://s3-media4.fl.yelpcdn.com/bphoto/uiUAKaHu-5roL72_cgTzdg/ms.jpg', 45.5241547, -73.5955734),
	(37, 'studio-bizz-mont-royal-montréal-2', 'Studio Bizz Mont-Royal', 'http://www.yelp.ca/biz/studio-bizz-mont-royal-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/ZWbQzSD8ViwU6fsQTbM0Iw/ms.jpg', 45.5251884, -73.5820923),
	(38, 'air-de-tango-montréal-2', 'Air De Tango', 'http://www.yelp.ca/biz/air-de-tango-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/idrvTRva-sqo6z2kIpw87Q/ms.jpg', 45.5188408, -73.5840683),
	(39, 'cercle-d-expression-artistique-nyata-nyata-montréal-4', 'Cercle D\'expression Artistique Nyata Nyata', 'http://www.yelp.ca/biz/cercle-d-expression-artistique-nyata-nyata-montr%C3%A9al-4', '', 45.5192261, -73.5847168),
	(40, 'dieu-du-ciel-montréal-2', 'Dieu du Ciel', 'http://www.yelp.ca/biz/dieu-du-ciel-montr%C3%A9al-2', 'http://s3-media3.fl.yelpcdn.com/bphoto/_GyWPiisLCSXVkzNV3kUdg/ms.jpg', 45.5227203, -73.5934219),
	(41, 'buvette-chez-simone-montréal-3', 'Buvette Chez Simone', 'http://www.yelp.ca/biz/buvette-chez-simone-montr%C3%A9al-3', 'http://s3-media4.fl.yelpcdn.com/bphoto/FJFXfdtL_QrPcjLDJ6E0Pg/ms.jpg', 45.5188217, -73.5934601),
	(42, 'korova-bar-terroir-montréal-2', 'Korova Bar Terroir', 'http://www.yelp.ca/biz/korova-bar-terroir-montr%C3%A9al-2', 'http://s3-media4.fl.yelpcdn.com/bphoto/tdRa7gn4gEsM6dnLzJ02MA/ms.jpg', 45.5162811, -73.5782928),
	(43, 'le-majestique-montréal-2', 'Le Majestique', 'http://www.yelp.ca/biz/le-majestique-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/fGhU_DVlGCZDNBaT5HluyA/ms.jpg', 45.5175436, -73.5802618),
	(44, 'chez-serge-montréal-2', 'Chez Serge', 'http://www.yelp.ca/biz/chez-serge-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/QRcEsacxFrvlVj6_CSBC5g/ms.jpg', 45.5246582, -73.5959167),
	(45, 'bar-blizzarts-montréal-2', 'Bar Blizzarts', 'http://www.yelp.ca/biz/bar-blizzarts-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/cO8SNqBy4x3HKik0iS097w/ms.jpg', 45.516571, -73.5790405),
	(46, 'sparrow-le-moineau-montréal', 'Sparrow / Le Moineau', 'http://www.yelp.ca/biz/sparrow-le-moineau-montr%C3%A9al', 'http://s3-media3.fl.yelpcdn.com/bphoto/2zUQVuwWQrZexami9JCBsg/ms.jpg', 45.524559, -73.5965881),
	(47, 'big-in-japan-bar-montréal', 'Big In Japan Bar', 'http://www.yelp.ca/biz/big-in-japan-bar-montr%C3%A9al', 'http://s3-media4.fl.yelpcdn.com/bphoto/0YHcOyVy3MVIxVG4SWh65w/ms.jpg', 45.5180397, -73.581398),
	(48, 'bily-kun-montréal-2', 'Bily Kun', 'http://www.yelp.ca/biz/bily-kun-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/snd0yZMiGvLtMECCKU80HA/ms.jpg', 45.5234032, -73.583168),
	(49, 'réservoir-montréal-4', 'Réservoir', 'http://www.yelp.ca/biz/r%C3%A9servoir-montr%C3%A9al-4', 'http://s3-media4.fl.yelpcdn.com/bphoto/7ZauFYRuH08dPZrI1ATNpQ/ms.jpg', 45.517218, -73.579186),
	(50, 'lili-montréal', 'Lili', 'http://www.yelp.ca/biz/lili-montr%C3%A9al', 'http://s3-media1.fl.yelpcdn.com/bphoto/SQo91naIM-ShOqSyFxpn7g/ms.jpg', 45.527784, -73.5821317),
	(51, 'cartel-street-food-bar-montréal-3', 'Cartel Street Food Bar', 'http://www.yelp.ca/biz/cartel-street-food-bar-montr%C3%A9al-3', 'http://s3-media1.fl.yelpcdn.com/bphoto/tPjrA_c5ETX8FHr-8wWUdw/ms.jpg', 45.5226496925336, -73.5957384109497),
	(52, 'blue-dog-montréal', 'Blue Dog', 'http://www.yelp.ca/biz/blue-dog-montr%C3%A9al', 'http://s3-media1.fl.yelpcdn.com/bphoto/8O5Ql0wNiULtM2KQo7imhQ/ms.jpg', 45.516571, -73.5790405),
	(53, 'bishop-and-bagg-montréal', 'Bishop & Bagg', 'http://www.yelp.ca/biz/bishop-and-bagg-montr%C3%A9al', 'http://s3-media4.fl.yelpcdn.com/bphoto/Bc1OE9JLND6Fmm03Aee3rw/ms.jpg', 45.5252209, -73.5994348),
	(54, 'wiggle-room-montréal', 'Wiggle Room', 'http://www.yelp.ca/biz/wiggle-room-montr%C3%A9al', 'http://s3-media2.fl.yelpcdn.com/bphoto/VjvWix7PcDDS1_t8Spb1WA/ms.jpg', 45.5161283, -73.5775873),
	(55, 'pub-sir-joseph-montréal', 'Pub Sir Joseph', 'http://www.yelp.ca/biz/pub-sir-joseph-montr%C3%A9al', 'http://s3-media4.fl.yelpcdn.com/bphoto/RtzBBX-8Vqse9wu_BC2c4Q/ms.jpg', 45.5221748, -73.5912094),
	(56, 'l-entrepôt-mont-royal-montréal-2', 'L\'Entrepôt Mont-Royal', 'http://www.yelp.ca/biz/l-entrep%C3%B4t-mont-royal-montr%C3%A9al-2', 'http://s3-media1.fl.yelpcdn.com/bphoto/TvffCcQb6-zpt3xaCQPb7w/ms.jpg', 45.5275586124373, -73.5797399809547);
/*!40000 ALTER TABLE `yelp_locations` ENABLE KEYS */;


-- Dumping structure for table hotel_intel_db.yelp_loc_to_app_cat
CREATE TABLE IF NOT EXISTS `yelp_loc_to_app_cat` (
  `yelp_loc_id` int(11) DEFAULT NULL,
  `app_cat_id` int(11) DEFAULT NULL,
  KEY `FK_yelp_loc_to_app_cat_yelp_locations` (`yelp_loc_id`),
  KEY `FK_yelp_loc_to_app_cat_app_categories` (`app_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel_intel_db.yelp_loc_to_app_cat: ~57 rows (approximately)
/*!40000 ALTER TABLE `yelp_loc_to_app_cat` DISABLE KEYS */;
REPLACE INTO `yelp_loc_to_app_cat` (`yelp_loc_id`, `app_cat_id`) VALUES
	(0, 0),
	(1, 0),
	(2, 0),
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0),
	(11, 0),
	(12, 0),
	(13, 0),
	(14, 0),
	(15, 0),
	(16, 0),
	(17, 0),
	(18, 0),
	(19, 0),
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
	(40, 2),
	(41, 2),
	(42, 2),
	(43, 2),
	(44, 2),
	(45, 2),
	(46, 2),
	(47, 2),
	(48, 2),
	(49, 2),
	(50, 2),
	(51, 2),
	(52, 2),
	(53, 2),
	(54, 2),
	(55, 2),
	(56, 2);
/*!40000 ALTER TABLE `yelp_loc_to_app_cat` ENABLE KEYS */;


-- Dumping structure for table hotel_intel_db.yelp_loc_to_yelp_cat
CREATE TABLE IF NOT EXISTS `yelp_loc_to_yelp_cat` (
  `yelp_loc_id` int(11) DEFAULT NULL,
  `yelp_cat_id` int(11) DEFAULT NULL,
  KEY `FK__yelp_locations` (`yelp_loc_id`),
  KEY `FK__yelp_categories` (`yelp_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel_intel_db.yelp_loc_to_yelp_cat: ~105 rows (approximately)
/*!40000 ALTER TABLE `yelp_loc_to_yelp_cat` DISABLE KEYS */;
REPLACE INTO `yelp_loc_to_yelp_cat` (`yelp_loc_id`, `yelp_cat_id`) VALUES
	(0, 0),
	(1, 1),
	(2, 1),
	(4, 1),
	(5, 1),
	(8, 1),
	(17, 1),
	(2, 2),
	(25, 2),
	(3, 3),
	(3, 4),
	(8, 4),
	(3, 5),
	(5, 6),
	(10, 6),
	(46, 6),
	(50, 6),
	(6, 7),
	(6, 8),
	(7, 9),
	(19, 9),
	(43, 9),
	(8, 10),
	(9, 11),
	(16, 11),
	(10, 12),
	(16, 12),
	(56, 12),
	(11, 13),
	(12, 14),
	(12, 15),
	(12, 16),
	(13, 17),
	(14, 18),
	(50, 18),
	(14, 19),
	(15, 20),
	(16, 21),
	(18, 22),
	(18, 23),
	(22, 23),
	(49, 23),
	(19, 24),
	(46, 24),
	(50, 24),
	(20, 25),
	(35, 25),
	(20, 26),
	(21, 27),
	(22, 27),
	(36, 27),
	(21, 28),
	(52, 28),
	(22, 29),
	(23, 30),
	(28, 30),
	(30, 30),
	(32, 30),
	(33, 30),
	(23, 31),
	(23, 32),
	(24, 33),
	(34, 33),
	(25, 34),
	(26, 35),
	(26, 36),
	(26, 37),
	(27, 38),
	(27, 39),
	(27, 40),
	(28, 41),
	(32, 41),
	(43, 41),
	(47, 41),
	(48, 41),
	(51, 41),
	(52, 41),
	(54, 41),
	(29, 42),
	(30, 43),
	(36, 43),
	(42, 43),
	(31, 44),
	(31, 45),
	(33, 46),
	(42, 46),
	(45, 46),
	(52, 46),
	(34, 47),
	(37, 47),
	(38, 47),
	(39, 47),
	(39, 48),
	(40, 49),
	(49, 49),
	(53, 49),
	(55, 49),
	(56, 49),
	(41, 50),
	(44, 51),
	(45, 52),
	(49, 53),
	(51, 53),
	(51, 54),
	(53, 55);
/*!40000 ALTER TABLE `yelp_loc_to_yelp_cat` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
