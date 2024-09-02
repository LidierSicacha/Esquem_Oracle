CREATE TABLE User1 (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    email VARCHAR2(255),
    password VARCHAR2(255),
    first_name VARCHAR2(100) NULL,
    last_name VARCHAR2(100) NULL
);

CREATE TABLE Place (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(50),
    name VARCHAR2(255),
    city_id VARCHAR2(50),
    description VARCHAR2(1000) NULL,
    number_rooms INTEGER DEFAULT 0,
    number_bathrooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night INTEGER DEFAULT 0,
    latitude FLOAT NULL,
    longitude FLOAT NULL
);

CREATE TABLE City (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    state_id VARCHAR2(50),
    name VARCHAR2(255)
);

CREATE TABLE new_state (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255)
);

CREATE TABLE Amenity (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255)
);

CREATE TABLE PlaceAmenity (
    place_id VARCHAR2(50),
    amenity_id VARCHAR2(50),
    PRIMARY KEY (place_id, amenity_id)
);

CREATE TABLE Review (
    id VARCHAR2(50) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(50),
    place_id VARCHAR2(50),
    text CLOB
);
