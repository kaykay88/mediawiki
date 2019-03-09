CREATE USER 'mediawiki'@'%' IDENTIFIED BY 'mediawiki';
CREATE DATABASE my_wiki;
use my_wiki;
GRANT ALL ON my_wiki.* TO 'mediawiki'@'%';