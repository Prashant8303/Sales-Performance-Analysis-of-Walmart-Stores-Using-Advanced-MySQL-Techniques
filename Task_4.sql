Use `my_sol_project`;
Select *FROM `walmart_sales`;

SELECT `Invoice ID`, `Product line`, Total
FROM walmart_sales ws
WHERE Total > (
    SELECT AVG(Total) + 2*STDDEV(Total) 
    FROM walmart_sales 
    WHERE `Product line` = ws.`Product line`
)
OR Total < (
    SELECT AVG(Total) - 2*STDDEV(Total) 
    FROM walmart_sales 
    WHERE `Product line` = ws.`Product line`
);

