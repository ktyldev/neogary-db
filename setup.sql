create database if not exists neogary;
create user if not exists 'neogary-dev'@'localhost' identified by 'qwe123*';
grant all privileges on neogary . * to 'neogary-dev'@'localhost';

-- create tables
--
-- botcommand
--
drop table if exists botcommand;
create table botcommand (
  id int not null auto_increment,
  name varchar(20) not null,
  description varchar(255),
  primary key (id)
);

--
-- roles
--
drop table if exists role;
create table role (
  id int not null auto_increment,
  discordid varchar(18) not null,
  isassignable boolean not null,
  primary key (id)
);
