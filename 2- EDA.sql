--- Explatory Data Analysis ----
-- we want to see the precenatge of male :female in the dataset
Select Gender, count(gender) as TotalCount,
count(gender) * 100.0/(select count(*) from dbo.churn) as precentage
from dbo.churn
group by gender;

-- we want to see the precenatge of contract types
Select Contract, count(Contract) as TotalCount,
count(Contract) * 100.0 / (select count(*) from dbo.churn) as precentage
from dbo.churn
group by Contract;

-- we want to check whethere the customer status is churned or stayed or joined
Select Customer_Status, count(Customer_Status) as TotalCount,
count(Customer_Status) * 100.0 / (select count(*) from dbo.churn) as precentage
from dbo.churn
group by Customer_Status;

-- Get the total revenue per customer status and its precentage
SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from dbo.churn) * 100  as RevPercentage
from dbo.churn
Group by Customer_Status;
--- to get the precentage and count of churn  for the customers and arrange them descendingly
SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from dbo.churn)  as Percentage
from dbo.churn
Group by State
Order by Percentage desc;
