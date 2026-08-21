Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT Branch, `Product line`,
       ROUND(SUM(`gross income`),2) AS Total_Profit
FROM walmart_sales
GROUP BY Branch, `Product line`
ORDER BY Branch, Total_Profit DESC;

