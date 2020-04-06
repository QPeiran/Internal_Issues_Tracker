WITH aggrate_area AS (SELECT Age, sum(count) AS count, "56" AS Area_code
FROM `scanning-database.test_data_set.test_data_table`
WHERE Area_code IN ("05","06")
GROUP BY Age
UNION ALL
SELECT Age, sum(count) AS count, "12161718" AS Area_code
FROM `scanning-database.test_data_set.test_data_table`
WHERE Area_code IN ("12","16","17","18")
GROUP BY Age
UNION ALL
SELECT Age, count, Area_code
FROM `scanning-database.test_data_set.test_data_table`
WHERE Area_code NOT IN ("05","06","12","16","17","18")
)
SELECT Age, count, Area_code, "15 to 19" AS Age_group
FROM  aggrate_area
WHERE Age IN (15, 16, 17, 18, 19)
UNION ALL
SELECT Age, count, Area_code, "20 to 24" AS Age_group
FROM aggrate_area
WHERE Age IN (20, 21, 22, 23, 24)
UNION ALL
SELECT Age, count, Area_code, "25 to 29" AS Age_group
FROM aggrate_area
WHERE Age IN (25, 26, 27, 28, 29)
UNION ALL
SELECT Age, count, Area_code, "30 to 34" AS Age_group
FROM aggrate_area
WHERE Age IN (30, 31, 32, 33, 34)
UNION ALL
SELECT Age, count, Area_code, "35 to 39" AS Age_group
FROM aggrate_area
WHERE Age IN (35, 36, 37, 38, 39)
UNION ALL
SELECT Age, count, Area_code, "40 to 44" AS Age_group
FROM aggrate_area
WHERE Age IN (40, 41, 42, 43, 44)
UNION ALL
SELECT Age, count, Area_code, "45 to 49" AS Age_group
FROM aggrate_area
WHERE Age IN (45, 46, 47, 48, 49)
UNION ALL
SELECT Age, count, Area_code, "50 to 54" AS Age_group
FROM aggrate_area
WHERE Age IN (50, 51, 52, 53, 54)
UNION ALL
SELECT Age, count, Area_code, "55 to 59" AS Age_group
FROM aggrate_area
WHERE Age IN (55, 56, 57, 58, 59)
UNION ALL
SELECT Age, count, Area_code, "60 to 64" AS Age_group
FROM aggrate_area
WHERE Age IN (60, 61, 62, 63, 64)
UNION ALL
SELECT Age, count, Area_code, "65 plus" AS Age_group
FROM aggrate_area
WHERE Age IN (65, 66, 67, 68, 69)
ORDER BY Age
