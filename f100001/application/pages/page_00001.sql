prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>7876714091080310
,p_default_application_id=>100001
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(12278966386452918)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'APP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220822095335'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8085669794458932)
,p_name=>'Items'
,p_template=>wwv_flow_imp.id(12159567638452828)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITLE,',
'       TYPE,',
'       STATUS,',
'       DUE_DATE,',
'       CASE WHEN STATUS = ''In Process'' THEN ''<span class="fa fa-list-ul" aria-hidden="true"></span>'' ELSE NULL END TASKS',
'  from ITEMS'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12214825744452859)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8085772307458933)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8085846310458934)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8085973579458935)
,p_query_column_id=>3
,p_column_alias=>'TYPE'
,p_column_display_sequence=>30
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8086049218458936)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>40
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8086120220458937)
,p_query_column_id=>5
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8086203179458938)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>60
,p_column_heading=>'My Tasks'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:Y,3:P3_ITEM_ID:#ID#'
,p_column_linktext=>'#TASKS#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15460938037479911)
,p_query_column_id=>6
,p_column_alias=>'TASKS'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp.component_end;
end;
/
