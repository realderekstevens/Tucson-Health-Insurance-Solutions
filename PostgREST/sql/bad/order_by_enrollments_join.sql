SELECT *
FROM Plans
JOIN Enrollments
ON Enrollments.ContractNumber=Plans.ContractID
WHERE county = "Pima"
ORDER by Enrollment DESC