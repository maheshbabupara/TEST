prompt --application/shared_components/user_interface/lovs/tasks_lov
begin
--   Manifest
--     TASKS LOV
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
 p_id=>wwv_flow_imp.id(15475259456512818)
,p_lov_name=>'TASKS LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d,',
'       code r',
'from   tasks_lov;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
