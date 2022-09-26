prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>100001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(12083331616452762)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(12280981186452943)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(12281552854452943)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp.component_end;
end;
/
