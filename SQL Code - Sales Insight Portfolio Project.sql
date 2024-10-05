select * from sales.customers;
select * from sales.transactions;
select * from sales.markets;
select * from sales.products;

select count(*) from sales.transactions;
select count(*) from sales.customers;

select * from sales.transactions limit 5;
select * from sales.transactions where market_code= "Mark001";
select count(*) from sales.transactions where market_code= "Mark001";

select * from sales.transactions where currency = "USD";
select * from sales.date;

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date ON sales.transactions.order_date=sales.date.date;
select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

select distinct product_code from sales.transactions where market_code="Mark001";
