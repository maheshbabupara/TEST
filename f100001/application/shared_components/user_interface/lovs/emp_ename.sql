prompt --application/shared_components/user_interface/lovs/emp_ename
begin
--   Manifest
--     EMP.ENAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>100001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(21161681780031122)
,p_lov_name=>'EMP.ENAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMP'
,p_return_column_name=>'EMPNO'
,p_display_column_name=>'ENAME'
,p_default_sort_column_name=>'ENAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
