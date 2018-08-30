-- 
-- create database and user
--
create database if not exists neogary;
create user if not exists 'neogary-dev'@'localhost' identified by 'qwe123*';
grant all privileges on neogary . * to 'neogary-dev'@'localhost';

-- tables
--
-- botcommand
--
drop table if exists neogary.botcommand;
create table neogary.botcommand (
  id int not null auto_increment,
  name varchar(32) not null,
  description varchar(255) not null,
  permtier int not null,
  module varchar(255) not null,
  primary key (id)
);

--
-- role
--
drop table if exists neogary.role;
create table neogary.role (
  id int not null auto_increment,
  discordid varchar(18) not null,
  isassignable boolean not null,
  permtier int not null,
  primary key (id)
);

--
-- messageblacklist
--
drop table if exists neogary.messageblacklist;
create table neogary.messageblacklist (
  id int not null auto_increment,
  text varchar(255) not null,
  primary key (id)
);
