SELECT * FROM public.enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE COUNTY = 'Pima'
ORDER BY enrollment DESC