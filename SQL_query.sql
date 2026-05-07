1. select * from noshowappointments_sql
2. alter table noshowappointments_sql
rename column 'ï»¿PatientId'  PatientID INT;
3. SELECT COUNT(*) AS total_count
FROM noshowappointments_sql;
4. SELECT Gender, COUNT(*) AS total_count
FROM noshowappointments_sql
GROUP BY Gender;
5. SELECT COUNT(*) 
FROM noshowappointments_sql
WHERE Alcoholism = 1;
6. SELECT Gender,
       COUNT(*) AS total
FROM noshowappointments_sql
WHERE Hipertension = 1
GROUP BY Gender;
7. SELECT Gender,
       SUM(CASE WHEN Hipertension = 1 THEN 1 ELSE 0 END) AS hypertension_total,
       SUM(CASE WHEN Diabetes = 1 THEN 1 ELSE 0 END) AS diabetes_total,
       SUM(CASE WHEN Alcoholism = 1 THEN 1 ELSE 0 END) AS alcoholism_total,
       SUM(CASE WHEN Handcap = 1 THEN 1 ELSE 0 END) AS handicap_total
FROM noshowappointments_sql
GROUP BY Gender;
8.SELECT 
  CASE 
    WHEN Age BETWEEN 0 AND 20 THEN '0-20'
    WHEN Age BETWEEN 21 AND 40 THEN '21-40'
    WHEN Age BETWEEN 41 AND 60 THEN '41-60'
    ELSE '61+'
  END AS age_group,
  COUNT(*) AS total
FROM noshowappointments_sql
GROUP BY 
  CASE 
    WHEN Age BETWEEN 0 AND 20 THEN '0-20'
    WHEN Age BETWEEN 21 AND 40 THEN '21-40'
    WHEN Age BETWEEN 41 AND 60 THEN '41-60'
    ELSE '61+'
  END
ORDER BY age_group;
9 SELECT Gender,
       AVG(Age) AS average_age
FROM noshowappointments_sql
GROUP BY Gender;
10. SELECT AVG(Age) AS avg_age
FROM noshowappointments_sql
WHERE Handcap = 1;