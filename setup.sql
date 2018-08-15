create database if not exists neogary;
create user if not exists 'neogary-dev'@'localhost' identified by 'qwe123*';
grant all privileges on neogary . * to 'neogary-dev'@'localhost';
