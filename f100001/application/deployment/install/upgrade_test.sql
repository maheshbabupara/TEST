prompt --application/deployment/install/upgrade_test
begin
--   Manifest
--     INSTALL: UPGRADE-test
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
,p_name=>'test'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_script_clob=>'create table TETTTT (id varchar2(200));'
);
wwv_flow_imp.component_end;
end;
/
