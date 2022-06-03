-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 04:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papyrist`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `Id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL,
  `ImagePost` varchar(300) NOT NULL,
  `TimePost` varchar(100) NOT NULL,
  `TitlePost` varchar(255) NOT NULL,
  `ContentPost` text NOT NULL,
  `StatusPost` tinyint(4) NOT NULL DEFAULT 0,
  `CreateAt` datetime NOT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `ImagePost`, `TimePost`, `TitlePost`, `ContentPost`, `StatusPost`, `CreateAt`, `UpdatedAt`) VALUES
(1, './Assets/Images/Post1.jpg', 'Sep 30, 2021 Science and Technology', 'Started in India, Amazon Future Engineer Programme', 'On September 27, 2021, E-commerce titan, Amazon India, declared the start of “Amazon Future Engineer” in India. Amazon Future is its global computer science education program.\r\n\r\nAccording to the organization, Amazon\'s forthcoming business will facilitate an introduction to quality computer science education and work openings for undergraduates from underrepresented and underserved populations.\r\nThroughout the initial year of its start, Amazon strives to facilitate and present training possibilities to around 1 lakh learners from 900 government and aided schools in 7 states of India.\r\nPurpose of the program\r\nAmazon Future Engineer program was started to approach the way by leading fresh exposure and introduction to computer science education to students utilizing in-person, online, and blended studying forms.\r\n\r\nWho is cooperating with Amazon?\r\nAmazon is operating in collaboration with its global knowledge partner Code.org which is a global non-profit association devoted to computer science education.\r\n\r\nThe curriculum of the program\r\nRegarding the regional differences, the curriculum has been set up for the Indian teacher and student population over government school environments. It will allow students with coding fundamentals simultaneously with the future-focused tech areas like Artificial Intelligence, Natural Language Processing (Voice Technology) in Indian languages, and Machine Learning.\r\n\r\nWho will be included under it?\r\nAmazon Future Engineer Programme will allow learners from underserved areas in India, that suffer excessive obstacles to education, especially in computer science, right exposure & convenience to quality computer science education, to understand it. This program will produce a Computer Science curriculum closer to all pupils in the words of their selection.\r\n\r\nP.C.- SME Khabar Articles', 1, '2022-04-12 07:49:50', NULL),
(2, './Assets/Images/Post2.jpg', 'Sep 29, 2021 People\'s Welfare', 'Amrit Grand Challenge Program', 'The “Amrit Grand Challenge Programme” identified as “जनCARE” was directed by Union Minister of State (Independent Charge) Science & Technology, Dr. Jitendra Singh, on September 28, 2021.\r\n\r\nThe plan will recognize 75 Start-Up Innovations in Telemedicine, Digital Health, BlockChain, mHealth with BIG Data, Artificial intelligence, and different technologies. The start of the Grand Challenge matches with the Azadi Ka Amrit Mahotsav and has grown further necessary for Young startups and business people to grow out with Innovative Ideas and Solutions for healthcare hurdles in India. Below this action, 75 Best Chosen Start-ups will be an asset for India to manage in the next 25 years.\r\n\r\nTenth Biotech Innovators Meet\r\n10th Biotech Innovators Meet got established following the theme- “Vigyan se Vikas” by Biotechnology Industry Research Assistance Council (BIRAC) in New Delhi. Whereas marking the occasion, Dr. Jitendra Singh vowed to render complete assistance to Startups from ideation to deployment platform. He led the BIRAC to proactively move out to Young startups to encourage and assist them. As per him, Young promising Innovations will receive preference concerning cooperation, assistance, and hand-holding than the organized industrial hearts.\r\n\r\nIndia’s Bio-Economy\r\nBio-Economy in our Country is on its route to achieve a 150-billion-dollar mark plus will provide completely to Prime Minister Narendra Modi’s idea of a 5 trillion-dollar economy by 2024-25. Sunshine Biotech Sector is further estimated to convert higher than duplicate from the current 70 billion dollars to 150 billion dollars by 2025.\r\n\r\nGrant of BIRAC in Bio-Economy\r\nBIRAC has set up sixty world-class Bio-incubators in India. It recently reserves with more than 5000 Startups and youthful organizers.\r\n\r\nP.C. - Business Standard', 1, '2022-04-12 07:49:50', NULL),
(3, './Assets/Images/Post3.jpg', 'Sep 29, 2021', 'World Maritime Day 2021', 'The world Maritime day gets recognized every year, on the last Thursday of September month and this year it will get recognized on 30th September.\r\n\r\nWorld Maritime Day was originally recognized in 1978. World Maritime Day is recognized to acknowledge the significance of marine commerce plus to emphasize the significance of naval defense, marine safety, marine ecosystem, and transportation. The event additionally indicates the time of adoption of the International Maritime Organisation (IMO) conference. IMO got chosen in 1958. \r\n\r\nHow this event is marked?\r\nIn India, International Maritime Day is celebrated by preparing an “awards ceremony” each time. It is designed to identify the offering presented by organs of the Indian Maritime industry in the preceding twelve months. During the year 2021, the occasion will focus on a global organization that was directed on World Maritime Day in South Africa. Throughout the event, trade influencers will gather for raising consciousness concerning the central subjects for those in the seafaring area.\r\n\r\nRegarding World Maritime Day\r\nWorld Maritime Day is a yearly festival, which got established by the United Nations (UN) in partnership with the International Maritime Organisation (IMO). The festival marks the offering which the marine business advances to the global market. Without global shipment of stocks, aided by the marine trade, the global market would be incapable to perform. Nevertheless, this factor is ignored by numerous. Nevertheless, World Maritime Day is designed to discuss this issue.\r\n\r\nSetting\r\nWorld Maritime Day was initially recognized on March 17, 1978, to evaluate the 20th anniversary of the founding of IMO. Following its inception, IMO organs nations have developed from initial 21 to 167. IMO presently includes all primary nations that are included in the maritime industry.\r\n\r\nThe theme of World Maritime Day 2021\r\nThe IMO will celebrate the event following the theme- “Seafarers: At the Core of Shipping’s Future”.\r\n\r\nP.C. - The World Economic Forum', 1, '2022-04-12 07:49:50', NULL),
(4, './Assets/Images/Post4.jpg', 'Sep 28, 2021', 'NCW directs training Plans for Women in Dairy Farming', 'National Commission for Women (NCW) began a national education and capacity-building plan for women in dairy farming.\r\n\r\nTo start the education program, NCW is cooperating with agrarian academies in India to recognize and encourage women operating in the realm of dairy farming and associated actions in particular like utility improvement, character enrichment, and packaging & purchasing of dairy commodities.\r\n\r\nThe initial program under this scheme was established on ”Value Added Dairy products” at Lala Lajpat Rai University of Veterinary & Animal Sciences in Hisar for women\'s self-help organizations. It was created in collaboration with the Haryana State Rural Livelihood Mission.\r\n\r\nWhy this plan was started?\r\n\r\nThis program was started as a result of women in rural India getting engaged in each piece of dairy farming although they have not achieved economic freedom. Therefore, this scheme was begun with the intention of empower women and assist them in attaining economic sovereignty.\r\n\r\nHow economic sovereignty would be guaranteed?\r\n\r\nThis scheme attempts to support women in gaining economic sovereignty by encouraging them in perspectives like quality improvement of dairy products, value addition, packaging and marketing of their commodities, and extending the counter-life of goods.\r\n\r\nNational Commission for Women (NCW)\r\n\r\nNCW is the sanctioned organization that guides the state on all administration affairs linked to women. The organization was authorized on January 31, 1992, under the provisions of the Indian Constitution. It was created by an order named National Commission for Women Act, 1990.\r\n\r\nP.C. - Drink-Milk.com', 1, '2022-04-12 07:49:50', NULL),
(5, './Assets/Images/Post5.jpg', 'Sep 27, 2021', 'Interactive digital airspace map for drone operations released', 'Ministry of Civil Aviation published an “interactive digital airspace map” for flying drones that separate areas into separate zones for flying drones over India.\r\n\r\nZones for flying drones also incorporate yellow and red zones. The announcement of this plan is within the order of the revised drone laws that got stated on assumptions of self-certification and non-intrusive monitoring of the projects. The airspace plan can get changed according to the time by approved items. Following the drone laws, that stood published on August 25, 2021, many authorities have been done away with. The number of information needed has been decreased from 25 to 5. Examples of fees have also been drastically decreased from 74 to 4.\r\n\r\nZones of flying drone\r\nTo fly the drone and for drone operations, an interactive digital airspace plan separates the zones into 3 sections specifically, green, yellow, and red.\r\nThe Green Zone is the airspace up to 400 feet. This zone has not been chosen as a red or yellow zone.\r\nThe yellow zone is the airspace above 400 feet in the designated green zone.\r\nThe red zone is the region inside which drones can be performed with the support of the central government.\r\nImportance of Drones\r\nDrones allow various advantages to all quarters of the administration, involving agriculture, infrastructure, mining, inspection, crisis response, geo-spatial mapping, transport, security, and law implementation, etc. Drones can also be important producers of employment and economic increase as of their range, versatility, and comfort of usage.\r\n\r\nIndia’s potential as a drone hub\r\nRegarding the established powers of India in innovation, information technology, frugal engineering, and enormous domestic demand, it has the strength to grow a global drone hub, by 2030.\r\n\r\nP.C. - The Jerusalem Post', 1, '2022-04-12 07:49:50', NULL),
(6, './Assets/Images/Post6.jpg', 'Sep 24, 2021', 'UNICEF’s ‘Fed to Fail?’ Report- Highlights', 'UNICEF delivered its latest article titled “Fed to Fail? The crisis of children’s diets in early life” on September 23, 2021.\r\n\r\nAs per the release, Kids below 2 years of age are not receiving the meals or nutrients they require to grow and develop well. This is commencing to immutable developmental impairment.\r\nThe release signals that increasing scarcity, struggle, imbalance, climate-related emergencies, and wellness accidents like the COVID-19 pandemic, are adding to the nutrition crisis within those children.\r\nInadequate nutritional consumption in the initial 2 years of life can wreck the immediately developing body parts and minds of the kids. It further affects their education, job possibilities, and futures. Although there has been limited improvement towards contributing the proper sort of nutritious and protected meals for them.\r\nWhile examining 91 nations, the record obtains that, half of the children under 6-23 months of age are receiving the lowest prescribed amount of feeds in a day.\r\nO1/3rd of the children spend the smallest amount of food combinations they require to develop.\r\nResult of Covid-19\r\nCOVID-19 pandemic remains to disturb the primary co-operations and is pushing more households into poverty. As per the report, the pandemic is also striking how households serve their children. In various nations, parents were compelled to decrease the buying of nutritious meals. Due to this, the rate of children eating the lowest prescribed quantity of meals groups decreased by a 3rd in 2020 as contrasted to 2018.\r\n\r\nVulnerability of Children\r\nChildren aged below 2 are severely exposed to every sort of malnutrition like wasting, stunting, micronutrient insufficiencies, overweight, and obesity. As per UNICEF estimations, larger than 1/2nd of children aged below five are unsafe to wasting, globally.\r\n\r\nP.C.: Raising Children Network', 1, '2022-04-12 07:49:50', NULL),
(7, './Assets/Images/Post7.jpg', 'Sep 28, 2021', 'Gulab Cyclone', 'Formed in the Bay of Bengal, this Cyclone, which is given the title “Gulab” by Pakistan, is likely to hit the eastern coast of India.  \r\n\r\nHow are the cyclones formed?\r\n\r\nCyclones are created overhead the marine water in the tropical area. In this area, the sunshine is extreme which leads to in hotness of soil and ocean surface. Because of the hotness of the oceanic water, the heated moistened wind overhead the sea rises upwards following which cool wind races in to supply the void, they also get heated and grows upward— the cycle proceeds.\r\n\r\nBut what generates the spin?\r\n\r\nThe breeze constantly flows from high pressure to low-pressure regions. High-pressure zones are formed in the cool zone whereas low is created in the warm areas. Glacial areas are high-pressure fields as the quantity of sunshine here is more limited than in the hot zone. Therefore, the breeze flows from frozen areas to tropic ranges.\r\n\r\nThen reaches the Earth’s movement, which is westward to eastward. The Earth’s circumrotation on its axis creates deflection of the breeze (in the tropic area as the velocity of spinning of Earth is higher correlated to frozen surfaces due to its globular frame — waving from both the frozen zones. Wind originating from the Arctic is diverted to the right while the Antarctic breeze diverts to the left-hand side.\r\nTherefore, the breeze is previously departing in a direction. However, if it arrives at a more heated area, a cold breeze begins growing drawn to the core to fulfilling the gap. So while running to the middle, the cold breeze keeps becoming diverted happening in the rotation of breeze move — this manner remains until the cyclone kicks the ground.\r\n What occurs when a cyclone connects the ground?\r\n\r\nCyclone disappears when it catches the ground as the heated water that rises and builds space for cold water is no longer possible on the ground. Additionally, the humid breeze that grows up makes clouds starting to showers that bring gusting breezes throughout cyclones.\r\n\r\nP.C. - The Weather Channel', 1, '2022-04-12 07:49:50', NULL),
(8, './Assets/Images/Post8.jpg', 'Sep 27, 2021', 'India’s Covishield Vaccine approved by Italy', 'On September 24, 2021, Italy has approved the Covishield vaccine against the Coronavirus.\r\n\r\nCovieshield vaccine against coronavirus was simultaneously produced by Oxford University & pharma titan AstraZeneca whereas it got produced by the Serum Institute of India.\r\nIn this regard by Italy, Indian citizens protected by the Covishield vaccine would now be welcome to an Italian green pass.\r\nSuch identification has proved to be the result of a conference among Health Minister Mansukh Mandaviya plus, his Italian counterpart Roberto Speranza.\r\nHealth Minister’s talk to Italy\r\nHealth Minister Mansukh Mandaviya visited Rome in Italy, concerning the G20 health ministers’ conference. On September 6, he continued discussions with the Health Minister of Italy. Throughout the conference, he addressed prioritizing the journey for immunized Indian students along with additional points.\r\n\r\nWhich nations have approved Covishield?\r\n16 nations from the European Union (EU) have accepted India’s Covishield vaccine, so distant. Besides Italy, nations comprising Switzerland, Austria, Iceland, Bulgaria, Finland, Greece, Germany, Latvia, Hungary, Ireland, Slovenia, Netherland, Spain, Sweden, Estonia have accepted the vaccine. Such license is going to make it more comfortable for residents to attain the advantages of the EU Digital Covid Certificate or “green pass”.\r\n\r\nAbout Green Pass\r\nGreen Pass intends to promote comfortable transportation amidst the continuing Covid-19 pandemic. This pass releases people of journey constraints inside the EU territory. The EU granted the right to 27 member-states to determine which vaccines they require to incorporate on their authorized list.\r\n\r\nP.C. - EastMojo', 1, '2022-04-12 07:49:50', NULL),
(9, './Assets/Images/Post9.jpg', 'Sep 23, 2021', 'Development of chargers by ARAI for Electric Vehicles', 'The Automotive Research Association of India (ARAI) attempts to successfully develop its original charger for electric vehicles (EV) for providing a potential to the EV ecosystem in India.\r\n\r\nAs per the ARAI Director, Reji Mathai, to support EVs, infrastructure for charging is essential.\r\nPresently, the chargers for mobility in the country, are being imported. Therefore, ARAI concentrated on growing these original chargers. The chargers are price-efficient and advance the regional economy.\r\nThe development of these chargers by ARAI indigenous technology for EV chargers called AC001 is successfully created. It has been brought up for production and development by Bharat Electronics.\r\nBharat Electronics has been given the duty to develop the Charging points whereas, the components for EV charger modes such as Type 1, Type 2, CCS & CHAdeMO will get locally constructed.\r\nBesides that, ARAI is locking up its original focus in Takeway as, ADAS (Advanced Driver Assistant System) transportations and cylinder examination centers demand restricted reservation areas.\r\nInvestments of about Rs 500 crore will be done in a phased method in the subsequent 3-4 years to establish this center.\r\nARAI is presently contracting with Telangana and Kerala state authorities for the construction and establishment of these centers.\r\nPrice of the chargers\r\nThe EV chargers price is supposed to lie within Rs 50000 to Rs 60000.\r\n\r\nEnvironment\r\nARAI freshly approved a contract with Bharat Electronics Limited on EV chargers. As mentioned in this deal, ARAI is directed to present the comprehensive know-how of the charges whereas Bharat Electronics is supposed to produce them.\r\n\r\nSymposium on International Automotive Technology (SIAT) 2021\r\nSIAT 2021 will be regulated by ARAI in connection with SAEINDIA and SAE International (U.S.). It is directed to get held from September 29 to October 1, 2021, under the theme ‘Redefining Mobility for the Future.\r\n\r\nP.C.: BBC', 1, '2022-04-12 07:49:50', NULL),
(10, './Assets/Images/Post10.jpg', 'Sep 24, 2021', 'India-Australia first JWG conference on Coal and Mines', 'On September 23, 2021, India and Australia secured their very initial Joint Working Group (JWG) conference on Coal and Mines by Video conferencing.\r\n\r\nJWG conference is considered as a forerunner towards the forthcoming India-Australia Energy Dialogue that is supposed to get programmed for October 2021.\r\nThis conference has been co-chaired by Additional Secretary in Ministry of Coal Vinod Kumar Tiwari of India and Head of Resources Division Paul Trotman of Australia.\r\nThroughout this conference, the Indian part highlighted the matters of the coal sector in India, plus conferred on developing a framework for the coming tomorrow. He additionally stated regarding the preference fields that are expected to get involved for potential cooperation in coal and mining sectors in India and Australia.\r\nIt centered on Indian coal reserves within the existing & planned framework plus the minerals demand & supply framework.\r\nAlso, considered the collaborative efforts on Clean Coal Technology, Coal Bed Methane, Surface Coal Gasification, sharing of Technology Coal Based Hydrogen & Carbon Capture Utilization among these two nations.\r\nIndia – Australia relationships\r\nBoth nations have developed imperative guardianship every year and the year. They built diplomatic relationships in the pre-Independence era with the availability of the Consulate General of India as a Trade Office in 1941 in Sydney. Lieutenant-General Iven Mackay has been elected as the 1st High Commissioner to India, in March 1944. In 1945, the initial High Commissioner of India to Australia visited Canberra. Following that, connections have observed a notable thaw. In 2014, Australia approved a uranium supply agreement with India.\r\n\r\nEconomic partnership\r\nAs of 2016, India’s exports to Australia are about at US$ 4.6 billion whereas India’s import from Australia was at US$ 11 billion. India essentially exports Passenger Motor Vehicle & machinery; Medicaments & Refined Petroleum; and Pearls, Gems & Jewellery to Australia while India largely imports Coal, Non-monetary Gold, Wool, Copper, Fertilizers & Education associated services from Australia.\r\n\r\nP.C.: Anadolu Agency', 1, '2022-04-12 07:49:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `Id` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `TextTag` varchar(100) NOT NULL,
  `SourceTag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`Id`, `PostId`, `TextTag`, `SourceTag`) VALUES
(1, 1, 'Sunshine Biotech Sector', 'https://thepapyrist.com/current-affairs/tag/Sunshine%20Biotech%20Sector'),
(2, 2, 'BIRAC', 'https://thepapyrist.com/current-affairs/tag/BIRAC'),
(3, 3, 'Vigyan se Vikas', 'https://thepapyrist.com/current-affairs/tag/Vigyan%20se%20Vikas'),
(4, 3, 'Science & Technology', 'https://thepapyrist.com/current-affairs/tag/Science%20&%20Technology'),
(5, 2, 'Union Minister of State', 'https://thepapyrist.com/current-affairs/tag/Union%20Minister%20of%20State'),
(6, 5, 'E-commerce', 'https://thepapyrist.com/current-affairs/tag/E-commerce'),
(7, 5, 'Amazon India', 'https://thepapyrist.com/current-affairs/tag/Amazon%20India'),
(8, 10, 'Amazon Future Engineer', 'https://thepapyrist.com/current-affairs/tag/Amazon%20Future%20Engineer'),
(9, 10, 'artificial intelligence', 'https://thepapyrist.com/current-affairs/tag/artificial%20intelligence'),
(10, 3, 'Value Added Dairy products', 'https://thepapyrist.com/current-affairs/tag/Value%20Added%20Dairy%20products');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `PostId` (`PostId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `PostId` FOREIGN KEY (`PostId`) REFERENCES `posts` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
