Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT `Customer type`, `Product line`,
       ROUND(SUM(Total),2) AS Total_Sales
FROM walmart_sales
GROUP BY `Customer type`, `Product line`
ORDER BY `Customer type`, Total_Sales DESC;
