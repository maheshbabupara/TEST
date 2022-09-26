prompt --application/deployment/install/upgrade_job_activate
begin
--   Manifest
--     INSTALL: UPGRADE-Job Activate
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
 p_id=>wwv_flow_imp.id(12392326577692963)
,p_install_id=>wwv_flow_imp.id(12391086290661789)
,p_name=>'Job Activate'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        EXECUTE IMMEDIATE ''CREATE TABLE TETTTT (ID NUMBER)'';',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
