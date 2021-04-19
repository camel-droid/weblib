/**********************************/
/* 既存テーブル群の削除 */
/**********************************/
delete from lendings cascade;
delete from users cascade;
delete from books cascade;
delete from catalogue cascade;
delete from publishers cascade;
delete from categories cascade;

-- categories_masterテーブル用サンプル
insert into categories values (0, '総記');
insert into categories values (1, '哲学');
insert into categories values (2, '歴史');
insert into categories values (3, '社会科学');
insert into categories values (4, '自然科学');
insert into categories values (5, '技術');
insert into categories values (6, '産業');
insert into categories values (7, '芸術');
insert into categories values (8, '言語');
insert into categories values (9, '文学');

-- publishers_masterテーブル用サンプル
insert into publishers values (1, '青土社');
insert into publishers values (2, '筑摩書房');
insert into publishers values (3, '翔泳社');
insert into publishers values (4, '工学社');
insert into publishers values (5, 'ピアソン・エデュケーション');

-- books_catalogueテーブル用サンプル
insert into catalogue (isbn, category_code, publisher_code, title, author, publish_at) values ('9784791762460', 4, 1, '人生を完全にダメにするための11のレッスン', 'ドミニク=ノゲーズ', '2005-11-01');
insert into catalogue (isbn, category_code, publisher_code, title, author, publish_at) values ('9784480425993', 1, 2, 'よいこの君主論', '架神 恭介/辰巳 一世', '2009-05-11');
insert into catalogue (isbn, category_code, publisher_code, title, author, publish_at) values ('9784894712768', 5, 5, 'UMLによるWebアプリケーション開発', '中田成典', '2000-12-01');
insert into catalogue (isbn, category_code, publisher_code, title, author, publish_at) values ('9784798103259', 0, 3, '例解 JSPベストプラクティス', 'Andrew Patzer', '2003-12-18');
insert into catalogue (isbn, category_code, publisher_code, title, author, publish_at) values ('9784777511716', 5, 4, 'Strutsを活用したWebアプリケーション開発', '中村健二', '2005-10-01');

-- books_masterテーブル用サンプル
insert into books (id, isbn, arrival_at) values (1, '9784791762460', '2005-12-01');
insert into books (id, isbn, arrival_at, disposal_at, description) values (2, '9784791762460', '2005-12-01', '2008-03-03', '劣化のため廃棄');
insert into books (id, isbn) values (3, '9784480425993');
insert into books (id, isbn) values (4, '9784894712768');
insert into books (id, isbn) values (5, '9784798103259');
insert into books (id, isbn) values (6, '9784777511716');

-- users_masterテーブル用サンプル
insert into users (name, zipcode, address, phone, email, birthday, created_at) values ('新宿太郎', '160-0000', '東京都新宿区新宿御苑', '03-1111-2222', 's-taro@gyoen.org', '1954-02-24', '2010-04-28');
insert into users (name, zipcode, address, phone, email, birthday, created_at) values ('渋谷地下', '160-0000', '東京都新宿区中央公園', '03-2222-3333', 'sib-chika@chuo.org', '1976-03-02', '2011-2-19');
insert into users (name, zipcode, address, phone, email, birthday, created_at) values ('山田花子', '160-0000', '東京都新宿区四谷三丁目', '03-3333-4444', 'y_hana@yotsuya.org', '2004-11-07', '2017-10-29');
insert into users (name, zipcode, address, phone, email, birthday, created_at) values ('西郷隆盛', '110-0007', '東京都台東区上野公園', '03-4444-5555', 'tsaigo@simadu.com', '1928-01-23', '1966-10-19');
insert into users (name, zipcode, address, phone, email, birthday) values ('勝海舟', '145-0063', '東京都大田区洗足池公園', '03-5555-6666', 'kaishu-k@bakumastu.com', '1923-03-12');

-- lendingsテーブル用サンプル
insert into lendings values (1, 2, 3, '2018-06-01', '2018-06-15', '2018-06-15');
insert into lendings values (2, 1, 4, '2018-06-02', '2018-06-16', '2018-06-14');
insert into lendings values (3, 5, 2, '2018-06-02', '2018-06-16', null);

