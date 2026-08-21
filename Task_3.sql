Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT `Customer ID`,
       ROUND(SUM(Total),2) AS Total_Spending,
       CASE 
         WHEN SUM(Total) >= 1000 THEN 'High Spender'
         WHEN SUM(Total) BETWEEN 500 AND 999 THEN 'Medium Spender'
         ELSE 'Low Spender'
       END AS Spending_Category
FROM walmart_sales
GROUP BY `Customer ID`
ORDER BY Total_Spending DESC;


