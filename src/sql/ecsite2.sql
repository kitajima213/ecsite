drop database if exists ecsite2;

create database if not exists ecsite2;
use ecsite2;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_type varchar(16),
img varchar(50),
item_name varchar(50),
item_detail varchar(150),
item_price int,
item_stock int,
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
itemName varchar(30),
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);


drop table if exists user_contact;

create table user_contact(
user_name varchar(50),
user_email varchar(50),
message_title varchar(50),
message_main varchar(300),
insert_date datetime,
delete_date datetime
);

INSERT INTO item_info_transaction(id, item_type, img, item_name, item_detail, item_price, item_stock) VALUES(1, "PS4", "/ecsite/img/PS4_1.jpg", "KNACK", "主人公のナックを操り敵を倒しながら1本道を進む、ステージクリア型の古典的アクションゲーム。", 3800, 20),
(2,"PS4", "/ecsite/img/PS4_2.jpg", "KILLZONE SHADOW FALL", "惑星間戦略同盟（ISA）傘下の国家「ヴェクタ」と、独裁国家「ヘルガーン」との戦いを描くSFファーストパーソン・シューティングゲーム。", 4800, 20),
(3, "PS4", "/ecsite/img/PS4_3.jpg", "ニード・フォー・スピード ライバルズ", "アメリカの架空の都市にてライバルとレースを行うレースゲーム。ゲームとしては『ニード・フォー・スピード ホット・パースート』の流れを組み、プレイヤーはレーサーもしくは警察としてレースを行う。", 5000, 20),
(4, "PS4", "/ecsite/img/PS4_4.jpg", "信長の野望・創造", "戦国大名の中から一人を選び、全国統一を果たす事が最終目標となる歴史シミュレーションゲーム。", 5800, 20),
(5, "PS4", "/ecsite/img/PS4_5.jpg", "Bloodborne", "『Demon's Souls』、『DARK SOULS』シリーズのゲームシステムを受け継いだアクションRPG", 5800, 20),
(6, "PS4", "/ecsite/img/PS4_6.jpg", "ザ・ロストチャイルド", "2011年に発売された『エルシャダイ』の系譜を継いだ作品で、新たな神話構想の物語を描いたRPGである。", 5800, 20),
(7, "PSVITA", "/ecsite/img/PSVITA_1.jpg", "FREEDOM WARS", "従来のハンティングアクションゲームにある「対象の排除」を目的としたミッションに加え、生体兵器から市民を救出する「対象の奪還」という要素が追加されたマルチプレイアクションゲームである。", 3800, 20),
(8, "PSVITA", "/ecsite/img/PSVITA_2.jpg", "GOD EATER RESURRECTION", "PSPで発売されたゴッドイーター バーストをPS4とPS Vitaでさらにリメイクした作品。", 3800, 20),
(9, "PSVITA", "/ecsite/img/PSVITA_3.jpg", "GOD EATER 2 RAGE BURST", "前作「2」のシナリオを完全収録し、かつ一部のイベントに改良が加えられ、新シナリオ「レイジバースト編」を収録したバージョン。", 3800, 20),
(10, "Switch", "/ecsite/img/Switch_1.jpg", "ゼルダの伝説 ブレス オブ ザ ワイルド", "すべてのマップがシームレスに繋がっているオープンワールドなアクションアドベンチャーゲーム", 5800, 20),
(11, "Switch", "/ecsite/img/Switch_2.jpg", "スーパーマリオ オデッセイ", "Nintendo Switch向けの3Dマリオシリーズ完全新作で、GCの『スーパーマリオサンシャイン』以来実に15年ぶりとなる、箱庭探索型の3Dアクションゲーム", 5800, 20),
(12, "Switch", "/ecsite/img/Switch_3.jpg", "Splatoon2", "前作『Splatoon』の基本的な要素はそのままにSwitch向けに作られたシリーズ2作目となる続編", 5800, 20),
(13, "Wiiu", "/ecsite/img/Wiiu_1.jpg", "Splatoon", "プレイヤーキャラであるインクリングを操作し、ブキを用いて地面を塗ったり敵を倒して戦う三人称視点のシューティングゲーム（TPS）。", 5800, 20),
(14, "3ds", "/ecsite/img/3ds_1.jpg", "Hey! ピクミン", "ピクミンシリーズ初の横スクロールアクションのスピンオフ作品。", 4800, 20);
INSERT INTO login_user_transaction(login_id, login_pass, user_name) VALUES("test", "111", "kitajima"),("a", "a", "a");