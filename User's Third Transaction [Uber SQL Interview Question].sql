User's Third Transaction [Uber SQL Interview Question]


SELECT t1.user_id
     , t1.spend
     , t1.transaction_date
FROM (SELECT user_id
           , spend
           , transaction_date
           , RANK() OVER(PARTITION BY user_id ORDER BY transaction_date ) rnk 
             FROM transactions) t1 
WHERE rnk = 3;