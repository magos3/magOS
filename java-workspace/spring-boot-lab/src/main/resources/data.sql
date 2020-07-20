 INSERT INTO user (id, username, email, password) VALUES
  (1, 'Aliko', 'aliko2@gm.com', 'pass123'),
  (2, 'Bill', 'bill3@gm.com', 'pass345'),
  (3, 'Folrunsho', 'runsho@gm.com', 'pass567');

 
 	
 INSERT INTO PICTURE VALUES(11, FILE_READ('classpath:/demo_files/tesla.png'));
 INSERT INTO PICTURE VALUES(12, FILE_READ('classpath:/demo_files/einstein.png'));
 INSERT INTO PICTURE VALUES(13, FILE_READ('classpath:/demo_files/merkel.png'));
 
 INSERT INTO patient 
 	  (pid, FIRST_NAME,  LAST_NAME, GENDER,  ADDRESS,        CITY,        COUNTRY, CELL_PHONE , BIRTH_DATE, CREATION_DATE, PICTURE_ID) VALUES
    (10000,  'youness',   'chawi',   'HOMME', 'douar slahma', 'El jadida', 'maroc', '0678910111', '1970-06-20', CURRENT_TIMESTAMP, 11),
    (10001,  'khalid',    'mansour',  'HOMME', 'ouled ganem',  'El jadida', 'maroc', '0666626253', '1930-06-20', CURRENT_TIMESTAMP, 12),
    (10002,  'souad',     'frhan',   'FEMME', '12 cite anam', 'El jadida', 'maroc', '0666676666', '1921-11-20', CURRENT_TIMESTAMP, 13),
    (10003,  'souad3',     'frhan',   'FEMME', '12 douar amr', 'El jadida', 'maroc', '0666676666', '1970-06-20', CURRENT_TIMESTAMP, 13),
    (10004,  'souad4',     'frhan',   'FEMME', '12  rue atlas', 'El jadida', 'maroc', '06699676666', '1989-09-20', CURRENT_TIMESTAMP, 13),
    (10005,  'souad5',     'frhan',   'FEMME', '12  rue atlas', 'El jadida', 'maroc', '0666676666', '1956-06-20', CURRENT_TIMESTAMP, 13),
    (10006,  'souad6',     'frhan',   'FEMME', '12  rue atlas', 'El jadida', 'maroc', '0666676666', '1912-05-20', CURRENT_TIMESTAMP, 13),
    (10007,  'souad7',     'frhan',   'FEMME', '12  rue atlas', 'El jadida', 'maroc', '0666676666', '1999-06-20', CURRENT_TIMESTAMP, 13),
    (10008,  'souad8',     'frhan',   'FEMME', '12 cite atlas', 'El jadida', 'maroc', '0666676666', '2000-04-20', CURRENT_TIMESTAMP, 13),
    (10009,  'souad9',     'frhan',   'FEMME', '12 cite atlas', 'El jadida', 'maroc', '0666676666', '1945-03-20', CURRENT_TIMESTAMP, 13),
    (10010,  'souad10',     'frhan',   'FEMME', '12 cite atlas', 'El jadida', 'maroc', '0666676666', '1992-06-20', CURRENT_TIMESTAMP, 13);
 	
 INSERT INTO Allergy 
    (id , pid, substance, reaction, severity, occurence, begin_date, referred_by) values
    (1, 10000, 'penicillin', 'cough', 2,        '2Mo',  '2006-01-01', 'sqali'),
    (2, 10000, 'pollen',     'asthma', 3,        '2Mo',  '2006-01-01', 'sqali'),
    (3, 10000, 'nuts', 'sneezing', 2,        '2Mo',  '2006-01-01', 'sqali'),
    (4, 10000, 'aspirin', 'itchy', 3,        '2Mo',  '2006-01-01', 'sqali');
    
    

INSERT INTO patient (pid, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, CITY, COUNTRY, CELL_PHONE ) VALUES (100020, 'souad20', 'frhan20', 'FEMME', '20 cite anam', 'El jadida', 'maroc', '0666676620'),(100021, 'souad21', 'frhan21', 'FEMME', '21 cite anam', 'El jadida', 'maroc', '0666676621'),(100022, 'souad22', 'frhan22', 'FEMME', '22 cite anam', 'El jadida', 'maroc', '0666676622'),(100023, 'souad23', 'frhan23', 'FEMME', '23 cite anam', 'El jadida', 'maroc', '0666676623'),(100024, 'souad24', 'frhan24', 'FEMME', '24 cite anam', 'El jadida', 'maroc', '0666676624'),(100025, 'souad25', 'frhan25', 'FEMME', '25 cite anam', 'El jadida', 'maroc', '0666676625'),(100026, 'souad26', 'frhan26', 'FEMME', '26 cite anam', 'El jadida', 'maroc', '0666676626'),(100027, 'souad27', 'frhan27', 'FEMME', '27 cite anam', 'El jadida', 'maroc', '0666676627'),(100028, 'souad28', 'frhan28', 'FEMME', '28 cite anam', 'El jadida', 'maroc', '0666676628'),(100029, 'souad29', 'frhan29', 'FEMME', '29 cite anam', 'El jadida', 'maroc', '0666676629'),(100030, 'souad30', 'frhan30', 'FEMME', '30 cite anam', 'El jadida', 'maroc', '0666676630'),(100031, 'souad31', 'frhan31', 'FEMME', '31 cite anam', 'El jadida', 'maroc', '0666676631'),(100032, 'souad32', 'frhan32', 'FEMME', '32 cite anam', 'El jadida', 'maroc', '0666676632'),(100033, 'souad33', 'frhan33', 'FEMME', '33 cite anam', 'El jadida', 'maroc', '0666676633'),(100034, 'souad34', 'frhan34', 'FEMME', '34 cite anam', 'El jadida', 'maroc', '0666676634'),(100035, 'souad35', 'frhan35', 'FEMME', '35 cite anam', 'El jadida', 'maroc', '0666676635'),(100036, 'souad36', 'frhan36', 'FEMME', '36 cite anam', 'El jadida', 'maroc', '0666676636'),(100037, 'souad37', 'frhan37', 'FEMME', '37 cite anam', 'El jadida', 'maroc', '0666676637'),(100038, 'souad38', 'frhan38', 'FEMME', '38 cite anam', 'El jadida', 'maroc', '0666676638'),(100039, 'souad39', 'frhan39', 'FEMME', '39 cite anam', 'El jadida', 'maroc', '0666676639'),(100040, 'souad40', 'frhan40', 'FEMME', '40 cite anam', 'El jadida', 'maroc', '0666676640'),(100041, 'souad41', 'frhan41', 'FEMME', '41 cite anam', 'El jadida', 'maroc', '0666676641'),(100042, 'souad42', 'frhan42', 'FEMME', '42 cite anam', 'El jadida', 'maroc', '0666676642'),(100043, 'souad43', 'frhan43', 'FEMME', '43 cite anam', 'El jadida', 'maroc', '0666676643'),(100044, 'souad44', 'frhan44', 'FEMME', '44 cite anam', 'El jadida', 'maroc', '0666676644'),(100045, 'souad45', 'frhan45', 'FEMME', '45 cite anam', 'El jadida', 'maroc', '0666676645'),(100046, 'souad46', 'frhan46', 'FEMME', '46 cite anam', 'El jadida', 'maroc', '0666676646'),(100047, 'souad47', 'frhan47', 'FEMME', '47 cite anam', 'El jadida', 'maroc', '0666676647'),(100048, 'souad48', 'frhan48', 'FEMME', '48 cite anam', 'El jadida', 'maroc', '0666676648'),(100049, 'souad49', 'frhan49', 'FEMME', '49 cite anam', 'El jadida', 'maroc', '0666676649'),(100050, 'souad50', 'frhan50', 'FEMME', '50 cite anam', 'El jadida', 'maroc', '0666676650'),(100051, 'souad51', 'frhan51', 'FEMME', '51 cite anam', 'El jadida', 'maroc', '0666676651'),(100052, 'souad52', 'frhan52', 'FEMME', '52 cite anam', 'El jadida', 'maroc', '0666676652'),(100053, 'souad53', 'frhan53', 'FEMME', '53 cite anam', 'El jadida', 'maroc', '0666676653'),(100054, 'souad54', 'frhan54', 'FEMME', '54 cite anam', 'El jadida', 'maroc', '0666676654'),(100055, 'souad55', 'frhan55', 'FEMME', '55 cite anam', 'El jadida', 'maroc', '0666676655'),(100056, 'souad56', 'frhan56', 'FEMME', '56 cite anam', 'El jadida', 'maroc', '0666676656'),(100057, 'souad57', 'frhan57', 'FEMME', '57 cite anam', 'El jadida', 'maroc', '0666676657'),(100058, 'souad58', 'frhan58', 'FEMME', '58 cite anam', 'El jadida', 'maroc', '0666676658'),(100059, 'souad59', 'frhan59', 'FEMME', '59 cite anam', 'El jadida', 'maroc', '0666676659'),(100060, 'souad60', 'frhan60', 'FEMME', '60 cite anam', 'El jadida', 'maroc', '0666676660'),(100061, 'souad61', 'frhan61', 'FEMME', '61 cite anam', 'El jadida', 'maroc', '0666676661'),(100062, 'souad62', 'frhan62', 'FEMME', '62 cite anam', 'El jadida', 'maroc', '0666676662'),(100063, 'souad63', 'frhan63', 'FEMME', '63 cite anam', 'El jadida', 'maroc', '0666676663'),(100064, 'souad64', 'frhan64', 'FEMME', '64 cite anam', 'El jadida', 'maroc', '0666676664'),(100065, 'souad65', 'frhan65', 'FEMME', '65 cite anam', 'El jadida', 'maroc', '0666676665'),(100066, 'souad66', 'frhan66', 'FEMME', '66 cite anam', 'El jadida', 'maroc', '0666676666'),(100067, 'souad67', 'frhan67', 'FEMME', '67 cite anam', 'El jadida', 'maroc', '0666676667'),(100068, 'souad68', 'frhan68', 'FEMME', '68 cite anam', 'El jadida', 'maroc', '0666676668'),(100069, 'souad69', 'frhan69', 'FEMME', '69 cite anam', 'El jadida', 'maroc', '0666676669'),(100070, 'souad70', 'frhan70', 'FEMME', '70 cite anam', 'El jadida', 'maroc', '0666676670');
