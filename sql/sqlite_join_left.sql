SELECT *
FROM
	CPSC_Enrollment_Info_2022_10
LEFT JOIN CPSC_Contract_Info_2022_10 ON CPSC_Enrollment_Info_2022_10.contractandplanid = CPSC_Contract_Info_2022_10.contractandplanid
WHERE CPSC_Contract_Info_2022_10.PlanName = "UnitedHealthcare Dual Complete LP (HMO D-SNP)"
AND SNPPlan = "Yes"
ORDER BY Enrollment DESC