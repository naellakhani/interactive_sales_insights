# show transactions for Chennai market (market code="Mark001"
SELECT * FROM transactions where market_code='Mark001';

# show distinct product codes that were sold in Chennai
SELECT distinct product_code FROM transactions where market_code='Mark001';

# show transactions where currency is USD
SELECT * FROM transactions where currency="USD";

# show transactions in 2020 only. 
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where date.year=2020;

# show total revenue in year 2020 only. 
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where date.year=2020 and sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r";

# show total revenue in year 2020, January month only.
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where date.year=2020 and date.month_name="January" and sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r";

# show total revenue in year 2020 in Chennai. 
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where date.year=2020 and transactions.market_code = "Mark001";
