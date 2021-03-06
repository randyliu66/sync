-- 查询暂存超过90天的供应商
SELECT * FROM T_SES_SMS_SUPPLIER WHERE IS_DELETED = 0 AND IS_PROVISIONAL = 0 AND SUPPLIER_STATUS = -1
AND CREATED_AT <= to_date('2018-09-14 23:50:00','yyyy-mm-dd hh24:mi:ss')-90;
-- 查询退回修改超过30天的供应商
SELECT * FROM T_SES_SMS_SUPPLIER WHERE IS_DELETED = 0 AND IS_PROVISIONAL = 0 AND SUPPLIER_STATUS = 2
AND CREATED_AT <= to_date('2018-09-14 23:50:00','yyyy-mm-dd hh24:mi:ss')-30;

-- 查询注销字段值的最大长度+21
SELECT max(length(LOGIN_NAME))+21,max(length(SUPPLIER_NAME))+21,max(length(CREDIT_CODE))+21 FROM T_SES_SMS_SUPPLIER WHERE IS_DELETED = 0 AND IS_PROVISIONAL = 0;
SELECT max(length(LOGIN_NAME))+21,max(length(MOBILE))+21,max(length(ID_NUMBER))+21 FROM T_SES_BMS_USER;
SELECT max(length(CERT_CODE))+21 FROM T_SES_SMS_SUPPLIER_CERT_ENG;
