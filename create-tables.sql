CREATE TABLE user_types (
    user_type_id SERIAL PRIMARY KEY,
    user_type_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_type_id INT NOT NULL REFERENCES user_types(user_type_id)
);

CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    hotel_name VARCHAR(100) NOT NULL
);

CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    hotel_id INT NOT NULL REFERENCES hotels(hotel_id),
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,

    CONSTRAINT check_reservation_dates
        CHECK (check_out_date > check_in_date)

);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    payment_type VARCHAR(100) NOT NULL,
    payment_status VARCHAR(100) NOT NULL,
    reservation_id INT NOT NULL UNIQUE
        REFERENCES reservations(reservation_id),

        CONSTRAINT check_payment_type
        CHECK (payment_type IN ('クレジットカード', '現地')),

    CONSTRAINT check_payment_status
        CHECK (payment_status IN ('完了', '未完了'))
);

