-- Your SQL goes here
CREATE TABLE devices(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    deviceid VARCHAR(255) NOT NULL,
    kind TEXT CHECK(kind IN ('desktop', 'laptop', 'server','mobile', 'other')) NOT NULL,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username)
);


CREATE TABLE sessions(
    username VARCHAR(255) NOT NULL,
    session_id VARCHAR(255) NOT NULL,
    expires DATETIME NOT NULL,
    PRIMARY KEY (username, session_id)
)