INSERT INTO COMPANY VALUES 
(264001429, 'A PATRWN', 'Vasilopoulos', '2610222555', 'Ag. Nikolaou', 2, 'Patra', 'Greece'),
(548781409, 'B Athinwn', 'Liakopoulos A.E.', '2104440002', '25hs Martiou', 10, 'Athina', 'Greece'),
(187771638, 'Tripolis', 'Anastasopoulos', '2610333000', 'Ypapanths', 7, 'Tripoli', 'Greece');

INSERT INTO USERS VALUES
('X_Panagiot', 'melenepano', 'Panagioths', 'Xristopoulos', '2020-10-10', 'xpanagiot@gmail.com'),
('mavramos', 'doomiseternal', 'Michalis', 'Avramopoulos', '2020-10-10', 'mixas27@gmail.com'),
('pansot', 'madclip', 'Sotiris', 'Panaikas', '2020-12-15', 'sotpant@outlook.com'),
('anag_xri', '123456789', 'Xristos', 'Anagnostopoulos', '2020-10-15', 'anag_xri@yahoo.com'),
('zaxmar', 'qweasdzxc', 'Maria', 'Zaxariou', '2021-01-10', 'zaxmar@gmail.com'),
('neomar', 'qazwsxedc', 'Maria', 'Neofytou', '2020-11-10', 'neofytou@gmail.com'),
('liakos008', 'grantlembarxos', 'Ilias', 'Mamalakis', '2020-10-20', 'liakos008@gmail.com'),
('gian_gian', 'kappa', 'Giannis', 'Gianakopoulos', '2020-10-10', 'gian@gmail.com'),
('konpit', 'kwdikos', 'Konstantinos', 'Pitakis', '2020-10-25', 'konpit@gmail.com'),
('claud_thom', 'Keitha', 'Claudette', 'Thompson', '2020-11-25', 'claud_thom@hotmail.com'),
('nic_har','Danita' ,'Nicholas', 'Harris', '2020-10-15', 'nic_har@gmail.com'),
('neil_burns','qwertyuiop' ,'Neil', 'Burns', '2020-12-10', 'neil_burns@yahoo.com'),
('jak_web', 'kippo', 'Jakob', 'Webb', '2020-11-10', 'jak_web@yahoo.com'),
('bob_jim', 'password', 'Bob', 'Jimenez', '2020-10-12', 'bob_jim@gmail.com'),
('dean_arn', 'krusty', 'Dean', 'Arnold', '2020-10-15', 'dean_arn@gmail.com'),
('mat_john', 'testtest' ,'Mathilde', 'Johnston', '2020-12-10', 'mat_john@yahoo.com'),
('loui_will', 'ouioui', 'Louis', 'Williams', '2020-10-10', 'loui_will@gmail.com'),
('fed_cun', 'rockenroll', 'Fedora', 'Cunningham', '2021-01-05', 'fed_cun@hotmail.com'),
('cal_pie', 'applepie', 'Calvin', 'Pierce', '2020-10-15', 'cal_pie@yahoo.com'),
('jim_par', 'parpar', 'Jimmie', 'Parsons', '2020-11-25', 'jim_par@gmail.com'),
('cin_wal', 'hm1234', 'Cindy', 'Walters', '2020-12-13', 'cin_wal@webmail.com'),
('ber_pow', 'powpow', 'Bertha', 'Powers', '2020-10-23', 'ber_pow@hotmail.gr'),
('tim_gon', 'gongon', 'Timothy', 'Gonzales', '2020-10-12', 'tim_gon@outlook.com'),
('pat_mar', 'marmar', 'Patrick', 'Martinez', '2020-10-15', 'pat_mar@outlook.com'),
('mel_bai', 'baibai', 'Melissa', 'Bailey', '2020-11-10', 'mel_bai@gmail.com'),
('mat_san', 'sansan','Matthew', 'Sanders', '2020-10-15', 'mat_san@gmail.com'),
('dio_sama', 'wryyyy', 'Dio', 'Brando', '2020-10-10', 'dio_sama@gmail.com'),
('jon_joe', 'pluck', 'Jonathan', 'Joestar', '2020-10-10', 'jon_joe@gmail.com'),
('jojo', 'starplantinum', 'Jotaro', 'Kujo', '2020-10-15', 'jojo@gmail.com'),
('ben_pat', 'benben', 'Benjamin', 'Patterson', '2020-10-23', 'ben_pat@gmail.com');

INSERT INTO MANAGER VALUES
('liakos008', 3, 264001429),
('anag_xri', 4, 264001429),
('zaxmar', 5, 548781409),
('neomar', 4, 548781409),
('gian_gian', 2, 187771638),
('konpit', 3, 187771638);

INSERT INTO EVALUATOR VALUES
('claud_thom', DEFAULT, 4, 264001429),
('nic_har', DEFAULT, 5, 264001429),
('neil_burns', DEFAULT, 4, 548781409),
('jak_web', DEFAULT, 3, 548781409),
('bob_jim', DEFAULT, 2, 187771638),
('dean_arn', DEFAULT, 4, 187771638);


INSERT INTO EMPLOYEE VALUES
('mat_john', DEFAULT, 'Worked for google', 'Amazing', 'No certificates', 'Employee of the month', 'GR,EN', 264001429, 4),
('loui_will', DEFAULT, 'Worked for yahoo', 'Good', '5 certificates', 'Employee of the year', 'GR,EN,SP', 264001429, 2),
('fed_cun', DEFAULT, 'Looking for a good job', 'Newbie', 'No certificates', 'None', 'GR', 264001429, 1),
('cal_pie', DEFAULT, 'Looking for a good job', 'Newbie', 'No certificates', 'None', 'GR', 264001429, 1),
('jim_par', DEFAULT, '1st place in hackathon', 'Amazing programmer', '2 certificates', 'None', 'GR,EN', 264001429, 3),
('cin_wal', DEFAULT, '', '', 'No certificates', 'None', 'GR,EN', 548781409, 1),
('ber_pow', DEFAULT, '', '', '2 certificates', 'None', 'GR,EN,FR', 548781409, 3),
('tim_gon', DEFAULT, 'Trying new goals', '', '2 certificates', 'Employee of the month', 'GR,EN,FR', 548781409, 4),
('pat_mar', DEFAULT, 'Aiming high', 'Top tier', '2 certificates', 'Employee of the year', 'GR,EN,FR', 548781409, 4),
('mel_bai', DEFAULT, '1st job', '', '3 certificates', '', 'GR,EN', 548781409, 1),
('mat_san', DEFAULT, '', '', 'No certificates', 'None', 'GR,EN', 187771638, 1),
('dio_sama', DEFAULT, '', '', '2 certificates', 'None', 'GR,EN,FR', 187771638, 3),
('jon_joe', DEFAULT, 'Trying new goals', '', '2 certificates', 'Employee of the month', 'GR,EN,FR', 187771638, 4),
('jojo', DEFAULT, 'Aiming high', 'Top tier', '2 certificates', 'Employee of the year', 'GR,EN,FR', 187771638, 4),
('ben_pat', DEFAULT, '1st job', '', '3 certificates', '', 'GR,EN', 187771638, 1);

INSERT INTO ANTIKEIM VALUES
('Maths', 'Mathematics', DEFAULT),
('Applied Mathematics', 'Branch of Mathematics', 'Maths'),
('Chemistry', '', DEFAULT),
('Chemical Engineer', 'Chemistry in Industrial space', 'Chemistry'),
('Engineer', DEFAULT, DEFAULT),
('Computer Engineer', 'He is an engineer, for computers', 'Engineer');

INSERT INTO DEGREE VALUES
('Apolythrio Lykeiou', 'Kastritsi', 'LYKEIO'),
('Apolythrio Lykeiou', 'Peiramatiko', 'LYKEIO'),
('Chemistry', 'UOP', 'UNIV'),
('Chemistry', 'UOA', 'UNIV'),
('Chemistry PHD', 'UOP', 'PHD'),
('Chemistry PHD', 'UOA', 'PHD'),
('CEID', 'UOP', 'UNIV');

INSERT INTO HAS_DEGREE VALUES
('Apolythrio Lykeiou', 'Kastritsi', 'mat_john', '2010', 19),
('Apolythrio Lykeiou', 'Kastritsi', 'loui_will', '2012', 20),
('Apolythrio Lykeiou', 'Kastritsi', 'fed_cun', '2013', 15),
('Apolythrio Lykeiou', 'Kastritsi', 'cal_pie', '2011', 16),
('Apolythrio Lykeiou', 'Kastritsi', 'jim_par', '2009', 13.2),
('Apolythrio Lykeiou', 'Kastritsi', 'cin_wal', '2011', 17),
('Apolythrio Lykeiou', 'Peiramatiko', 'ber_pow', '2010', 16),
('Apolythrio Lykeiou', 'Peiramatiko', 'tim_gon', '2011', 15),
('Apolythrio Lykeiou', 'Peiramatiko', 'pat_mar', '2009', 12),
('Apolythrio Lykeiou', 'Peiramatiko', 'mel_bai', '2008', 18),
('Apolythrio Lykeiou', 'Peiramatiko', 'mat_san', '2000', 19),
('Apolythrio Lykeiou', 'Peiramatiko', 'dio_sama', '2001', 20),
('Apolythrio Lykeiou', 'Peiramatiko', 'jon_joe', '2004', 15),
('Apolythrio Lykeiou', 'Peiramatiko', 'jojo', '2000', 13),
('Apolythrio Lykeiou', 'Peiramatiko', 'ben_pat', '2011', 17.5),
('Chemistry', 'UOP', 'mat_john', '2015', 8),
('Chemistry', 'UOA', 'loui_will', '2014', 6),
('CEID', 'UOP', 'fed_cun', '2019', 8),
('Chemistry', 'UOP', 'cal_pie', '2015', 8),
('Chemistry', 'UOA', 'cin_wal', '2014', 6),
('CEID', 'UOP', 'tim_gon', '2019', 8),
('Chemistry', 'UOP', 'jim_par', '2015', 8),
('Chemistry', 'UOA', 'ber_pow', '2014', 6),
('CEID', 'UOP', 'mat_san', '2019', 8);


INSERT INTO PROJECT VALUES
('mat_john', 1, 'Use GitHub GraphQL query to get the file content', 'https://github.com/conwnet/github1s/issues/12'),
('mat_john', 2, 'Design Patterns Library', 'https://github.com/nemanjarogic/DesignPatternsLibrary'),
('loui_will', 1, 'Amazon SageMaker Examples', 'https://github.com/aws/amazon-sagemaker-examples'),
('fed_cun', 1, 'AI-on-the-edge-device', 'https://github.com/jomjol/AI-on-the-edge-device'),
('cal_pie', 1, 'Node.js Best Practices', 'https://github.com/goldbergyoni/nodebestpractices'),
('cal_pie', 2, 'react-use', 'https://github.com/streamich/react-use'),
('cal_pie', 3, 'clean-code-javascript', 'https://github.com/ryanmcdermott/clean-code-javascript'),
('jim_par', 1, 'gaze-detection', 'https://github.com/charliegerard/gaze-detection'),
('cin_wal', 1, 'firefox-ios', 'https://github.com/mozilla-mobile/firefox-ios');

INSERT INTO JOB VALUES
(1, '2020-10-10', 800, 'Chemist', 'Patra', 'claud_thom', '2020-9-10', '2020-9-20'),
(2, '2020-10-10', 800, 'Chemist', 'Athina', 'neil_burns', '2020-9-10', '2020-9-20'),
(3, '2020-10-10', 800, 'Chemist', 'Tripoli', 'bob_jim', '2020-9-10', '2020-9-20'),
(4, '2020-10-15', 500, 'Cleaner', 'Patra', 'claud_thom', '2020-9-15', '2020-9-25'),
(5, '2021-03-15', 600, 'Accountant', 'Patra', 'claud_thom', '2021-1-10', '2021-3-20'),
(6, '2021-03-15', 900, 'Engineer', 'Patra', 'claud_thom', '2021-1-10', '2021-3-20'),
(7, '2021-03-15', 1000, 'Programmer', 'Patra', 'claud_thom', '2021-1-10', '2021-3-20'),
(8, '2021-03-15', 800, 'Chemical Engineer', 'Patra', 'claud_thom', '2021-1-10', '2021-3-20'),
(9, '2021-03-15', 800, 'Assistant Manager', 'Patra', 'nic_har', '2021-1-10', '2021-3-20'),
(10, '2021-03-15', 700, 'Support', 'Patra', 'nic_har', '2021-1-10', '2021-3-20');

INSERT INTO NEEDS VALUES
(1, 'Chemistry'),
(2, 'Chemistry'),
(3, 'Chemistry'),
(1, 'Maths'),
(2, 'Maths'),
(3, 'Maths'),
(5, 'Maths'),
(6, 'Engineer'),
(7, 'Computer Engineer'),
(8, 'Chemical Engineer');

INSERT INTO SUBMIT_APPLICATION VALUES
(1, 'mat_john', 1, '2020-9-15'),
(2, 'loui_will', 1, '2020-9-15'),
(3, 'fed_cun', 1, '2020-9-15'),
(4, 'cal_pie', 5, '2021-2-20'),
(5, 'mat_john', 9, '2021-2-20');

INSERT INTO EVALUATION VALUES
(1, 'mat_john', 1, 3, 'Very good', 3, 2),
(2, 'loui_will', 1, 1, 'Not good', 1, 0),
(3, 'fed_cun', 1, 4, 'Excellent', 4, 2),
(4, 'cal_pie', 4, 4, DEFAULT, DEFAULT, 2);

INSERT INTO EVALUATIONRESULT VALUES
(1, 'mat_john', 1, 8, 'Very good'),
(2, 'loui_will', 1, 2, 'Not good'),
(3, 'fed_cun', 1, 10, 'Excellent');


CREATE USER 'X_Panagiot'@'localhost' IDENTIFIED BY 'melenepano';
CREATE USER 'mavramos'@'localhost' IDENTIFIED BY 'doomiseternal';
CREATE USER 'pansot'@'localhost' IDENTIFIED BY 'madclip';
CREATE USER 'anag_xri'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'zaxmar'@'localhost' IDENTIFIED BY 'qweasdzxc';
CREATE USER 'neomar'@'localhost' IDENTIFIED BY 'qazwsxedc';
CREATE USER 'liakos008'@'localhost' IDENTIFIED BY 'grantlembarxos';
CREATE USER 'gian_gian'@'localhost' IDENTIFIED BY 'kappa';
CREATE USER 'konpit'@'localhost' IDENTIFIED BY 'kwdikos';
CREATE USER 'claud_thom'@'localhost' IDENTIFIED BY 'Keitha';
CREATE USER 'nic_har'@'localhost' IDENTIFIED BY 'Danita';
CREATE USER 'neil_burns'@'localhost' IDENTIFIED BY 'qwertyuiop';
CREATE USER 'jak_web'@'localhost' IDENTIFIED BY 'kippo';
CREATE USER 'bob_jim'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'dean_arn'@'localhost' IDENTIFIED BY 'krusty';
CREATE USER 'mat_john'@'localhost' IDENTIFIED BY 'testtest';
CREATE USER 'loui_will'@'localhost' IDENTIFIED BY 'ouioui';
CREATE USER 'fed_cun'@'localhost' IDENTIFIED BY 'rockenroll';
CREATE USER 'cal_pie'@'localhost' IDENTIFIED BY 'applepie';
CREATE USER 'jim_par'@'localhost' IDENTIFIED BY 'parpar';
CREATE USER 'cin_wal'@'localhost' IDENTIFIED BY 'hm1234';
CREATE USER 'ber_pow'@'localhost' IDENTIFIED BY 'powpow';
CREATE USER 'tim_gon'@'localhost' IDENTIFIED BY 'gongon';
CREATE USER 'pat_mar'@'localhost' IDENTIFIED BY 'marmar';
CREATE USER 'mel_bai'@'localhost' IDENTIFIED BY 'baibai';
CREATE USER 'mat_san'@'localhost' IDENTIFIED BY 'sansan';
CREATE USER 'dio_sama'@'localhost' IDENTIFIED BY 'wryyyy';
CREATE USER 'jon_joe'@'localhost' IDENTIFIED BY 'pluck';
CREATE USER 'jojo'@'localhost' IDENTIFIED BY 'starplantinum';
CREATE USER 'ben_pat'@'localhost' IDENTIFIED BY 'benben';

GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'X_Panagiot'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'mavramos'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'pansot'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'anag_xri'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'zaxmar'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'neomar'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'liakos008'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'gian_gian'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'konpit'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'claud_thom'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'nic_har'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'neil_burns'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'jak_web'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'bob_jim'@'localhost'; 
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'dean_arn'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'mat_john'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'loui_will'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'fed_cun'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'cal_pie'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'jim_par'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'cin_wal'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'ber_pow'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'tim_gon'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'pat_mar'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'mel_bai'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'mat_san'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'dio_sama'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'jon_joe'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'jojo'@'localhost';
GRANT ALL PRIVILEGES ON PROJECT_BASEIS.* to 'ben_pat'@'localhost';

FLUSH PRIVILEGES;
