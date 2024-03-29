DECLARE
   lc_found NUMBER;
BEGIN
   SELECT COUNT(app_param_id)
   INTO   lc_found
   FROM   app_params
   WHERE  1=1
   AND    PARAM_NAME = 'RELEASE_DATE';

   IF lc_found = 0
   THEN
      INSERT INTO APP_PARAMS (APP_PARAM_ID,PARAM_NAME,PARAM_VALUE,APP_INSTANCE) 
      VALUES (APP_PARAM_SEQ.NEXTVAL,'RELEASE_DATE',TO_CHAR(SYSDATE,'Month DD YYYY'),'PROD');
   ELSE
      UPDATE APP_PARAMS
      SET    PARAM_VALUE = TO_CHAR(SYSDATE,'Month DD YYYY')
      WHERE  1=1
      AND    PARAM_NAME = 'RELEASE_DATE';
   END IF;
   COMMIT;
END;