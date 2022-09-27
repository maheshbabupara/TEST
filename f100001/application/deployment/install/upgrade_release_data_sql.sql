prompt --application/deployment/install/upgrade_release_data_sql
begin
--   Manifest
--     INSTALL: UPGRADE-Release Data.sql
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>100001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(24301899418968538)
,p_install_id=>wwv_flow_imp.id(24301711801966240)
,p_name=>'Release Data.sql'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   lc_found NUMBER;',
'BEGIN',
'   SELECT COUNT(app_param_id)',
'   INTO   lc_found',
'   FROM   app_params',
'   WHERE  1=1',
'   AND    PARAM_NAME = ''RELEASE_DATE'';',
'',
'   IF lc_found = 0',
'   THEN',
'      INSERT INTO APP_PARAMS (APP_PARAM_ID,PARAM_NAME,PARAM_VALUE,APP_INSTANCE) ',
'      VALUES (APP_PARAM_SEQ.NEXTVAL,''RELEASE_DATE'',TO_CHAR(SYSDATE,''Month DD YYYY''),''PROD'');',
'   ELSE',
'      UPDATE APP_PARAMS',
'      SET    PARAM_VALUE = TO_CHAR(SYSDATE,''Month DD YYYY'')',
'      WHERE  1=1',
'      AND    PARAM_NAME = ''RELEASE_DATE'';',
'   END IF;',
'   COMMIT;',
'END;'))
);
wwv_flow_imp.component_end;
end;
/
