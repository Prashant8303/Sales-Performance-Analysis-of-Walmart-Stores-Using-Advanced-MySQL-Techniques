Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT Branch, 
       MONTH(Date) AS Month_No,
       ROUND(SUM(Total),2) AS Monthly_Sales
FROM walmart_sales
GROUP BY Branch, Month_No
ORDER BY Branch, Month_No;
