prompt --application/shared_components/email/templates/test
begin
--   Manifest
--     REPORT LAYOUT: test
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>1001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(8301315779453293)
,p_name=>'test'
,p_static_id=>'TEST'
,p_subject=>'test'
,p_html_body=>'test'
,p_text_template=>'test'
);
wwv_flow_api.component_end;
end;
/
