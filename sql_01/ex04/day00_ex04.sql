SELECT CONCAT(
	name, '(', 'age:', age, ',', 'gender:', '''', gender, '''', ',', 'address:', '''', address, '''', ')'
) AS cat
FROM person;
