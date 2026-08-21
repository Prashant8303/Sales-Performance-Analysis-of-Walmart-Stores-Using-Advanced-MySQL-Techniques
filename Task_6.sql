Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS Month_No,
       Gender,
       ROUND(SUM(Total),2) AS Total_Sales
FROM walmart_sales
GROUP BY Month_No, Gender
ORDER BY Month_No, Gender;

