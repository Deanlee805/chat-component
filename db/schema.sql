CREATE DATABASE twitchchat;

USE twitchchat;

CREATE TABLE IF NOT EXISTS users (
  ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  USERNAME VARCHAR(30),
  TWITCH_SUB BOOLEAN,
  MOD_STATUS BOOLEAN,
  COLOR VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS chats (
  ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  VIDEO_TIMESTAMP VARCHAR(20),
  CHAT TEXT CHARACTER SET utf8,
  USER_ID int NOT NULL,
  FOREIGN KEY (USER_ID) REFERENCES users(id),
  VIDEO_ID int NOT NULL
);
