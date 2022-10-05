
SELECT * FROM world_population ;
SELECT * FROM [List of the Countries and Territories];

SELECT Count(*) as no_of_record 
FROM world_population;

SELECT [Country], count([Country])
FROM world_population
GROUP BY [Country]
HAVING Count([Country]) > 1 ;


--Most populated, growth trend & area of continent 
SELECT Distinct [continent], 
		SUM(cast([_2022_Population] as bigint)) as _2022_Population,
		ROUND(Sum([Growth_Rate]),2) as GrowthRate,
		sum([Area_km]) as Area	
FROM world_population
GROUP BY [Continent] ORDER BY [_2022_Population] Desc;

	--Asia is the most populated, Africa has a highest growth rate & south America is the largest by areaa(km)


--Most populated countries
SELECT TOP 5 [country], 
		SUM(cast([_2022_Population]  as bigint)) as Population
FROM world_population
GROUP BY [Country] 
ORDER BY [Population] Desc;


		--Least populated countries 2022
SELECT TOP 5 [country],
		SUM(cast([_2022_Population]  as bigint)) as Population
FROM world_population
GROUP BY [Country] ORDER BY [Population];
		


--Densely populated country
--I defined it as country that has more people and less space (overcrowded)
SELECT TOP 5 [country],
		SUM(cast([_2022_population] as bigint)) as Population	
FROM world_population
WHERE [_2022_Population] > (SELECT AVG(Cast([_2022_Population] as bigint)) 
								FROM world_population)
	AND [Area_km] < (SELECT AVG([Area_km]) FROM world_population)
GROUP BY [Country] ORDER BY [Population] Desc;


 --continent based on area(km)
SELECT [continent],
		AVG([Area_km]) as Area	
FROM world_population
GROUP BY [Continent] ORDER BY [Area] Desc;


--Largest & smallest country based on area(km)
SELECT TOP 5 [country],
		AVG([Area_km]) as Area	
FROM world_population
GROUP BY [Country] ORDER BY [Area] Desc;

SELECT TOP 5 [country],
		AVG([Area_km]) as Area	
FROM world_population
GROUP BY [Country] ORDER BY [Area] ;
	--OR--
WITH largestCountry AS (
	SELECT TOP 1 CONCAT([Country],' - ', AVG([Area_km])) as LargestCountry
	FROM world_population
	GROUP BY [Country] ORDER BY AVG([Area_km]) Desc 
			),
smallestCountry AS (
	SELECT TOP 1 CONCAT([Country],' - ', AVG([Area_km])) as SmallestCountry
	FROM world_population
	GROUP BY [Country] ORDER BY AVG([Area_km])
			)
SELECT LargestCountry, SmallestCountry 
FROM largestCountry, smallestCountry


--Which country is witnessing the highest growth rate?
SELECT [Continent],[Country], 
		ROUND(SUM([Growth_Rate]),2) as GrowthRate
FROM world_population
GROUP BY [Continent],[Country]
ORDER BY [GrowthRate] DESC



--Most populated african country
SELECT TOP 5 [Country], SUM([_2022_Population]) as Population,
		ROUND(SUM([Growth_Rate]),2) as GrowthRate
FROM world_population
WHERE [Continent] = 'Africa'
GROUP BY [Country]
ORDER BY [Population] DESC;

--Largest by area african country
SELECT TOP 5 [Country], SUM([Area_km]) as Area,
		ROUND(SUM([Growth_Rate]),2) as GrowthRate
FROM world_population
WHERE [Continent] = 'Africa'
GROUP BY [Country]
ORDER BY [Area] DESC

--Top Densely populated countries in AFrica
SELECT [country],
		SUM(cast([_2022_population] as bigint)) as Population	
FROM world_population
WHERE [_2022_Population] > (SELECT AVG(Cast([_2022_Population] as bigint)) 
								FROM world_population)
	AND [Area_km] < (SELECT AVG([Area_km]) FROM world_population)
	AND [Continent] = 'Africa'
GROUP BY [Country] ORDER BY [Population] Desc;



--Query for PowerBI
SELECT [Rank], [Country], 
		[Continent],	
		 [_2022_Population], 
		-- [_2020_Population],
		 --[_2015_Population], [_2010_Population],
		-- [_2000_Population], [_1990_Population],
		-- [_1980_Population], [_1970_Population],
		 [Area_km], ROUND([Growth_Rate],3) as Growth_Rate, 
		ROUND([World_Population_Percentage],3) as World_Population_percent
FROM world_population

SELECT SUM(world_population_percentage)
FROM world_population





