
#Insert into Teams
INSERT INTO `oracle_baseball_league`.`TEAMS`
(`id`,
`name`,
`number_of_players`,
`discount`)
VALUES('A001','Tamil Tigers',20,5);

INSERT INTO `oracle_baseball_league`.`TEAMS`
(`id`,
`name`,
`number_of_players`,
`discount`)
VALUES('A002','Blue Guardians',22,10);


#Insert into Inventory_Lists
INSERT INTO `oracle_baseball_league`.`INVENTORY_LISTS`
(`inven_list_id`,
`cost_of_the_unit`,
`units_on_hand`)
VALUES('A000000001',25.00,50);

INSERT INTO `oracle_baseball_league`.`INVENTORY_LISTS`
(`inven_list_id`,
`cost_of_the_unit`,
`units_on_hand`)
VALUES('A000000002',20.00,100);

#Insert into Items
INSERT INTO `oracle_baseball_league`.`ITEMS`
(`item_number`,
`inven_list_id`,
`name`,
`description`,
`category`,
`color`,
`size`)
VALUES(1, 'A000000001', 'Baseball Gloves', 'Gloves used for playing baseball' , 'Accessories', 'Brown', 'S');

INSERT INTO `oracle_baseball_league`.`ITEMS`
(`item_number`,
`inven_list_id`,
`name`,
`description`,
`category`,
`color`,
`size`)
VALUES(2, 'A000000002', 'Baseball', 'High quality horsehide ball, comes in box of 3s ', 'Accessories','White', NULL);


#Insert into Price_History
INSERT INTO `oracle_baseball_league`.`PRICE_HISTORY`
(`item_number`,
`start_date`,
`start_time`,
`price`,
`end_date`,
`end_time`)
VALUES(1,'2022-07-01', '08:00:00', 390.00, '2022-07-31', '21:59:59');

INSERT INTO `oracle_baseball_league`.`PRICE_HISTORY`
(`item_number`,
`start_date`,
`start_time`,
`price`,
`end_date`,
`end_time`)
VALUES(2,'2022-08-01', '08:00:00', 500.00, '2022-08-31','21:59:59');

 
#Insert into Sales_Representatives. 
#As the table FK supervisor_id referes to the same table PK, foreign_key_checks need to disabled before inserting and
#re-enable after inserting
SET FOREIGN_KEY_CHECKS = 0; 

INSERT INTO `oracle_baseball_league`.`SALES_REPRESENTATIVES`
(`sales_rep_id`,
`sre_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`commission_rate`,
`supervisor_id`)
VALUES
(1,'cooper@obl.com','Cooper','Biggs',89123381,10.50,1);

INSERT INTO `oracle_baseball_league`.`SALES_REPRESENTATIVES`
(`sales_rep_id`,
`sre_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`commission_rate`,
`supervisor_id`)
VALUES
(2,'sheldon@obl.com','Sheldon','Lee',88890021,21.50, 1);

SET FOREIGN_KEY_CHECKS = 1;


#Insert into Sales_Representative_Address
INSERT INTO `oracle_baseball_league`.`SALES_REPRESENTATIVE_ADDRESS`
(`sales_rep_id`,
`address_line_1`,
`address_line_2`,
`city`,
`postal_code`)
VALUES(1,'Tampines Street 22',NULL,'Singapore',388232);

INSERT INTO `oracle_baseball_league`.`SALES_REPRESENTATIVE_ADDRESS`
(`sales_rep_id`,
`address_line_1`,
`address_line_2`,
`city`,
`postal_code`)
VALUES(2,'11-25 Serangoon Gardens', '11-25 Serangoon drive, north east central','Singapore',571993);


#Insert into Customers
INSERT INTO `oracle_baseball_league`.`CUSTOMERS`
(`customer_number`,
`ctr_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`,
`sales_rep_id`)
VALUES(1560, 'john@yahoo.com','John','Doe',99910000,520.98,1);

INSERT INTO `oracle_baseball_league`.`CUSTOMERS`
(`customer_number`,
`ctr_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`,
`sales_rep_id`)
VALUES(2092, 'jason23@gmail.com', 'Jason','Bourne',99900123,78.20,2);


#Insert into Customer_Address
INSERT INTO `oracle_baseball_league`.`CUSTOMER_ADDRESS`
(`id`,
`address_line_1`,
`address_line_2`,
`city`,
`postal_code`,
`customer_num`)
VALUES(1,'Ang Mo Kio Ave 12','Blk 104','Singapore',337112,1560);

INSERT INTO `oracle_baseball_league`.`CUSTOMER_ADDRESS`
(`id`,
`address_line_1`,
`address_line_2`,
`city`,
`postal_code`,
`customer_num`)
VALUES(2,'Yio Chu Kang Ave 15','Blk 503','Singapore',098123,2092);

#Insert into Team_Representatives
INSERT INTO `oracle_baseball_league`.`TEAM_REPRESENTATIVES`
(`customer_number`,
`tre_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`,
`team_they_belong_to`,
`team_id`,
`sales_rep_id`)
VALUES(1560,'baseballangels900rep1@jbl.com','Marcus','Wong',97001001,1250.98,'BasTEAMSeball angels','A001',1);

INSERT INTO `oracle_baseball_league`.`TEAM_REPRESENTATIVES`
(`customer_number`,
`tre_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`,
`team_they_belong_to`,
`team_id`,
`sales_rep_id`)
VALUES(2092,'baseballangels900rep1@jbl.com','Marcus','Wong',97001001,1250.98,'BasTEAMSeball angels','A001',1);

#Insert into Individuals
INSERT INTO `oracle_baseball_league`.`INDIVIDUALS`
(` customer_number`,
`loyalty_card_number`,
`sales_rep_id`,
`idl_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`)
VALUES(1560, 11, 1,'johnson91@gmail.com','John','Evans',98223890,254.90);

INSERT INTO `oracle_baseball_league`.`INDIVIDUALS`
(` customer_number`,
`loyalty_card_number`,
`sales_rep_id`,
`idl_email_id`,
`first_name`,
`last_name`,
`phone_number`,
`current_balance`)
VALUES(2092, 21, 1, 'dante41@gmail.com','Dante','Virgil',98223890,254.90);

#Insert into Orders
INSERT INTO `oracle_baseball_league`.`ORDERS`
(`order_id`,
`date`,
`time`,
`number_of_units`,
`customer_number`)
VALUES('1A','2022-01-24','10:30:01',50,1560);

INSERT INTO `oracle_baseball_league`.`ORDERS`
(`order_id`,
`date`,
`time`,
`number_of_units`,
`customer_number`)
VALUES('1B','2022-07-20','20:50:00',1000,2092);


#Insert into Order_Items
INSERT INTO `oracle_baseball_league`.`ORDERED_ITEMS`
(`order_id`,
`item_number`,
`quantity_ordered`,
`quantity_shipped`)
VALUES('1A', 1, 1000, 1000);

INSERT INTO `oracle_baseball_league`.`ORDERED_ITEMS`
(`order_id`,
`item_number`,
`quantity_ordered`,
`quantity_shipped`)
VALUES('1B', 1, 1000, 1000);









