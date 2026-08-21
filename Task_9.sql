Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT `Customer ID`, ROUND(SUM(Total),2) AS Total_Spending
FROM walmart_sales
GROUP BY `Customer ID`
ORDER BY Total_Spending DESC
LIMIT 5;
