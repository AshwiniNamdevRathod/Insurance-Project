create database insurance_datasets;
use insurance_datasets;

-- 1.No of Invoice by Account Executive

SELECT * FROM invoice;
    
SELECT 
    account_executive, count(*) as no_invoice
FROM 
    invoice
GROUP BY 
    account_executive;

-- 2.Yearly Meeting Count

SELECT * FROM meeting;
    
SELECT 
    account_executive,
    COUNT(*) as meeting_count
FROM 
    meeting
GROUP BY 
    account_executive;

-- 3.sum of revenue amounts by opportunity name

SELECT * FROM opportunity;

SELECT 
    opportunity_name,
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunity
GROUP BY 
    opportunity_name;
    
-- 4.Sum of revenue_amount by stage

SELECT * FROM opportunity;

SELECT 
    stage,
    SUM(revenue_amount) AS total_revenue
FROM 
    opportunity
GROUP BY 
    stage;

-- 5.Total revenue & opportunity count by stage    

SELECT * FROM opportunity;

SELECT 
    stage,
    SUM(revenue_amount) AS total_revenue,
    COUNT(*) AS opportunity_count
FROM 
    opportunity
GROUP BY 
    stage;

-- 6.Top Open Opportunity

SELECT * FROM 
    opportunity;
SELECT 
    opportunity_name,
    opportunity_id,
    account_executive,
    revenue_amount
FROM 
    opportunity
WHERE 
    stage = 'Qualify Opportunity' -- Assuming 'Qualify Opportunity' represents an open opportunity stage
ORDER BY 
    revenue_amount DESC
LIMIT 1;



