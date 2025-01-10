

-- Cleaning DimCustomer Table

SELECT 
  c.CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName, 
  --,[MiddleName]
  c.LastName, 
  c.FirstName + ' ' + c.LastName As [FullName], 
  --     ,[NameStyle]
  --     ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  Case c.Gender When 'M' Then 'Male' When 'F' Then 'Female' END as Gender, 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --     ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --    ,[AddressLine1]
  --    ,[AddressLine2]
  --   ,[Phone]
  c.DateFirstPurchase as FirstPurchaseDate, 
  --      ,[CommuteDistance]

  -- Joining Customer City from Geography Table
  g.city As CustomerCity 
From 
  dbo.DimCustomer c 
  LEFT JOIN dbo.DimGeography as g on g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered by CustomerKey
