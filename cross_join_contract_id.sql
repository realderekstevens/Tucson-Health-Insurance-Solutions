SELECT Contract.OrganizationName, Contract.OrganizationMarketingName, Contract.PlanName, Contract.ParentOrganization, '2022_07'.Enrollment, '2022_07'.State, '2022_07'.County
FROM '2022_07', Contract
WHERE Contract.id = '2022_07'.id
ORDER BY Enrollment DESC;