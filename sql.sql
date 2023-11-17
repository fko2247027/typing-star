DROP DATABASE IF EXISTS typingstar;
CREATE DATABASE typingstar DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL ON typingstar.* TO 'user'@'localhost' identified BY 'password';
USE typingstar;

CREATE TABLE student_table (
    student_number int NOT null PRIMARY KEY,
    student_name varchar(20) NOT null,
    student_password varchar(10) NOT null,
    student_score int null
   );
   
CREATE TABLE teacher_table (
    teacher_id int AUTO_INCREMENT PRIMARY KEY,
    teacher_name varchar(20) NOT null,
    teacher_password varchar(10) NOT null,
    teacher_score int null
   );

CREATE TABLE word (
    word_id int NOT null PRIMARY KEY,
    word_name varchar(20) NOT null,
    word_hiragana varchar(40) NOT null
);
   
INSERT INTO student_table VALUES(2247073,'a','abcde12345',1000);
INSERT INTO student_table VALUES(2247074,'b','abcde67890',1100);
INSERT INTO student_table VALUES(2247075,'c','fghij12345',1600);


INSERT INTO teacher_table VALUES(null,'e','12345abcde',1000);
INSERT INTO teacher_table VALUES(null,'f','67890abcde',1200);
INSERT INTO teacher_table VALUES(null,'g','12345fghij',1400);

INSERT INTO word VALUES(null,'いーあるふぁんくらぶ','いーあるふぁんくらぶ');
INSERT INTO word VALUES(null,'千本桜','せんぼんざくら');
INSERT INTO word VALUES(null,'マトリョシカ','まとりょしか');
INSERT INTO word VALUES(null,'ロキ','ろき');
INSERT INTO word VALUES(null,'文学少女インセイン','ぶんがくしょうじょいんせいん');
INSERT INTO word VALUES(null,'ロストワンの号哭','ろすとわんのごうこく');
INSERT INTO word VALUES(null,'ゴーストルール','ごーすとるーる');
INSERT INTO word VALUES(null,'神っぽいな','かみっぽいな');
INSERT INTO word VALUES(null,'エイリアンエイリアン','えいりあんえいりあん');
INSERT INTO word VALUES(null,'こちら、幸福安心委員会です','こちら、こうふくあんしんいいんかいです。');
INSERT INTO word VALUES(null,'脳漿炸裂ガール','のうしょうさくれつがーる');
INSERT INTO word VALUES(null,'妄想税','もうそうぜい');
INSERT INTO word VALUES(null,'ワールズエンド・ダンスホール','わーるずえんど・だんすほーる');
INSERT INTO word VALUES(null,'クワガタにチョップしたらタイムスリップした','くわがたにちょっぷしたらたいむすりっぷした');