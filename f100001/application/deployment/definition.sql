prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 100001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>100001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(24301711801966240)
,p_get_version_sql_query=>'select 1 from dual;'
);
wwv_flow_imp.component_end;
end;
/
