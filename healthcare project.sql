CREATE DATABASE healthcare_db;

USE healthcare_db;

select * from healthcare_disease_prediction_dataset;

rename table healthcare_disease_prediction_dataset to healthcare;

--------------------------- BASIC QUERY

-- view all data 
select * from healthcare;

-- show only age & gender
select age , gender
from healthcare;    

-- find all smokers
select * from healthcare
where smoking = 'yes';

-- count total patients
select count(*) as total_patients
from healthcare ;

-- unique age
select distinct age
from healthcare
order by age;

-- patients with high BP
select * from healthcare
where  blood_pressure = 'high';

-- patients with diabetes
select * from healthcare
where diabetes = 1;

-- patients with BMI > 30
select * from healthcare
where bmi > 30;

-- count smoker
select count(*) from healthcare
where smoking = 0; 

-- count male vs female
select gender , count(*)
from healthcare
group by gender;

-- average age 
select avg(age) from healthcare;

-- maximum bmi
select max(bmi) from healthcare;

-- minimum age
select min(age) from healthcare;

-- count diabetics
select count(*) from healthcare
where diabetes = 1;

-- patients with normal glucose
select * from healthcare
where glucose = 'normal';

-- sort by age
select * from healthcare
order by age desc;

-- top 10 oldest patients
select * from healthcare
order by age desc
limit 10;

-- patients with family history
select * from healthcare
where family_history = 1;

-- count heart disease cases
select count(*) from healthcare
where heart_disease = 1;

-- show only active (exercise = 1)
select * from healthcare
where exercise = 'yes';


