select vendorID,AVG(fare_amount), SUM(fare_amount) from test-project-uber-429012.uber_data_eng_leo.fact_table
GROUP BY vendorID;

SELECT b.payment_type_name, AVG(a.tip_amount) 
FROM test-project-uber-429012.uber_data_eng_leo.fact_table a
JOIN test-project-uber-429012.uber_data_eng_leo.payment_type_dim b
ON a.payment_type_id = b.payment_type_id
GROUP BY b.payment_type_name