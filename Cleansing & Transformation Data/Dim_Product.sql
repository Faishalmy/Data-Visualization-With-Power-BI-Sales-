--Clean DIM_Product Table
SELECT 
  p.[ProductKey] AS [Product Key], 
  p.[ProductAlternateKey] AS [Product Alternate Key], 
  --,p.[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  pc.[EnglishProductCategoryName] AS [Product Category Name], --From Product Category Table
  ps.[EnglishProductSubcategoryName] AS [Product Subcategory Name], --From Product Subcategory Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice] 
  --,[Size]
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  --,[ProductLine] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  --,[ModelName]
  --,[LargePhoto]
  --,[EnglishDescription]
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  p.[StartDate] AS [Start Date], 
  p.[EndDate] AS [End Date], 
  ISNULL (p.Status, 'Outdated') AS [Status] --Replace NULL
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey --Joined Product Subcategory
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey --Joined Product Category
