SELECT v_persons_female.name as name
FROM v_persons_female, v_persons_male
UNION
SELECT v_persons_male.name as name
FROM v_persons_male