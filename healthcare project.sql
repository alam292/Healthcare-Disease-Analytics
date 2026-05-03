CREATE DATABASE healthcare_db;

USE healthcare_db;

select * from healthcare_disease_prediction_dataset;

rename table healthcare_disease_prediction_dataset to healthcare;

select * from healthcare;

select count(*) as total_patients
from healthcare;

select distinct gender
from healthcare;

select avg(age) as avg_age, avg(bmi) as avg_bmi
from healthcare;

select sum(Heart_disease) , sum(diabetes) , sum(stroke) 
from healthcare;


