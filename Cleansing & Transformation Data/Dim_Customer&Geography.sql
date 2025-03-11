-- Clean DIM_Customer Table
SELECT 
  c.[CustomerKey], 
  c.[GeographyKey], 
  c.[CustomerAlternateKey], 
  --,[Title]
  --,[FirstName]
  --,[MiddleName]
  --,[LastName]
  --,[NameStyle]
  c.[BirthDate],
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, --Replace value column Gender
  --,[EmailAddress]
  c.[YearlyIncome] AS [YearlyIncome], 
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  c.[EnglishEducation] AS [Education], 
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
  --,[DateFirstPurchase]
  --,[CommuteDistance]
  g.[City] AS [City], 
  g.[StateProvinceName] AS Province, 
  g.[EnglishCountryRegionName] AS Country 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.[GeographyKey] = c.[GeographyKey] -- Join to Dim_Geography Table
