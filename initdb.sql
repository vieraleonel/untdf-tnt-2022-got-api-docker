-- -------------------------------------------------------------
-- TablePlus 4.6.4(414)
--
-- https://tableplus.com/
--
-- Database: app_db
-- Generation Time: 2022-05-09 19:56:27.8670
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."characters";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS characters_id_seq;

-- Table Definition
CREATE TABLE "public"."characters" (
    "id" int4 NOT NULL DEFAULT nextval('characters_id_seq'::regclass),
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "title" varchar NOT NULL,
    "image_url" varchar NOT NULL,
    "family_id" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."families";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS families_id_seq;

-- Table Definition
CREATE TABLE "public"."families" (
    "id" int4 NOT NULL DEFAULT nextval('families_id_seq'::regclass),
    "name" varchar NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."characters" ("id", "first_name", "last_name", "title", "image_url", "family_id") VALUES
(1, 'Daenerys', 'Targaryen', 'Mother of Dragons', 'https://thronesapi.com/assets/images/daenerys.jpg', 14),
(2, 'Samwell', 'Tarly', 'Maester', 'https://thronesapi.com/assets/images/sam.jpg', 15),
(3, 'Jon', 'Snow', 'King of the North', 'https://thronesapi.com/assets/images/jon-snow.jpg', 13),
(4, 'Arya', 'Stark', 'No One', 'https://thronesapi.com/assets/images/arya-stark.jpg', 13),
(5, 'Sansa', 'Stark', 'Lady of Winterfell', 'https://thronesapi.com/assets/images/sansa-stark.jpeg', 13),
(6, 'Brandon', 'Stark', 'Lord of Winterfell', 'https://thronesapi.com/assets/images/bran-stark.jpg', 13),
(7, 'Ned', 'Stark', 'Lord of Winterfell', 'https://thronesapi.com/assets/images/ned-stark.jpg', 13),
(8, 'Robert', 'Baratheon', 'Lord of the Seven Kingdoms', 'https://thronesapi.com/assets/images/robert-baratheon.jpeg', 7),
(9, 'Jamie', 'Lannister', 'Lord Commander of the Kingsguard', 'https://thronesapi.com/assets/images/jaime-lannister.jpg', 11),
(10, 'Cersei', 'Lannister', 'Lady of Casterly Rock', 'https://thronesapi.com/assets/images/cersei.jpg', 11),
(11, 'Cateyln', 'Stark', 'Lady of Winterfell', 'https://thronesapi.com/assets/images/catelyn-stark.jpg', 13),
(12, 'Robb', 'Stark', 'Lord of Winterfell', 'https://thronesapi.com/assets/images/robb-stark.jpg', 13),
(13, 'Theon', 'Greyjoy', 'Captain of Sea Bitch', 'https://thronesapi.com/assets/images/theon.jpg', 5),
(14, 'Joffrey', 'Baratheon', 'Lord of the Seven Kingdoms, Protector of the Realm', 'https://thronesapi.com/assets/images/joffrey.jpg', 11),
(15, 'Tyrion', 'Lannister', 'Hand of the Queen', 'https://thronesapi.com/assets/images/tyrion-lannister.jpg', 11),
(16, 'Sandor', 'Clegane', 'The Hound', 'https://thronesapi.com/assets/images/the-hound.jpg', 8),
(17, 'Petyr', 'Baelish', 'Littlefinger', 'https://thronesapi.com/assets/images/littlefinger.jpg', 6),
(18, 'Davos', 'Seaworth', 'Hand of the King', 'https://thronesapi.com/assets/images/davos-seaworth.png', 12),
(19, 'Stannis', 'Baratheon', 'Lord of Dragonstone', 'https://thronesapi.com/assets/images/stannis.jpg', 7),
(20, 'Khal', 'Drogo', 'Khal', 'https://thronesapi.com/assets/images/khal-drogo.jpg', 14),
(21, 'Margaery', 'Tyrell', 'Queen of the Seven Kingdoms', 'https://thronesapi.com/assets/images/margaery-tyrell.jpg', 16),
(22, 'Ygritte', 'None', 'Spearwife', 'https://thronesapi.com/assets/images/ygritte.jpg', 4),
(23, 'Brienne', 'Tarth', 'Lady Brienne', 'https://thronesapi.com/assets/images/brienne-tarth.jpeg', 29),
(24, 'Missandei', 'None', 'Queen s Personal Advisor', 'https://thronesapi.com/assets/images/missandei.jpeg', 21),
(25, 'Viserys', 'Targaryan', 'King Viserys III', 'https://thronesapi.com/assets/images/viserys-targaryan.jpg', 14),
(26, 'Rickon', 'Stark', 'Prince', 'https://thronesapi.com/assets/images/rickon.jpg', 13),
(27, 'Roose', 'Bolton', 'Lord of Dreadfort', 'https://thronesapi.com/assets/images/roose-bolton.jpg', 2),
(28, 'Daario', 'Naharis', 'Commander of the Second Sons', 'https://thronesapi.com/assets/images/daario.jpg', 22),
(29, 'Shae', '', 'Mistress', 'https://thronesapi.com/assets/images/shae.jpg', 19),
(30, 'Tommen', 'Baratheon', 'Prince', 'https://thronesapi.com/assets/images/tommen.jpg', 7),
(31, 'Gendry', 'Baratheon', 'Lord of Storm s End', 'https://thronesapi.com/assets/images/gendry.jpg', 7),
(32, 'Jorah', 'Mormont', 'Knight', 'https://thronesapi.com/assets/images/jorah-mormont.jpg', 20),
(33, 'Robert', 'Baratheon', 'King', 'https://thronesapi.com/assets/images/king-robert.jpg', 7),
(34, 'Ramsey', 'Bolton', 'The Bastard of Bolton', 'https://thronesapi.com/assets/images/ramsey-bolton.jpg', 2),
(35, 'Talisa', 'Stark', 'Queen Consort', 'https://thronesapi.com/assets/images/talisa-stark.jpg', 13),
(36, 'Jeor', 'Mormont', 'Lord Commander of the Knight s Watch', 'https://thronesapi.com/assets/images/lord-commander-mormont.jpg', 20),
(37, 'The High', 'Sparrow', 'High Septon', 'https://thronesapi.com/assets/images/the-high-sparrow.jpg', 26),
(38, 'Oberyn', 'Martell', 'Red Viper of Dorne', 'https://thronesapi.com/assets/images/red-viper.jpg', 33),
(39, 'Jaqen', 'H ghar', 'Faceless Men of Braavos', 'https://thronesapi.com/assets/images/jaqen-hghar.jpg', 18),
(40, 'Tywin', 'Lannister', 'Lord Paramount of Westerlands', 'https://thronesapi.com/assets/images/tywin-lannister.jpg', 11),
(41, 'Ellaria', 'Sand', 'Paramour of Prince Oberyn Martell', 'https://thronesapi.com/assets/images/ellaria-sand.jpg', 25),
(42, 'Tormund', 'Giantsbane', 'Free Folk Warrior', 'https://thronesapi.com/assets/images/tormund-giantsbane.jpg', 4),
(43, 'Yara', 'Greyjoy', 'Lady of the Iron Islands', 'https://thronesapi.com/assets/images/yara-greyjoy.jpg', 5),
(44, 'Euron', 'Greyjoy', 'King of the iron Islands', 'https://thronesapi.com/assets/images/euron-greyjoy.jpg', 5),
(45, 'Wylis', 'Hodor', 'Servant of House Stark', 'https://thronesapi.com/assets/images/hodor.jpg', 13),
(46, 'Grey', 'Worm', 'Commander of the Unsullied', 'https://thronesapi.com/assets/images/greyworm.jpg', 34),
(47, 'Olenna', 'Tyrell', 'Queen of Thorns', 'https://thronesapi.com/assets/images/olenna-tyrell.jpg', 16),
(48, 'Qyburn', 'Grand Maester', 'Former maester of the Citadel', 'https://thronesapi.com/assets/images/qyburn.jpg', 24),
(49, 'Lord', 'Bronn', 'Lord of Highgarden', 'https://thronesapi.com/assets/images/bronn.jpg', 3);

INSERT INTO "public"."families" ("id", "name") VALUES
(2, 'Bolton'),
(3, 'Bronn'),
(4, 'Free Folk'),
(5, 'Greyjoy'),
(6, 'House Baelish'),
(7, 'House Baratheon'),
(8, 'House Clegane'),
(11, 'House Lannister'),
(12, 'House Seaworth'),
(13, 'House Stark'),
(14, 'House Targaryen'),
(15, 'House Tarly'),
(16, 'House Tyrell'),
(18, 'Lorath'),
(19, 'Lorathi'),
(20, 'Mormont'),
(21, 'Naathi'),
(22, 'Naharis'),
(24, 'Qyburn'),
(25, 'Sand'),
(26, 'Sparrow'),
(29, 'Tarth'),
(33, 'Viper'),
(34, 'Worm');

ALTER TABLE "public"."characters" ADD FOREIGN KEY ("family_id") REFERENCES "public"."families"("id");
