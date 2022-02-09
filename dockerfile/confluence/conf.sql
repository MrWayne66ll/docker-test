# 创建数据库
CREATE DATABASE confluence CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

grant all on confluence.* to 'confuser'@'%';

SET GLOBAL tx_isolation='READ-COMMITTED';

jdbc:mysql://127.0.0.1:3306/confluence?useUnicode=true&characterEncoding=utf8

