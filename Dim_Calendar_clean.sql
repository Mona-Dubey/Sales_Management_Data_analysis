/****** Cleansed DimData table  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day, 
  left([EnglishDayNameOfWeek], 3) as DayShort, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName] as Month, 
  left([EnglishMonthName], 3) as MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] as MonthNr, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2020
