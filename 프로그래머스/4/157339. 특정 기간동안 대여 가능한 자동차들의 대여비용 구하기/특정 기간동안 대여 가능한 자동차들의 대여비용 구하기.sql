-- 코드를 입력하세요
# SELECT DISTINCT CRCC.CAR_ID, CRCC.CAR_TYPE, CRCC.DAILY_FEE * (100 - (SELECT DISCOUNT_RATE FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN WHERE DURATION_TYPE = '30일 이상' AND CAR_TYPE IN) / 100 * 30 AS FEE
# FROM CAR_RENTAL_COMPANY_CAR CRCC JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY CRCRH ON CRCC.CAR_ID = CRCRH.CAR_ID JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN CRCDP ON CRCC.CAR_TYPE = CRCDP.CAR_TYPE
# WHERE CRCC.CAR_TYPE IN ('세단','SUV') AND CRCC.CAR_ID NOT IN (SELECT CAR_ID 
#     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
#     WHERE (DATE(START_DATE) BETWEEN DATE('2022-11-01') AND DATE('2022-11-30')) OR (DATE(END_DATE) BETWEEN DATE('2022-11-01') AND DATE('2022-11-30'))  

SELECT DISTINCT CAR_ID, CAR_TYPE, FEE
FROM (SELECT CRCC.CAR_ID, CRCC.CAR_TYPE, ROUND((CRCC.DAILY_FEE * 30) * (100 - CRCDP.DISCOUNT_RATE) / 100 , 0) AS FEE
    FROM CAR_RENTAL_COMPANY_CAR CRCC JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY CRCRH ON CRCC.CAR_ID = CRCRH.CAR_ID JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN CRCDP ON CRCC.CAR_TYPE = CRCDP.CAR_TYPE
    WHERE CRCC.CAR_TYPE IN ('세단','SUV') AND CRCDP.DURATION_TYPE = '30일 이상' AND CRCC.CAR_ID NOT IN (SELECT CAR_ID 
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE END_DATE >= '2022-11-01' AND START_DATE <= '2022-11-30'
)) DISCOUNT
WHERE FEE >= 500000 AND FEE < 2000000
ORDER BY FEE DESC, CAR_TYPE, CAR_ID DESC

