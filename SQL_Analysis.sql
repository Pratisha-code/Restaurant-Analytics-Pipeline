create database Restaurant;
use Restaurant;

select * from dataset;

#TOP CUISINES (TASK-1)
#DETERMINE THE TOP THREE MOST COMMON CUISINES IN THE DATASET

select Cuisines,count(*) as Total_restaurants from dataset
group by Cuisines
order by Total_restaurants desc limit 3;

#calculate the percentage of restaurant that serve each of the top cuisines

select Cuisines,count(*)as Total_restaurants ,concat(round(count(*) * 100.0 / (select count(*) from dataset), 2), '%') as percentage
from dataset 
group by Cuisines
order by Total_restaurants desc limit 3;


#CITY ANALYSIS(TASK-2)
#IDENTIFY THE CITY WITH THE HIGHEST NUMBER OF RESTAURANTS IN THE DATASET

select City,count(*) as Total_restaurant
from dataset
group by City
order by Total_restaurant desc limit 1;

#calculate the average rating for restaurant in each city

select City,round(AVG(`Aggregate rating`), 2) as avg_rating
from dataset
group by City
order by avg_rating desc;

#DETERMINE THE CITY WITH HIGHEST AVG RATING

select City,round(AVG(`Aggregate rating`), 2) as avg_rating
from dataset
group by City
order by avg_rating desc limit 1;



