-- Cleaning FactInternetSalesTable


SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
--      ,[PromotionKey]
--      ,[CurrencyKey]
--      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
--      ,[SalesOrderLineNumber]
--      ,[RevisionNumber]
--      ,[OrderQuantity]
--      ,[UnitPrice]
--      ,[ExtendedAmount]
--      ,[UnitPriceDiscountPct]
--      ,[DiscountAmount]
--      ,[ProductStandardCost]
--      ,[TotalProductCost]
      ,[SalesAmount]
--      ,[TaxAmt]
--      ,[Freight]
--      ,[CarrierTrackingNumber]
--      ,[CustomerPONumber]
--      ,[OrderDate]
--      ,[DueDate]
--      ,[ShipDate]
  FROM dbo.FactInternetSales
  WHERE LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- ENSURES WE ALWAYS ONLY BRING TWO YEARS OF DATE FROM EXTRACTION  

  ORDER BY OrderDateKey Asc