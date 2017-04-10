/*
 Navicat Premium Data Transfer

 Source Server         : alesandapres.com
 Source Server Type    : MySQL
 Source Server Version : 50554
 Source Host           : localhost
 Source Database       : alesandapres

 Target Server Type    : MySQL
 Target Server Version : 50554
 File Encoding         : utf-8

 Date: 04/10/2017 05:51:35 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Beer`
-- ----------------------------
DROP TABLE IF EXISTS `Beer`;
CREATE TABLE `Beer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Beer') CHARACTER SET utf8 DEFAULT 'Beer',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Colour` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Scent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Flavour` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `AlcoholVolume` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `IBU` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BeerImageID` int(11) NOT NULL DEFAULT '0',
  `BreweryPageID` int(11) NOT NULL DEFAULT '0',
  `Style` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `HopsUsed` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OneStarRating` int(11) NOT NULL DEFAULT '0',
  `TwoStarRating` int(11) NOT NULL DEFAULT '0',
  `ThreeStarRating` int(11) NOT NULL DEFAULT '0',
  `FourStarRating` int(11) NOT NULL DEFAULT '0',
  `FiveStarRating` int(11) NOT NULL DEFAULT '0',
  `AverageStarRating` double DEFAULT NULL,
  `CountStarRating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BeerImageID` (`BeerImageID`),
  KEY `ClassName` (`ClassName`),
  KEY `BreweryPageID` (`BreweryPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `Beer`
-- ----------------------------
BEGIN;
INSERT INTO `Beer` VALUES ('1', 'Beer', '2017-03-25 07:06:50', '2017-03-19 09:12:05', 'Laid Back Lager', null, null, null, null, null, null, '17', '15', null, null, '0', '1', '0', '0', '2', '4', '3'), ('2', 'Beer', '2017-03-26 00:07:56', '2017-03-19 09:46:59', 'Back Country', '<p><span>In the Tree Brewing Seasons Pass mix pack comes the Backcountry Nut Brown Ale. This can of beer pours into the glass a deep brown colour with a finger of off-white, lightly lacing head. The aroma is of toasted malt, light chocolate and a hint of toffee. Tasting the beer, it too has a lightly sweet, caramel-toffee flavour that is joined by a creamy chocolate note and a subtle hint of coffee. The mid-body of this beer adds to the flavour with a light creaminess that accentuates the chocolate notes. The finish has a light hop-bitterness that joins the chocolate flavour for a mildly sweet and bitter end. This is an enjoyable and easy drinking yet also flavourful brown ale.</span></p>', null, null, 'Nice notes of chocolate with a subtle hop bitterness', '5.0%', null, '19', '16', 'Brown Ale', null, '0', '0', '0', '3', '0', '4', '3'), ('3', 'Beer', '2017-03-25 23:49:12', '2017-03-19 09:48:46', 'Bluebird Lager', '<p><span>In the winter mix pack called Seasons Pass from Tree Brewing comes a lager called the Bluebird. This beer pours from the can as a golden-amber colour with three full finger of head which leaves light  lacing behind on the glass. The aroma from this beer is big in the malt category with a honey-like sweetness to it. Tasting the beer it too has a honey character in both the texture and flavour. The sweetness takes control of the beer and works with the malt character to make for a fairly smooth and lightly creamy lager. While the Bluebird is a bit sweet for a traditional lager it makes for an approachable beer that would be perfect to pair with a day on the slopes.</span></p>', null, null, 'Quite sweet with a distinct honey flavour', '5.0%', null, '20', '16', null, null, '0', '0', '1', '0', '0', '3', '1'), ('4', 'Beer', '2017-03-25 23:49:15', '2017-03-19 09:49:08', 'Puck Drop', '<p><span>Tree brewing has released a winter-themed Pilsner in their Seasons Pass mix pack called the Puck Drop. This beer pours from a 355ml can as a clear, golden colour with two full fingers of lightly lacing head. The aroma is lightly sweet with a malt forward character.  There is nothing crazy here in the aroma of the Puck Drop, just a good old fashioned, euro-style pilsner. Tasting the beer it is very easy going, up front the flavour has a slight citrus tang while the malt character builds. With the malt comes a light toasted sweetness and mellow bitterness. This pilsner may be a touch sweeter than typical but it is very easy drinking and a decent take on a very classic style.</span></p>', null, null, null, '5.0%', null, '21', '16', 'Pilsner', null, '0', '0', '2', '0', '0', '3', '2'), ('5', 'Beer', '2017-03-25 23:49:17', '2017-03-19 09:49:37', 'Yard Sale', '<p><span>Tree Brewing has put out their winter mixer pack and it is called the Seasons Pass. One of the beers that you will find in this pack is called the Yard Sale Pale Ale. From the 355ml can this beer pours into the glass a colour of amber and has a finger and a half of head which settles leaving almost no lacing on the glass. The aroma is a blend of caramel, toasted malt and a citrus-hop character. Tasting the beer it is has a big malt character and mild caramel sweetness. Euro-style hops give an earthy and citrus tone to the flavour with a mild, lingering bitterness. This is an approachable Pale Ale that has more malt character than is typical for the style.</span></p>', null, null, null, '5.0%', null, '22', '16', 'Pale Ale', null, '0', '0', '2', '0', '0', '3', '2'), ('7', 'Beer', '2017-03-24 14:19:39', '2017-03-22 09:34:31', 'Lawless IPA', '<p class=\"Body\">Prohibition Lawless IPA is a west coast style IPA. At 60 IBU it’s the perfect balance of hops and malts and delivers a smooth dry bitterness that won’t blow your pallet up.</p><p class=\"Body\">Lawless starts off bitter and finishes extra dry making your pallet beg for more. It is the perfect choice for the experienced beer drinker looking for something that pairs well with food dishes as well as newer IPA drinkers that want a well balanced, delicious beer.</p>', null, null, null, '6.5%', '60', '25', '18', 'India Pale Ale', 'Perle, Magnum, Cascade and Cluster', '0', '0', '0', '0', '1', null, '0'), ('8', 'Beer', '2017-03-26 00:07:02', '2017-03-22 09:48:04', 'Lonetree Pear and Apple Cider', '<p class=\"Body\">Lonetree Pear &amp; Apple Cider is created with a harmony of genuine Okanagan pears and our famous Okanagan cider apples. Now you can enjoy the crispness of our authentic apple cider, with the fruity lusciousness of real Okanagan pears. Lonetree Pear &amp; Apple Cider - mouth-wateringly juicy, with the characteristically dry finish that Lonetree is loved for.</p>', null, null, null, null, null, '28', '20', 'Cider', null, '0', '0', '0', '1', '1', '4.5', '2'), ('9', 'Beer', '2017-03-25 23:58:00', '2017-03-22 09:55:25', 'Falconers Flight IPA', '<p class=\"Body\">The best three words to describe the Falconers Flight IPA are lemon, tropical, and balanced. With large notes of lemon and tropical fruit in the Falconers Flight hop, it is a balanced and refreshing IPA that is super sessionable and easy to drink. </p>', null, null, null, '6.0%', '52', '30', '21', 'India Pale Ale', null, '0', '2', '1', '0', '1', '3', '4'), ('10', 'Beer', '2017-03-26 00:50:41', '2017-03-22 10:03:42', 'Flagship IPA', '<div class=\"page\" title=\"Page 1\">\n<div class=\"section\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>At last this steam-powered flagship has sailed into port. This Northeast style IPA is generously hopped with Mosaic, Galaxy &amp; Citra and pours with a slight haze and an intense juicy, tropical fruit aroma that gives way to a balanced bitterness. Steamworks Flagship IPA is a confident and powerful brew perfect for discerning hop-heads and casual drinkers alike </span></p>\n</div>\n</div>\n</div>\n</div>', 'Golden', 'Juicy tropical fruit aroma', 'Tropical fruit', '6.7%', '65', '39', '22', 'India Pale Ale', 'Mosaic, Galaxy & Citra', '0', '0', '2', '0', '2', '4', '4'), ('11', 'Beer', '2017-03-25 23:48:34', '2017-03-22 10:06:30', 'Pale Ale', '<div class=\"page\" title=\"Page 1\">\n<div class=\"section\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>This northwest style pale ale combines hints of lightly toasted malts with a beautiful oral &amp; citrus hop aroma that tingles the senses. Undertones of malt sweetness &amp; a balanced hop bitterness make for a very refreshing finish. </span></p>\n</div>\n</div>\n</div>\n</div>', 'Light Copper', 'Citrus hop aroma', 'Hints of lightly toasted malts', '5.2%', '40', '33', '22', 'Pale Ale', 'Cascade. Chinook', '0', '0', '0', '1', '0', '4', '1'), ('12', 'Beer', '2017-03-25 23:48:36', '2017-03-22 10:08:19', 'Pilsner', '<p><span>The most popular beers in the world call themselves Pilsners, but they barely resemble the original from the city of Pilsn in the Czech Republic that gave its name to the style in 1842. Steamworks’ version comes close, which explains why it has won Best Beer in BC for two years running. It is a rich, malty lager with a spicy, floral hop character – crisp, complex and delicious.</span></p>', 'Golden', null, null, '5.0%', '30', '34', '22', 'Pilsner', 'Magnum, Tradition, Tettnang, Spalt select, Saphir', '0', '0', '2', '0', '0', '3', '2'), ('13', 'Beer', '2017-03-25 23:48:32', '2017-03-22 10:09:58', 'Heroica Red Ale', '<p><span>This Gold Medal award winning, robust Red Ale has beautiful citrus and pine notes that come from our generous additions of Centennial, Citra &amp; Simcoe hops. It is smooth and velvety in the mouth with the toasted malts giving it a medium body with hints of roasted hazelnut, toffee and caramel malt flavours.</span></p>', 'Crimson Red', null, null, '5.6%', '40', '37', '22', 'Red Ale', 'Cascade, Citra, Simcoe, Amarilloe', '0', '2', '0', '0', '0', '2', '2'), ('14', 'Beer', '2017-03-26 07:50:08', '2017-03-22 10:25:02', 'Company Lager', '<p class=\"Body\">Lightly hopped, crisp, clean, refreshing with notes of honey</p>', null, null, null, '5.1%', null, '44', '23', null, null, '0', '1', '0', '1', '0', '3', '2'), ('15', 'Beer', '2017-03-26 00:51:07', '2017-03-22 10:26:28', 'Shipwreck IPA', '<p>A West Coast-style, hop forward IPA. Uniquely blending southern and northern hemisphere hops to deliver a perfectly balanced beer with notes of stone fruit and citrus, with a clean and refreshing finish</p>', null, null, null, '6.5%', null, '42', '23', 'India Pale Ale', 'Northern hemisphere hops', '0', '0', '1', '2', '1', '4', '4'), ('16', 'Beer', '2017-03-26 00:51:12', '2017-03-22 10:27:54', 'Tasman Pale Ale', '<p class=\"Body\">A light bodied ale big on flavor. Four varieties of hops from Tasmania and New Zealand’s Tasman Bay give this unique pale ale its refreshing South Pacific bite!</p>', null, null, null, '4.6%', null, '43', '23', 'Pale Ale', 'Tasmania and New Zealand hops ', '0', '0', '2', '2', '1', '3.8', '5'), ('17', 'Beer', '2017-03-25 23:46:15', '2017-03-22 10:51:20', '1516', '<p>Our Bavarian Lager is craft-brewed to celebrate the landmark 1516 Purity Law.</p><p>The decree states that only four ingredients can be used when making beer: barley, hops, yeast and water. The result is a lager with a crisp finish and a rich golden colour.</p>', null, null, null, null, null, '50', '24', 'Bavarian Lager', null, '0', '0', '0', '1', '2', '4.666666666666667', '3'), ('18', 'Beer', '2017-03-26 07:49:42', '2017-03-22 10:51:57', 'Honey Kolsch', '<p>This year, when Beary woke from hibernation, he knew something was different. He could smell it in the air. This was going to be a summer to remember. He followed his nose and it led him straight to Okanagan Spring’s New Honey Kölsch. Made with local Okanagan honey, he knew he’d found the perfect summer beer. Beary picked up a few cases to share with his friends and they loved it too. Which is probably why they still invite him - even though he destroys everything he touches. He’s just a regular honey-loving bear, living in a human world, trying to make the most of the season. Because once summer’s gone, just like Honey Kölsch, Beary will be too.</p>', null, null, null, '4.8%', null, '46', '24', 'Kölsch', null, '0', '0', '1', '0', '2', '4.333333333333333', '3'), ('19', 'Beer', '2017-03-25 22:59:54', '2017-03-22 11:09:33', 'Holy Smoke Stout', null, null, null, null, null, null, '53', '26', 'Stout', null, '0', '0', '0', '2', '0', '4', '2'), ('20', 'Beer', '2017-03-23 15:54:14', '2017-03-22 11:16:20', 'Westcoast IPA', '<p class=\"Default\">The Westcoast IPA is made from a combination of Crystal malts and Pilsner malts, to bring out body and mouthfeel; and its brilliant orange colour. For any IPA, the hop bill is the most important aspect. In our IPA we utilise a mix of 6 hops. Nugget and Centennial for bittering, Cascade and Falconer’s Flight for flavour, with Ahtanum and Zythos for aroma. Once fermentation is nearly complete, we dry hop with a mix of Zythos, Falconer’s Flight, Cascade and Ahtanum. Together they impart a beautiful bouquet of citrus, grapefruit, tropical fruit, and a slight hint of pine.</p>', '12 SRM', null, null, '6.2%', '65', '55', '0', 'American India Pale Ale', null, '0', '0', '0', '2', '0', null, '0'), ('22', 'Beer', '2017-03-25 23:56:22', '2017-03-22 11:30:07', 'Nasty Habit IPA', '<p><span>A generously hopped IPA, balanced by a diabolical blend of rich specialty malts and pure mountain water. A wicked ale that leaves you lusting for more. </span></p><p>7 hops unfiltered and easy drinking. Gold medal winner at the Canadian Brewing awards</p>', null, null, null, '6.0%', '40', '70', '30', 'IPA', null, '0', '0', '0', '0', '6', '5', '6'), ('23', 'Beer', '2017-03-25 23:56:18', '2017-03-22 11:30:59', 'High Country Kolsch ', '<p class=\"Body\"><span>High Country Kölsch is a pale, mildly hopped beer which originated in Köln, Germany. It is brewed with authentic Kölschbier yeast. It is the yeast combined with a portion of wheat malt that gives this beer it\'s unique, delicate characteristic flavour. It is an excellent choice on a hot summer day! </span></p><p class=\"Body\"><span><span class=\"bold\">Gold Medal Winner</span><span> at the 2011 and 2006 Canadian Brewing Awards and 1st place at the 2012 BC Brewing Awards. </span></span></p>', null, null, null, '4.5%', '12', '69', '30', 'Kolsch', null, '0', '0', '0', '3', '3', '4.5', '6'), ('24', 'Beer', '2017-03-25 23:57:07', '2017-03-22 11:32:18', 'Stoked Winter Ale', '<p class=\"Body\">Spicy and boozy winter warmer. Cinnamon, Nutmeg, Coves and Coca. Not sweet, easy drinking winter Ale. New winter Seasonal for 2017.</p>', null, null, null, '6.0%', '20', '71', '30', 'Winter Ale', null, '0', '0', '3', '0', '3', '4', '6'), ('25', 'Beer', '2017-03-25 23:47:14', '2017-03-23 22:22:45', 'BlackJack', '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>This smooth dry Irish stout is velvety black in colour topped with a smooth, </span><span>creamy head. It’s a perfect harmony of smoky roasted flavours, complemented </span><span>with espresso, caramel and chocolate notes. </span></p>\n<p><span>Our beer is brewed in Invermere, BC </span><span>with fresh mountain spring water. No </span><span>preservatives or additives are used and </span><span>it’s unpasteurized and unfiltered.</span></p>\n</div>\n</div>\n</div>', null, null, null, '5.4%', null, '113', '34', 'Irish Stout', null, '0', '0', '0', '1', '0', '4', '1'), ('26', 'Beer', '2017-03-25 23:47:18', '2017-03-23 22:24:46', 'ESB (Extra Special Bitter)', '<p><span>Doc Tegart’s Extra Special Bitter is a perfect balance of speciality malts and hops, with an IBU of 60. Floral and tropical notes include passionfruit and pineapple. It won 1st place at the East Kootenay Beer Fest in 2014.</span></p>', null, null, null, '6.5%', '60', '114', '34', 'Bitter', null, '0', '0', '0', '0', '1', '5', '1'), ('27', 'Beer', '2017-03-25 23:47:20', '2017-03-23 22:25:32', 'Night Train', '<p><span>Night Train is a dark and hoppy beer. It starts off with dark, roasted malt flavours and finishes with a complex hoppiness from the Simcoe hops used in the brew. It perfectly bridges the \"dark\" and \"hoppy\" beer worlds.</span></p>', null, null, null, '6.8%', '75', '115', '34', null, null, '0', '1', '0', '0', '0', '2', '1'), ('28', 'Beer', '2017-03-23 22:43:26', '2017-03-23 22:38:46', '1987 Amber', '<p><span>We use just the right blend of two-row and specialty Belgian malts, East Kent Golding hops and a distinctive ale yeast to create a beer with a brilliant amber colour, soft caramel aroma and remarkably well balanced flavour that you will want to share. Enjoy!</span></p>', null, 'Soft Caramel', 'Toasted malt', '5.1%', '20', '66', '29', 'Amber Ale', null, '0', '0', '0', '0', '0', null, '0'), ('29', 'Beer', '2017-03-23 22:40:36', '2017-03-23 22:40:36', 'Noble Pilsner', '<p><span>We brew our Noble Pilsner with two row Pilsen malt, and a distinctive blend of noble hops. This European style lager has a delicate Pilsner aroma and delivers a soft, crisp taste and, refreshing finish. Enjoy!</span></p>', 'Pale straw yellow, rich creamy head', 'Subtle floral aroma', 'Light malt body', '5.4%', '18', '67', '29', 'Pilsner', null, '0', '0', '0', '0', '0', null, '0'), ('30', 'Beer', '2017-03-26 07:48:32', '2017-03-23 22:45:05', 'Windstorm West Coast Pale Ale', '<p><span>The storm that tore through Stanley Park in 2006 sparked a passionate response from a community committed to the protection of this west coast jewel. Our Windstorm brand is inspired by the storm and dedicated to the Park’s ongoing preservation. That’s why we commit proceeds from every sale to help ensure a legacy of “nature in the city” for future generations.</span></p>', null, 'Tropical fruit and citrus hop character', 'Medium body, full flavor', '5.4%', '35', '68', '29', 'West Coast Pale Ale', null, '0', '0', '0', '0', '1', '5', '1'), ('31', 'Beer', '2017-03-24 01:57:32', '2017-03-24 01:57:32', 'Carlsberg', null, null, null, null, null, null, '75', '36', 'Lager', null, '0', '0', '0', '0', '0', null, '0'), ('32', 'Beer', '2017-03-26 23:55:31', '2017-03-24 02:05:18', 'Triple J Lager', null, null, null, null, null, null, '77', '19', null, null, '0', '0', '1', '2', '11', '4.714285714285714', '14'), ('33', 'Beer', '2017-03-24 02:16:00', '2017-03-24 02:13:47', 'Somersby Cider', null, null, null, null, null, null, '78', '14', 'Cider', null, '0', '0', '0', '0', '0', null, '0'), ('34', 'Beer', '2017-03-26 07:47:27', '2017-03-24 02:25:58', '1664', null, null, null, null, null, null, '79', '13', null, null, '0', '0', '1', '1', '7', '4.666666666666667', '9'), ('35', 'Beer', '2017-03-25 23:56:06', '2017-03-24 02:45:12', 'Wards Apple Cider', '<p>The traditional recipe has been passed down for five generations. The cider is crafted from the perfect blend of apple varieties grown in our old growth orchard. We handpick, gently press, and cold ferment each batch to craft a crisp, light and delicious cider.</p><p>Food Pairing: This cider is so bright and vibrant that it works well with a wide variety of food. For a classic pairing, try BBQ pork ribs or a succulent pulled pork sandwich.</p>', null, null, null, '5.5%', null, '81', '31', 'Off-dry cider', null, '0', '1', '0', '0', '0', '2', '1'), ('36', 'Beer', '2017-03-25 23:56:03', '2017-03-24 02:47:38', 'Picker\'s Hut Premium Cider', null, null, null, null, '6.0%', null, '82', '31', 'Off-dry cider', null, '0', '0', '1', '0', '0', '3', '1'), ('37', 'Beer', '2017-03-26 23:09:40', '2017-03-24 02:49:56', 'Channel Cat Pale Ale', '<p><span>Distinctive European style ale, features cascade and Amarillo hops with a dry hop process to enhance the aromatics, slight bite, and hints of grapefruit.</span></p>', null, null, null, null, null, '83', '19', null, null, '0', '0', '1', '6', '11', '4.555555555555555', '18'), ('38', 'Beer', '2017-03-25 23:47:04', '2017-03-24 02:58:33', 'Stoutnik', null, null, null, null, null, null, '85', '38', 'Stout', null, '0', '1', '0', '0', '0', '2', '1'), ('39', 'Beer', '2017-03-25 23:47:03', '2017-03-24 02:59:52', 'Berried Alive', null, null, null, null, null, null, '86', '38', null, null, '0', '0', '1', '0', '1', '4', '2'), ('40', 'Beer', '2017-03-26 07:49:26', '2017-03-24 19:27:09', 'Pacific True North Pilsner', '<p><span>A West Coast classic since the eighties. Pac Pil is brewed using an ISO-certified, all malt recipe but the standout ingredient is our BC spring water, essential to a great Pilsner brew. Keeping true to the original Czech style that it is based on, this is a crisp, clean, golden lager that has a good malt character but is accented toward the hop with its aroma and dry finish.</span></p>', null, null, null, null, null, '87', '28', null, null, '0', '1', '0', '0', '2', '4', '3'), ('42', 'Beer', '2017-03-25 23:48:01', '2017-03-24 19:55:10', 'Red Truck Lager', '<p><span>YOU CAN’T RUSH PERFECTION, AND OUR AWARD WINNING LAGER IS PROOF OF THAT. WE USE THE COOL FERMENTED, LONG STORAGE PROCESS THAT’S BEEN USED FOR CENTURIES. THIS TRADITIONAL EUROPEAN STYLE LAGER IS MADE WITH ALL CANADIAN MALTS AND SAAZ HOPS, A CLASSIC “NOBLE” AROMA HOP WITH LONGSTANDING TRADITIONS – JUST LIKE THE STYLE ITSELF.</span></p>', null, null, null, '5%', null, '94', '40', null, null, '0', '0', '0', '1', '1', '4.5', '2'), ('43', 'Beer', '2017-03-25 23:47:55', '2017-03-25 02:25:00', 'Red Truck Ale', '<p>Every story has a beginning, and this is ours. It all started with an old red truck, and a keg of beer. This ale was the first beer ever brewed under the Red Truck name, hand built and hand delivered. Over the years, things may have changed, but we\'ve stayed true to the brew. A blend of premium Belgian malts, plus Pacific Northwest hop varieties gives this luscious, copper-hued ale a wonderful complex aroma, a rich depth of flavour, and smooth drinkability.</p>', null, null, null, '5.2%', null, '98', '40', null, null, '0', '0', '1', '4', '1', '4', '6'), ('44', 'Beer', '2017-03-25 23:47:58', '2017-03-25 02:28:39', 'Red Truck IPA', '<p>When we first set out to make our IPA, we wanted to brew a well-balanced beer that you could drink without destroying your palate or blowing a gasket. We used a combination of late kettle, whirlpool addition, and dry hopping to preserve the oils that give you the bold aroma you have come to love. The result was an easy drinking IPA that showcases five of the best hop varieties from the Pacific Northwest. Crystal malts balanced with a truckload of hops bring you a toffee malty sweetness with a dry fresh finish. Our IPA will stand up to even the most intense dishes. Take it for a spin with the spiciest wings you can find.</p>', null, null, null, '6.3%', null, '99', '40', 'India Pale Ale', null, '0', '0', '1', '2', '2', '4.2', '5'), ('45', 'Beer', '2017-03-25 23:48:03', '2017-03-25 02:29:08', 'Red Truck Pilsner', '<p><span>We built this brew by hand with Czech pilsner yeast and a unique combination of black malts, malted wheat, and 100% simcoe hops. The addition of the roasted malts give it a distinctive reddish hue, while the slow process and cold storage temperatures closely resemble the winters this style of beer was originally brewed during. </span></p>', null, null, null, '5.0%', null, '97', '40', 'Pilsner', null, '0', '0', '2', '0', '0', '3', '2'), ('46', 'Beer', '2017-03-26 07:50:46', '2017-03-25 13:36:20', 'Sombrio Citrus Session', '<p><span>Bright and citrusy, this fruity session ale will take you right to the beach, no matter the season.</span></p>', 'Pale gold with a slight haze. Large white head with moderate retention', 'Moderate to high citrus note with a moderate citrus hop character to support. Low grain and a touch of crystal for malt', 'Medium citrus hop flavour. Medium to low bready malt with a touch of caramel. Balance is moderately bitter but the finish is clean and citrusy', '4.0%', '36', '102', '39', 'Session Ale', 'Centennial, Citra, Idaho 7', '0', '1', '3', '0', '0', '2.75', '4'), ('47', 'Beer', '2017-03-25 23:47:42', '2017-03-25 13:39:35', '48 Dark Lager', null, null, null, null, null, null, '103', '39', null, null, '0', '1', '0', '0', '0', '2', '1'), ('48', 'Beer', '2017-03-25 23:47:43', '2017-03-25 13:42:04', 'Juan De Fuca Cerveza', '<p><span>A craft take on a Mexican classic. This light and crisp artisanal cerveza was designed to explore new territories.</span></p>', 'A pale yellow and brilliantly clear liquid with a moderate white head and medium to low retention', 'Light grain and toasted corn. Low noble hop character', 'Moderate to low grainy malt with low corn and herbal hop notes. The falvour balance is malt forward and the finish is of crisp malt and corn', '4.8%', '19', '104', '39', 'Mexican Lager', null, '0', '0', '0', '1', '0', '4', '1'), ('49', 'Beer', '2017-03-25 23:47:38', '2017-03-25 13:44:28', '19 IPA', '<p><span>Tropical in taste with floral notes, this everyday IPA was made to accompany you on any adventure.</span></p>', 'Pale gold with a slight haze. Large white head with high retention', 'High citrus and fruity hops. Low bready malt and esters', 'Medium-high hop flavour with citrus and a fruity character. Medium to low bready malt with a touch of caramel. Balance is decidedly bitter and the finish is of lingering hops', '4.8%', '47', '106', '39', 'IPA', 'Chinook (60), Ahtanum (15), Amarillo (0,dry), Mosaic (0,dry), Citra (0,dry)', '1', '0', '1', '0', '0', '2', '2'), ('50', 'Beer', '2017-03-25 23:51:02', '2017-03-25 13:49:27', 'Strawberry Wit', null, null, null, null, '4.9%', null, '108', '37', null, null, '0', '0', '0', '1', '3', '4.75', '4'), ('51', 'Beer', '2017-03-25 23:49:42', '2017-03-25 13:53:14', 'Bean Me Up Espresso Milk Stout', null, null, null, null, '5.7%', null, '109', '37', 'Stout', null, '0', '1', '0', '0', '2', '4', '3'), ('52', 'Beer', '2017-03-25 23:49:43', '2017-03-25 13:54:38', 'Pixel Pils', null, null, null, null, '5%', null, '110', '37', 'Pilsner', null, '0', '0', '2', '1', '1', '3.75', '4'), ('53', 'Beer', '2017-03-25 23:56:28', '2017-03-25 14:16:06', 'Los Muertos Cereva Negra', '<p>Los Muertos Cerveza Negra is a dark coloured lager made from a mix of Pilsner, Crystal and Munich malts. This combination imparts the great maltiness of the beer. Using a lager yeast, it is fermented at lower temperatures which gives it crispness and its refreshing taste. It is reminiscent of a light German Bock, but with a Mexican twist.</p><p> </p>', null, null, null, '5%', '25', '111', '27', null, null, '0', '0', '1', '0', '2', '4.333333333333333', '3'), ('54', 'Beer', '2017-03-26 07:49:18', '2017-03-25 14:19:56', 'Tramp Stamp Pale Ale', '<p><span>A crisp fruit forward American style pale ale hopped exclusively with Vic Secret, Enigma and Galaxy Australian hops. Flavours of peach, apricot and tropical fruit give way to notes of pine and a clean finish. This crisp ale is the bridge between Session Ales and IPA’s.</span></p>', null, null, null, '5.3%', '45', '112', '27', 'Pale Ale', 'Vic Secret, Enigma and Galaxy Australian hops', '0', '0', '0', '5', '3', '4.375', '8'), ('55', 'Beer', '2017-03-26 07:48:43', '2017-03-25 17:20:52', 'Peach Cream Ale', null, null, null, null, '5', null, '116', '42', null, null, '0', '0', '1', '0', '0', '3', '1'), ('56', 'Beer', '2017-03-25 17:31:47', '2017-03-25 17:21:36', 'Killer Beer Dark Honey Ale', null, null, null, null, '6%', null, '117', '42', null, null, '0', '0', '0', '0', '0', '0', '0'), ('57', 'Beer', '2017-03-25 17:27:51', '2017-03-25 17:24:57', 'Check Your Head Summer Stout', '<p><em>A blacker than black beer that is more than meets the eye. Belgian yeast adds elements of fruit, while actual local cherries sweeten the finish. A one-of-a-kind beer with a matching one-of-a-kind custom T designed by local streetwear company, Basement Heads.</em></p>', null, null, null, '4.6% ABV', ' 26 IBU', '23', '17', null, null, '0', '0', '0', '0', '0', '0', '0'), ('58', 'Beer', '2017-03-26 07:49:08', '2017-03-25 17:26:24', 'Pamela Belgian Blonde', '<p><em>Belgian yeast, Pacific Northwest hops, German and Canadian malts combine to create a smooth profile that will cater to both new and experienced beer drinkers alike. Subtly woodsy yet crisp, with elements of lime and slight pepper, dry finish. </em></p>', null, null, null, '5% ABV', '21 IBU', '23', '17', null, null, '0', '0', '2', '0', '0', '3', '2'), ('59', 'Beer', '2017-03-26 07:49:54', '2017-03-25 22:05:16', 'Don\'t Lose Your Dinosaur IPA', '<p><em>Bold ale with fruit aromas &amp; a soft citrus bitterness that won\'t assault your palate. Smooth finish, deep copper colour.</em></p>', null, null, null, null, null, '23', '25', null, null, '0', '1', '6', '0', '4', '3.6363636363636362', '11'), ('60', 'Beer', '2017-03-26 07:49:53', '2017-03-25 22:06:27', 'Earl Pale Ale', '<p><em>Contemporary Pale Ale showcasing the citrus &amp; spice qualities of the hops. The addition of Earl Grey tea compliments these flavours and smooths the finish. </em></p>', null, null, null, null, null, '23', '25', null, null, '0', '0', '1', '2', '2', '4.2', '5');
COMMIT;

-- ----------------------------
--  Table structure for `BreweryPage`
-- ----------------------------
DROP TABLE IF EXISTS `BreweryPage`;
CREATE TABLE `BreweryPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebsiteURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `BreweryLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BreweryLogoID` (`BreweryLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `BreweryPage`
-- ----------------------------
BEGIN;
INSERT INTO `BreweryPage` VALUES ('13', 'http://kronenbourg1664.com/', 'Horizontal', '13'), ('14', 'http://www.somersbycider.com/ca/en/', 'Horizontal', '14'), ('15', 'http://bigsurfbeer.com', 'Horizontal', '15'), ('16', 'http://www.treebeer.com/', 'Horizontal', '18'), ('17', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('18', 'http://www.prohibitionbrewingco.com/', 'Horizontal', '24'), ('19', null, 'Horizontal', '26'), ('20', 'http://www.lonetreecider.com/', 'Horizontal', '27'), ('21', 'http://postmarkbrewing.com/', 'Horizontal', '29'), ('22', 'http://www.steamworks.com/', 'Horizontal', '31'), ('23', 'http://www.lighthousebrewing.com/', 'Horizontal', '40'), ('24', 'http://okspring.com', 'Horizontal', '45'), ('25', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('26', 'http://firehallbrewery.com/', 'Horizontal', '51'), ('27', 'http://www.badtattoobrewing.com/', 'Horizontal', '54'), ('28', 'http://www.pwbrewing.net/', 'Horizontal', '56'), ('29', 'http://www.stanleyparkbrewing.com/', 'Horizontal', '65'), ('30', 'http://www.mt-begbie.com/', 'Horizontal', '58'), ('31', 'http://www.wardshardcider.com/', 'Horizontal', '80'), ('34', 'https://www.arrowheadbrewingcompany.ca/', 'Horizontal', '61'), ('36', 'http://www.carlsberg.com/', 'Horizontal', '74'), ('37', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('38', 'http://www.longwoodbeer.com/', 'Horizontal', '84'), ('39', 'http://vibrewing.com/', 'Horizontal', '93'), ('40', null, 'Horizontal', '90'), ('42', null, 'Horizontal', '101');
COMMIT;

-- ----------------------------
--  Table structure for `BreweryPage_Live`
-- ----------------------------
DROP TABLE IF EXISTS `BreweryPage_Live`;
CREATE TABLE `BreweryPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebsiteURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `BreweryLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BreweryLogoID` (`BreweryLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `BreweryPage_Live`
-- ----------------------------
BEGIN;
INSERT INTO `BreweryPage_Live` VALUES ('13', 'http://kronenbourg1664.com/', 'Horizontal', '13'), ('14', 'http://www.somersbycider.com/ca/en/', 'Horizontal', '14'), ('15', 'http://bigsurfbeer.com', 'Horizontal', '15'), ('16', 'http://www.treebeer.com/', 'Horizontal', '18'), ('17', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('18', 'http://www.prohibitionbrewingco.com/', 'Horizontal', '24'), ('19', null, 'Horizontal', '26'), ('20', 'http://www.lonetreecider.com/', 'Horizontal', '27'), ('21', 'http://postmarkbrewing.com/', 'Horizontal', '29'), ('22', 'http://www.steamworks.com/', 'Horizontal', '31'), ('23', 'http://www.lighthousebrewing.com/', 'Horizontal', '40'), ('24', 'http://okspring.com', 'Horizontal', '45'), ('25', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('26', 'http://firehallbrewery.com/', 'Horizontal', '51'), ('27', 'http://www.badtattoobrewing.com/', 'Horizontal', '54'), ('28', 'http://www.pwbrewing.net/', 'Horizontal', '56'), ('29', 'http://www.stanleyparkbrewing.com/', 'Horizontal', '65'), ('30', 'http://www.mt-begbie.com/', 'Horizontal', '58'), ('31', 'http://www.wardshardcider.com/', 'Horizontal', '80'), ('34', 'https://www.arrowheadbrewingcompany.ca/', 'Horizontal', '61'), ('36', 'http://www.carlsberg.com/', 'Horizontal', '74'), ('37', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('38', 'http://www.longwoodbeer.com/', 'Horizontal', '84'), ('39', 'http://vibrewing.com/', 'Horizontal', '93'), ('40', null, 'Horizontal', '90'), ('42', null, 'Horizontal', '101');
COMMIT;

-- ----------------------------
--  Table structure for `BreweryPage_versions`
-- ----------------------------
DROP TABLE IF EXISTS `BreweryPage_versions`;
CREATE TABLE `BreweryPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WebsiteURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `BreweryLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `BreweryLogoID` (`BreweryLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `BreweryPage_versions`
-- ----------------------------
BEGIN;
INSERT INTO `BreweryPage_versions` VALUES ('1', '13', '1', null, 'Horizontal', '0'), ('2', '13', '2', 'http://kronenbourg1664.com/', 'Horizontal', '13'), ('3', '14', '1', null, 'Horizontal', '0'), ('4', '14', '2', 'http://www.somersbycider.com/ca/en/', 'Horizontal', '14'), ('5', '15', '1', null, 'Horizontal', '0'), ('6', '15', '2', 'http://bigsurfbeer.com', 'Horizontal', '15'), ('7', '16', '1', null, 'Horizontal', '0'), ('8', '16', '2', 'http://www.treebeer.com/', 'Horizontal', '18'), ('9', '17', '1', null, 'Horizontal', '0'), ('10', '17', '2', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('11', '18', '1', null, 'Horizontal', '0'), ('12', '18', '2', 'http://www.prohibitionbrewingco.com/', 'Horizontal', '24'), ('13', '19', '1', null, 'Horizontal', '0'), ('14', '19', '2', null, 'Horizontal', '26'), ('15', '20', '1', null, 'Horizontal', '0'), ('16', '20', '2', 'http://www.lonetreecider.com/', 'Horizontal', '27'), ('17', '21', '1', null, 'Horizontal', '0'), ('18', '21', '2', 'http://postmarkbrewing.com/', 'Horizontal', '29'), ('19', '21', '3', 'http://postmarkbrewing.com/', 'Horizontal', '29'), ('20', '22', '1', null, 'Horizontal', '0'), ('21', '22', '2', 'http://www.steamworks.com/', 'Horizontal', '31'), ('22', '23', '1', null, 'Horizontal', '0'), ('23', '23', '2', null, 'Horizontal', '40'), ('24', '23', '3', 'http://www.lighthousebrewing.com/', 'Horizontal', '40'), ('25', '24', '1', null, 'Horizontal', '0'), ('26', '25', '1', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('27', '25', '2', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('28', '24', '2', 'http://okspring.com', 'Horizontal', '45'), ('29', '25', '3', 'http://www.bnabrewing.com/', 'Horizontal', '23'), ('30', '26', '1', null, 'Horizontal', '0'), ('31', '26', '2', 'http://firehallbrewery.com/', 'Horizontal', '51'), ('32', '27', '1', null, 'Horizontal', '0'), ('33', '27', '2', null, 'Horizontal', '54'), ('34', '27', '3', 'http://www.badtattoobrewing.com/', 'Horizontal', '54'), ('35', '28', '1', null, 'Horizontal', '0'), ('36', '28', '2', null, 'Horizontal', '56'), ('37', '28', '3', 'http://www.pwbrewing.net/', 'Horizontal', '56'), ('38', '29', '1', null, 'Horizontal', '0'), ('39', '29', '2', null, 'Horizontal', '0'), ('40', '30', '1', null, 'Horizontal', '0'), ('41', '30', '2', 'http://www.mt-begbie.com/', 'Horizontal', '58'), ('42', '31', '1', null, 'Horizontal', '0'), ('43', '31', '2', null, 'Horizontal', '0'), ('44', '28', '4', 'http://www.pwbrewing.net/', 'Horizontal', '56'), ('45', '34', '1', null, 'Horizontal', '0'), ('46', '34', '2', null, 'Horizontal', '0'), ('47', '34', '3', 'https://www.arrowheadbrewingcompany.ca/', 'Horizontal', '0'), ('48', '34', '4', 'https://www.arrowheadbrewingcompany.ca/', 'Horizontal', '61'), ('49', '29', '3', 'http://www.stanleyparkbrewing.com/', 'Horizontal', '65'), ('50', '36', '1', null, 'Horizontal', '0'), ('51', '36', '2', 'http://www.carlsberg.com/', 'Horizontal', '74'), ('52', '37', '1', null, 'Horizontal', '0'), ('53', '37', '2', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('54', '37', '3', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('55', '37', '4', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('56', '37', '5', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('57', '37', '6', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('58', '37', '7', 'http://fuggleswarlock.com', 'Horizontal', '76'), ('59', '31', '3', 'http://www.wardshardcider.com/', 'Horizontal', '80'), ('60', '38', '1', null, 'Horizontal', '0'), ('61', '38', '2', 'http://www.longwoodbeer.com/', 'Horizontal', '84'), ('62', '38', '3', 'http://www.longwoodbeer.com/', 'Horizontal', '84'), ('63', '38', '4', 'http://www.longwoodbeer.com/', 'Horizontal', '84'), ('64', '26', '3', 'http://firehallbrewery.com/', 'Horizontal', '51'), ('65', '26', '4', 'http://firehallbrewery.com/', 'Horizontal', '51'), ('66', '39', '1', null, 'Horizontal', '0'), ('67', '39', '2', null, 'Horizontal', '0'), ('68', '40', '1', null, 'Horizontal', '0'), ('69', '40', '2', null, 'Horizontal', '0'), ('70', '39', '3', null, 'Horizontal', '89'), ('71', '40', '3', null, 'Horizontal', '90'), ('72', '39', '4', 'http://vibrewing.com/', 'Horizontal', '93'), ('73', '42', '1', null, 'Horizontal', '0'), ('74', '42', '2', null, 'Horizontal', '101');
COMMIT;

-- ----------------------------
--  Table structure for `EditableCheckbox`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCheckbox`;
CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableCheckbox`
-- ----------------------------
BEGIN;
INSERT INTO `EditableCheckbox` VALUES ('6', '0');
COMMIT;

-- ----------------------------
--  Table structure for `EditableCheckbox_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCheckbox_Live`;
CREATE TABLE `EditableCheckbox_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableCheckbox_Live`
-- ----------------------------
BEGIN;
INSERT INTO `EditableCheckbox_Live` VALUES ('6', '0');
COMMIT;

-- ----------------------------
--  Table structure for `EditableCheckbox_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCheckbox_versions`;
CREATE TABLE `EditableCheckbox_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableCheckbox_versions`
-- ----------------------------
BEGIN;
INSERT INTO `EditableCheckbox_versions` VALUES ('1', '6', '3', '0'), ('2', '6', '4', '0'), ('3', '6', '5', '0'), ('4', '6', '6', '0'), ('5', '6', '7', '0'), ('6', '6', '8', '0');
COMMIT;

-- ----------------------------
--  Table structure for `EditableCustomRule`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCustomRule`;
CREATE TABLE `EditableCustomRule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableCustomRule_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCustomRule_Live`;
CREATE TABLE `EditableCustomRule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableCustomRule_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableCustomRule_versions`;
CREATE TABLE `EditableCustomRule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableDateField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableDateField`;
CREATE TABLE `EditableDateField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableDateField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableDateField_Live`;
CREATE TABLE `EditableDateField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableDateField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableDateField_versions`;
CREATE TABLE `EditableDateField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableEmailField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableEmailField`;
CREATE TABLE `EditableEmailField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableEmailField`
-- ----------------------------
BEGIN;
INSERT INTO `EditableEmailField` VALUES ('3', null);
COMMIT;

-- ----------------------------
--  Table structure for `EditableEmailField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableEmailField_Live`;
CREATE TABLE `EditableEmailField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableEmailField_Live`
-- ----------------------------
BEGIN;
INSERT INTO `EditableEmailField_Live` VALUES ('3', null);
COMMIT;

-- ----------------------------
--  Table structure for `EditableEmailField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableEmailField_versions`;
CREATE TABLE `EditableEmailField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableEmailField_versions`
-- ----------------------------
BEGIN;
INSERT INTO `EditableEmailField_versions` VALUES ('1', '3', '3', null), ('2', '3', '4', null), ('3', '3', '5', null), ('4', '3', '6', null), ('5', '3', '7', null), ('6', '3', '8', null), ('7', '3', '9', null), ('8', '3', '10', null), ('9', '3', '11', null), ('10', '3', '12', null), ('11', '3', '13', null), ('12', '3', '14', null), ('13', '3', '15', null), ('14', '3', '16', null), ('15', '3', '17', null), ('16', '3', '18', null), ('17', '3', '19', null), ('18', '3', '20', null), ('19', '3', '21', null), ('20', '3', '22', null);
COMMIT;

-- ----------------------------
--  Table structure for `EditableFieldGroup`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFieldGroup`;
CREATE TABLE `EditableFieldGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFieldGroup_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFieldGroup_Live`;
CREATE TABLE `EditableFieldGroup_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFieldGroup_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFieldGroup_versions`;
CREATE TABLE `EditableFieldGroup_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFileField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFileField`;
CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFileField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFileField_Live`;
CREATE TABLE `EditableFileField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFileField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFileField_versions`;
CREATE TABLE `EditableFileField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFormField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormField`;
CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableFormField`
-- ----------------------------
BEGIN;
INSERT INTO `EditableFormField` VALUES ('1', 'EditableFormStep', '2017-03-24 00:33:42', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '1', null, null, '1', '21', '35'), ('2', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '1', null, null, '1', '22', '35'), ('3', 'EditableEmailField', '2017-03-24 00:33:42', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '1', null, null, '1', '21', '35'), ('4', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '1', null, null, '1', '20', '35'), ('5', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '1', null, null, '1', '20', '35'), ('6', 'EditableCheckbox', '2017-03-24 00:42:01', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '1', 'You must agree to these terms to enter the competition', null, null, '1', null, null, '1', '8', '35');
COMMIT;

-- ----------------------------
--  Table structure for `EditableFormField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormField_Live`;
CREATE TABLE `EditableFormField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableFormField_Live`
-- ----------------------------
BEGIN;
INSERT INTO `EditableFormField_Live` VALUES ('1', 'EditableFormStep', '2017-03-24 00:33:42', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '1', null, null, '1', '22', '35'), ('2', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '1', null, null, '1', '23', '35'), ('3', 'EditableEmailField', '2017-03-24 00:33:42', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '1', null, null, '1', '22', '35'), ('4', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '1', null, null, '1', '21', '35'), ('5', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '1', null, null, '1', '21', '35'), ('6', 'EditableCheckbox', '2017-03-24 00:33:42', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '0', null, null, null, '1', null, null, '1', '6', '35');
COMMIT;

-- ----------------------------
--  Table structure for `EditableFormField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormField_versions`;
CREATE TABLE `EditableFormField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableFormField_versions`
-- ----------------------------
BEGIN;
INSERT INTO `EditableFormField_versions` VALUES ('1', '1', '1', '0', '1', '0', 'EditableFormStep', '2017-03-23 23:30:29', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '0'), ('2', '1', '2', '0', '1', '0', 'EditableFormStep', '2017-03-23 23:30:29', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('3', '2', '1', '0', '1', '0', 'EditableTextField', '2017-03-23 23:30:46', '2017-03-23 23:30:46', 'EditableTextField_659db', null, null, '0', '0', null, null, null, '0', null, null, '1', '0'), ('4', '2', '2', '0', '1', '0', 'EditableTextField', '2017-03-23 23:30:46', '2017-03-23 23:30:46', 'EditableTextField_659db', null, null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('5', '1', '3', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:31:00', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('6', '2', '3', '1', '1', '1', 'EditableTextField', '2017-03-23 23:31:00', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('7', '3', '1', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:04', '2017-03-23 23:31:04', 'EditableTextField_75566', null, null, '0', '0', null, null, null, '0', null, null, '1', '0'), ('8', '3', '2', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:04', '2017-03-23 23:31:04', 'EditableTextField_75566', null, null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('9', '1', '4', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:31:17', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('10', '2', '4', '1', '1', '1', 'EditableTextField', '2017-03-23 23:31:17', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('11', '3', '3', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:31:17', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('12', '4', '1', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:19', '2017-03-23 23:31:19', 'EditableTextField_2dc09', null, null, '0', '0', null, null, null, '0', null, null, '1', '0'), ('13', '4', '2', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:19', '2017-03-23 23:31:19', 'EditableTextField_2dc09', null, null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('14', '5', '1', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:33', '2017-03-23 23:31:33', 'EditableTextField_8bb77', null, null, '0', '0', null, null, null, '0', null, null, '1', '0'), ('15', '5', '2', '0', '1', '0', 'EditableTextField', '2017-03-23 23:31:33', '2017-03-23 23:31:33', 'EditableTextField_8bb77', null, null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('16', '1', '5', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:31:50', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('17', '2', '5', '1', '1', '1', 'EditableTextField', '2017-03-23 23:31:50', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('18', '3', '4', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:31:50', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('19', '4', '3', '1', '1', '1', 'EditableTextField', '2017-03-23 23:31:50', '2017-03-23 23:31:19', 'EditableTextField_2dc09', null, null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('20', '5', '3', '1', '1', '1', 'EditableTextField', '2017-03-23 23:31:50', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('21', '1', '6', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:34:49', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('22', '2', '6', '1', '1', '1', 'EditableTextField', '2017-03-23 23:34:49', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('23', '3', '5', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:34:49', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('24', '4', '4', '1', '1', '1', 'EditableTextField', '2017-03-23 23:34:49', '2017-03-23 23:31:19', 'EditableTextField_2dc09', null, null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('25', '5', '4', '1', '1', '1', 'EditableTextField', '2017-03-23 23:34:49', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('26', '1', '7', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:48:20', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('27', '2', '7', '1', '1', '1', 'EditableTextField', '2017-03-23 23:48:20', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('28', '3', '6', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:48:20', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('29', '4', '5', '1', '1', '1', 'EditableTextField', '2017-03-23 23:48:20', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('30', '5', '5', '1', '1', '1', 'EditableTextField', '2017-03-23 23:48:20', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('31', '1', '8', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:49:11', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('32', '2', '8', '1', '1', '1', 'EditableTextField', '2017-03-23 23:49:11', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('33', '3', '7', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:49:11', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('34', '4', '6', '1', '1', '1', 'EditableTextField', '2017-03-23 23:49:11', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('35', '5', '6', '1', '1', '1', 'EditableTextField', '2017-03-23 23:49:11', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('36', '1', '9', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:50:45', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('37', '2', '9', '1', '1', '1', 'EditableTextField', '2017-03-23 23:50:45', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('38', '3', '8', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:50:45', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('39', '4', '7', '1', '1', '1', 'EditableTextField', '2017-03-23 23:50:45', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('40', '5', '7', '1', '1', '1', 'EditableTextField', '2017-03-23 23:50:45', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('41', '1', '10', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:51:02', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('42', '2', '10', '1', '1', '1', 'EditableTextField', '2017-03-23 23:51:02', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('43', '3', '9', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:51:02', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('44', '4', '8', '1', '1', '1', 'EditableTextField', '2017-03-23 23:51:02', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('45', '5', '8', '1', '1', '1', 'EditableTextField', '2017-03-23 23:51:02', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('46', '1', '11', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:52:33', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('47', '2', '11', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:33', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('48', '3', '10', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:52:33', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('49', '4', '9', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:33', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('50', '5', '9', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:33', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('51', '1', '12', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:52:41', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('52', '2', '12', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:41', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('53', '3', '11', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:52:41', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('54', '4', '10', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:41', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('55', '5', '10', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:41', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('56', '1', '13', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:52:50', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('57', '2', '13', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:50', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('58', '3', '12', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:52:50', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('59', '4', '11', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:50', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('60', '5', '11', '1', '1', '1', 'EditableTextField', '2017-03-23 23:52:50', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('61', '1', '14', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:54:12', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('62', '2', '14', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:12', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('63', '3', '13', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:54:12', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('64', '4', '12', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:12', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('65', '5', '12', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:12', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('66', '1', '15', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:54:58', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('67', '2', '15', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:58', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('68', '3', '14', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:54:58', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('69', '4', '13', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:58', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('70', '5', '13', '1', '1', '1', 'EditableTextField', '2017-03-23 23:54:58', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('71', '1', '16', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:55:44', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('72', '2', '16', '1', '1', '1', 'EditableTextField', '2017-03-23 23:55:44', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('73', '3', '15', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:55:44', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('74', '4', '14', '1', '1', '1', 'EditableTextField', '2017-03-23 23:55:44', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('75', '5', '14', '1', '1', '1', 'EditableTextField', '2017-03-23 23:55:44', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('76', '1', '17', '1', '1', '1', 'EditableFormStep', '2017-03-23 23:56:00', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('77', '2', '17', '1', '1', '1', 'EditableTextField', '2017-03-23 23:56:00', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '0', null, null, null, '0', null, null, '1', '35'), ('78', '3', '16', '1', '1', '1', 'EditableEmailField', '2017-03-23 23:56:00', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '0', null, null, null, '0', null, null, '1', '35'), ('79', '4', '15', '1', '1', '1', 'EditableTextField', '2017-03-23 23:56:00', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '0', null, null, null, '0', null, null, '1', '35'), ('80', '5', '15', '1', '1', '1', 'EditableTextField', '2017-03-23 23:56:00', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '0', null, null, null, '0', null, null, '1', '35'), ('81', '2', '18', '0', '1', '0', 'EditableTextField', '2017-03-24 00:10:25', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '0', null, null, '1', '35'), ('82', '3', '17', '0', '1', '0', 'EditableEmailField', '2017-03-24 00:11:01', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '0', null, null, '1', '35'), ('83', '4', '16', '0', '1', '0', 'EditableTextField', '2017-03-24 00:11:13', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '0', null, null, '1', '35'), ('84', '5', '16', '0', '1', '0', 'EditableTextField', '2017-03-24 00:11:24', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '0', null, null, '1', '35'), ('85', '1', '18', '1', '1', '1', 'EditableFormStep', '2017-03-24 00:11:31', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('86', '2', '19', '1', '1', '1', 'EditableTextField', '2017-03-24 00:11:31', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '0', null, null, '1', '35'), ('87', '3', '18', '1', '1', '1', 'EditableEmailField', '2017-03-24 00:11:31', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '0', null, null, '1', '35'), ('88', '4', '17', '1', '1', '1', 'EditableTextField', '2017-03-24 00:11:31', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '0', null, null, '1', '35'), ('89', '5', '17', '1', '1', '1', 'EditableTextField', '2017-03-24 00:11:31', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '0', null, null, '1', '35'), ('90', '6', '1', '0', '1', '0', 'EditableTextField', '2017-03-24 00:20:47', '2017-03-24 00:20:47', 'EditableTextField_c91f5', null, null, '0', '0', null, null, null, '0', null, null, '1', '0'), ('91', '6', '2', '0', '1', '0', 'EditableTextField', '2017-03-24 00:20:47', '2017-03-24 00:20:47', 'EditableTextField_c91f5', null, null, '6', '0', null, null, null, '0', null, null, '1', '35'), ('92', '1', '19', '1', '1', '1', 'EditableFormStep', '2017-03-24 00:22:26', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('93', '2', '20', '1', '1', '1', 'EditableTextField', '2017-03-24 00:22:26', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '0', null, null, '1', '35'), ('94', '3', '19', '1', '1', '1', 'EditableEmailField', '2017-03-24 00:22:27', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '0', null, null, '1', '35'), ('95', '4', '18', '1', '1', '1', 'EditableTextField', '2017-03-24 00:22:27', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '0', null, null, '1', '35'), ('96', '5', '18', '1', '1', '1', 'EditableTextField', '2017-03-24 00:22:27', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '0', null, null, '1', '35'), ('97', '6', '3', '1', '1', '1', 'EditableCheckbox', '2017-03-24 00:22:27', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '0', null, null, null, '0', null, null, '1', '35'), ('98', '1', '20', '1', '1', '1', 'EditableFormStep', '2017-03-24 00:26:06', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '0', null, null, '1', '35'), ('99', '2', '21', '1', '1', '1', 'EditableTextField', '2017-03-24 00:26:06', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '0', null, null, '1', '35'), ('100', '3', '20', '1', '1', '1', 'EditableEmailField', '2017-03-24 00:26:06', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '0', null, null, '1', '35'), ('101', '4', '19', '1', '1', '1', 'EditableTextField', '2017-03-24 00:26:06', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '0', null, null, '1', '35'), ('102', '5', '19', '1', '1', '1', 'EditableTextField', '2017-03-24 00:26:06', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '0', null, null, '1', '35'), ('103', '6', '4', '1', '1', '1', 'EditableCheckbox', '2017-03-24 00:26:06', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '0', null, null, null, '0', null, null, '1', '35'), ('104', '1', '21', '0', '1', '0', 'EditableFormStep', '2017-03-24 00:33:42', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '1', null, null, '1', '35'), ('105', '1', '22', '0', '1', '0', 'EditableFormStep', '2017-03-24 00:33:42', '2017-03-23 23:30:29', 'EditableFormStep_58384', 'First Page', null, '1', '0', null, null, null, '1', null, null, '1', '35'), ('106', '2', '22', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '1', null, null, '1', '35'), ('107', '2', '23', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:30:46', 'EditableTextField_659db', 'Name', null, '2', '1', 'Enter your name otherwise we don\'t know who to send the beer to.', null, null, '1', null, null, '1', '35'), ('108', '3', '21', '0', '1', '0', 'EditableEmailField', '2017-03-24 00:33:42', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '1', null, null, '1', '35'), ('109', '3', '22', '0', '1', '0', 'EditableEmailField', '2017-03-24 00:33:42', '2017-03-23 23:31:04', 'EditableTextField_75566', 'Email', null, '3', '1', null, null, null, '1', null, null, '1', '35'), ('110', '4', '20', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '1', null, null, '1', '35'), ('111', '4', '21', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:19', 'EditableTextField_2dc09', 'Phone', null, '4', '1', null, null, null, '1', null, null, '1', '35'), ('112', '5', '20', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '1', null, null, '1', '35'), ('113', '5', '21', '0', '1', '0', 'EditableTextField', '2017-03-24 00:33:42', '2017-03-23 23:31:33', 'EditableTextField_8bb77', 'Home town', null, '5', '1', null, null, null, '1', null, null, '1', '35'), ('114', '6', '5', '0', '1', '0', 'EditableCheckbox', '2017-03-24 00:33:42', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '0', null, null, null, '1', null, null, '1', '35'), ('115', '6', '6', '0', '1', '0', 'EditableCheckbox', '2017-03-24 00:33:42', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '0', null, null, null, '1', null, null, '1', '35'), ('116', '6', '7', '0', '1', '0', 'EditableCheckbox', '2017-03-24 00:41:51', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '1', 'You must agree to these terms to enter the competition', null, null, '1', null, null, '1', '35'), ('117', '6', '8', '0', '1', '0', 'EditableCheckbox', '2017-03-24 00:42:01', '2017-03-24 00:20:47', 'EditableTextField_c91f5', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', null, '6', '1', 'You must agree to these terms to enter the competition', null, null, '1', null, null, '1', '35');
COMMIT;

-- ----------------------------
--  Table structure for `EditableFormHeading`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormHeading`;
CREATE TABLE `EditableFormHeading` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFormHeading_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormHeading_Live`;
CREATE TABLE `EditableFormHeading_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableFormHeading_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableFormHeading_versions`;
CREATE TABLE `EditableFormHeading_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableLiteralField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableLiteralField`;
CREATE TABLE `EditableLiteralField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableLiteralField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableLiteralField_Live`;
CREATE TABLE `EditableLiteralField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableLiteralField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableLiteralField_versions`;
CREATE TABLE `EditableLiteralField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableMemberListField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableMemberListField`;
CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableMemberListField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableMemberListField_Live`;
CREATE TABLE `EditableMemberListField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableMemberListField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableMemberListField_versions`;
CREATE TABLE `EditableMemberListField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableNumericField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableNumericField`;
CREATE TABLE `EditableNumericField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableNumericField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableNumericField_Live`;
CREATE TABLE `EditableNumericField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableNumericField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableNumericField_versions`;
CREATE TABLE `EditableNumericField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableOption`
-- ----------------------------
DROP TABLE IF EXISTS `EditableOption`;
CREATE TABLE `EditableOption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableOption_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableOption_Live`;
CREATE TABLE `EditableOption_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableOption_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableOption_versions`;
CREATE TABLE `EditableOption_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `EditableTextField`
-- ----------------------------
DROP TABLE IF EXISTS `EditableTextField`;
CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableTextField`
-- ----------------------------
BEGIN;
INSERT INTO `EditableTextField` VALUES ('2', '0', '0', '1', null), ('3', '0', '0', '1', null), ('4', '0', '0', '1', null), ('5', '0', '0', '1', null), ('6', '0', '0', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `EditableTextField_Live`
-- ----------------------------
DROP TABLE IF EXISTS `EditableTextField_Live`;
CREATE TABLE `EditableTextField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableTextField_Live`
-- ----------------------------
BEGIN;
INSERT INTO `EditableTextField_Live` VALUES ('2', '0', '0', '1', null), ('4', '0', '0', '1', null), ('5', '0', '0', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `EditableTextField_versions`
-- ----------------------------
DROP TABLE IF EXISTS `EditableTextField_versions`;
CREATE TABLE `EditableTextField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `EditableTextField_versions`
-- ----------------------------
BEGIN;
INSERT INTO `EditableTextField_versions` VALUES ('1', '2', '1', '0', '0', '1', null), ('2', '2', '2', '0', '0', '1', null), ('3', '2', '3', '0', '0', '1', null), ('4', '3', '1', '0', '0', '1', null), ('5', '3', '2', '0', '0', '1', null), ('6', '2', '4', '0', '0', '1', null), ('7', '4', '1', '0', '0', '1', null), ('8', '4', '2', '0', '0', '1', null), ('9', '5', '1', '0', '0', '1', null), ('10', '5', '2', '0', '0', '1', null), ('11', '2', '5', '0', '0', '1', null), ('12', '4', '3', '0', '0', '1', null), ('13', '5', '3', '0', '0', '1', null), ('14', '2', '6', '0', '0', '1', null), ('15', '4', '4', '0', '0', '1', null), ('16', '5', '4', '0', '0', '1', null), ('17', '2', '7', '0', '0', '1', null), ('18', '4', '5', '0', '0', '1', null), ('19', '5', '5', '0', '0', '1', null), ('20', '2', '8', '0', '0', '1', null), ('21', '4', '6', '0', '0', '1', null), ('22', '5', '6', '0', '0', '1', null), ('23', '2', '9', '0', '0', '1', null), ('24', '4', '7', '0', '0', '1', null), ('25', '5', '7', '0', '0', '1', null), ('26', '2', '10', '0', '0', '1', null), ('27', '4', '8', '0', '0', '1', null), ('28', '5', '8', '0', '0', '1', null), ('29', '2', '11', '0', '0', '1', null), ('30', '4', '9', '0', '0', '1', null), ('31', '5', '9', '0', '0', '1', null), ('32', '2', '12', '0', '0', '1', null), ('33', '4', '10', '0', '0', '1', null), ('34', '5', '10', '0', '0', '1', null), ('35', '2', '13', '0', '0', '1', null), ('36', '4', '11', '0', '0', '1', null), ('37', '5', '11', '0', '0', '1', null), ('38', '2', '14', '0', '0', '1', null), ('39', '4', '12', '0', '0', '1', null), ('40', '5', '12', '0', '0', '1', null), ('41', '2', '15', '0', '0', '1', null), ('42', '4', '13', '0', '0', '1', null), ('43', '5', '13', '0', '0', '1', null), ('44', '2', '16', '0', '0', '1', null), ('45', '4', '14', '0', '0', '1', null), ('46', '5', '14', '0', '0', '1', null), ('47', '2', '17', '0', '0', '1', null), ('48', '4', '15', '0', '0', '1', null), ('49', '5', '15', '0', '0', '1', null), ('50', '2', '18', '0', '0', '1', null), ('51', '4', '16', '0', '0', '1', null), ('52', '5', '16', '0', '0', '1', null), ('53', '2', '19', '0', '0', '1', null), ('54', '4', '17', '0', '0', '1', null), ('55', '5', '17', '0', '0', '1', null), ('56', '6', '1', '0', '0', '1', null), ('57', '6', '2', '0', '0', '1', null), ('58', '2', '20', '0', '0', '1', null), ('59', '4', '18', '0', '0', '1', null), ('60', '5', '18', '0', '0', '1', null), ('61', '2', '21', '0', '0', '1', null), ('62', '4', '19', '0', '0', '1', null), ('63', '5', '19', '0', '0', '1', null), ('64', '2', '22', '0', '0', '1', null), ('65', '2', '23', '0', '0', '1', null), ('66', '4', '20', '0', '0', '1', null), ('67', '4', '21', '0', '0', '1', null), ('68', '5', '20', '0', '0', '1', null), ('69', '5', '21', '0', '0', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `ErrorPage`
-- ----------------------------
DROP TABLE IF EXISTS `ErrorPage`;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `ErrorPage`
-- ----------------------------
BEGIN;
INSERT INTO `ErrorPage` VALUES ('4', '404'), ('5', '500');
COMMIT;

-- ----------------------------
--  Table structure for `ErrorPage_Live`
-- ----------------------------
DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `ErrorPage_Live`
-- ----------------------------
BEGIN;
INSERT INTO `ErrorPage_Live` VALUES ('4', '404'), ('5', '500');
COMMIT;

-- ----------------------------
--  Table structure for `ErrorPage_versions`
-- ----------------------------
DROP TABLE IF EXISTS `ErrorPage_versions`;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `ErrorPage_versions`
-- ----------------------------
BEGIN;
INSERT INTO `ErrorPage_versions` VALUES ('1', '4', '1', '404'), ('2', '5', '1', '500');
COMMIT;

-- ----------------------------
--  Table structure for `File`
-- ----------------------------
DROP TABLE IF EXISTS `File`;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `File`
-- ----------------------------
BEGIN;
INSERT INTO `File` VALUES ('1', 'Folder', '2017-03-18 14:16:52', '2017-03-18 14:16:52', 'Uploads', 'Uploads', 'assets/Uploads/', null, '1', '0', '0'), ('2', 'Image', '2017-03-18 14:16:52', '2017-03-18 14:16:52', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', null, '1', '1', '0'), ('3', 'Folder', '2017-03-19 04:13:31', '2017-03-19 04:13:31', 'theme-images', 'theme-images', 'assets/theme-images/', null, '1', '0', '1'), ('4', 'Folder', '2017-03-19 04:13:31', '2017-03-19 04:13:31', 'venue-logos', 'venue-logos', 'assets/theme-images/venue-logos/', null, '1', '3', '1'), ('5', 'Image', '2017-03-19 04:13:31', '2017-03-19 04:13:31', 'globe.png', 'globe', 'assets/theme-images/venue-logos/globe.png', null, '1', '4', '1'), ('6', 'Image', '2017-03-19 04:14:14', '2017-03-19 04:14:14', 'bullwheel.png', 'bullwheel', 'assets/theme-images/venue-logos/bullwheel.png', null, '1', '4', '1'), ('7', 'Image', '2017-03-19 04:15:27', '2017-03-19 04:15:27', 'blarney-stone.png', 'blarney stone', 'assets/theme-images/venue-logos/blarney-stone.png', null, '1', '4', '1'), ('8', 'Image', '2017-03-19 04:16:07', '2017-03-19 04:16:07', 'blackdiamond.png', 'blackdiamond', 'assets/theme-images/venue-logos/blackdiamond.png', null, '1', '4', '1'), ('9', 'Image', '2017-03-19 04:16:43', '2017-03-19 04:16:43', 'sessions.png', 'sessions', 'assets/theme-images/venue-logos/sessions.png', null, '1', '4', '1'), ('10', 'Image', '2017-03-19 04:17:21', '2017-03-19 04:17:21', 'snowshoe-sams.png', 'snowshoe sams', 'assets/theme-images/venue-logos/snowshoe-sams.png', null, '1', '4', '1'), ('11', 'Image', '2017-03-19 04:17:44', '2017-03-19 04:17:44', 'the-woods.png', 'the woods', 'assets/theme-images/venue-logos/the-woods.png', null, '1', '4', '1'), ('12', 'Folder', '2017-03-19 07:01:13', '2017-03-19 07:01:13', 'brewery-logos', 'brewery-logos', 'assets/theme-images/brewery-logos/', null, '1', '3', '1'), ('13', 'Image', '2017-03-19 07:01:13', '2017-03-19 07:01:13', 'kronenbourg.png', 'kronenbourg', 'assets/theme-images/brewery-logos/kronenbourg.png', null, '1', '12', '1'), ('14', 'Image', '2017-03-19 07:05:50', '2017-03-19 07:05:50', 'somersby.png', 'somersby', 'assets/theme-images/brewery-logos/somersby.png', null, '1', '12', '1'), ('15', 'Image', '2017-03-19 07:25:09', '2017-03-19 07:25:09', 'bigsurfbeer.png', 'bigsurfbeer', 'assets/theme-images/brewery-logos/bigsurfbeer.png', null, '1', '12', '1'), ('16', 'Folder', '2017-03-19 09:11:34', '2017-03-19 09:11:34', 'beer-images', 'beer-images', 'assets/theme-images/beer-images/', null, '1', '3', '1'), ('17', 'Image', '2017-03-19 09:11:34', '2017-03-19 09:11:34', 'laidbacklager.jpg', 'laidbacklager', 'assets/theme-images/beer-images/laidbacklager.jpg', null, '1', '16', '1'), ('18', 'Image', '2017-03-19 09:45:43', '2017-03-19 09:45:43', 'treebrewing.jpeg', 'treebrewing', 'assets/theme-images/brewery-logos/treebrewing.jpeg', null, '1', '12', '1'), ('19', 'Image', '2017-03-19 09:46:51', '2017-03-19 09:46:51', 'BACK-COUNTRY-3D.png', 'BACK COUNTRY 3D', 'assets/theme-images/beer-images/BACK-COUNTRY-3D.png', null, '1', '16', '1'), ('20', 'Image', '2017-03-19 09:48:35', '2017-03-19 09:48:35', 'BLUEBIRD-3D.JPG', 'BLUEBIRD 3D', 'assets/theme-images/beer-images/BLUEBIRD-3D.JPG', null, '1', '16', '1'), ('21', 'Image', '2017-03-19 09:49:06', '2017-03-19 09:49:06', 'PUCK-DROP-3D.JPG', 'PUCK DROP 3D', 'assets/theme-images/beer-images/PUCK-DROP-3D.JPG', null, '1', '16', '1'), ('22', 'Image', '2017-03-19 09:49:29', '2017-03-19 09:49:29', 'YARD-SALE-3D.JPG', 'YARD SALE 3D', 'assets/theme-images/beer-images/YARD-SALE-3D.JPG', null, '1', '16', '1'), ('23', 'Image', '2017-03-19 10:01:42', '2017-03-19 10:01:42', 'BNA-logo-black.png', 'BNA logo black', 'assets/theme-images/brewery-logos/BNA-logo-black.png', null, '1', '12', '1'), ('24', 'Image', '2017-03-22 09:32:58', '2017-03-22 09:32:58', 'Prohibition-logo.jpg', 'Prohibition logo', 'assets/theme-images/brewery-logos/Prohibition-logo.jpg', null, '1', '12', '1'), ('25', 'Image', '2017-03-22 09:37:45', '2017-03-22 09:37:45', 'Prohibition-Lawless-IPA.jpg', 'Prohibition Lawless IPA', 'assets/theme-images/beer-images/Prohibition-Lawless-IPA.jpg', null, '1', '16', '1'), ('26', 'Image', '2017-03-22 09:44:13', '2017-03-22 09:44:13', 'freddys-logo.png', 'freddys logo', 'assets/theme-images/brewery-logos/freddys-logo.png', null, '1', '12', '1'), ('27', 'Image', '2017-03-22 09:46:56', '2017-03-22 09:46:56', 'Lonetree-logo.png', 'Lonetree logo', 'assets/theme-images/brewery-logos/Lonetree-logo.png', null, '1', '12', '1'), ('28', 'Image', '2017-03-22 09:47:59', '2017-03-22 09:47:59', 'Lonetree-Pear-and-Apple-Cider.png', 'Lonetree Pear and Apple Cider', 'assets/theme-images/beer-images/Lonetree-Pear-and-Apple-Cider.png', null, '1', '16', '1'), ('29', 'Image', '2017-03-22 09:51:10', '2017-03-22 09:51:10', 'postmark-logo.png', 'postmark logo', 'assets/theme-images/brewery-logos/postmark-logo.png', null, '1', '12', '1'), ('30', 'Image', '2017-03-22 09:55:20', '2017-03-22 09:55:20', 'Postmark-Brewing-650ml-Studio-IPA-133x300.jpg', 'Postmark Brewing 650ml Studio IPA 133x300', 'assets/theme-images/beer-images/Postmark-Brewing-650ml-Studio-IPA-133x300.jpg', null, '1', '16', '1'), ('31', 'Image', '2017-03-22 09:59:30', '2017-03-22 09:59:30', 'steamworks-logo.png', 'steamworks logo', 'assets/theme-images/brewery-logos/steamworks-logo.png', null, '1', '12', '1'), ('32', 'Image', '2017-03-22 10:03:37', '2017-03-22 10:03:37', 'FLAGSHIP-IPA-BOTTLE-WEB-01.png', 'FLAGSHIP IPA BOTTLE WEB 01', 'assets/theme-images/beer-images/FLAGSHIP-IPA-BOTTLE-WEB-01.png', null, '1', '16', '1'), ('33', 'Image', '2017-03-22 10:06:27', '2017-03-22 10:06:27', 'PALE-ALE-BOTTLE-WEB-01.png', 'PALE ALE BOTTLE WEB 01', 'assets/theme-images/beer-images/PALE-ALE-BOTTLE-WEB-01.png', null, '1', '16', '1'), ('34', 'Image', '2017-03-22 10:08:16', '2017-03-22 10:08:16', 'PILSNER-BOTTLE-WEB-01.png', 'PILSNER BOTTLE WEB 01', 'assets/theme-images/beer-images/PILSNER-BOTTLE-WEB-01.png', null, '1', '16', '1'), ('35', 'Image', '2017-03-22 10:09:55', '2017-03-22 10:09:55', 'HEROICA-RED-ALE-BOTTLE-WEB-01.png', 'HEROICA RED ALE BOTTLE WEB 01', 'assets/theme-images/beer-images/HEROICA-RED-ALE-BOTTLE-WEB-01.png', null, '1', '16', '1'), ('36', 'Image', '2017-03-22 10:11:13', '2017-03-22 10:11:13', 'FLAGSHIP-IPA-BOTTLE-WEB-2.png', 'FLAGSHIP IPA BOTTLE WEB 2', 'assets/theme-images/beer-images/FLAGSHIP-IPA-BOTTLE-WEB-2.png', null, '1', '16', '1'), ('37', 'Image', '2017-03-22 10:11:44', '2017-03-22 10:11:44', 'HEROICA-RED-ALE-BOTTLE-WEB-2.png', 'HEROICA RED ALE BOTTLE WEB 2', 'assets/theme-images/beer-images/HEROICA-RED-ALE-BOTTLE-WEB-2.png', null, '1', '16', '1'), ('38', 'Image', '2017-03-22 10:12:04', '2017-03-22 10:12:04', 'FLAGSHIP-IPA-BOTTLE-WEB-3.png', 'FLAGSHIP IPA BOTTLE WEB 3', 'assets/theme-images/beer-images/FLAGSHIP-IPA-BOTTLE-WEB-3.png', null, '1', '16', '1'), ('39', 'Image', '2017-03-22 10:13:24', '2017-03-22 10:13:24', 'FLAGSHIP-IPA-BOTTLE-WEB-4.png', 'FLAGSHIP IPA BOTTLE WEB 4', 'assets/theme-images/beer-images/FLAGSHIP-IPA-BOTTLE-WEB-4.png', null, '1', '16', '1'), ('40', 'Image', '2017-03-22 10:19:53', '2017-03-22 10:19:53', 'image001.png', 'image001', 'assets/theme-images/brewery-logos/image001.png', null, '1', '12', '1'), ('41', 'Image', '2017-03-22 10:24:58', '2017-03-22 10:24:58', 'company-lager.png', 'company lager', 'assets/theme-images/beer-images/company-lager.png', null, '1', '16', '1'), ('42', 'Image', '2017-03-22 10:26:25', '2017-03-22 10:26:25', 'Shipwreck-Dark-a.png', 'Shipwreck Dark a', 'assets/theme-images/beer-images/Shipwreck-Dark-a.png', null, '1', '16', '1'), ('43', 'Image', '2017-03-22 10:27:52', '2017-03-22 10:27:52', 'Tasman-Dark-a.png', 'Tasman Dark a', 'assets/theme-images/beer-images/Tasman-Dark-a.png', null, '1', '16', '1'), ('44', 'Image', '2017-03-22 10:29:24', '2017-03-22 10:29:24', 'company-lager2.png', 'company lager2', 'assets/theme-images/beer-images/company-lager2.png', null, '1', '16', '1'), ('45', 'Image', '2017-03-22 10:49:11', '2017-03-22 10:49:11', 'okanagan-spring-logo.png', 'okanagan spring logo', 'assets/theme-images/brewery-logos/okanagan-spring-logo.png', null, '1', '12', '1'), ('46', 'Image', '2017-03-22 10:55:22', '2017-03-22 10:55:22', 'honey-kolsch.jpg', 'honey kolsch', 'assets/theme-images/beer-images/honey-kolsch.jpg', null, '1', '16', '1'), ('47', 'Image', '2017-03-22 10:55:36', '2017-03-22 10:55:36', '1516-can.jpg', '1516 can', 'assets/theme-images/beer-images/1516-can.jpg', null, '1', '16', '1'), ('48', 'Image', '2017-03-22 10:56:52', '2017-03-22 10:56:52', '1516-can.png', '1516 can', 'assets/theme-images/beer-images/1516-can.png', null, '1', '16', '1'), ('49', 'Image', '2017-03-22 10:57:33', '2017-03-22 10:57:33', '1516-can2.png', '1516 can2', 'assets/theme-images/beer-images/1516-can2.png', null, '1', '16', '1'), ('50', 'Image', '2017-03-22 10:58:36', '2017-03-22 10:58:36', '1516-can3.png', '1516 can3', 'assets/theme-images/beer-images/1516-can3.png', null, '1', '16', '1'), ('51', 'Image', '2017-03-22 11:03:12', '2017-03-22 11:03:12', 'Firehall-Brewery-Logo02.png', 'Firehall Brewery Logo02', 'assets/theme-images/brewery-logos/Firehall-Brewery-Logo02.png', null, '1', '12', '1'), ('52', 'Image', '2017-03-22 11:09:31', '2017-03-22 11:09:31', 'holy-smoke-stout.png', 'holy smoke stout', 'assets/theme-images/beer-images/holy-smoke-stout.png', null, '1', '16', '1'), ('53', 'Image', '2017-03-22 11:10:41', '2017-03-22 11:10:41', 'holy-smoke-stout.jpeg', 'holy smoke stout', 'assets/theme-images/beer-images/holy-smoke-stout.jpeg', null, '1', '16', '1'), ('54', 'Image', '2017-03-22 11:12:59', '2017-03-22 11:12:59', 'Bad-Tattoo-logo.png', 'Bad Tattoo logo', 'assets/theme-images/brewery-logos/Bad-Tattoo-logo.png', null, '1', '12', '1'), ('55', 'Image', '2017-03-22 11:16:18', '2017-03-22 11:16:18', 'bad-tattoo-brewing-westcoast-ipa-1478812983.png', 'bad tattoo brewing westcoast ipa 1478812983', 'assets/theme-images/beer-images/bad-tattoo-brewing-westcoast-ipa-1478812983.png', null, '1', '16', '1'), ('56', 'Image', '2017-03-22 11:20:20', '2017-03-22 11:20:20', 'Cariboo-Brewing.png', 'Cariboo Brewing', 'assets/theme-images/brewery-logos/Cariboo-Brewing.png', null, '1', '12', '1'), ('57', 'Image', '2017-03-22 11:21:06', '2017-03-22 11:21:06', 'Cariboo-Genuine.png', 'Cariboo Genuine', 'assets/theme-images/beer-images/Cariboo-Genuine.png', null, '1', '16', '1'), ('58', 'Image', '2017-03-22 11:27:32', '2017-03-22 11:27:32', 'Logo-white.jpg', 'Logo white', 'assets/theme-images/brewery-logos/Logo-white.jpg', null, '1', '12', '1'), ('59', 'Image', '2017-03-23 22:00:53', '2017-03-23 22:00:53', 'the-market-logo.png', 'the market logo', 'assets/theme-images/venue-logos/the-market-logo.png', null, '1', '4', '1'), ('60', 'Image', '2017-03-24 19:32:36', '2017-03-23 22:03:43', 'moose-lounge.png', 'moose lounge', 'assets/theme-images/venue-logos/moose-lounge.png', null, '1', '4', '1'), ('61', 'Image', '2017-03-23 22:12:46', '2017-03-23 22:12:46', 'arrowhead-logo.png', 'arrowhead logo', 'assets/theme-images/brewery-logos/arrowhead-logo.png', null, '1', '12', '1'), ('62', 'Image', '2017-03-23 22:22:41', '2017-03-23 22:22:41', 'BlackJack.png', 'BlackJack', 'assets/theme-images/beer-images/BlackJack.png', null, '1', '16', '1'), ('63', 'Image', '2017-03-23 22:23:39', '2017-03-23 22:23:39', 'ESB.png', 'ESB', 'assets/theme-images/beer-images/ESB.png', null, '1', '16', '1'), ('64', 'Image', '2017-03-23 22:25:29', '2017-03-23 22:25:29', 'NightTrain.png', 'NightTrain', 'assets/theme-images/beer-images/NightTrain.png', null, '1', '16', '1'), ('65', 'Image', '2017-03-23 22:29:29', '2017-03-23 22:29:29', 'stanley-park-brewing.png', 'stanley park brewing', 'assets/theme-images/brewery-logos/stanley-park-brewing.png', null, '1', '12', '1'), ('66', 'Image', '2017-03-23 22:38:43', '2017-03-23 22:38:43', 'bottle-glass-amber-300.png', 'bottle glass amber 300', 'assets/theme-images/beer-images/bottle-glass-amber-300.png', null, '1', '16', '1'), ('67', 'Image', '2017-03-23 22:40:33', '2017-03-23 22:40:33', 'bottle-glass-pilsner-300.png', 'bottle glass pilsner 300', 'assets/theme-images/beer-images/bottle-glass-pilsner-300.png', null, '1', '16', '1'), ('68', 'Image', '2017-03-23 22:43:49', '2017-03-23 22:43:49', 'bottle-glass-windstorm-300.png', 'bottle glass windstorm 300', 'assets/theme-images/beer-images/bottle-glass-windstorm-300.png', null, '1', '16', '1'), ('69', 'Image', '2017-03-23 22:47:17', '2017-03-23 22:47:17', 'Kolsch.png', 'Kolsch', 'assets/theme-images/beer-images/Kolsch.png', null, '1', '16', '1'), ('70', 'Image', '2017-03-23 22:48:29', '2017-03-23 22:48:29', 'nasty.png', 'nasty', 'assets/theme-images/beer-images/nasty.png', null, '1', '16', '1'), ('71', 'Image', '2017-03-23 22:49:20', '2017-03-23 22:49:20', 'Stoked-Winter-Ale2-copy.jpg', 'Stoked Winter Ale2 copy', 'assets/theme-images/beer-images/Stoked-Winter-Ale2-copy.jpg', null, '1', '16', '1'), ('72', 'Image', '2017-03-23 22:56:30', '2017-03-23 22:56:30', 'generic-ale.png', 'generic ale', 'assets/theme-images/beer-images/generic-ale.png', null, '1', '16', '1'), ('73', 'Image', '2017-03-23 23:53:23', '2017-03-23 23:53:23', 'case-of-beer.jpg', 'case of beer', 'assets/Uploads/case-of-beer.jpg', null, '1', '1', '1'), ('74', 'Image', '2017-03-24 01:56:08', '2017-03-24 01:56:08', 'carlsberg-logo.png', 'carlsberg logo', 'assets/theme-images/brewery-logos/carlsberg-logo.png', null, '1', '12', '1'), ('75', 'Image', '2017-03-24 01:57:30', '2017-03-24 01:57:30', '33-cl-Carlsberg-beer-bottle.png', '33 cl Carlsberg beer bottle', 'assets/theme-images/beer-images/33-cl-Carlsberg-beer-bottle.png', null, '1', '16', '1'), ('76', 'Image', '2017-03-24 02:01:02', '2017-03-24 02:01:02', 'Fuggles-Warlock.png', 'Fuggles Warlock', 'assets/theme-images/brewery-logos/Fuggles-Warlock.png', null, '1', '12', '1'), ('77', 'Image', '2017-03-24 02:05:10', '2017-03-24 02:05:10', 'triplejjj-lager.jpg', 'triplejjj lager', 'assets/theme-images/beer-images/triplejjj-lager.jpg', null, '1', '16', '1'), ('78', 'Image', '2017-03-24 02:13:45', '2017-03-24 02:13:45', 'sommersby-apple.png', 'sommersby apple', 'assets/theme-images/beer-images/sommersby-apple.png', null, '1', '16', '1'), ('79', 'Image', '2017-03-24 02:25:57', '2017-03-24 02:25:57', '1664.png', '1664', 'assets/theme-images/beer-images/1664.png', null, '1', '16', '1'), ('80', 'Image', '2017-03-24 02:42:32', '2017-03-24 02:42:32', 'logo-wardshardcider.png', 'logo wardshardcider', 'assets/theme-images/brewery-logos/logo-wardshardcider.png', null, '1', '12', '1'), ('81', 'Image', '2017-03-24 02:45:10', '2017-03-24 02:45:10', 'wards-hard-apple-cider-BC3C1548-e1476666339557.png', 'wards hard apple cider BC3C1548 e1476666339557', 'assets/theme-images/beer-images/wards-hard-apple-cider-BC3C1548-e1476666339557.png', null, '1', '16', '1'), ('82', 'Image', '2017-03-24 02:47:36', '2017-03-24 02:47:36', 'wards-pickers-hut-premium-cider-BC3C1559-e1476669317447.png', 'wards pickers hut premium cider BC3C1559 e1476669317447', 'assets/theme-images/beer-images/wards-pickers-hut-premium-cider-BC3C1559-e1476669317447.png', null, '1', '16', '1'), ('83', 'Image', '2017-03-24 02:49:53', '2017-03-24 02:49:53', 'generic-ale2.png', 'generic ale2', 'assets/theme-images/beer-images/generic-ale2.png', null, '1', '16', '1'), ('84', 'Image', '2017-03-24 02:57:59', '2017-03-24 02:57:59', 'longwood-logo.png', 'longwood logo', 'assets/theme-images/brewery-logos/longwood-logo.png', null, '1', '12', '1'), ('85', 'Image', '2017-03-24 02:58:31', '2017-03-24 02:58:31', 'stoutnik-bottle.png', 'stoutnik bottle', 'assets/theme-images/beer-images/stoutnik-bottle.png', null, '1', '16', '1'), ('86', 'Image', '2017-03-24 02:59:50', '2017-03-24 02:59:50', 'berried-can.png', 'berried can', 'assets/theme-images/beer-images/berried-can.png', null, '1', '16', '1'), ('87', 'Image', '2017-03-24 19:27:02', '2017-03-24 19:27:02', '2016-Pacific-355-Pilsner.png', '2016 Pacific 355 Pilsner', 'assets/theme-images/beer-images/2016-Pacific-355-Pilsner.png', null, '1', '16', '2'), ('88', 'Image', '2017-03-24 19:33:06', '2017-03-24 19:33:06', 'Moose-Lounge-Logo.jpg', 'Moose Lounge Logo', 'assets/theme-images/venue-logos/Moose-Lounge-Logo.jpg', null, '1', '4', '2'), ('89', 'Image', '2017-03-24 19:44:24', '2017-03-24 19:44:24', 'GIB.png', 'GIB', 'assets/theme-images/brewery-logos/GIB.png', null, '1', '12', '2'), ('90', 'Image', '2017-03-24 19:46:37', '2017-03-24 19:46:37', 'Red-Truck-Avatar.png', 'Red Truck Avatar', 'assets/theme-images/brewery-logos/Red-Truck-Avatar.png', null, '1', '12', '2'), ('91', 'Image', '2017-03-24 19:52:28', '2017-03-24 19:52:28', 'hero-paleale.png', 'hero paleale', 'assets/theme-images/beer-images/hero-paleale.png', null, '1', '16', '2'), ('92', 'Image', '2017-03-24 19:54:12', '2017-03-24 19:54:12', 'Red-Truck-Avatar.png', 'Red Truck Avatar', 'assets/theme-images/beer-images/Red-Truck-Avatar.png', null, '1', '16', '2'), ('93', 'Image', '2017-03-25 02:15:02', '2017-03-25 02:15:02', 'vibrewing.jpg', 'vibrewing', 'assets/theme-images/brewery-logos/vibrewing.jpg', null, '1', '12', '1'), ('94', 'Image', '2017-03-25 02:17:19', '2017-03-25 02:17:19', 'red-truck-lager.jpeg', 'red truck lager', 'assets/theme-images/beer-images/red-truck-lager.jpeg', null, '1', '16', '1'), ('95', 'Image', '2017-03-25 02:22:17', '2017-03-25 02:22:17', 'redtruckale.jpg', 'redtruckale', 'assets/theme-images/beer-images/redtruckale.jpg', null, '1', '16', '1'), ('96', 'Image', '2017-03-25 02:27:56', '2017-03-25 02:27:56', 'redtruckipa.jpg', 'redtruckipa', 'assets/theme-images/beer-images/redtruckipa.jpg', null, '1', '16', '1'), ('97', 'Image', '2017-03-25 02:29:06', '2017-03-25 02:29:06', 'red-truck-pilsner.jpeg', 'red truck pilsner', 'assets/theme-images/beer-images/red-truck-pilsner.jpeg', null, '1', '16', '1'), ('98', 'Image', '2017-03-25 02:29:36', '2017-03-25 02:29:36', 'redtruckale2.png', 'redtruckale2', 'assets/theme-images/beer-images/redtruckale2.png', null, '1', '16', '1'), ('99', 'Image', '2017-03-25 02:30:52', '2017-03-25 02:30:52', 'red-truck-ipa.png', 'red truck ipa', 'assets/theme-images/beer-images/red-truck-ipa.png', null, '1', '16', '1'), ('100', 'Image', '2017-03-25 13:21:19', '2017-03-25 13:21:19', 'themarket.png', 'themarket', 'assets/theme-images/venue-logos/themarket.png', null, '1', '4', '1'), ('101', 'Image', '2017-03-25 13:26:22', '2017-03-25 13:26:22', 'Tin-Whistle-logo.jpg', 'Tin Whistle logo', 'assets/theme-images/brewery-logos/Tin-Whistle-logo.jpg', null, '1', '12', '1'), ('102', 'Image', '2017-03-25 13:36:18', '2017-03-25 13:36:18', 'sombrio-citrus.png', 'sombrio citrus', 'assets/theme-images/beer-images/sombrio-citrus.png', null, '1', '16', '1'), ('103', 'Image', '2017-03-25 13:39:14', '2017-03-25 13:39:14', '48-Dark-Lager.jpg', '48 Dark Lager', 'assets/theme-images/beer-images/48-Dark-Lager.jpg', null, '1', '16', '1'), ('104', 'Image', '2017-03-25 13:42:00', '2017-03-25 13:42:00', 'juan.jpeg', 'juan', 'assets/theme-images/beer-images/juan.jpeg', null, '1', '16', '1'), ('105', 'Image', '2017-03-25 13:44:26', '2017-03-25 13:44:26', '19IPA.jpeg', '19IPA', 'assets/theme-images/beer-images/19IPA.jpeg', null, '1', '16', '1'), ('106', 'Image', '2017-03-25 13:45:52', '2017-03-25 13:45:52', '19IPA.png', '19IPA', 'assets/theme-images/beer-images/19IPA.png', null, '1', '16', '1'), ('107', 'Image', '2017-03-25 13:49:24', '2017-03-25 13:49:24', 'strawberry-wit.gif', 'strawberry wit', 'assets/theme-images/beer-images/strawberry-wit.gif', null, '1', '16', '1'), ('108', 'Image', '2017-03-25 13:50:54', '2017-03-25 13:50:54', 'strawberry-wit.png', 'strawberry wit', 'assets/theme-images/beer-images/strawberry-wit.png', null, '1', '16', '1'), ('109', 'Image', '2017-03-25 13:53:12', '2017-03-25 13:53:12', 'bean-me-up.png', 'bean me up', 'assets/theme-images/beer-images/bean-me-up.png', null, '1', '16', '1'), ('110', 'Image', '2017-03-25 13:54:30', '2017-03-25 13:54:30', 'pixel-pils.jpeg', 'pixel pils', 'assets/theme-images/beer-images/pixel-pils.jpeg', null, '1', '16', '1'), ('111', 'Image', '2017-03-25 14:16:02', '2017-03-25 14:16:02', 'download.jpeg', 'download', 'assets/theme-images/beer-images/download.jpeg', null, '1', '16', '1'), ('112', 'Image', '2017-03-25 14:18:56', '2017-03-25 14:18:56', 'tramp-stamp.png', 'tramp stamp', 'assets/theme-images/beer-images/tramp-stamp.png', null, '1', '16', '1'), ('113', 'Image', '2017-03-25 14:25:40', '2017-03-25 14:25:40', 'BlackJack1.jpg', 'BlackJack1', 'assets/theme-images/beer-images/BlackJack1.jpg', null, '1', '16', '1'), ('114', 'Image', '2017-03-25 14:26:03', '2017-03-25 14:26:03', 'ESB1.png', 'ESB1', 'assets/theme-images/beer-images/ESB1.png', null, '1', '16', '1'), ('115', 'Image', '2017-03-25 14:26:17', '2017-03-25 14:26:17', 'NightTrain1.jpeg', 'NightTrain1', 'assets/theme-images/beer-images/NightTrain1.jpeg', null, '1', '16', '1'), ('116', 'Image', '2017-03-25 17:20:49', '2017-03-25 17:20:49', '944116.jpg', '944116', 'assets/theme-images/beer-images/944116.jpg', null, '1', '16', '2'), ('117', 'Image', '2017-03-25 17:21:34', '2017-03-25 17:21:34', '686071.jpg', '686071', 'assets/theme-images/beer-images/686071.jpg', null, '1', '16', '2');
COMMIT;

-- ----------------------------
--  Table structure for `Group`
-- ----------------------------
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `Group`
-- ----------------------------
BEGIN;
INSERT INTO `Group` VALUES ('1', 'Group', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'Content Authors', null, 'content-authors', '0', '1', null, '0'), ('2', 'Group', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'Administrators', null, 'administrators', '0', '0', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `Group_Members`
-- ----------------------------
DROP TABLE IF EXISTS `Group_Members`;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `Group_Members`
-- ----------------------------
BEGIN;
INSERT INTO `Group_Members` VALUES ('1', '2', '1'), ('2', '2', '2');
COMMIT;

-- ----------------------------
--  Table structure for `Group_Roles`
-- ----------------------------
DROP TABLE IF EXISTS `Group_Roles`;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `LoginAttempt`
-- ----------------------------
DROP TABLE IF EXISTS `LoginAttempt`;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `Member`
-- ----------------------------
DROP TABLE IF EXISTS `Member`;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `Member`
-- ----------------------------
BEGIN;
INSERT INTO `Member` VALUES ('1', 'Member', '2017-04-07 20:16:50', '2017-03-19 01:16:51', 'Default Admin', null, 'colin@latitude49.ca', '2747131e9d0bceaf59d86b2e2c3b06fe353c84ce', '2017-03-28 13:20:01', '$2y$10$878b43b082e804003ef29u0QuGPOOjrZAgZS3f8WeNFBZICeGtYMK', '$2y$10$878b43b082e804003ef29uJ3/.OPq8QmQiodgD/Pu6hhCxxTiS1pS', '21', '2017-04-07 20:19:54', null, null, 'blowfish', '10$878b43b082e804003ef299', null, null, 'en_US', '0', null, null), ('2', 'Member', '2017-03-26 01:38:34', '2017-03-24 03:07:28', 'Paul', 'Doherty', 'paul@globedining.com', '81622241d244f67cd7544675506c00a4a8d862a0', '2017-03-27 19:22:14', '$2y$10$354547a7f42f1bae82444OAO9oBIDXr3jHsQFg/CZqFtFnLxDc9.e', '$2y$10$354547a7f42f1bae82444OxxqAjWP.v1/ff709Zn5vLfn8bklzXH.', '4', '2017-03-26 01:39:53', null, null, 'blowfish', '10$354547a7f42f1bae82444c', null, null, 'en_US', '0', 'yyyy-MM-dd', 'H:mm');
COMMIT;

-- ----------------------------
--  Table structure for `MemberPassword`
-- ----------------------------
DROP TABLE IF EXISTS `MemberPassword`;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `MemberPassword`
-- ----------------------------
BEGIN;
INSERT INTO `MemberPassword` VALUES ('1', 'MemberPassword', '2017-03-19 01:16:52', '2017-03-19 01:16:52', '$2y$10$878b43b082e804003ef29u0QuGPOOjrZAgZS3f8WeNFBZICeGtYMK', '10$878b43b082e804003ef299', 'blowfish', '1'), ('2', 'MemberPassword', '2017-03-24 03:07:28', '2017-03-24 03:07:28', '$2y$10$354547a7f42f1bae82444OAO9oBIDXr3jHsQFg/CZqFtFnLxDc9.e', '10$354547a7f42f1bae82444c', 'blowfish', '2');
COMMIT;

-- ----------------------------
--  Table structure for `Permission`
-- ----------------------------
DROP TABLE IF EXISTS `Permission`;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `Permission`
-- ----------------------------
BEGIN;
INSERT INTO `Permission` VALUES ('1', 'Permission', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'CMS_ACCESS_CMSMain', '0', '1', '1'), ('2', 'Permission', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'CMS_ACCESS_AssetAdmin', '0', '1', '1'), ('3', 'Permission', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'CMS_ACCESS_ReportAdmin', '0', '1', '1'), ('4', 'Permission', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'SITETREE_REORGANISE', '0', '1', '1'), ('5', 'Permission', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'ADMIN', '0', '1', '2');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionRole`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionRole`;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `PermissionRoleCode`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionRoleCode`;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `RedirectorPage`
-- ----------------------------
DROP TABLE IF EXISTS `RedirectorPage`;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `RedirectorPage_Live`
-- ----------------------------
DROP TABLE IF EXISTS `RedirectorPage_Live`;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `RedirectorPage_versions`
-- ----------------------------
DROP TABLE IF EXISTS `RedirectorPage_versions`;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteConfig`
-- ----------------------------
DROP TABLE IF EXISTS `SiteConfig`;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `SiteConfig`
-- ----------------------------
BEGIN;
INSERT INTO `SiteConfig` VALUES ('1', 'SiteConfig', '2017-03-19 02:05:31', '2017-03-19 01:16:51', 'Ales & Apres | Big White Ski Resort', 'March 25th, 2017', 'alesandapres', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');
COMMIT;

-- ----------------------------
--  Table structure for `SiteConfig_CreateTopLevelGroups`
-- ----------------------------
DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteConfig_EditorGroups`
-- ----------------------------
DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteConfig_ViewerGroups`
-- ----------------------------
DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteTree`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree`;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','BreweryPage','LeaderboardPage','VenuePage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `SiteTree`
-- ----------------------------
BEGIN;
INSERT INTO `SiteTree` VALUES ('1', 'Page', '2017-03-24 00:01:19', '2017-03-19 01:16:50', 'home', 'Home', null, null, null, null, '0', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '3', '0'), ('4', 'ErrorPage', '2017-03-19 01:16:52', '2017-03-19 01:16:51', 'page-not-found', 'Page not found', null, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', null, null, '0', '0', '2', '0', '0', null, 'Inherit', 'Inherit', '1', '0'), ('5', 'ErrorPage', '2017-03-19 01:16:52', '2017-03-19 01:16:51', 'server-error', 'Server error', null, '<p>Sorry, there was a problem with handling your request.</p>', null, null, '0', '0', '3', '0', '0', null, 'Inherit', 'Inherit', '1', '0'), ('6', 'VenuePage', '2017-03-23 21:25:24', '2017-03-19 04:04:46', 'globe-cafe', 'Globe Cafe', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '6', '0'), ('7', 'VenuePage', '2017-03-24 00:19:13', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, '<div class=\"wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_bottom-to-top vc_custom_1475624426737 wpb_start_animation\">\n<div class=\"wpb_wrapper\">\n<h4><span>Local wine, cold beer and family friendly dining.</span></h4>\n</div>\n</div><div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p><span>Our menu changes with the seasons to showcase the natural flavours of our own backyard and celebrate the exciting events that occur throughout the holiday and ski season.</span></p>\n<p><span>Prepare your taste buds for some new and exciting tastes, along with some old classics.</span></p>\n<h3 style=\"text-align: center;\">WE’RE BACK</h3>\n<h5 style=\"text-align: center;\">Bigger, better and more delicious than ever</h5>\n<p><span><strong> </strong></span></p>\n</div>\n</div>', null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '5', '0'), ('8', 'VenuePage', '2017-03-23 21:55:08', '2017-03-19 04:15:11', 'the-blarney-stone', 'The Blarney Stone', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('10', 'VenuePage', '2017-03-23 22:05:56', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '7', '0'), ('11', 'VenuePage', '2017-03-23 21:53:13', '2017-03-19 04:17:07', 'snowshoe-sams', 'Snowshoe Sam\'s', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('12', 'VenuePage', '2017-03-23 22:04:16', '2017-03-19 04:17:32', 'the-woods', 'The Woods', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('13', 'BreweryPage', '2017-03-19 07:01:16', '2017-03-19 06:57:54', 'kronenbourg', 'Kronenbourg', null, '<p>Founded in 1664 in Strasbourg by the Hatt family. Kronenbourg is the best known French beer and the 5<sup>th</sup> oldest beer brand in the world that still exists today. Only the best hops, the Strisselspalt, is used to brew 1664 and Kronenbourg Blanc.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('14', 'BreweryPage', '2017-03-24 02:18:19', '2017-03-19 07:04:33', 'somersby', 'Somersby', null, '<p>Rumour has it that everything started with a nobleman by the name of Lord Somersby. As the father of many great discoveries, Lord Somersby became known for his legendary thirst for adventure and cider. Today the fruit of Lord Somersby’s larbour is enjoyed in 43 countries around the world.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('15', 'BreweryPage', '2017-03-19 07:25:12', '2017-03-19 07:24:45', 'big-surf', 'Big Surf', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('16', 'BreweryPage', '2017-03-19 09:45:47', '2017-03-19 09:42:28', 'tree-brewing', 'Tree Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '8'), ('17', 'BreweryPage', '2017-03-25 17:26:41', '2017-03-19 10:00:55', 'bna-brewing', 'BNA Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '7'), ('18', 'BreweryPage', '2017-03-22 09:33:33', '2017-03-22 09:32:34', 'prohibition-brewing-co', 'Prohibition Brewing Co.', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('19', 'BreweryPage', '2017-03-22 09:44:37', '2017-03-22 09:41:54', 'freddys-brew-pub', 'Freddy\'s Brew Pub', null, null, null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('20', 'BreweryPage', '2017-03-22 09:47:02', '2017-03-22 09:45:24', 'lonetree-cider-company', 'Lonetree Cider Company', null, '<p class=\"Body\">We are a small, BC-owned company, making cider the old fashioned way. We start with real BC apples from old-growth orchards, deep in the Okanagan Valley of British Columbia. Our authentic dry ciders are natural and real – from apples that are crushed and fermented, then filtered fresh clear and pure – much like a premium quality wine. We know you will taste the difference. </p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '8'), ('21', 'BreweryPage', '2017-03-22 09:52:45', '2017-03-22 09:48:33', 'postmark-brewing', 'Postmark Brewing', null, '<p>Postmark Brewing is a Vancouver, BC born and built craft brewery. Our West Coast lifestyle and love for great quality beers for every occasion led us to the design, development and brew of our favorite pints. Consistent quality is paramount as we strive to create beers that cater to not only our thirsty palate but to the active lifestyles we enjoy with our friends and colleagues. At Postmark Brewing we are inspired by more than just great tasting sessionable craft beers, we enjoy taking a collaborative approach towards our other passions in life including music, photography, travel, sport, design, events and especially those who are taking risks and making great things happen. Cheers!</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '3', '8'), ('22', 'BreweryPage', '2017-03-22 09:59:37', '2017-03-22 09:55:48', 'steamworks', 'Steamworks', null, '<p>In 1995, when we first took hold of our historic Gastown brewpub location, we discovered that the building had a rare steam heat system. A remnant from forward thinkers of a century past.</p><p>Our brewmaster had only read of steam powered brewing, but had never seen a functional steam brewery. These are very rare indeed. We ventured forth, experimented, and created a one-of-a-kind steam generated brewery. The only one in Canada. To our pleasure, we found our test brews to be distinctively fresh and flavourful. For over 20 years, beer aficionados have been migrating to our Steamworks Brewpub for a taste of these unconventional beers. </p><p>In 2013 we opened our brewery and taproom in Burnaby, which only intensified our dedication to producing distinct and delicious beers. </p><p>Bottling, Kegging and Canning Tallboys, we\'re still brewing with the Power of Steam.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '12'), ('23', 'BreweryPage', '2017-03-22 10:23:54', '2017-03-22 10:15:26', 'lighthouse-brewing-co', 'Lighthouse Brewing Co.', null, '<p class=\"Body\">Lighthouse Brewing Company was founded in 1998 in Victoria BC. Since its inception, Lighthouse has focused on delivering big flavours from small batch, hand-crafted ales and lagers. Our motto is to brew excellent craft beer every day</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '12'), ('24', 'BreweryPage', '2017-03-22 10:49:15', '2017-03-22 10:38:31', 'okanagan-spring', 'Okanagan Spring', null, '<p class=\"p1\"><span class=\"s1\">Quality. Best ingredients. Freshness. Full taste. It’s about the spirit of small batches made for local customers.</span><span class=\"s2\"> It’s about the discovery of different styles of beer and the care, attention and knowledge that goes into brewing each and every one of them. For all those who appreciate the craftsmanship that goes into making a great beer, we continue to deliver on our promise to brew exceptional ales and lagers that offer a distinctive taste and unsurpassed quality.</span></p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '11'), ('25', 'BreweryPage', '2017-03-22 10:59:44', '2017-03-22 10:43:40', 'bna-brewing-2', 'BNA Brewing', null, '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>BNA Brewing Co. is located in the heart of Kelowna</span><span>’</span><span>s Cultural District. Opening our doors in June 2015, we</span><span>’</span><span>ve made it our mission to brew good beer and have fun doing it. </span></p>\n</div>\n</div>\n</div>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '11'), ('26', 'BreweryPage', '2017-03-24 03:02:26', '2017-03-22 11:00:06', 'firehall-brewery', 'Firehall Brewery', null, '<p>EXTINGUISH YOUR THIRST with the BEER of WINE COUNTRY! Nestled in the cavernous cellar beneath the \"Old Firehall\" on Main Street in Canada\'s Wine Capital, we pump out thirst-extinguishing ales with courageous flavour and alarming drinkability. The Beer Shop &amp; Social is open daily for tastings, tours, pints, socializing, live music, events, and retail sales. Firehall Brewery... rescuing maidens and men from bad beer since 2012.</p>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '4', '6'), ('27', 'BreweryPage', '2017-03-22 11:16:54', '2017-03-22 11:12:42', 'bad-tattoo', 'Bad Tattoo', null, '<p class=\"BodyA\">After six generations, Penticton is still our home and we’re proud to say our family still claims some of the best chefs, cicerones, entrepreneurs, accountants and passionate beer drinkers on the West Coast. Together, our mission is to craft the greatest beer we know how, sharing our passion for perfection and the flavours of the Okanagan Valley.</p><p class=\"Default\">Our team is a family. We’re proud of our history in Penticton and passionate about brewing great beer for our friends and fellow craft beer fans in BC. We know we’re a little bit crazy, but sometimes that’s what it takes to be the best. Our approach to making beer is influenced by our unrepentant pursuit for perfection. We work hard because we love what we do.</p><p class=\"Default\">Our beer is handcrafted in Penticton, using natural ingredients and no added preservatives. Our brewery is a serious operation. We built it from the ground up to give our brewmasters and guests the best spot in town to make and drink craft beer. Steps from the beach and a short drive from the ski hill, we’re the place to be for oven-fired pizza, fresh salads and of course, a great selection of beer.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '7'), ('28', 'BreweryPage', '2017-03-23 17:34:18', '2017-03-22 11:17:30', 'pacific-western-brewing-company', 'Pacific Western Brewing Company', null, '<p class=\"Default\">Canada’s longest running, British Columbian-owned brewery was established in 1957 on a fresh water spring in Prince George, BC. Originally named Caribou Brewing, Pacific Western Brewing Company (PWB) has had seven owners over it’s storied past and achieved many milestones. Including, being the first Canadian brewer to export to mainland China in 1991 and then to Russia in 1996. Along the way these achievements have shaped the BC beer backbone for over fifty years.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '4', '7'), ('29', 'BreweryPage', '2017-03-23 22:29:57', '2017-03-22 11:24:43', 'stanley-park-brewing', 'Stanley Park Brewing', null, '<p class=\"Default\">Every beer we make is a tasty tribute to Stanley Park and the experiences had within it. With a portfolio of balanced and approachable brews that incorporate BC inspired flavours, our brews are made for sharing. Stanley Park Brewing products are available for sale in retail stores and in many of your favourite pubs and restaurants across BC and AB. For more information and where to buy, visit <a href=\"http://www.stanleyparkbrewing.com\">www.stanleyparkbrewing.com</a>.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '3', '10'), ('30', 'BreweryPage', '2017-03-22 11:28:24', '2017-03-22 11:26:32', 'mt-begbie', 'Mt Begbie', null, '<p class=\"Body\">Brewing award winning craft beer in Revelstoke BC since 1996</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '10'), ('31', 'BreweryPage', '2017-03-24 02:42:36', '2017-03-22 11:33:26', 'wards-cider', 'Wards Cider', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '3', '10'), ('32', 'VenuePage', '2017-03-25 13:21:22', '2017-03-23 21:25:58', 'the-market', 'The Market', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('33', 'VenuePage', '2017-03-24 19:33:09', '2017-03-23 22:02:55', 'happy-valley-moose-lounge', 'Happy Valley Moose Lounge', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '5', '0'), ('34', 'BreweryPage', '2017-03-23 22:12:50', '2017-03-23 22:10:29', 'arrowhead-brewing', 'Arrowhead Brewing', null, '<p>Arrowhead Brewing Company is a craft beer brewery located in Invermere, which is in between Radium and Fairmont, just two hours from Banff and 3 hours from Calgary, in the heart of the Columbia Valley, East Kootenay, British Columbia.</p><p>We brew and package all of our beer right here at Arrowhead. Customers can either enjoy a pint or a beer tasting flight here in our tap room, or take home 6 packs, bomber bottles or growlers.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '4', '33'), ('35', 'UserDefinedForm', '2017-03-24 00:26:06', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p> </p><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '9', '0'), ('36', 'BreweryPage', '2017-03-24 01:56:19', '2017-03-24 01:54:29', 'carlsberg', 'Carlsberg', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('37', 'BreweryPage', '2017-03-24 02:36:21', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '7', '8'), ('38', 'BreweryPage', '2017-03-24 03:00:38', '2017-03-24 02:51:12', 'longwood-brewery', 'Longwood Brewery', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '4', '33'), ('39', 'BreweryPage', '2017-03-25 02:15:04', '2017-03-24 19:41:46', 'vancouver-island-brewing', 'Vancouver Island Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '4', '32'), ('40', 'BreweryPage', '2017-03-24 19:46:38', '2017-03-24 19:42:35', 'red-truck-brewing', 'Red Truck Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '32'), ('41', 'LeaderboardPage', '2017-03-25 00:51:47', '2017-03-25 00:51:26', 'favourite-beers-leaderboard', 'Favourite Beers Leaderboard', null, null, null, null, '1', '1', '13', '0', '0', null, 'Inherit', 'Inherit', '2', '0'), ('42', 'BreweryPage', '2017-03-25 13:27:22', '2017-03-25 13:25:02', 'tin-whistle-brewery', 'Tin Whistle Brewery', null, '<p><span>The Tin Whistle is a small micro brewery located in Penticton, BC. We brew beers that we like, and we hope that you\'ll like them too. We have five beers that we produce year round, and at any given time we may have an additional one or two seasonals. Our beers are available throughout BC and Alberta, on tap and in 650ml bottles. </span></p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '2', '10');
COMMIT;

-- ----------------------------
--  Table structure for `SiteTree_EditorGroups`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteTree_ImageTracking`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `SiteTree_ImageTracking`
-- ----------------------------
BEGIN;
INSERT INTO `SiteTree_ImageTracking` VALUES ('25', '35', '73', 'OnCompleteMessage');
COMMIT;

-- ----------------------------
--  Table structure for `SiteTree_LinkTracking`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteTree_Live`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','BreweryPage','LeaderboardPage','VenuePage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `SiteTree_Live`
-- ----------------------------
BEGIN;
INSERT INTO `SiteTree_Live` VALUES ('1', 'Page', '2017-03-24 00:01:19', '2017-03-19 01:16:50', 'home', 'Home', null, null, null, null, '0', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '3', '0'), ('4', 'ErrorPage', '2017-03-19 01:17:04', '2017-03-19 01:16:51', 'page-not-found', 'Page not found', null, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', null, null, '0', '0', '2', '0', '0', null, 'Inherit', 'Inherit', '1', '0'), ('5', 'ErrorPage', '2017-03-19 01:16:51', '2017-03-19 01:16:51', 'server-error', 'Server error', null, '<p>Sorry, there was a problem with handling your request.</p>', null, null, '0', '0', '3', '0', '0', null, 'Inherit', 'Inherit', '1', '0'), ('6', 'VenuePage', '2017-03-23 21:25:24', '2017-03-19 04:04:46', 'globe-cafe', 'Globe Cafe', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '6', '0'), ('7', 'VenuePage', '2017-03-24 00:19:13', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, '<div class=\"wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_bottom-to-top vc_custom_1475624426737 wpb_start_animation\">\n<div class=\"wpb_wrapper\">\n<h4><span>Local wine, cold beer and family friendly dining.</span></h4>\n</div>\n</div><div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p><span>Our menu changes with the seasons to showcase the natural flavours of our own backyard and celebrate the exciting events that occur throughout the holiday and ski season.</span></p>\n<p><span>Prepare your taste buds for some new and exciting tastes, along with some old classics.</span></p>\n<h3 style=\"text-align: center;\">WE’RE BACK</h3>\n<h5 style=\"text-align: center;\">Bigger, better and more delicious than ever</h5>\n<p><span><strong> </strong></span></p>\n</div>\n</div>', null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '5', '0'), ('8', 'VenuePage', '2017-03-23 21:55:08', '2017-03-19 04:15:11', 'the-blarney-stone', 'The Blarney Stone', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('10', 'VenuePage', '2017-03-23 22:05:57', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '7', '0'), ('11', 'VenuePage', '2017-03-23 21:53:13', '2017-03-19 04:17:07', 'snowshoe-sams', 'Snowshoe Sam\'s', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('12', 'VenuePage', '2017-03-23 22:04:16', '2017-03-19 04:17:32', 'the-woods', 'The Woods', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('13', 'BreweryPage', '2017-03-19 07:01:16', '2017-03-19 06:57:54', 'kronenbourg', 'Kronenbourg', null, '<p>Founded in 1664 in Strasbourg by the Hatt family. Kronenbourg is the best known French beer and the 5<sup>th</sup> oldest beer brand in the world that still exists today. Only the best hops, the Strisselspalt, is used to brew 1664 and Kronenbourg Blanc.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('14', 'BreweryPage', '2017-03-24 02:18:19', '2017-03-19 07:04:33', 'somersby', 'Somersby', null, '<p>Rumour has it that everything started with a nobleman by the name of Lord Somersby. As the father of many great discoveries, Lord Somersby became known for his legendary thirst for adventure and cider. Today the fruit of Lord Somersby’s larbour is enjoyed in 43 countries around the world.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('15', 'BreweryPage', '2017-03-19 07:25:12', '2017-03-19 07:24:45', 'big-surf', 'Big Surf', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('16', 'BreweryPage', '2017-03-19 09:45:47', '2017-03-19 09:42:28', 'tree-brewing', 'Tree Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '8'), ('17', 'BreweryPage', '2017-03-25 17:26:41', '2017-03-19 10:00:55', 'bna-brewing', 'BNA Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '7'), ('18', 'BreweryPage', '2017-03-22 09:33:33', '2017-03-22 09:32:34', 'prohibition-brewing-co', 'Prohibition Brewing Co.', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('19', 'BreweryPage', '2017-03-22 09:44:37', '2017-03-22 09:41:54', 'freddys-brew-pub', 'Freddy\'s Brew Pub', null, null, null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('20', 'BreweryPage', '2017-03-22 09:47:02', '2017-03-22 09:45:24', 'lonetree-cider-company', 'Lonetree Cider Company', null, '<p class=\"Body\">We are a small, BC-owned company, making cider the old fashioned way. We start with real BC apples from old-growth orchards, deep in the Okanagan Valley of British Columbia. Our authentic dry ciders are natural and real – from apples that are crushed and fermented, then filtered fresh clear and pure – much like a premium quality wine. We know you will taste the difference. </p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '8'), ('21', 'BreweryPage', '2017-03-22 09:52:45', '2017-03-22 09:48:33', 'postmark-brewing', 'Postmark Brewing', null, '<p>Postmark Brewing is a Vancouver, BC born and built craft brewery. Our West Coast lifestyle and love for great quality beers for every occasion led us to the design, development and brew of our favorite pints. Consistent quality is paramount as we strive to create beers that cater to not only our thirsty palate but to the active lifestyles we enjoy with our friends and colleagues. At Postmark Brewing we are inspired by more than just great tasting sessionable craft beers, we enjoy taking a collaborative approach towards our other passions in life including music, photography, travel, sport, design, events and especially those who are taking risks and making great things happen. Cheers!</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '3', '8'), ('22', 'BreweryPage', '2017-03-22 09:59:37', '2017-03-22 09:55:48', 'steamworks', 'Steamworks', null, '<p>In 1995, when we first took hold of our historic Gastown brewpub location, we discovered that the building had a rare steam heat system. A remnant from forward thinkers of a century past.</p><p>Our brewmaster had only read of steam powered brewing, but had never seen a functional steam brewery. These are very rare indeed. We ventured forth, experimented, and created a one-of-a-kind steam generated brewery. The only one in Canada. To our pleasure, we found our test brews to be distinctively fresh and flavourful. For over 20 years, beer aficionados have been migrating to our Steamworks Brewpub for a taste of these unconventional beers. </p><p>In 2013 we opened our brewery and taproom in Burnaby, which only intensified our dedication to producing distinct and delicious beers. </p><p>Bottling, Kegging and Canning Tallboys, we\'re still brewing with the Power of Steam.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '12'), ('23', 'BreweryPage', '2017-03-22 10:23:54', '2017-03-22 10:15:26', 'lighthouse-brewing-co', 'Lighthouse Brewing Co.', null, '<p class=\"Body\">Lighthouse Brewing Company was founded in 1998 in Victoria BC. Since its inception, Lighthouse has focused on delivering big flavours from small batch, hand-crafted ales and lagers. Our motto is to brew excellent craft beer every day</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '12'), ('24', 'BreweryPage', '2017-03-22 10:49:15', '2017-03-22 10:38:31', 'okanagan-spring', 'Okanagan Spring', null, '<p class=\"p1\"><span class=\"s1\">Quality. Best ingredients. Freshness. Full taste. It’s about the spirit of small batches made for local customers.</span><span class=\"s2\"> It’s about the discovery of different styles of beer and the care, attention and knowledge that goes into brewing each and every one of them. For all those who appreciate the craftsmanship that goes into making a great beer, we continue to deliver on our promise to brew exceptional ales and lagers that offer a distinctive taste and unsurpassed quality.</span></p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '2', '11'), ('25', 'BreweryPage', '2017-03-22 10:59:45', '2017-03-22 10:43:40', 'bna-brewing-2', 'BNA Brewing', null, '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>BNA Brewing Co. is located in the heart of Kelowna</span><span>’</span><span>s Cultural District. Opening our doors in June 2015, we</span><span>’</span><span>ve made it our mission to brew good beer and have fun doing it. </span></p>\n</div>\n</div>\n</div>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '11'), ('26', 'BreweryPage', '2017-03-24 03:02:26', '2017-03-22 11:00:06', 'firehall-brewery', 'Firehall Brewery', null, '<p>EXTINGUISH YOUR THIRST with the BEER of WINE COUNTRY! Nestled in the cavernous cellar beneath the \"Old Firehall\" on Main Street in Canada\'s Wine Capital, we pump out thirst-extinguishing ales with courageous flavour and alarming drinkability. The Beer Shop &amp; Social is open daily for tastings, tours, pints, socializing, live music, events, and retail sales. Firehall Brewery... rescuing maidens and men from bad beer since 2012.</p>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '4', '6'), ('27', 'BreweryPage', '2017-03-22 11:16:54', '2017-03-22 11:12:42', 'bad-tattoo', 'Bad Tattoo', null, '<p class=\"BodyA\">After six generations, Penticton is still our home and we’re proud to say our family still claims some of the best chefs, cicerones, entrepreneurs, accountants and passionate beer drinkers on the West Coast. Together, our mission is to craft the greatest beer we know how, sharing our passion for perfection and the flavours of the Okanagan Valley.</p><p class=\"Default\">Our team is a family. We’re proud of our history in Penticton and passionate about brewing great beer for our friends and fellow craft beer fans in BC. We know we’re a little bit crazy, but sometimes that’s what it takes to be the best. Our approach to making beer is influenced by our unrepentant pursuit for perfection. We work hard because we love what we do.</p><p class=\"Default\">Our beer is handcrafted in Penticton, using natural ingredients and no added preservatives. Our brewery is a serious operation. We built it from the ground up to give our brewmasters and guests the best spot in town to make and drink craft beer. Steps from the beach and a short drive from the ski hill, we’re the place to be for oven-fired pizza, fresh salads and of course, a great selection of beer.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '7'), ('28', 'BreweryPage', '2017-03-23 17:34:18', '2017-03-22 11:17:30', 'pacific-western-brewing-company', 'Pacific Western Brewing Company', null, '<p class=\"Default\">Canada’s longest running, British Columbian-owned brewery was established in 1957 on a fresh water spring in Prince George, BC. Originally named Caribou Brewing, Pacific Western Brewing Company (PWB) has had seven owners over it’s storied past and achieved many milestones. Including, being the first Canadian brewer to export to mainland China in 1991 and then to Russia in 1996. Along the way these achievements have shaped the BC beer backbone for over fifty years.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '4', '7'), ('29', 'BreweryPage', '2017-03-23 22:29:57', '2017-03-22 11:24:43', 'stanley-park-brewing', 'Stanley Park Brewing', null, '<p class=\"Default\">Every beer we make is a tasty tribute to Stanley Park and the experiences had within it. With a portfolio of balanced and approachable brews that incorporate BC inspired flavours, our brews are made for sharing. Stanley Park Brewing products are available for sale in retail stores and in many of your favourite pubs and restaurants across BC and AB. For more information and where to buy, visit <a href=\"http://www.stanleyparkbrewing.com\">www.stanleyparkbrewing.com</a>.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '3', '10'), ('30', 'BreweryPage', '2017-03-22 11:28:24', '2017-03-22 11:26:32', 'mt-begbie', 'Mt Begbie', null, '<p class=\"Body\">Brewing award winning craft beer in Revelstoke BC since 1996</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '2', '10'), ('31', 'BreweryPage', '2017-03-24 02:42:36', '2017-03-22 11:33:26', 'wards-cider', 'Wards Cider', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '3', '10'), ('32', 'VenuePage', '2017-03-25 13:21:22', '2017-03-23 21:25:58', 'the-market', 'The Market', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '4', '0'), ('33', 'VenuePage', '2017-03-24 19:33:09', '2017-03-23 22:02:55', 'happy-valley-moose-lounge', 'Happy Valley Moose Lounge', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '5', '0'), ('34', 'BreweryPage', '2017-03-23 22:12:50', '2017-03-23 22:10:29', 'arrowhead-brewing', 'Arrowhead Brewing', null, '<p>Arrowhead Brewing Company is a craft beer brewery located in Invermere, which is in between Radium and Fairmont, just two hours from Banff and 3 hours from Calgary, in the heart of the Columbia Valley, East Kootenay, British Columbia.</p><p>We brew and package all of our beer right here at Arrowhead. Customers can either enjoy a pint or a beer tasting flight here in our tap room, or take home 6 packs, bomber bottles or growlers.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '4', '33'), ('35', 'UserDefinedForm', '2017-03-24 00:26:06', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p> </p><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '9', '0'), ('36', 'BreweryPage', '2017-03-24 01:56:19', '2017-03-24 01:54:29', 'carlsberg', 'Carlsberg', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '2', '6'), ('37', 'BreweryPage', '2017-03-24 02:36:21', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '7', '8'), ('38', 'BreweryPage', '2017-03-24 03:00:38', '2017-03-24 02:51:12', 'longwood-brewery', 'Longwood Brewery', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '4', '33'), ('39', 'BreweryPage', '2017-03-25 02:15:04', '2017-03-24 19:41:46', 'vancouver-island-brewing', 'Vancouver Island Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '4', '32'), ('40', 'BreweryPage', '2017-03-24 19:46:38', '2017-03-24 19:42:35', 'red-truck-brewing', 'Red Truck Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '3', '32'), ('41', 'LeaderboardPage', '2017-03-25 00:51:47', '2017-03-25 00:51:26', 'favourite-beers-leaderboard', 'Favourite Beers Leaderboard', null, null, null, null, '1', '1', '13', '0', '0', null, 'Inherit', 'Inherit', '2', '0'), ('42', 'BreweryPage', '2017-03-25 13:27:22', '2017-03-25 13:25:02', 'tin-whistle-brewery', 'Tin Whistle Brewery', null, '<p><span>The Tin Whistle is a small micro brewery located in Penticton, BC. We brew beers that we like, and we hope that you\'ll like them too. We have five beers that we produce year round, and at any given time we may have an additional one or two seasonals. Our beers are available throughout BC and Alberta, on tap and in 650ml bottles. </span></p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '2', '10');
COMMIT;

-- ----------------------------
--  Table structure for `SiteTree_ViewerGroups`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `SiteTree_versions`
-- ----------------------------
DROP TABLE IF EXISTS `SiteTree_versions`;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','BreweryPage','LeaderboardPage','VenuePage','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `SiteTree_versions`
-- ----------------------------
BEGIN;
INSERT INTO `SiteTree_versions` VALUES ('1', '1', '1', '1', '0', '0', 'Page', '2017-03-19 01:16:50', '2017-03-19 01:16:50', 'home', 'Home', null, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '0'), ('2', '2', '1', '1', '0', '0', 'Page', '2017-03-19 01:16:51', '2017-03-19 01:16:51', 'about-us', 'About Us', null, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '0'), ('3', '3', '1', '1', '0', '0', 'Page', '2017-03-19 01:16:51', '2017-03-19 01:16:51', 'contact-us', 'Contact Us', null, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '0'), ('4', '4', '1', '1', '0', '0', 'ErrorPage', '2017-03-19 01:16:51', '2017-03-19 01:16:51', 'page-not-found', 'Page not found', null, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', null, null, '0', '0', '4', '0', '0', null, 'Inherit', 'Inherit', '0'), ('5', '5', '1', '1', '0', '0', 'ErrorPage', '2017-03-19 01:16:51', '2017-03-19 01:16:51', 'server-error', 'Server error', null, '<p>Sorry, there was a problem with handling your request.</p>', null, null, '0', '0', '5', '0', '0', null, 'Inherit', 'Inherit', '0'), ('6', '6', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:04:46', '2017-03-19 04:04:46', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '0'), ('7', '6', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:07:21', '2017-03-19 04:04:46', 'globe', 'Globe', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '0'), ('8', '6', '3', '1', '1', '1', 'VenuePage', '2017-03-19 04:13:36', '2017-03-19 04:04:46', 'globe', 'Globe', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '0'), ('9', '7', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:13:47', '2017-03-19 04:13:47', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '0'), ('10', '7', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:14:18', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '0'), ('11', '8', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:15:11', '2017-03-19 04:15:11', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('12', '8', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:15:29', '2017-03-19 04:15:11', 'blarney-stone', 'Blarney Stone', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('13', '9', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:15:44', '2017-03-19 04:15:44', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '8'), ('14', '9', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:16:09', '2017-03-19 04:15:44', 'black-diamond-bar-and-grill', 'Black Diamond Bar and Grill', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '8'), ('15', '9', '3', '0', '1', '0', 'VenuePage', '2017-03-19 04:16:17', '2017-03-19 04:15:44', 'black-diamond-bar-and-grill', 'Black Diamond Bar and Grill', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '0'), ('16', '9', '4', '1', '1', '1', 'VenuePage', '2017-03-19 04:16:17', '2017-03-19 04:15:44', 'black-diamond-bar-and-grill', 'Black Diamond Bar and Grill', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '0'), ('17', '10', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:16:29', '2017-03-19 04:16:29', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '9'), ('18', '10', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:16:51', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '9'), ('19', '10', '3', '0', '1', '0', 'VenuePage', '2017-03-19 04:16:57', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '0'), ('20', '10', '4', '1', '1', '1', 'VenuePage', '2017-03-19 04:16:57', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('21', '11', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:17:07', '2017-03-19 04:17:07', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '0'), ('22', '11', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:17:24', '2017-03-19 04:17:07', 'snowshoe-sams', 'Snowshoe Sam\'s', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '0'), ('23', '12', '1', '0', '1', '0', 'VenuePage', '2017-03-19 04:17:32', '2017-03-19 04:17:32', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '0'), ('24', '12', '2', '1', '1', '1', 'VenuePage', '2017-03-19 04:17:45', '2017-03-19 04:17:32', 'the-woods', 'The Woods', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '0'), ('25', '10', '5', '1', '1', '1', 'VenuePage', '2017-03-19 04:23:15', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('26', '11', '3', '1', '1', '1', 'VenuePage', '2017-03-19 04:23:22', '2017-03-19 04:17:07', 'snowshoe-sams', 'Snowshoe Sam\'s', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '0'), ('27', '6', '4', '1', '1', '1', 'VenuePage', '2017-03-19 06:37:09', '2017-03-19 04:04:46', 'globe', 'Globe', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '0'), ('28', '6', '5', '1', '1', '1', 'VenuePage', '2017-03-19 06:38:08', '2017-03-19 04:04:46', 'globe', 'Globe', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '0'), ('29', '13', '1', '0', '1', '0', 'BreweryPage', '2017-03-19 06:57:54', '2017-03-19 06:57:54', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '6'), ('30', '13', '2', '1', '1', '1', 'BreweryPage', '2017-03-19 07:01:16', '2017-03-19 06:57:54', 'kronenbourg', 'Kronenbourg', null, '<p>Founded in 1664 in Strasbourg by the Hatt family. Kronenbourg is the best known French beer and the 5<sup>th</sup> oldest beer brand in the world that still exists today. Only the best hops, the Strisselspalt, is used to brew 1664 and Kronenbourg Blanc.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '6'), ('31', '14', '1', '0', '1', '0', 'BreweryPage', '2017-03-19 07:04:33', '2017-03-19 07:04:33', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '6'), ('32', '14', '2', '1', '1', '1', 'BreweryPage', '2017-03-19 07:05:54', '2017-03-19 07:04:33', 'somersby', 'Somersby', null, '<p>Rumour has it that everything started with a nobleman by the name of Lord Somersby. As the father of many great discoveries, Lord Somersby became known for his legendary thirst for adventure and cider. Today the fruit of Lord Somersby’s larbour is enjoyed in 43 countries around the world.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '6'), ('33', '15', '1', '0', '1', '0', 'BreweryPage', '2017-03-19 07:24:45', '2017-03-19 07:24:45', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '6'), ('34', '15', '2', '1', '1', '1', 'BreweryPage', '2017-03-19 07:25:12', '2017-03-19 07:24:45', 'big-surf', 'Big Surf', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '6'), ('35', '16', '1', '0', '1', '0', 'BreweryPage', '2017-03-19 09:42:28', '2017-03-19 09:42:28', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '8'), ('36', '16', '2', '1', '1', '1', 'BreweryPage', '2017-03-19 09:45:47', '2017-03-19 09:42:28', 'tree-brewing', 'Tree Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '8'), ('37', '17', '1', '0', '1', '0', 'BreweryPage', '2017-03-19 10:00:55', '2017-03-19 10:00:55', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '7'), ('38', '17', '2', '1', '1', '2', 'BreweryPage', '2017-03-19 10:01:46', '2017-03-19 10:00:55', 'bna-brewing', 'BNA Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '7'), ('39', '18', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 09:32:34', '2017-03-22 09:32:34', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '6'), ('40', '18', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 09:33:33', '2017-03-22 09:32:34', 'prohibition-brewing-co', 'Prohibition Brewing Co.', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '6'), ('41', '19', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 09:41:54', '2017-03-22 09:41:54', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '6'), ('42', '19', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 09:44:37', '2017-03-22 09:41:54', 'freddys-brew-pub', 'Freddy\'s Brew Pub', null, null, null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '6'), ('43', '20', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 09:45:24', '2017-03-22 09:45:24', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '8'), ('44', '20', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 09:47:02', '2017-03-22 09:45:24', 'lonetree-cider-company', 'Lonetree Cider Company', null, '<p class=\"Body\">We are a small, BC-owned company, making cider the old fashioned way. We start with real BC apples from old-growth orchards, deep in the Okanagan Valley of British Columbia. Our authentic dry ciders are natural and real – from apples that are crushed and fermented, then filtered fresh clear and pure – much like a premium quality wine. We know you will taste the difference. </p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '8'), ('45', '21', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 09:48:33', '2017-03-22 09:48:33', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '8'), ('46', '21', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 09:51:41', '2017-03-22 09:48:33', 'postmark-brewing', 'Postmark Brewing', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '8'), ('47', '21', '3', '1', '1', '1', 'BreweryPage', '2017-03-22 09:52:45', '2017-03-22 09:48:33', 'postmark-brewing', 'Postmark Brewing', null, '<p>Postmark Brewing is a Vancouver, BC born and built craft brewery. Our West Coast lifestyle and love for great quality beers for every occasion led us to the design, development and brew of our favorite pints. Consistent quality is paramount as we strive to create beers that cater to not only our thirsty palate but to the active lifestyles we enjoy with our friends and colleagues. At Postmark Brewing we are inspired by more than just great tasting sessionable craft beers, we enjoy taking a collaborative approach towards our other passions in life including music, photography, travel, sport, design, events and especially those who are taking risks and making great things happen. Cheers!</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '8'), ('48', '22', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 09:55:48', '2017-03-22 09:55:48', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '12'), ('49', '22', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 09:59:37', '2017-03-22 09:55:48', 'steamworks', 'Steamworks', null, '<p>In 1995, when we first took hold of our historic Gastown brewpub location, we discovered that the building had a rare steam heat system. A remnant from forward thinkers of a century past.</p><p>Our brewmaster had only read of steam powered brewing, but had never seen a functional steam brewery. These are very rare indeed. We ventured forth, experimented, and created a one-of-a-kind steam generated brewery. The only one in Canada. To our pleasure, we found our test brews to be distinctively fresh and flavourful. For over 20 years, beer aficionados have been migrating to our Steamworks Brewpub for a taste of these unconventional beers. </p><p>In 2013 we opened our brewery and taproom in Burnaby, which only intensified our dedication to producing distinct and delicious beers. </p><p>Bottling, Kegging and Canning Tallboys, we\'re still brewing with the Power of Steam.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '12'), ('50', '23', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 10:15:26', '2017-03-22 10:15:26', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '12'), ('51', '23', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 10:20:04', '2017-03-22 10:15:26', 'lighthouse-brewing-co', 'Lighthouse Brewing Co.', null, '<p class=\"Body\">Lighthouse Brewing Company was founded in 1998 in Victoria BC. Since its inception, Lighthouse has focused on delivering big flavours from small batch, hand-crafted ales and lagers. Our motto is to brew excellent craft beer every day</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '12'), ('52', '23', '3', '1', '1', '1', 'BreweryPage', '2017-03-22 10:23:54', '2017-03-22 10:15:26', 'lighthouse-brewing-co', 'Lighthouse Brewing Co.', null, '<p class=\"Body\">Lighthouse Brewing Company was founded in 1998 in Victoria BC. Since its inception, Lighthouse has focused on delivering big flavours from small batch, hand-crafted ales and lagers. Our motto is to brew excellent craft beer every day</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '12'), ('53', '24', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 10:38:31', '2017-03-22 10:38:31', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '11'), ('54', '25', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 10:43:40', '2017-03-22 10:43:40', 'bna-brewing-2', 'BNA Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '7'), ('55', '25', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 10:43:51', '2017-03-22 10:43:40', 'bna-brewing-2', 'BNA Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '11'), ('56', '24', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 10:49:15', '2017-03-22 10:38:31', 'okanagan-spring', 'Okanagan Spring', null, '<p class=\"p1\"><span class=\"s1\">Quality. Best ingredients. Freshness. Full taste. It’s about the spirit of small batches made for local customers.</span><span class=\"s2\"> It’s about the discovery of different styles of beer and the care, attention and knowledge that goes into brewing each and every one of them. For all those who appreciate the craftsmanship that goes into making a great beer, we continue to deliver on our promise to brew exceptional ales and lagers that offer a distinctive taste and unsurpassed quality.</span></p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '11'), ('57', '25', '3', '1', '1', '1', 'BreweryPage', '2017-03-22 10:59:44', '2017-03-22 10:43:40', 'bna-brewing-2', 'BNA Brewing', null, '<div class=\"page\" title=\"Page 1\">\n<div class=\"layoutArea\">\n<div class=\"column\">\n<p><span>BNA Brewing Co. is located in the heart of Kelowna</span><span>’</span><span>s Cultural District. Opening our doors in June 2015, we</span><span>’</span><span>ve made it our mission to brew good beer and have fun doing it. </span></p>\n</div>\n</div>\n</div>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '11'), ('58', '26', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:00:06', '2017-03-22 11:00:06', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '11'), ('59', '26', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 11:03:18', '2017-03-22 11:00:06', 'firehall-brewery', 'Firehall Brewery', null, '<p>EXTINGUISH YOUR THIRST with the BEER of WINE COUNTRY! Nestled in the cavernous cellar beneath the \"Old Firehall\" on Main Street in Canada\'s Wine Capital, we pump out thirst-extinguishing ales with courageous flavour and alarming drinkability. The Beer Shop &amp; Social is open daily for tastings, tours, pints, socializing, live music, events, and retail sales. Firehall Brewery... rescuing maidens and men from bad beer since 2012.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '11'), ('60', '27', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:12:42', '2017-03-22 11:12:42', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '7'), ('61', '27', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 11:14:54', '2017-03-22 11:12:42', 'bad-tattoo', 'Bad Tattoo', null, '<p class=\"BodyA\">After six generations, Penticton is still our home and we’re proud to say our family still claims some of the best chefs, cicerones, entrepreneurs, accountants and passionate beer drinkers on the West Coast. Together, our mission is to craft the greatest beer we know how, sharing our passion for perfection and the flavours of the Okanagan Valley.</p><p class=\"Default\">Our team is a family. We’re proud of our history in Penticton and passionate about brewing great beer for our friends and fellow craft beer fans in BC. We know we’re a little bit crazy, but sometimes that’s what it takes to be the best. Our approach to making beer is influenced by our unrepentant pursuit for perfection. We work hard because we love what we do.</p><p class=\"Default\">Our beer is handcrafted in Penticton, using natural ingredients and no added preservatives. Our brewery is a serious operation. We built it from the ground up to give our brewmasters and guests the best spot in town to make and drink craft beer. Steps from the beach and a short drive from the ski hill, we’re the place to be for oven-fired pizza, fresh salads and of course, a great selection of beer.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '7'), ('62', '27', '3', '1', '1', '1', 'BreweryPage', '2017-03-22 11:16:54', '2017-03-22 11:12:42', 'bad-tattoo', 'Bad Tattoo', null, '<p class=\"BodyA\">After six generations, Penticton is still our home and we’re proud to say our family still claims some of the best chefs, cicerones, entrepreneurs, accountants and passionate beer drinkers on the West Coast. Together, our mission is to craft the greatest beer we know how, sharing our passion for perfection and the flavours of the Okanagan Valley.</p><p class=\"Default\">Our team is a family. We’re proud of our history in Penticton and passionate about brewing great beer for our friends and fellow craft beer fans in BC. We know we’re a little bit crazy, but sometimes that’s what it takes to be the best. Our approach to making beer is influenced by our unrepentant pursuit for perfection. We work hard because we love what we do.</p><p class=\"Default\">Our beer is handcrafted in Penticton, using natural ingredients and no added preservatives. Our brewery is a serious operation. We built it from the ground up to give our brewmasters and guests the best spot in town to make and drink craft beer. Steps from the beach and a short drive from the ski hill, we’re the place to be for oven-fired pizza, fresh salads and of course, a great selection of beer.</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '7'), ('63', '28', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:17:30', '2017-03-22 11:17:30', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '7'), ('64', '28', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 11:20:27', '2017-03-22 11:17:30', 'pacific-western-brewing-company', 'Pacific Western Brewing Company (Cariboo Brewing)', null, '<p class=\"Default\">Canada’s longest running, British Columbian-owned brewery was established in 1957 on a fresh water spring in Prince George, BC. Originally named Caribou Brewing, Pacific Western Brewing Company (PWB) has had seven owners over it’s storied past and achieved many milestones. Including, being the first Canadian brewer to export to mainland China in 1991 and then to Russia in 1996. Along the way these achievements have shaped the BC beer backbone for over fifty years.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '7'), ('65', '28', '3', '1', '1', '1', 'BreweryPage', '2017-03-22 11:23:06', '2017-03-22 11:17:30', 'pacific-western-brewing-company', 'Pacific Western Brewing Company (Cariboo Brewing)', null, '<p class=\"Default\">Canada’s longest running, British Columbian-owned brewery was established in 1957 on a fresh water spring in Prince George, BC. Originally named Caribou Brewing, Pacific Western Brewing Company (PWB) has had seven owners over it’s storied past and achieved many milestones. Including, being the first Canadian brewer to export to mainland China in 1991 and then to Russia in 1996. Along the way these achievements have shaped the BC beer backbone for over fifty years.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '7'), ('66', '29', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:24:43', '2017-03-22 11:24:43', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '10'), ('67', '29', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 11:25:19', '2017-03-22 11:24:43', 'mill-street-brewing', 'Mill Street Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '10'), ('68', '30', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:26:32', '2017-03-22 11:26:32', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '10'), ('69', '30', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 11:28:24', '2017-03-22 11:26:32', 'mt-begbie', 'Mt Begbie', null, '<p class=\"Body\">Brewing award winning craft beer in Revelstoke BC since 1996</p>', null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '10'), ('70', '31', '1', '0', '1', '0', 'BreweryPage', '2017-03-22 11:33:26', '2017-03-22 11:33:26', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '10'), ('71', '31', '2', '1', '1', '1', 'BreweryPage', '2017-03-22 12:03:51', '2017-03-22 11:33:26', 'the-view', 'The View', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '10'), ('72', '1', '2', '1', '1', '1', 'Page', '2017-03-23 15:46:25', '2017-03-19 01:16:50', 'home', 'Home', null, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', null, null, '0', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '0'), ('73', '28', '4', '1', '1', '1', 'BreweryPage', '2017-03-23 17:34:18', '2017-03-22 11:17:30', 'pacific-western-brewing-company', 'Pacific Western Brewing Company', null, '<p class=\"Default\">Canada’s longest running, British Columbian-owned brewery was established in 1957 on a fresh water spring in Prince George, BC. Originally named Caribou Brewing, Pacific Western Brewing Company (PWB) has had seven owners over it’s storied past and achieved many milestones. Including, being the first Canadian brewer to export to mainland China in 1991 and then to Russia in 1996. Along the way these achievements have shaped the BC beer backbone for over fifty years.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '7'), ('74', '8', '3', '1', '1', '1', 'VenuePage', '2017-03-23 21:25:12', '2017-03-19 04:15:11', 'the-blarney-stone', 'The Blarney Stone', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '0'), ('75', '6', '6', '1', '1', '1', 'VenuePage', '2017-03-23 21:25:24', '2017-03-19 04:04:46', 'globe-cafe', 'Globe Cafe', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '0'), ('76', '32', '1', '0', '1', '0', 'VenuePage', '2017-03-23 21:25:58', '2017-03-23 21:25:58', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('77', '7', '3', '1', '1', '1', 'VenuePage', '2017-03-23 21:42:50', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, null, null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '0'), ('78', '12', '3', '1', '1', '1', 'VenuePage', '2017-03-23 21:50:31', '2017-03-19 04:17:32', 'the-woods', 'The Woods', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '0'), ('79', '11', '4', '1', '1', '1', 'VenuePage', '2017-03-23 21:52:46', '2017-03-19 04:17:07', 'snowshoe-sams', 'Snowshoe Sam\'s', null, null, null, null, '1', '1', '9', '0', '0', null, 'Inherit', 'Inherit', '0'), ('80', '8', '4', '1', '1', '1', 'VenuePage', '2017-03-23 21:53:31', '2017-03-19 04:15:11', 'the-blarney-stone', 'The Blarney Stone', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '0'), ('81', '10', '6', '1', '1', '1', 'VenuePage', '2017-03-23 21:56:12', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('82', '32', '2', '1', '1', '1', 'VenuePage', '2017-03-23 21:57:07', '2017-03-23 21:25:58', 'the-market', 'The Market', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('83', '32', '3', '1', '1', '1', 'VenuePage', '2017-03-23 22:00:55', '2017-03-23 21:25:58', 'the-market', 'The Market', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('84', '33', '1', '0', '1', '0', 'VenuePage', '2017-03-23 22:02:55', '2017-03-23 22:02:55', 'new-venue-page', 'New Venue Page', null, null, null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('85', '33', '2', '1', '1', '1', 'VenuePage', '2017-03-23 22:03:47', '2017-03-23 22:02:55', 'moose-lounge', 'Moose Lounge', null, null, null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('86', '12', '4', '1', '1', '1', 'VenuePage', '2017-03-23 22:04:07', '2017-03-19 04:17:32', 'the-woods', 'The Woods', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '0'), ('87', '10', '7', '1', '1', '1', 'VenuePage', '2017-03-23 22:05:56', '2017-03-19 04:16:29', 'sessions-tap-house', 'Sessions Tap House', null, null, null, null, '1', '1', '8', '0', '0', null, 'Inherit', 'Inherit', '0'), ('88', '33', '3', '1', '1', '1', 'VenuePage', '2017-03-23 22:07:20', '2017-03-23 22:02:55', 'moose-lounge', 'Moose Lounge', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('89', '33', '4', '1', '1', '1', 'VenuePage', '2017-03-23 22:07:55', '2017-03-23 22:02:55', 'happy-valley-moose-lounge', 'Happy Valley Moose Lounge', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('90', '34', '1', '0', '1', '0', 'BreweryPage', '2017-03-23 22:10:29', '2017-03-23 22:10:29', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '33'), ('91', '34', '2', '1', '1', '1', 'BreweryPage', '2017-03-23 22:12:04', '2017-03-23 22:10:29', 'arrowhead-brewing', 'Arrowhead Brewing', null, '<p>Arrowhead Brewing Company is a craft beer brewery located in Invermere, which is in between Radium and Fairmont, just two hours from Banff and 3 hours from Calgary, in the heart of the Columbia Valley, East Kootenay, British Columbia.</p><p>We brew and package all of our beer right here at Arrowhead. Customers can either enjoy a pint or a beer tasting flight here in our tap room, or take home 6 packs, bomber bottles or growlers.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '33'), ('92', '34', '3', '1', '1', '1', 'BreweryPage', '2017-03-23 22:12:17', '2017-03-23 22:10:29', 'arrowhead-brewing', 'Arrowhead Brewing', null, '<p>Arrowhead Brewing Company is a craft beer brewery located in Invermere, which is in between Radium and Fairmont, just two hours from Banff and 3 hours from Calgary, in the heart of the Columbia Valley, East Kootenay, British Columbia.</p><p>We brew and package all of our beer right here at Arrowhead. Customers can either enjoy a pint or a beer tasting flight here in our tap room, or take home 6 packs, bomber bottles or growlers.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '33'), ('93', '34', '4', '1', '1', '1', 'BreweryPage', '2017-03-23 22:12:50', '2017-03-23 22:10:29', 'arrowhead-brewing', 'Arrowhead Brewing', null, '<p>Arrowhead Brewing Company is a craft beer brewery located in Invermere, which is in between Radium and Fairmont, just two hours from Banff and 3 hours from Calgary, in the heart of the Columbia Valley, East Kootenay, British Columbia.</p><p>We brew and package all of our beer right here at Arrowhead. Customers can either enjoy a pint or a beer tasting flight here in our tap room, or take home 6 packs, bomber bottles or growlers.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '33'), ('94', '29', '3', '1', '1', '1', 'BreweryPage', '2017-03-23 22:29:57', '2017-03-22 11:24:43', 'stanley-park-brewing', 'Stanley Park Brewing', null, '<p class=\"Default\">Every beer we make is a tasty tribute to Stanley Park and the experiences had within it. With a portfolio of balanced and approachable brews that incorporate BC inspired flavours, our brews are made for sharing. Stanley Park Brewing products are available for sale in retail stores and in many of your favourite pubs and restaurants across BC and AB. For more information and where to buy, visit <a href=\"http://www.stanleyparkbrewing.com\">www.stanleyparkbrewing.com</a>.</p>', null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '10'), ('95', '35', '1', '0', '1', '0', 'UserDefinedForm', '2017-03-23 23:30:29', '2017-03-23 23:30:29', 'new-user-defined-form', 'New User Defined Form', null, '$UserDefinedForm', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('96', '35', '2', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:31:00', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('97', '35', '3', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:49:11', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('98', '35', '4', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:50:45', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p> </p><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('99', '35', '5', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:54:12', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"510\" height=\"435\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today </h3><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('100', '35', '6', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:54:58', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"510\" height=\"435\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today </h3><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('101', '35', '7', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:55:44', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today </h3><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('102', '35', '8', '1', '1', '1', 'UserDefinedForm', '2017-03-23 23:56:00', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p> </p><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('103', '1', '3', '1', '1', '1', 'Page', '2017-03-24 00:01:19', '2017-03-19 01:16:50', 'home', 'Home', null, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', null, null, '0', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '0'), ('104', '7', '4', '1', '1', '1', 'VenuePage', '2017-03-24 00:18:41', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, '<div class=\"wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_bottom-to-top vc_custom_1475624426737 wpb_start_animation\">\n<div class=\"wpb_wrapper\">\n<h4><span>Local wine, cold beer and family friendly dining.</span></h4>\n</div>\n</div><div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p><span>Our menu changes with the seasons to showcase the natural flavours of our own backyard and celebrate the exciting events that occur throughout the holiday and ski season.</span></p>\n<p><span>Prepare your taste buds for some new and exciting tastes, along with some old classics.</span></p>\n<h2 style=\"text-align: center;\">WE’RE BACK</h2>\n<h3 style=\"text-align: center;\">Bigger, better and more delicious than ever</h3>\n<p><span><strong> </strong></span></p>\n</div>\n</div>', null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '0'), ('105', '7', '5', '1', '1', '1', 'VenuePage', '2017-03-24 00:19:13', '2017-03-19 04:13:47', 'the-bullwheel', 'The Bullwheel', null, '<div class=\"wpb_text_column wpb_content_element  wpb_animate_when_almost_visible wpb_bottom-to-top vc_custom_1475624426737 wpb_start_animation\">\n<div class=\"wpb_wrapper\">\n<h4><span>Local wine, cold beer and family friendly dining.</span></h4>\n</div>\n</div><div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p><span>Our menu changes with the seasons to showcase the natural flavours of our own backyard and celebrate the exciting events that occur throughout the holiday and ski season.</span></p>\n<p><span>Prepare your taste buds for some new and exciting tastes, along with some old classics.</span></p>\n<h3 style=\"text-align: center;\">WE’RE BACK</h3>\n<h5 style=\"text-align: center;\">Bigger, better and more delicious than ever</h5>\n<p><span><strong> </strong></span></p>\n</div>\n</div>', null, null, '1', '1', '5', '0', '0', null, 'Inherit', 'Inherit', '0'), ('106', '35', '9', '1', '1', '1', 'UserDefinedForm', '2017-03-24 00:26:06', '2017-03-23 23:30:29', 'enter-to-win', 'Enter to win', null, '<h3><img class=\"center\" style=\"max-width: 100%;\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></h3><h3>Enter to win a full case of your favourite “Ales &amp; Après” beer today</h3><p> </p><p>$UserDefinedForm</p>', null, null, '1', '1', '12', '0', '0', null, 'Inherit', 'Inherit', '0'), ('107', '36', '1', '0', '1', '0', 'BreweryPage', '2017-03-24 01:54:29', '2017-03-24 01:54:29', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '6'), ('108', '36', '2', '1', '1', '1', 'BreweryPage', '2017-03-24 01:56:19', '2017-03-24 01:54:29', 'carlsberg', 'Carlsberg', null, null, null, null, '1', '1', '6', '0', '0', null, 'Inherit', 'Inherit', '6'), ('109', '37', '1', '0', '1', '0', 'BreweryPage', '2017-03-24 02:00:20', '2017-03-24 02:00:20', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '6'), ('110', '37', '2', '1', '1', '1', 'BreweryPage', '2017-03-24 02:01:07', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, null, null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '6'), ('111', '37', '3', '1', '1', '1', 'BreweryPage', '2017-03-24 02:01:55', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '6'), ('112', '37', '4', '1', '1', '1', 'BreweryPage', '2017-03-24 02:03:00', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '6'), ('113', '37', '5', '0', '1', '0', 'BreweryPage', '2017-03-24 02:07:19', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '7'), ('114', '37', '6', '1', '1', '1', 'BreweryPage', '2017-03-24 02:07:19', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '7'), ('115', '37', '7', '1', '1', '1', 'BreweryPage', '2017-03-24 02:35:32', '2017-03-24 02:00:20', 'fuggles-and-warlock', 'Fuggles & Warlock', null, '<h2 class=\"mbr-section-title display-2\" style=\"text-align: center;\">\"Keeping Beer Weird\"</h2><p> </p><p> </p><p> </p><p> </p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '8'), ('116', '31', '3', '1', '1', '1', 'BreweryPage', '2017-03-24 02:42:36', '2017-03-22 11:33:26', 'wards-cider', 'Wards Cider', null, null, null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '10'), ('117', '38', '1', '0', '1', '0', 'BreweryPage', '2017-03-24 02:51:12', '2017-03-24 02:51:12', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '10'), ('118', '38', '2', '1', '1', '1', 'BreweryPage', '2017-03-24 02:58:00', '2017-03-24 02:51:12', 'longwood-brewery', 'Longwood Brewery', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '10'), ('119', '38', '3', '0', '1', '0', 'BreweryPage', '2017-03-24 03:00:34', '2017-03-24 02:51:12', 'longwood-brewery', 'Longwood Brewery', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '33'), ('120', '38', '4', '1', '1', '1', 'BreweryPage', '2017-03-24 03:00:34', '2017-03-24 02:51:12', 'longwood-brewery', 'Longwood Brewery', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '33'), ('121', '26', '3', '0', '1', '0', 'BreweryPage', '2017-03-24 03:02:21', '2017-03-22 11:00:06', 'firehall-brewery', 'Firehall Brewery', null, '<p>EXTINGUISH YOUR THIRST with the BEER of WINE COUNTRY! Nestled in the cavernous cellar beneath the \"Old Firehall\" on Main Street in Canada\'s Wine Capital, we pump out thirst-extinguishing ales with courageous flavour and alarming drinkability. The Beer Shop &amp; Social is open daily for tastings, tours, pints, socializing, live music, events, and retail sales. Firehall Brewery... rescuing maidens and men from bad beer since 2012.</p>', null, null, '1', '1', '3', '0', '0', null, 'Inherit', 'Inherit', '6'), ('122', '26', '4', '1', '1', '1', 'BreweryPage', '2017-03-24 03:02:21', '2017-03-22 11:00:06', 'firehall-brewery', 'Firehall Brewery', null, '<p>EXTINGUISH YOUR THIRST with the BEER of WINE COUNTRY! Nestled in the cavernous cellar beneath the \"Old Firehall\" on Main Street in Canada\'s Wine Capital, we pump out thirst-extinguishing ales with courageous flavour and alarming drinkability. The Beer Shop &amp; Social is open daily for tastings, tours, pints, socializing, live music, events, and retail sales. Firehall Brewery... rescuing maidens and men from bad beer since 2012.</p>', null, null, '1', '1', '7', '0', '0', null, 'Inherit', 'Inherit', '6'), ('123', '33', '5', '1', '2', '2', 'VenuePage', '2017-03-24 19:33:09', '2017-03-23 22:02:55', 'happy-valley-moose-lounge', 'Happy Valley Moose Lounge', null, null, null, null, '1', '1', '11', '0', '0', null, 'Inherit', 'Inherit', '0'), ('124', '39', '1', '0', '2', '0', 'BreweryPage', '2017-03-24 19:41:46', '2017-03-24 19:41:46', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '32'), ('125', '39', '2', '1', '2', '2', 'BreweryPage', '2017-03-24 19:42:26', '2017-03-24 19:41:46', 'granville-island-brewing', 'Granville Island Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '32'), ('126', '40', '1', '0', '2', '0', 'BreweryPage', '2017-03-24 19:42:35', '2017-03-24 19:42:35', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '32'), ('127', '40', '2', '1', '2', '2', 'BreweryPage', '2017-03-24 19:42:50', '2017-03-24 19:42:35', 'red-truck-brewing', 'Red Truck Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '32'), ('128', '39', '3', '1', '2', '2', 'BreweryPage', '2017-03-24 19:44:43', '2017-03-24 19:41:46', 'granville-island-brewing', 'Granville Island Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '32'), ('129', '40', '3', '1', '2', '2', 'BreweryPage', '2017-03-24 19:46:38', '2017-03-24 19:42:35', 'red-truck-brewing', 'Red Truck Brewing', null, null, null, null, '1', '1', '2', '0', '0', null, 'Inherit', 'Inherit', '32'), ('130', '41', '1', '0', '1', '0', 'LeaderboardPage', '2017-03-25 00:51:26', '2017-03-25 00:51:26', 'new-leaderboard-page', 'New Leaderboard Page', null, null, null, null, '1', '1', '13', '0', '0', null, 'Inherit', 'Inherit', '0'), ('131', '41', '2', '1', '1', '1', 'LeaderboardPage', '2017-03-25 00:51:47', '2017-03-25 00:51:26', 'favourite-beers-leaderboard', 'Favourite Beers Leaderboard', null, null, null, null, '1', '1', '13', '0', '0', null, 'Inherit', 'Inherit', '0'), ('132', '39', '4', '1', '1', '1', 'BreweryPage', '2017-03-25 02:15:04', '2017-03-24 19:41:46', 'vancouver-island-brewing', 'Vancouver Island Brewing', null, null, null, null, '1', '1', '1', '0', '0', null, 'Inherit', 'Inherit', '32'), ('133', '32', '4', '1', '1', '1', 'VenuePage', '2017-03-25 13:21:22', '2017-03-23 21:25:58', 'the-market', 'The Market', null, null, null, null, '1', '1', '10', '0', '0', null, 'Inherit', 'Inherit', '0'), ('134', '42', '1', '0', '1', '0', 'BreweryPage', '2017-03-25 13:25:02', '2017-03-25 13:25:02', 'new-brewery-page', 'New Brewery Page', null, null, null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '10'), ('135', '42', '2', '1', '1', '1', 'BreweryPage', '2017-03-25 13:27:22', '2017-03-25 13:25:02', 'tin-whistle-brewery', 'Tin Whistle Brewery', null, '<p><span>The Tin Whistle is a small micro brewery located in Penticton, BC. We brew beers that we like, and we hope that you\'ll like them too. We have five beers that we produce year round, and at any given time we may have an additional one or two seasonals. Our beers are available throughout BC and Alberta, on tap and in 650ml bottles. </span></p>', null, null, '1', '1', '4', '0', '0', null, 'Inherit', 'Inherit', '10');
COMMIT;

-- ----------------------------
--  Table structure for `SubmittedFileField`
-- ----------------------------
DROP TABLE IF EXISTS `SubmittedFileField`;
CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `SubmittedForm`
-- ----------------------------
DROP TABLE IF EXISTS `SubmittedForm`;
CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedForm') CHARACTER SET utf8 DEFAULT 'SubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SubmittedForm`
-- ----------------------------
BEGIN;
INSERT INTO `SubmittedForm` VALUES ('4', 'SubmittedForm', '2017-03-25 15:25:53', '2017-03-25 15:25:53', '0', '35'), ('5', 'SubmittedForm', '2017-03-25 23:32:54', '2017-03-25 23:32:54', '0', '35'), ('6', 'SubmittedForm', '2017-03-26 07:51:48', '2017-03-26 07:51:48', '0', '35');
COMMIT;

-- ----------------------------
--  Table structure for `SubmittedFormField`
-- ----------------------------
DROP TABLE IF EXISTS `SubmittedFormField`;
CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SubmittedFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `SubmittedFormField`
-- ----------------------------
BEGIN;
INSERT INTO `SubmittedFormField` VALUES ('13', 'SubmittedFormField', '2017-03-25 15:25:53', '2017-03-25 15:25:53', 'EditableTextField_659db', 'Richard  noakes', 'Name', '4'), ('14', 'SubmittedFormField', '2017-03-25 15:25:53', '2017-03-25 15:25:53', 'EditableTextField_75566', 'Richard.noakes@formashape.com', 'Email', '4'), ('15', 'SubmittedFormField', '2017-03-25 15:25:53', '2017-03-25 15:25:53', 'EditableTextField_2dc09', '2508261730', 'Phone', '4'), ('16', 'SubmittedFormField', '2017-03-25 15:25:53', '2017-03-25 15:25:53', 'EditableTextField_8bb77', 'kelowna', 'Home town', '4'), ('17', 'SubmittedFormField', '2017-03-25 15:25:53', '2017-03-25 15:25:53', 'EditableTextField_c91f5', 'Yes', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', '4'), ('18', 'SubmittedFormField', '2017-03-25 23:32:54', '2017-03-25 23:32:54', 'EditableTextField_659db', 'Shereen abbas', 'Name', '5'), ('19', 'SubmittedFormField', '2017-03-25 23:32:54', '2017-03-25 23:32:54', 'EditableTextField_75566', 'shereenfabbas@gmail.com', 'Email', '5'), ('20', 'SubmittedFormField', '2017-03-25 23:32:54', '2017-03-25 23:32:54', 'EditableTextField_2dc09', '2508597161', 'Phone', '5'), ('21', 'SubmittedFormField', '2017-03-25 23:32:54', '2017-03-25 23:32:54', 'EditableTextField_8bb77', 'Kelowna', 'Home town', '5'), ('22', 'SubmittedFormField', '2017-03-25 23:32:54', '2017-03-25 23:32:54', 'EditableTextField_c91f5', 'Yes', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', '5'), ('23', 'SubmittedFormField', '2017-03-26 07:51:48', '2017-03-26 07:51:48', 'EditableTextField_659db', 'Nikki Lawrence', 'Name', '6'), ('24', 'SubmittedFormField', '2017-03-26 07:51:48', '2017-03-26 07:51:48', 'EditableTextField_75566', 'nikkilawrence@hotmail.com', 'Email', '6'), ('25', 'SubmittedFormField', '2017-03-26 07:51:48', '2017-03-26 07:51:48', 'EditableTextField_2dc09', '250-212-6774', 'Phone', '6'), ('26', 'SubmittedFormField', '2017-03-26 07:51:48', '2017-03-26 07:51:48', 'EditableTextField_8bb77', 'Kelowna', 'Home town', '6'), ('27', 'SubmittedFormField', '2017-03-26 07:51:48', '2017-03-26 07:51:48', 'EditableTextField_c91f5', 'Yes', 'I am interested in finding out if I have won BEER, receiving any further info, special offers or event details from the breweries featured at Ales & Après', '6');
COMMIT;

-- ----------------------------
--  Table structure for `UserDefinedForm`
-- ----------------------------
DROP TABLE IF EXISTS `UserDefinedForm`;
CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `UserDefinedForm`
-- ----------------------------
BEGIN;
INSERT INTO `UserDefinedForm` VALUES ('35', 'Enter now', null, '<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></p><p>Thank-you for entering to win a case of your favourite beer from <strong><em>Ales &amp; Après</em></strong>.</p>', '0', '0', '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `UserDefinedForm_EmailRecipient`
-- ----------------------------
DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipient`;
CREATE TABLE `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipient') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipient',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `EmailBodyHtml` mediumtext CHARACTER SET utf8,
  `EmailTemplate` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomRulesCondition` enum('And','Or') CHARACTER SET utf8 DEFAULT 'And',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `UserDefinedForm_EmailRecipientCondition`
-- ----------------------------
DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipientCondition`;
CREATE TABLE `UserDefinedForm_EmailRecipientCondition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipientCondition') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipientCondition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `ConditionValue` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `UserDefinedForm_Live`
-- ----------------------------
DROP TABLE IF EXISTS `UserDefinedForm_Live`;
CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `UserDefinedForm_Live`
-- ----------------------------
BEGIN;
INSERT INTO `UserDefinedForm_Live` VALUES ('35', 'Enter now', null, '<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></p><p>Thank-you for entering to win a case of your favourite beer from <strong><em>Ales &amp; Après</em></strong>.</p>', '0', '0', '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `UserDefinedForm_versions`
-- ----------------------------
DROP TABLE IF EXISTS `UserDefinedForm_versions`;
CREATE TABLE `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `UserDefinedForm_versions`
-- ----------------------------
BEGIN;
INSERT INTO `UserDefinedForm_versions` VALUES ('1', '35', '1', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('2', '35', '2', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('3', '35', '3', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('4', '35', '4', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('5', '35', '5', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('6', '35', '6', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('7', '35', '7', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('8', '35', '8', null, null, '<p>Thanks, we\'ve received your submission.</p>', '0', '0', '0', '0', '0', '0', '0'), ('9', '35', '9', 'Enter now', null, '<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/case-of-beer.jpg\" alt=\"case of beer\" width=\"100%\" height=\"auto\"></p><p>Thank-you for entering to win a case of your favourite beer from <strong><em>Ales &amp; Après</em></strong>.</p>', '0', '0', '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `VenuePage`
-- ----------------------------
DROP TABLE IF EXISTS `VenuePage`;
CREATE TABLE `VenuePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `GoogleMapCode` mediumtext CHARACTER SET utf8,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `VenueLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VenueLogoID` (`VenueLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `VenuePage`
-- ----------------------------
BEGIN;
INSERT INTO `VenuePage` VALUES ('6', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1289.723216483821!2d-118.93004858674016!3d49.72122251836035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb633b36892da203!2sGlobe+Cafe+%26+Tapas+Bar!5e0!3m2!1sen!2sca!4v1489865804183\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '5'), ('7', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8506686489727!2d-118.92616474808652!3d49.72204619345921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305309040\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '6'), ('8', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '7'), ('10', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8631397171973!2d-118.93128336579883!3d49.72110720814475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306734095\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '9'), ('11', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8582918124155!2d-118.92850631655651!3d49.72147222344534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305926446\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '10'), ('12', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8479510318912!2d-118.92617011250454!3d49.7222508095276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305807581\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '11'), ('32', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '100'), ('33', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.9082266274415!2d-118.92124903324594!3d49.71771236636173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306821851\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '88');
COMMIT;

-- ----------------------------
--  Table structure for `VenuePage_Live`
-- ----------------------------
DROP TABLE IF EXISTS `VenuePage_Live`;
CREATE TABLE `VenuePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `GoogleMapCode` mediumtext CHARACTER SET utf8,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `VenueLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VenueLogoID` (`VenueLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `VenuePage_Live`
-- ----------------------------
BEGIN;
INSERT INTO `VenuePage_Live` VALUES ('6', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1289.723216483821!2d-118.93004858674016!3d49.72122251836035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb633b36892da203!2sGlobe+Cafe+%26+Tapas+Bar!5e0!3m2!1sen!2sca!4v1489865804183\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '5'), ('7', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8506686489727!2d-118.92616474808652!3d49.72204619345921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305309040\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '6'), ('8', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '7'), ('10', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8631397171973!2d-118.93128336579883!3d49.72110720814475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306734095\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '9'), ('11', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8582918124155!2d-118.92850631655651!3d49.72147222344534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305926446\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '10'), ('12', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8479510318912!2d-118.92617011250454!3d49.7222508095276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305807581\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '11'), ('32', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '100'), ('33', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.9082266274415!2d-118.92124903324594!3d49.71771236636173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306821851\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '88');
COMMIT;

-- ----------------------------
--  Table structure for `VenuePage_versions`
-- ----------------------------
DROP TABLE IF EXISTS `VenuePage_versions`;
CREATE TABLE `VenuePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `GoogleMapCode` mediumtext CHARACTER SET utf8,
  `LogoType` enum('Horizontal','Square') CHARACTER SET utf8 DEFAULT 'Horizontal',
  `VenueLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `VenueLogoID` (`VenueLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `VenuePage_versions`
-- ----------------------------
BEGIN;
INSERT INTO `VenuePage_versions` VALUES ('1', '6', '1', null, null, null, 'Horizontal', '0'), ('2', '6', '2', null, null, null, 'Horizontal', '0'), ('3', '6', '3', null, null, null, 'Horizontal', '5'), ('4', '7', '1', null, null, null, 'Horizontal', '0'), ('5', '7', '2', null, null, null, 'Horizontal', '6'), ('6', '8', '1', null, null, null, 'Horizontal', '0'), ('7', '8', '2', null, null, null, 'Horizontal', '7'), ('8', '9', '1', null, null, null, 'Horizontal', '0'), ('9', '9', '2', null, null, null, 'Horizontal', '8'), ('10', '9', '3', null, null, null, 'Horizontal', '8'), ('11', '9', '4', null, null, null, 'Horizontal', '8'), ('12', '10', '1', null, null, null, 'Horizontal', '0'), ('13', '10', '2', null, null, null, 'Horizontal', '9'), ('14', '10', '3', null, null, null, 'Horizontal', '9'), ('15', '10', '4', null, null, null, 'Horizontal', '9'), ('16', '11', '1', null, null, null, 'Horizontal', '0'), ('17', '11', '2', null, null, null, 'Horizontal', '10'), ('18', '12', '1', null, null, null, 'Horizontal', '0'), ('19', '12', '2', null, null, null, 'Horizontal', '11'), ('20', '10', '5', null, null, null, 'Square', '9'), ('21', '11', '3', null, null, null, 'Square', '10'), ('22', '6', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1289.723216483821!2d-118.93004858674016!3d49.72122251836035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb633b36892da203!2sGlobe+Cafe+%26+Tapas+Bar!5e0!3m2!1sen!2sca!4v1489865804183\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '5'), ('23', '6', '5', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1289.723216483821!2d-118.93004858674016!3d49.72122251836035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb633b36892da203!2sGlobe+Cafe+%26+Tapas+Bar!5e0!3m2!1sen!2sca!4v1489865804183\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '5'), ('24', '8', '3', null, null, null, 'Horizontal', '7'), ('25', '6', '6', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1289.723216483821!2d-118.93004858674016!3d49.72122251836035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfb633b36892da203!2sGlobe+Cafe+%26+Tapas+Bar!5e0!3m2!1sen!2sca!4v1489865804183\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '5'), ('26', '32', '1', null, null, null, 'Horizontal', '0'), ('27', '7', '3', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8506686489727!2d-118.92616474808652!3d49.72204619345921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305309040\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '6'), ('28', '12', '3', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8479510318912!2d-118.92617011250454!3d49.7222508095276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305807581\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '11'), ('29', '11', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8582918124155!2d-118.92850631655651!3d49.72147222344534!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305926446\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '10'), ('30', '8', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '7'), ('31', '10', '6', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '9'), ('32', '32', '2', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '0'), ('33', '32', '3', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '59'), ('34', '33', '1', null, null, null, 'Horizontal', '0'), ('35', '33', '2', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '60'), ('36', '12', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8479510318912!2d-118.92617011250454!3d49.7222508095276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305807581\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '11'), ('37', '10', '7', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8631397171973!2d-118.93128336579883!3d49.72110720814475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306734095\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Square', '9'), ('38', '33', '3', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.9082266274415!2d-118.92124903324594!3d49.71771236636173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306821851\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '60'), ('39', '33', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.9082266274415!2d-118.92124903324594!3d49.71771236636173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306821851\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '60'), ('40', '7', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8506686489727!2d-118.92616474808652!3d49.72204619345921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305309040\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '6'), ('41', '7', '5', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8506686489727!2d-118.92616474808652!3d49.72204619345921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305309040\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '6'), ('42', '33', '5', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.9082266274415!2d-118.92124903324594!3d49.71771236636173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490306821851\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '88'), ('43', '32', '4', null, null, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d644.8622300729702!2d-118.9294772762199!3d49.7211756985141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1490305984388\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Horizontal', '100');
COMMIT;

-- ----------------------------
--  Table structure for `VirtualPage`
-- ----------------------------
DROP TABLE IF EXISTS `VirtualPage`;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `VirtualPage_Live`
-- ----------------------------
DROP TABLE IF EXISTS `VirtualPage_Live`;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `VirtualPage_versions`
-- ----------------------------
DROP TABLE IF EXISTS `VirtualPage_versions`;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
