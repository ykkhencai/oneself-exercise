练习 使用book表
1. 将呐喊的价格修改为45元
update book set price=45 where name="呐喊";
2. 增加一个字段出版时间 类型为 date 放在价格后面
alter table book add board_time date;
3. 修改所有老舍的作品出版时间为 2018-10-1
update book set date="2018-10-1" where author="老舍";
4. 修改所有中国文学出版社出版的但是不是老舍的作品出版时间为 2020-1-1
update book set date="2020-1-1" where author!="老舍"and press="中国文学";
5. 修改所有出版时间为Null的图书 出版时间为 2019-10-1
update book set date="2019-10-1" where date=null;
6. 所有鲁迅的图书价格增加5元
update book set price=price+1 where author="鲁迅"
7. 删除所有价格超过70元或者不到40元的图书
alter table book drop price where price between 70 and 40;
