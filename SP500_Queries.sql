use sp500_project
go
--COMPANIES 
--Show all companies
select * from companies

--List companies by highest market capitalization
select sector, market_capital from companies
order by Market_capital DESC

-- Top 10 companies by market capitalization 
select Top 10 Sector, Market_capital from companies
order by Market_capital DESC

--Companies with positive revenue growth
select sector, Revenue_growth from companies
where Revenue_growth > 0

--Average market capitalization
select AVG(Market_capital) as AvgMarketCap from companies

--Average EBITDA
select AVG(Ebitda) as AvgEbitda from companies

--Highest market capitalization
select MAX(Market_capital) as HighestMarketCap from companies

--Highest EBITDA
select MAX(Ebitda) as HighestEBITDA from companies

--Total employees
select sum(Full_time_employees) as TotalEmployees from companies

--Which companies have the largest workforce
select Top 10 sector, Full_time_employees from companies
order by Full_time_employees DESC

--Companies with above average market capital
select Sector, Market_capital from companies 
where Market_capital > (select AVG(Market_capital) from companies)

--Companies with above average EBITDA
select Sector, Ebitda from companies
where ebitda > (select AVG(Ebitda) from companies)

--Industries with above average market capital
select Industry, Market_capital from companies
where Market_capital > (select AVG(Market_capital) from companies)

--Industries with the highest EBITDA
select Industry, Ebitda from companies
where ebitda > (select AVG(Ebitda) from companies)

--Top 5 companies by employees count
select Top 5 Industry, Full_time_employees from companies
order by Full_time_employees DESC

--INDEX
select * from Indexsp500

--Highest S&P 500 value
select MAX(column2) as HighestIndex from Indexsp500

--Lowest sp500 value
select MIN(Column2) as LowestIndex from Indexsp500

--Average S&P 500 value
select AVG(Column2) as AvgIndex from Indexsp500 

--Latest index value
select Top 1 column1, column2 from indexsp500
order by Column1 DESC

--Top 10 highest index days
select Top 10 Column1, column2 from indexsp500
order by column2 DESC

