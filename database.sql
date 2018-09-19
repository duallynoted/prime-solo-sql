Tasks
Get all users from Chicago.
select * from "accounts"
where "city" = 'chicago';

Get all users with usernames that contain the letter a.
select * from "accounts"
where "username" ILIKE '%a%';

The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE "accounts" SET "account_balance" = 10.00
where "account_balance" = 0.00 and "transactions_attempted"=0;

Select all users that have attempted 9 or more transactions.
select * from "accounts"
where "transactions_attempted" > 9;

Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
select "username", "account_balance" from "accounts"
order by "account_balance" desc LIMIT 3 ;

Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
select "username", "account_balance" from "accounts"
order by "account_balance" asc LIMIT 3 ;

Get all users with account balances that are more than $100.
select * from "accounts"
where "account_balance" > 100;

Add a new record.
insert into "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance") 
values ('daniel', 'minneapolis', 8, 8, 75000.00);
The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
delete from "accounts"
where ("city" = 'miami' or "city" = 'phoenix') and "transactions_completed" <=5;