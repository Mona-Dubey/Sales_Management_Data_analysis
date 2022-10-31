/****** Cleansed Customer Dim Table ******/
SELECT 
  [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname as [FirstName], 
  --,[MiddleName]
  c.lastname as [LastName], 
  c.firstname + ' ' + lastname as[Full Name], 
  --combined first name and last name,
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase as DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Customer City] --Joined in Customer City from Geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on g.geographykey = c.geographykey 
order by 
  CustomerKey ASC --Ordered list by CustomerKey
