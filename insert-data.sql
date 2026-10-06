INSERT INTO user_types(user_type_id,user_type_name) VALUES
(1,'ゲスト'),
(2,'会員');

INSERT INTO users(user_id,user_name,user_type_id) VALUES
(1,'Hitomi',1),
(2,'Sayoko',2),
(3,'Takumi',1);

INSERT INTO hotels(hotel_id, hotel_name) VALUES
(11,'ヒルトン'),
(22,'アパ'),
(33,'ミラコスタ');


INSERT INTO reservations(reservation_id,user_id,hotel_id,check_in_date,check_out_date) VALUES
(1,1,11,'2022-07-12','2022-07-14'),
(2,2,22,'2022-08-16','2022-08-18'),
(3,3,33,'2022-09-01','2022-09-05');

INSERT INTO payments(payment_id,payment_type,payment_status, reservation_id) VALUES
(100,'クレジットカード','完了',1),
(101,'現地','未完了',2),
(102,'現地','未完了',3);


