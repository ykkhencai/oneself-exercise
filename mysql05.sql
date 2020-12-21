1. 统计每位作家出版图书的平均价格
select author,avg(price) from book group by author;
2. 统计每个出版社出版图书数量
select press,count(name) from book group by press;
3. 查看总共有多少个出版社
select press(distinct press) from book;
4. 筛选出那些出版过超过50元图书的出版社，并按照其出版图书的平均价格降序排序
select press,avg(price) from book
group by press having max(price)>50
order by avg(select) desc;
5. 统计同一时间出版图书的最高价格和最低价
select date,max(price),min(price) from book group by date;