CREATE TABLE `DeliveryForm` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(45) NOT NULL AUTO_INCREMENT,
	`province` varchar(45) NOT NULL AUTO_INCREMENT,
	`instructions` varchar(200) NOT NULL AUTO_INCREMENT,
	`address` varchar(100) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `CD` (
	`id` INT(11) NOT NULL,
	`artist` varchar(45) NOT NULL,
	`recordLabel` varchar(45) NOT NULL,
	`releaseDate` DATETIME NOT NULL
);

CREATE TABLE `Book` (
	`id` INT(11) NOT NULL,
	`author` varchar(45) NOT NULL,
	`coverType` varchar(45) NOT NULL,
	`publisher` varchar(45) NOT NULL,
	`publishDate` DATETIME NOT NULL,
	`numOfPages` INT(11) NOT NULL,
	`language` varchar(45) NOT NULL,
	`bookCategory` varchar(45) NOT NULL
);

CREATE TABLE `DVD` (
	`id` INT(11) NOT NULL,
	`dicsType` varchar(45) NOT NULL,
	`director` varchar(45) NOT NULL,
	`runtime` INT(11) NOT NULL,
	`studio` varchar(45) NOT NULL,
	`subtitle` varchar(45) NOT NULL,
	`releasedDate` DATETIME NOT NULL
);

CREATE TABLE `Media` (
	`id` INT(11) NOT NULL,
	`category` varchar(45) NOT NULL,
	`price` INT(11) NOT NULL,
	`quantity` INT(11) NOT NULL,
	`title` varchar(45) NOT NULL,
	`value` INT(11) NOT NULL,
	`imageURL` varchar(45) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `OrderMedia` (
	`orderID` INT(11) NOT NULL,
	`price` INT(11) NOT NULL,
	`quantity` INT(11) NOT NULL,
	`mediaId` INT(11) NOT NULL
);

CREATE TABLE `Order` (
	`order` INT(11) NOT NULL,
	`shippingFees` varchar(45) NOT NULL,
	`deliveryInfold` INT NOT NULL
);

CREATE TABLE `Invoice` (
	`id` INT NOT NULL,
	`totalAmount` INT NOT NULL,
	`orderID` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `PaymentTransaction` (
	`id` INT(11) NOT NULL,
	`creatAt` DATETIME NOT NULL,
	`content` varchar(45) NOT NULL,
	`method` varchar(45) NOT NULL,
	`cartId` INT NOT NULL,
	`invoiceId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Cart` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`cartCode` varchar(15) NOT NULL AUTO_INCREMENT,
	`owner` varchar(45) NOT NULL AUTO_INCREMENT,
	`cvvCode` varchar(3) NOT NULL AUTO_INCREMENT,
	`dateExpired` varchar(4) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

