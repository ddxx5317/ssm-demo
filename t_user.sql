/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-01-11 17:58:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `config` varchar(1024) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `sex` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1000', 'a', 'a123', '123', '{\"dataType\":\"A\"}', '{\"signType\":\"RSA\",\"privateKey\":\"MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCftAfGDILGLAA2HLSoz+gTeEsjrSmIMt2rckz4ffhGJ82DCIzuYKcO7E/jiCZUSev0J+XYo/Y6z88FEoZSElEfttC5GSbxW4SfIUfVx0YxyQ0BwEIf6n+yGPvG+XcH9x407NrdLvsXDtzcv7dvsRZ3+zRsoICBzONiyvE/6FmL53ZlwdIo9kJYiu1ODIV+Lb1S96r70aedFbNQCnATQBmGQKLBQVXAWeWLWOgFScoIro/7FKe+O6N/cGLG+d9GMM69YjnqSTDu9KTrVEBExHu3EkjwjPghQ02ZjTkeC1+8noJvYK65NbWjn8OoImZDAdrVRVulrsoVm+gR3uMMPPJlAgMBAAECggEBAJ4YTT28ctUVB9yJjDo1HqvvgIq/yAaBPDmVvCaeJWHl0yctFr6ARcCbJPa8eB0m1ILt4DYXEhDkWS7PSNMEOPSpOHSUNp3lmCMjggZZ794nBk4+cfdAX8sBunUdzby/4FJKStt8v6ny16dbzo6uAu0ha6NBPBXCqzLIbgxyyfqYwIhpsWkqFuNjvLKUr9ZgjM4AdiubExWCEtsq0M7ueDnL+xNKGj0JWq7QJqLKmBDlXfI9uETrshTTMV5ObIwraMYscDgh99ZXSki77YBP8ngDHjzkfymKgOs1eOeBFIYeAYZkB6vTobBGOWPUTo2V/5ECHWJKUJ9aKW6fuyLuxiECgYEA8LjmdZ3rxCk8qEytFhdoNzJjQUXOTthk0Y637/PcNUdc4B3UdXplL/Re7Gk9tdKaEK/sO8WmhbbCKsSjloRn3E382PSxP2dhPQe+ARBKEFcU7HDosXoSJvW6OGHurDpK2gzCQmhMXdzorFIFVawxPWSfkj1Radqdg6MIBH0lio0CgYEAqdbJEaFXZhrW9coi3AxjeIkKDFuicqO00IOzMxJL6FkvPhLnq9jcR/yq7KWWaHFr0j4UFhzstEB/YT37BvzjIeX+dqPVSXil2b6m9PwuC/5/0A8b220hBKadzKoYVj8M8bX6dCk/8S+4fELcz84nhP+5aovDzf3gRyCdVrOzvTkCgYEAioxhWGDESerSFqvLE2P1f49owTDERW0W2eYix+C7ZY7lTbjdh6AijS9BUyBffD7ynZgjh2ODLIK7zpHO9drPTGU2mkh7m9qMhOvn2ATgG/eC+3Mg+sUfnXzg6YK0NDx4yHd/d2lASuXSpRuwJlctIADCNxFDwoEpF5LGEo9VBCECgYBW5pR5FeG/V8pXdzcA+sHGwe/HRPfIyqTQ8CI35ou6di+rBkdN8ac8mjbm4Q8ln6s4pxTl/6TJ0hqbKfiQqcKZ7LGYCNowPrA1ysxom8P/1ReW4LQzQRJc69fgCcRsFNTNtHxTBWw3P2CZDCkpluU3sxUvRBZLBzTDkBeRbl9wWQKBgQCztnXlAkI1YKEUgrQ6G3ZsK8ZD8NI3LOqK/TpCuS3yB0vvQvsAwvXBBJlTX5rJXm/Z1IbSWdrypKJyRBahToDmeR1K7s9/08MkGL7SzQaLihejXeki536ZyKDQsFXrpZTUuSMM0qAH3VYdl1Av990cf+bcmhSzXgGvT1XSQJBmbQ==\",\"publicKey\":\"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn7QHxgyCxiwANhy0qM/oE3hLI60piDLdq3JM+H34RifNgwiM7mCnDuxP44gmVEnr9Cfl2KP2Os/PBRKGUhJRH7bQuRkm8VuEnyFH1cdGMckNAcBCH+p/shj7xvl3B/ceNOza3S77Fw7c3L+3b7EWd/s0bKCAgczjYsrxP+hZi+d2ZcHSKPZCWIrtTgyFfi29Uveq+9GnnRWzUApwE0AZhkCiwUFVwFnli1joBUnKCK6P+xSnvjujf3BixvnfRjDOvWI56kkw7vSk61RARMR7txJI8Iz4IUNNmY05HgtfvJ6Cb2CuuTW1o5/DqCJmQwHa1UVbpa7KFZvoEd7jDDzyZQIDAQAB\"}', '0');
INSERT INTO `t_user` VALUES ('1001', 'b', 'b123', '123', '{\"dataType\":\"B\"}', '{\"signType\":\"NONE\"}', '0');
INSERT INTO `t_user` VALUES ('1002', 'user', 'user001', '111', '{\"dataType\":\"C\"}', '{\"signType\":\"NONE\"}', '1');
INSERT INTO `t_user` VALUES ('1003', 'username', '10001', '1380000001', '{\"A\":\"0000\"}', '{\"signType\":\"NONE\"}', '0');
INSERT INTO `t_user` VALUES ('1004', 'username', '10001', '1380000001', '{\"A\":\"0000\"}', '{\"signType\":\"NONE\"}', '0');
