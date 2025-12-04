 
 --we will put our replaced null value data from the new source data table product_churn
 -- into 2 table views  vw_churned and vw_Joined

 create view vw_churned as
  select * from product_churn where Customer_Status in('Churned','Stayed')

create view vw_Joined as
  select * from product_churn where Customer_Status = 'Joined'


  