/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `Cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `Passenger` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `multiple_rides` int(11) NOT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `ride_passenger` (
  `id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  KEY `ride_id` (`ride_id`),
  CONSTRAINT `ride_passenger_ibfk_1` FOREIGN KEY (`ride_id`) REFERENCES `Rides` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Rides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `train` varchar(200) CHARACTER SET utf8 NOT NULL,
  `departure_time` datetime NOT NULL,
  `departure_city_id` varchar(11) NOT NULL,
  `destination_city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `Trains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 NOT NULL,
  `max_speed` int(200) NOT NULL,
  `max_passengers` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `Cities` (`city_id`, `cityName`) VALUES
(1, 'Lyon');
INSERT INTO `Cities` (`city_id`, `cityName`) VALUES
(2, 'Brussel');
INSERT INTO `Cities` (`city_id`, `cityName`) VALUES
(3, 'Paris');
INSERT INTO `Cities` (`city_id`, `cityName`) VALUES
(4, 'London');

INSERT INTO `Passenger` (`passenger_id`, `name`, `multiple_rides`) VALUES
(1, 'Dirk', 0);
INSERT INTO `Passenger` (`passenger_id`, `name`, `multiple_rides`) VALUES
(2, 'Jan', 0);
INSERT INTO `Passenger` (`passenger_id`, `name`, `multiple_rides`) VALUES
(3, 'Piet', 0);
INSERT INTO `Passenger` (`passenger_id`, `name`, `multiple_rides`) VALUES
(4, 'Chris', 0);



INSERT INTO `Rides` (`id`, `train`, `departure_time`, `departure_city_id`, `destination_city_id`) VALUES
(1, 'Vruum 1', '2021-11-15 16:25:17', '', 0);
INSERT INTO `Rides` (`id`, `train`, `departure_time`, `departure_city_id`, `destination_city_id`) VALUES
(2, 'Thalys 1', '2021-11-10 16:25:17', '', 0);
INSERT INTO `Rides` (`id`, `train`, `departure_time`, `departure_city_id`, `destination_city_id`) VALUES
(3, 'NMBS 1', '2021-11-21 16:26:14', '', 0);
INSERT INTO `Rides` (`id`, `train`, `departure_time`, `departure_city_id`, `destination_city_id`) VALUES
(4, 'Vruum 2', '2021-11-23 16:26:14', '', 0),
(5, 'NMBS 2', '2021-11-25 16:26:34', '', 0),
(6, 'Vruum 3', '2021-11-22 16:26:34', '', 0);

INSERT INTO `Trains` (`id`, `type`, `max_speed`, `max_passengers`) VALUES
(1, 'NMBS ', 31, 200);
INSERT INTO `Trains` (`id`, `type`, `max_speed`, `max_passengers`) VALUES
(2, 'Thalys', 40, 400);
INSERT INTO `Trains` (`id`, `type`, `max_speed`, `max_passengers`) VALUES
(3, 'Vruum', 100, 800);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;