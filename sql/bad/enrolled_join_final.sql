SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
ORDER BY enrolled DESC