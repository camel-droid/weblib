/*
 * 既存データベースの削除：初期化
 */
drop database if exists weblibdb;
drop user if exists librarian;
create user librarian with password 'himitu';
create database weblibdb owner librarian encoding 'UTF8';
