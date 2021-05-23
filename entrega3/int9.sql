.mode	columns
.headers	on
.nullvalue	NULL


SELECT DISTINCT client.name, client.phone_num, 
    CASE WHEN third_party_phone_num = client.phone_num THEN 'true' ELSE 'false' END AS USED_AS_THIRD_PARTY_MEMBER
FROM Client JOIN ober_package
GROUP BY client.name
UNION ALL
SELECT DISTINCT driver.name, driver.phone_num, 
    CASE WHEN third_party_phone_num = driver.phone_num THEN 'true' ELSE 'false' END AS USED_AS_THIRD_PARTY_MEMBER
FROM Driver JOIN ober_package