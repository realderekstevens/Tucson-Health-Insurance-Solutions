SELECT enrolled, * FROM enrollments
INNER JOIN contracts
ON enrollments.id = id
ORDER BY enrolled DESC