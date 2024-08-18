

INSERT INTO city (city_name)
VALUES ('Seoul'),
       ('Gyeonggi'),
       ('Incheon'),
       ('Daegu'),
       ('Gwangju'),
       ('Daejeon'),
       ('Ulsan'),
       ('Jeju'),
       ('Suwon'),
       ('Gyeongju'),
       ('Busan');


-- RoomTypeEntity 더미 데이터
INSERT INTO room_type (id, type_name, type_content)
VALUES (1, '스탠다드+싱글+시티뷰', 'A'),
       (2, '스탠다드+싱글+오션뷰', 'B'),
       (3, '스탠다드+더블+시티뷰', 'C'),
       (4, '스탠다드+더블+오션뷰', 'D'),
       (5, '디럭스+싱글+시티뷰', 'E'),
       (6, '디럭스+싱글+오션뷰', 'F'),
       (7, '디럭스+더블+시티뷰', 'G'),
       (8, '디럭스+더블+오션뷰', 'H'),
       (9, '스위트+시티뷰', 'I'),
       (10, '스위트+오션뷰', 'J'),
       (11, '레지던스+시티뷰', 'K'),
       (12, '레지던스+오션뷰', 'L');
-- Insert multiple rows into the hotel_coupon table with dummy data

INSERT INTO facility (facility_name)
VALUES ('야외수영장'),
       ('실내수영장'),
       ('사우나'),
       ('키즈룸'),
       ('카지노'),
       ('피트니스센터'),
       ('무료와이파이'),
       ('세탁시설'),
       ('스파'),
       ('24시간 프론트 데스크'),
       ('레스토랑'),
       ('무료주차'),
       ('바'),
       ('ATM'),
       ('야외정원');

INSERT INTO user (email, password, name, nickname, role, address, user_gender, phone, user_grade, user_total_amount,
                  enabled)
VALUES ('1@example.com', 'password123', 'John Doe', 'johnny', 'GUEST', '123 Maple Street', 'Male',
        '123-456-7890',
        1, 1000, 1),
       ('2@example.com', '$2a$10$x/kT4A0Z.IGnu6kmvcJPD.9TvCrEEXX3mb3hiP7r7db9a6NajIjkG', 'Jane Smith', 'janey', 'BUSINESS', '456 Oak Avenue', 'Female',
        '234-567-8901', 2, 0, 1),
       ('3@example.com', '$2a$10$68sJ6FZS5bTV6OelPqmBDOFb9JCU1MtVY96cwf7uV2AsCgpBmOzOS', 'Mike Jones', 'mikey', 'BUSINESS', '789 Pine Road', 'Male',
        '345-678-9012',
        3, 0, 1),
       ('4@example.com', '$2a$10$Sfuu6s1pLEjN/5n5bvZzj.3ZEefftpP6SJW5dNlko6pz4rY3tfkxy', 'Lisa Brown', 'lisaB', 'ADMIN', '101 Cedar Lane', 'Female',
        '456-789-0123', 4, 0, 1);


/* 유저 아이디 2를 비즈니스로 생각*/
INSERT INTO hotel (hotel_name, hotel_address, hotel_phone, hotel_email, hotel_grade, city_id, user_id)
VALUES ('호텔 서울', '서울특별시 중구', '02-1234-5678', 'seoulhotel@example.com', 5, 1, 2),
       ('부산 호텔', '부산광역시 해운대구', '051-8765-4321', 'busanhotel@example.com', 4, 2, 2),
       ('인천 호텔', '인천광역시 중구', '032-3456-7890', 'incheonhotel@example.com', 3, 3, 2),
       ('대구 호텔', '대구광역시 수성구', '053-9876-5432', 'daeguhotel@example.com', 5, 4, 2),
       ('광주 호텔', '광주광역시 서구', '062-4321-9876', 'gwangjuhotel@example.com', 4, 5, 2),
       ('대전 호텔', '대전광역시 유성구', '042-6543-2109', 'daejeonhotel@example.com', 4, 6, 3),
       ('울산 호텔', '울산광역시 남구', '052-6789-1234', 'ulsanhotel@example.com', 3, 7, 3),
       ('세종 호텔', '세종특별자치시', '044-1234-5678', 'sejonghotel@example.com', 5, 8, 3),
       ('수원 호텔', '경기도 수원시 팔달구', '031-8765-4321', 'suwonhotel@example.com', 4, 9, 3),
       ('제주 호텔', '제주특별자치도 제주시', '064-9876-5432', 'jejuhotel@example.com', 5, 10, 3);

INSERT INTO hotel_facility (hotel_id, facility_id)
VALUES (1, 1),
       (1, 3),
       (1, 5),
       (1, 7),
       (1, 9),
       (1, 11),
       (1, 13),
       (2, 2),
       (2, 4),
       (2, 6),
       (2, 7),
       (2, 10),
       (2, 13),
       (3, 3),
       (3, 6),
       (3, 9),
       (3, 12),
       (3, 15),
       (4, 4),
       (4, 8),
       (4, 12),
       (5, 5),
       (5, 10),
       (5, 15),
       (6, 3),
       (6, 5),
       (6, 7);



INSERT INTO room_reservation (start_date, end_date, reservation_number, pay_price, is_breakfast, enabled)
VALUES ('2024-08-01', '2024-08-05', 'RES123456', 500000, 1, 1),
       ('2024-08-06', '2024-08-10', 'RES123457', 600000, 0, 1),
       ('2024-08-11', '2024-08-15', 'RES123458', 550000, 1, 1),
       ('2024-08-16', '2024-08-20', 'RES123459', 700000, 1, 0),
       ('2024-08-21', '2024-08-25', 'RES123460', 800000, 0, 1),
       ('2024-08-26', '2024-08-30', 'RES123461', 900000, 1, 1),
       ('2024-09-01', '2024-09-05', 'RES123462', 450000, 0, 1),
       ('2024-09-06', '2024-09-10', 'RES123463', 650000, 1, 0),
       ('2024-09-11', '2024-09-15', 'RES123464', 750000, 1, 1),
       ('2024-09-16', '2024-09-20', 'RES123465', 850000, 0, 1);


-- ReviewEntity 더미 데이터


-- RoomEntity 더미 데이터
INSERT INTO room (room_name, room_max, room_price, room_content, breakfast_price, hotel_id, room_type_id, user_id)
VALUES ('Deluxe Room', 2, 200000, 'Spacious room with a king-sized bed.', 15000, 1, 3, 2),
       ('Suite', 4, 500000, 'Luxury suite with a separate living area.', 30000, 1, 4, 2),
       ('Standard Room', 2, 150000, 'Comfortable room with all standard amenities.', 10000, 1, 1, 2),
       ('Family Room', 5, 300000, 'Room perfect for families, includes extra beds.', 20000, 1, 2, 2),
       ('Single Room', 1, 100000, 'Cozy room for single travelers.', 5000, 1, 5, 2),
       ('Double Room', 2, 180000, 'Room with a double bed and a beautiful view.', 15000, 2, 7, 2),
       ('Twin Room', 2, 170000, 'Room with two separate beds.', 15000, 2, 4, 2),
       ('Presidential Suite', 6, 1000000, 'Top-tier luxury suite.', 50000, 2, 7, 2),
       ('Economy Room', 2, 80000, 'Basic room for budget travelers.', 5000, 2, 6, 2),
       ('Studio Room', 2, 220000, 'Studio-style room with kitchen facilities.', 20000, 2, 8, 2),
       ('Deluxe Room', 2, 200000, 'Spacious room with a king-sized bed.', 15000, 3, 3, 2),
       ('Suite', 4, 500000, 'Luxury suite with a separate living area.', 30000, 3, 4, 2),
       ('Standard Room', 2, 150000, 'Comfortable room with all standard amenities.', 10000, 3, 1, 2),
       ('Family Room', 5, 300000, 'Room perfect for families, includes extra beds.', 20000, 3, 2, 2),
       ('Single Room', 1, 100000, 'Cozy room for single travelers.', 5000, 3, 5, 2),
       ('Double Room', 2, 180000, 'Room with a double bed and a beautiful view.', 15000, 4, 7, 2),
       ('Twin Room', 2, 170000, 'Room with two separate beds.', 15000, 4, 4, 2),
       ('Presidential Suite', 6, 1000000, 'Top-tier luxury suite.', 50000, 4, 7, 2),
       ('Economy Room', 2, 80000, 'Basic room for budget travelers.', 5000, 4, 6, 2),
       ('Studio Room', 2, 220000, 'Studio-style room with kitchen facilities.', 20000, 4, 8, 2),
       ('Deluxe Room', 2, 200000, 'Spacious room with a king-sized bed.', 15000, 5, 3, 2),
       ('Suite', 4, 500000, 'Luxury suite with a separate living area.', 30000, 5, 4, 2),
       ('Standard Room', 2, 150000, 'Comfortable room with all standard amenities.', 10000, 5, 1, 2),
       ('Family Room', 5, 300000, 'Room perfect for families, includes extra beds.', 20000, 5, 2, 2),
       ('Single Room', 1, 100000, 'Cozy room for single travelers.', 5000, 5, 5, 2),
       ('Double Room', 2, 180000, 'Room with a double bed and a beautiful view.', 15000, 6, 7, 3),
       ('Twin Room', 2, 170000, 'Room with two separate beds.', 15000, 6, 4, 3),
       ('Presidential Suite', 6, 1000000, 'Top-tier luxury suite.', 50000, 6, 7, 3),
       ('Economy Room', 2, 80000, 'Basic room for budget travelers.', 5000, 6, 6, 3),
       ('Studio Room', 2, 220000, 'Studio-style room with kitchen facilities.', 20000, 6, 8, 3),
       ('Deluxe Room', 2, 200000, 'Spacious room with a king-sized bed.', 15000, 7, 3, 3),
       ('Suite', 4, 500000, 'Luxury suite with a separate living area.', 30000, 7, 4, 3),
       ('Standard Room', 2, 150000, 'Comfortable room with all standard amenities.', 10000, 7, 1, 3),
       ('Family Room', 5, 300000, 'Room perfect for families, includes extra beds.', 20000, 7, 2, 3),
       ('Single Room', 1, 100000, 'Cozy room for single travelers.', 5000, 7, 5, 3),
       ('Double Room', 2, 180000, 'Room with a double bed and a beautiful view.', 15000, 8, 7, 3),
       ('Twin Room', 2, 170000, 'Room with two separate beds.', 15000, 8, 4, 3),
       ('Presidential Suite', 6, 1000000, 'Top-tier luxury suite.', 50000, 8, 7, 3),
       ('Economy Room', 2, 80000, 'Basic room for budget travelers.', 5000, 8, 6, 3),
       ('Studio Room', 2, 220000, 'Studio-style room with kitchen facilities.', 20000, 8, 8, 3),
       ('Deluxe Room', 2, 200000, 'Spacious room with a king-sized bed.', 15000, 9, 3, 3),
       ('Suite', 4, 500000, 'Luxury suite with a separate living area.', 30000, 9, 4, 3),
       ('Standard Room', 2, 150000, 'Comfortable room with all standard amenities.', 10000, 9, 1, 3),
       ('Family Room', 5, 300000, 'Room perfect for families, includes extra beds.', 20000, 9, 2, 3),
       ('Single Room', 1, 100000, 'Cozy room for single travelers.', 5000, 9, 5, 3),
       ('Double Room', 2, 180000, 'Room with a double bed and a beautiful view.', 15000, 10, 7, 3),
       ('Twin Room', 2, 170000, 'Room with two separate beds.', 15000, 10, 4, 3),
       ('Presidential Suite', 6, 1000000, 'Top-tier luxury suite.', 50000, 10, 7, 3),
       ('Economy Room', 2, 80000, 'Basic room for budget travelers.', 5000, 10, 6, 3),
       ('Studio Room', 2, 220000, 'Studio-style room with kitchen facilities.', 20000, 10, 8, 3);


-- TripEntity 더미 데이터

