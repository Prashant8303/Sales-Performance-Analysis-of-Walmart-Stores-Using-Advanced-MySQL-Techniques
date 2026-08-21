Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT City, Payment, COUNT(*) AS Payment_Count
FROM walmart_sales
GROUP BY City, Payment
ORDER BY City, Payment_Count DESC;

