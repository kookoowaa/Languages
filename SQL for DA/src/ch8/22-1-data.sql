DROP TABLE IF EXISTS purchase_detail_log;
CREATE TABLE purchase_detail_log(
    stamp       varchar(255)
  , session     varchar(255)
  , purchase_id integer
  , product_id  varchar(255)
);

INSERT INTO purchase_detail_log
  VALUES
    ('2016-11-03 18:10', '989004ea',  1, 'D001')
  , ('2016-11-03 18:10', '989004ea',  1, 'D002')
  , ('2016-11-03 20:00', '47db0370',  2, 'D001')
  , ('2016-11-04 13:00', '1cf7678e',  3, 'D002')
  , ('2016-11-04 15:00', '5eb2e107',  4, 'A001')
  , ('2016-11-04 15:00', '5eb2e107',  4, 'A002')
  , ('2016-11-04 16:00', 'fe05e1d8',  5, 'A001')
  , ('2016-11-04 16:00', 'fe05e1d8',  5, 'A003')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A001')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A003')
  , ('2016-11-04 17:00', '87b5725f',  6, 'A004')
  , ('2016-11-04 18:00', '5d5b0997',  7, 'A005')
  , ('2016-11-04 18:00', '5d5b0997',  7, 'A006')
  , ('2016-11-04 19:00', '111f2996',  8, 'A002')
  , ('2016-11-04 19:00', '111f2996',  8, 'A003')
  , ('2016-11-04 20:00', '3efe001c',  9, 'A001')
  , ('2016-11-04 20:00', '3efe001c',  9, 'A003')
  , ('2016-11-04 21:00', '9afaf87c', 10, 'D001')
  , ('2016-11-04 21:00', '9afaf87c', 10, 'D003')
  , ('2016-11-04 22:00', 'd45ec190', 11, 'D001')
  , ('2016-11-04 22:00', 'd45ec190', 11, 'D002')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A002')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A003')
  , ('2016-11-04 23:00', '36dd0df7', 12, 'A004')
  , ('2016-11-05 15:00', 'cabf98e8', 13, 'A002')
  , ('2016-11-05 15:00', 'cabf98e8', 13, 'A004')
  , ('2016-11-05 16:00', 'f3b47933', 14, 'A005')
;
