Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT `Customer ID`, COUNT(*) AS Purchase_Count
FROM walmart_sales
GROUP BY `Customer ID`
HAVING Purchase_Count > 1
ORDER BY Purchase_Count DESC;
