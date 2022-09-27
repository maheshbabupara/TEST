prompt --application/deployment/install/upgrade_enable_automations
begin
--   Manifest
--     INSTALL: UPGRADE-Enable Automations
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
 p_id=>wwv_flow_imp.id(24420820511370955)
,p_install_id=>wwv_flow_imp.id(24301711801966240)
,p_name=>'Enable Automations'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_app_id number := 100001;',
'begin',
'    apex_automation.enable(',
'        p_application_id => l_app_id,',
'        p_static_id      => ''job'');',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
