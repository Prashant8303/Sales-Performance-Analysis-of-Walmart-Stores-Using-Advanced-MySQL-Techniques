Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT DAYNAME(STR_TO_DATE(Date, '%d-%m-%Y')) AS Day_Name,
       ROUND(SUM(Total),2) AS Total_Sales
FROM walmart_sales
GROUP BY Day_Name
ORDER BY Total_Sales DESC;
