-- JOINING PRODUCTS, PRODUCT CATEGORY AND PRODUCT SUB CATEGORY + UPDATING THE PRODUCTSTATUS COLUMN

SELECT 
  p.ProductKey, 
  p.ProductAlternateKey As ProductItemCode, 
  --      ,[ProductSubcategoryKey]
  --       ,[WeightUnitMeasureCode]
  --   ,[SizeUnitMeasureCode]
  p.EnglishProductName As RroductName, 
  ps.EnglishProductSubcategoryName AS SubCategory, 
  -- JOINED FROM SUB CATEGORY TABLE
  pc.EnglishProductCategoryName AS ProductCategory, 
  -- JOINED FROM CATEGORY TABLE
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag]
  p.Color as ProductColor, 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --      ,[ListPrice]
  p.Size as ProductSize, 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.ProductLine, 
  --       ,[DealerPrice]
  --       ,[Class]
  --       ,[Style]
  p.ModelName as ProductModelName, 
  --       ,[LargePhoto]
  p.EnglishDescription as ProductDescription, 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --    ,[JapaneseDescription]
  --  ,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL (p.Status, 'Outdated') As ProductStatus 
FROM 
  dbo.DimProduct as p 
  left join dbo.DimProductSubcategory ps on p.ProductSubcategoryKey = ps.ProductCategoryKey 
  left join dbo.DimProductCategory pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.productkey asc
