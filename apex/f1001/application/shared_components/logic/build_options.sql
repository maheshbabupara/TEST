prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 1001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>1001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(8100637416433394)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.component_end;
end;
/
