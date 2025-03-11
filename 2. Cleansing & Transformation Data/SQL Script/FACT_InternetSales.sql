--Clean FACT_InternetSales Table
SELECT 
  [ProductKey] AS [Product Key], 
  [OrderDateKey] AS [Order Date Key], 
  [DueDateKey] AS [Due Date Key], 
  [ShipDateKey] AS [Ship Date Key], 
  [CustomerKey] AS [Customer Key], 
  --,[PromotionKey]
  --,[CurrencyKey]
  --,[SalesTerritoryKey]
  --,[SalesOrderNumber]
  --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  --,[OrderQuantity]
  --,[UnitPrice]
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  --,[DiscountAmount]
  --,[ProductStandardCost]
  [TotalProductCost] AS [Total Cost],
  [SalesAmount] AS [Sales Amount] 
  --,[TaxAmt]
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  --,[OrderDate] 
  --,[DueDate] 
  --,[ShipDate] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE())-2 --ensure the extracted years are only the last 3 years
  AND CurrencyKey = '100' --ensure that only USD currency is used
ORDER BY 
  OrderDateKey ASC