CREATE DATABASE msme_credit_analysis;
USE msme_credit_analysis;

ALTER TABLE new_msme_credit_actual
CHANGE COLUMN Customer_ID Customer_ID_1 INT NULL DEFAULT NULL;

SELECT * FROM new_msme_credit_reviewed
LEFT JOIN new_msme_credit_actual ON Customer_ID = Customer_ID_1
ORDER BY Customer_ID;

SELECT 
	Customer_ID, Business_Scale, Business_Sector, Loan_Ceiling, Debt_Service_Coverage_Ratio, 
    Credit_Score, Expected_Credit_Loss, Likelihood, Severity, Approval_Status, Credit_Status
FROM new_msme_credit_reviewed
LEFT JOIN new_msme_credit_actual ON Customer_ID = Customer_ID_1
ORDER BY Customer_ID;

CREATE VIEW new_msme_credit_joined AS
SELECT 
	Customer_ID, Business_Scale, Business_Sector, Loan_Ceiling, Debt_Service_Coverage_Ratio, 
    Credit_Score, Expected_Credit_Loss, Likelihood, Severity, Approval_Status, Credit_Status
FROM new_msme_credit_reviewed
LEFT JOIN new_msme_credit_actual ON Customer_ID = Customer_ID_1
ORDER BY Customer_ID;