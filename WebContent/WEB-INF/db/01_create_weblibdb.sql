/*
 * �����f�[�^�x�[�X�̍폜�F������
 */
drop database if exists weblibdb;
drop user if exists librarian;
create user librarian with password 'himitu';
create database weblibdb owner librarian encoding 'UTF8';
