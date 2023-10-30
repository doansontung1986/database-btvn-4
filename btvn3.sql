USE sakila;

-- 1. Lấy ra danh sách các nghề nghiệp (job) duy nhất mà người trong bảng không làm trùng lặp.
SELECT DISTINCT job FROM Person;

-- 2. Lấy ra danh sách các người có nghề nghiệp (job) là ‘Manager’ và lương (salary) lớn hơn 70000.
SELECT * FROM Person
WHERE job = 'Manager' AND salary > 70000;

-- 3. Lấy ra người có tuổi (dựa trên ngày sinh) từ 25 đến 35.
SELECT *, YEAR(NOW()) - YEAR(birthday) AS 'Tuổi'
FROM Person
WHERE YEAR(NOW()) - YEAR(birthday) BETWEEN 25 AND 35;

-- 4. Lấy ra danh sách các quốc gia (country) và tổng số lượng người từng quốc gia.
SELECT country, count(*) as 'Tổng số lượng người'
FROM Person
GROUP BY country;

-- 5. Tính số lượng nam (gender = ‘Male’) và nữ (gender = ‘Female’) trong bảng.
SELECT gender, count(*) as 'Số lượng'
FROM Person
GROUP BY gender;

-- 6. Lấy ra danh sách người có cùng nghề nghiệp (job) và quốc gia (country).
SELECT job, country, count(*) as 'Số lượng'
FROM Person
GROUP BY job, country;

-- 7. Lấy ra danh sách người theo thứ tự giảm dần của ngày sinh (birthday).
SELECT * FROM Person
ORDER BY birthday DESC;

-- 8. Lấy ra các nghề nghiệp (job) và tổng số lượng người làm nghề đó, nhưng chỉ hiển thị những nghề nghiệp có ít nhất 3 người làm.
SELECT job, count(*) as 'Số lượng'
FROM Person
GROUP BY job
HAVING count(*) >= 3;