-- Active: 1667936800479@@127.0.0.1@3306@my_projects
USE MY_PROJECTS;

CREATE TABLE FOOTBALL_PRED_RES (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VENUE VARCHAR(255),
    TEAM VARCHAR(255),
    OPPONENT VARCHAR(255),
    TIME INT(2),
    DAY VARCHAR(255),
    XG FLOAT,
    XGA FLOAT,
    GF FLOAT
);

INSERT INTO FOOTBALL_PRED_RES(
    VENUE,
    TEAM,
    OPPONENT,
    TIME,
    DAY,
    XG,
    XGA,
    GF
) VALUES (
    "Away",
    "A",
    "B",
    12,
    "Sunday",
    1.1,
    0.2,
    0.4
);

SELECT
    *
FROM
    FOOTBALL_PRED_RES;

DELETE FROM FOOTBALL_PRED_RES
WHERE
    ID=2;

ALTER TABLE FOOTBALL_PRED_RES AUTO_INCREMENT = 1;

ALTER TABLE FOOTBALL_PRED_RES
ADD Pred_Result varchar(255);

ALTER TABLE FOOTBALL_PRED_RES
ADD Actual_Result varchar(255);

DELETE from FOOTBALL_PRED_RES;

ALTER TABLE FOOTBALL_PRED_RES
DROP COLUMN Actual_Result;
ALTER TABLE FOOTBALL_PRED_RES
ADD _Mode varchar(255);
