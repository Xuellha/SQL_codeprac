-- 코드를 입력하세요
SELECT TITLE, UGB.BOARD_ID, REPLY_ID, UGR.WRITER_ID, UGR.CONTENTS, DATE_FORMAT(UGR.CREATED_DATE,'%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD UGB JOIN USED_GOODS_REPLY UGR ON UGB.BOARD_ID = UGR.BOARD_ID
WHERE YEAR(UGB.CREATED_DATE) = 2022 AND MONTH(UGB.CREATED_DATE) = 10
ORDER BY UGR.CREATED_DATE, UGB.TITLE
