create schema hlpower;

use hlpower;

CREATE TABLE `company` (
                           `company_id` int NOT NULL AUTO_INCREMENT,
                           `name` varchar(255) DEFAULT NULL,
                           `address1` varchar(255) DEFAULT NULL,
                           `address2` varchar(255) DEFAULT NULL,
                           `address3` varchar(255) DEFAULT NULL,
                           `tel_no` varchar(45) DEFAULT NULL,
                           `fax_no` varchar(45) DEFAULT NULL,
                           `ac_no` varchar(45) DEFAULT NULL,
                           PRIMARY KEY (`company_id`)
)

create table report (
                        report_id INT NOT NULL AUTO_INCREMENT,
                        sequence INT NOT NULL,
                        po_num VARCHAR(255) NULL,
                        created_date date NOT NULL,
                        terms INT NOT NULL,
                        company_id INT NOT NULL,
                        total_price DECIMAL NULL,
                        remarks VARCHAR(255) NULL,
                        PRIMARY KEY (report_id)
);

create table report_detail (
                               report_detail_id INT NOT NULL AUTO_INCREMENT,
                               report_id INT NOT NULL,
                               sequence INT NOT NULL,
                               description VARCHAR(255) NOT NULL,
                               quantity INT NOT NULL,
                               price DECIMAL NULL,
                               company_id INT NOT NULL,
                               PRIMARY KEY (report_id)
);

