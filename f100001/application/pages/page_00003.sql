prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(12278966386452918)
,p_name=>'My ToDo'
,p_alias=>'MY-TODO'
,p_page_mode=>'MODAL'
,p_step_title=>'My ToDo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let id = 0;',
'function init(el, options) {',
'    const board = new boardClass(el, options);',
'    board.sort({',
'        group: ''shared'',',
'        animation: 100,',
'        sort: true,',
'        onAdd: function (evt) {',
'            onAddScript(evt);',
'            id = 1;',
'        },',
'        onEnd: async function (evt) {',
'            onEndScript(evt);',
'            if(id==0) return',
'            id = 0;',
'            checkUncheck(evt.item.querySelector(''.a-CardView-icon''));',
'        },',
'    });',
'',
'    async function onAddScript(evt) {',
'        await board.executeScript(',
'            `update my_todo set status = ''${board.options.status}'' where id = ${evt.item.dataset.id};`',
'        );',
'        board.setSeq();',
'        if (!board.getSeqDiff()) return;',
'        board.getSeqDiff().forEach(i => {',
'            board.executeScript(',
'                `update my_todo set seq = ''${i.seq}'' where id = ${i.id};`',
'            );',
'        });',
'',
'    }',
'    async function onEndScript(evt) {',
'        board.setSeq();',
'        if (!board.getSeqDiff()) return;',
'        board.getSeqDiff().forEach(i => {',
'            board.executeScript(',
'                `update my_todo set seq = ''${i.seq}'' where id = ${i.id};`',
'            );',
'        });',
'    }',
'    board.triggeringElement.querySelectorAll(''ul li .click-check'').forEach(i => {',
'        i.addEventListener(''click'', onClickScript);',
'    });',
'    board.triggeringElement.querySelectorAll(''ul li .click-uncheck'').forEach(i => {',
'        i.addEventListener(''click'', onClickScript);',
'    });',
'    async function onClickScript(evt) {',
'        let tEl = evt.target;',
'        checkUncheck(tEl);',
'        let item = tEl.closest("li");',
'        if (!tEl.closest(''#TODO''))',
'            document.querySelector(''#TODO ul'').appendChild(item);',
'        else document.querySelector(''#COMPLETED ul'').appendChild(item);',
'        await board.executeScript(',
'            `update my_todo set status = case when status is not null then null else ''COMPLETED'' end where id = ${item.dataset.id};`',
'        );',
'        board.setSeqEl(''TODO'');',
'        board.setSeqEl(''COMPLETED'');',
'        board.getSeqEl(''TODO'').forEach(i => {',
'            board.executeScript(',
'                `update my_todo set seq = ''${i.seq}'' where id = ${i.id};`',
'            );',
'        });',
'        board.getSeqEl(''COMPLETED'').forEach(i => {',
'            board.executeScript(',
'                `update my_todo set seq = ''${i.seq}'' where id = ${i.id};`',
'            );',
'        });',
'    }',
'',
'    function checkUncheck(tEl) {',
'        if (tEl.classList.contains("fa-square-o")) {',
'            tEl.classList.remove("fa-square-o");',
'            tEl.classList.add("fa-check-square");',
'            tEl.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.add("strike");',
'            tEl.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.add("strike");',
'        } else {',
'            tEl.classList.remove("fa-check-square");',
'            tEl.classList.add("fa-square-o");',
'            tEl.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.remove("strike");',
'            tEl.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.remove("strike");',
'        }',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.completed * {',
'    color: green;',
'    text-decoration: line-through;',
'}',
'.task-card {',
'    display: flex;',
'}',
'',
'/* .u-colors .a-CardView-items>:nth-child(45n+1) .u-color, .u-colors>:nth-child(45n+1) .u-color {',
'    --u-color: none;',
'    --u-color-contrast: none;',
'} */',
'.a-CardView-icon.u-color {',
'    background-color: unset;',
'    color: unset;',
'}',
'',
'.click-check {',
'    cursor: pointer;',
'    z-index: 100;',
'}',
'',
'.click-check:hover,.click-uncheck:hover {',
'    color: darkgrey;',
'}',
'',
'.click-uncheck {',
'    cursor: pointer;',
'    z-index: 100;',
'}',
'',
'.strike {',
'    text-decoration: line-through;',
'}',
'',
'.a-GV-noDataMsg {',
'    display: none !important;',
'}',
'',
'.a-CardView-badgeValue {',
'    display: none;',
'}',
'',
'.a-CardView-badge {',
'    background-color: unset;',
'}',
'',
'.click-del {',
'    /* color: red; */',
'    font-size: 20px !important;',
'    cursor: pointer;',
'    z-index: 100;',
'}',
'.click-del:hover {',
'    color: darkgray;',
'}'))
,p_step_template=>wwv_flow_imp.id(12084736033452772)
,p_page_template_options=>'#DEFAULT#:t-DeferredRendering:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--xl'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220906155944'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8086493251458940)
,p_plug_name=>'Add My Todo'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(12176629630452837)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12665122983040418)
,p_plug_name=>'Completed'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(12129616560452812)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_ACTION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12664892766040415)
,p_plug_name=>'My Todo Completed'
,p_region_name=>'COMPLETED'
,p_parent_plug_id=>wwv_flow_imp.id(12665122983040418)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12127792649452811)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ITEM_ID,',
'       (select name from tasks_lov b where code=a.NAME) NAME,',
'       STATUS,',
'       DESCRIPTION,',
'       CASE WHEN STATUS IS NULL THEN ''fa-square-o click-check'' ',
'            ELSE ''fa-check-square click-uncheck'' END ICON,',
'       ''Remove'' NONE',
'  from MY_TODO a',
' where ITEM_ID = :P3_ITEM_ID',
'   and STATUS IS NOT NULL',
'  order by seq'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_ACTION'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12664942381040416)
,p_region_id=>wwv_flow_imp.id(12664892766040415)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<h3 class="a-CardView-title strike" data-id=&ID.>&NAME.</h3>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'<h4 class="a-CardView-subTitle strike">&DESCRIPTION.</h4>'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON'
,p_icon_css_classes=>'fa'
,p_icon_position=>'START'
,p_badge_column_name=>'NONE'
,p_badge_css_classes=>'fa fa-times-circle click-del'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12666701324040434)
,p_plug_name=>'Todo'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(12129616560452812)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_ACTION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12663826978040405)
,p_plug_name=>'My Todo'
,p_region_name=>'TODO'
,p_parent_plug_id=>wwv_flow_imp.id(12666701324040434)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12127792649452811)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ITEM_ID,',
'       (select name from tasks_lov b where code=a.NAME) NAME,',
'       STATUS,',
'       DESCRIPTION,',
'       CASE WHEN STATUS IS NULL THEN ''fa-square-o click-check'' ',
'            ELSE ''fa-check-square click-uncheck'' END ICON,',
'       ''Remove'' NONE',
'  from MY_TODO a',
' where ITEM_ID = :P3_ITEM_ID',
'   and STATUS IS NULL',
' order by seq'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_ACTION'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12663962307040406)
,p_region_id=>wwv_flow_imp.id(12663826978040405)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<h3 class="a-CardView-title " data-id=&ID.>&NAME.</h3>'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DESCRIPTION'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON'
,p_icon_css_classes=>'fa'
,p_icon_position=>'START'
,p_badge_column_name=>'NONE'
,p_badge_css_classes=>'fa fa-times-circle click-del'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(12668266798040449)
,p_card_id=>wwv_flow_imp.id(12663962307040406)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:apex.event.trigger(document,"DAEDIT",{id:&ID.});void(0);'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12667532509040442)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8086493251458940)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12254022192452886)
,p_button_image_alt=>'Cancel'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8086661788458942)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(8086493251458940)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12254022192452886)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_css_classes=>'u-pullRight'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8086318265458939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12666701324040434)
,p_button_name=>'Add'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(12253324284452885)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add My Todo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_ACTION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-pullRight'
,p_icon_css_classes=>'fa-plus-circle'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8086569362458941)
,p_name=>'P3_TASK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8086493251458940)
,p_prompt=>'Task'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASKS LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d,',
'       code r',
'from   tasks_lov;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(12251584487452883)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8086784828458943)
,p_name=>'P3_ACTION'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8087098213458946)
,p_name=>'P3_ITEM_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8087126965458947)
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8086493251458940)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12664569625040412)
,p_name=>'P3_CHECK_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12666684521040433)
,p_name=>'P3_REGION_ACTION'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12666874153040435)
,p_name=>'P3_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8086493251458940)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(12251584487452883)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12664399605040410)
,p_name=>'On click-check'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-header .click-check'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12664488876040411)
,p_event_id=>wwv_flow_imp.id(12664399605040410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CHECK_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let el = this.triggeringElement;',
'if (el.classList.contains("fa-square-o")) {',
'    el.classList.remove("fa-square-o");',
'    el.classList.add("fa-check-square");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.add("strike");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.add("strike");',
'} else {',
'    el.classList.remove("fa-check-square");',
'    el.classList.add("fa-square-o");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.remove("strike");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.remove("strike");',
'}',
'$s("P3_CHECK_ID",el.closest(".a-CardView-header").querySelector(".a-CardView-title").dataset.id);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12664606731040413)
,p_event_id=>wwv_flow_imp.id(12664399605040410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_found NUMBER;',
'BEGIN',
'    select count(*) into l_found from my_todo where id=:P3_CHECK_ID and status is null;',
'    if l_found > 0 then',
'        update my_todo',
'           set status = ''DONE''',
'         where ID = :P3_CHECK_ID;',
'    else',
'        update my_todo',
'           set status = null',
'         where ID = :P3_CHECK_ID;',
'    end if;',
'END;'))
,p_attribute_02=>'P3_CHECK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12664709819040414)
,p_event_id=>wwv_flow_imp.id(12664399605040410)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12663826978040405)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12665079738040417)
,p_event_id=>wwv_flow_imp.id(12664399605040410)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12664892766040415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12665669753040423)
,p_name=>'On click-uncheck'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.click-uncheck'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12665879905040425)
,p_event_id=>wwv_flow_imp.id(12665669753040423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CHECK_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let el = this.triggeringElement;',
'if (el.classList.contains("fa-square-o")) {',
'    el.classList.remove("fa-square-o");',
'    el.classList.add("fa-check-square");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.add("strike");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.add("strike");',
'} else {',
'    el.classList.remove("fa-check-square");',
'    el.classList.add("fa-square-o");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-title").classList.remove("strike");',
'    el.closest(".a-CardView-header").querySelector(".a-CardView-subTitle").classList.remove("strike");',
'}',
'$s("P3_CHECK_ID",el.closest(".a-CardView-header").querySelector(".a-CardView-title").dataset.id);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12666036331040427)
,p_event_id=>wwv_flow_imp.id(12665669753040423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_found NUMBER;',
'BEGIN',
'    select count(*) into l_found from my_todo where id=:P3_CHECK_ID and status is null;',
'    if l_found > 0 then',
'        update my_todo',
'           set status = ''DONE''',
'         where ID = :P3_CHECK_ID;',
'    else',
'        update my_todo',
'           set status = null',
'         where ID = :P3_CHECK_ID;',
'    end if;',
'END;'))
,p_attribute_02=>'P3_CHECK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12666255482040429)
,p_event_id=>wwv_flow_imp.id(12665669753040423)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12663826978040405)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12666375240040430)
,p_event_id=>wwv_flow_imp.id(12665669753040423)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12664892766040415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12666945558040436)
,p_name=>'On click-del'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.click-del'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667089842040437)
,p_event_id=>wwv_flow_imp.id(12666945558040436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure, You would like to Delete?'
,p_attribute_02=>'Delete'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667111104040438)
,p_event_id=>wwv_flow_imp.id(12666945558040436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CHECK_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let el = this.triggeringElement;',
'$s("P3_CHECK_ID",el.closest(".a-CardView-header").querySelector(".a-CardView-title").dataset.id);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667291175040439)
,p_event_id=>wwv_flow_imp.id(12666945558040436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    delete from my_todo where ID = :P3_CHECK_ID;',
'END;'))
,p_attribute_02=>'P3_CHECK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667343404040440)
,p_event_id=>wwv_flow_imp.id(12666945558040436)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12663826978040405)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667407154040441)
,p_event_id=>wwv_flow_imp.id(12666945558040436)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12664892766040415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12667770472040444)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8086318265458939)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12667884579040445)
,p_event_id=>wwv_flow_imp.id(12667770472040444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8086493251458940)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12953545698128604)
,p_event_id=>wwv_flow_imp.id(12667770472040444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ID,P3_TASK,P3_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12667925908040446)
,p_name=>'New_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12667532509040442)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12668163181040448)
,p_event_id=>wwv_flow_imp.id(12667925908040446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ACTION,P3_DESCRIPTION,P3_TASK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12668077074040447)
,p_event_id=>wwv_flow_imp.id(12667925908040446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8086493251458940)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12668340785040450)
,p_name=>'DAEDIT'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'DAEDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12953247071128601)
,p_event_id=>wwv_flow_imp.id(12668340785040450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ID'
,p_attribute_01=>'$s("P3_ID",this.data.id);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12953365451128602)
,p_event_id=>wwv_flow_imp.id(12668340785040450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TASK,P3_DESCRIPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name,description',
'-- into :P3_TASK,:P3_DESCRIPTION',
'from my_todo',
'where id=:P3_ID;'))
,p_attribute_07=>'P3_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12953437772128603)
,p_event_id=>wwv_flow_imp.id(12668340785040450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8086493251458940)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8871444435460837)
,p_name=>'Drag N Drop Todo'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12663826978040405)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_CARDS|REGION TYPE|tablemodelviewpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8871530129460838)
,p_event_id=>wwv_flow_imp.id(8871444435460837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_BOARD'
,p_attribute_01=>'init(this,{ status: '''' });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8871672423460839)
,p_name=>'Drag N Drop Completed'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12664892766040415)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_CARDS|REGION TYPE|tablemodelviewpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8871792076460840)
,p_event_id=>wwv_flow_imp.id(8871672423460839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_BOARD'
,p_attribute_01=>'init(this,{ status: ''COMPLETED'' });'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8086846891458944)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add My Todo'
,p_process_sql_clob=>':P3_ACTION := ''CREATE'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8086318265458939)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8086942328458945)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save My Todo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_ID IS NULL THEN',
'INSERT INTO MY_TODO (',
'    ITEM_ID,',
'    NAME,',
'    DESCRIPTION',
') VALUES (',
'    :P3_ITEM_ID,',
'    :P3_TASK,',
'    :P3_DESCRIPTION',
');',
'ELSE',
'UPDATE MY_TODO ',
'SET NAME = :P3_TASK,',
'    DESCRIPTION = :P3_DESCRIPTION',
'WHERE ID = :P3_ID;',
'END IF;',
':P3_ACTION := NULL;',
':P3_TASK := null;',
':P3_DESCRIPTION:=null;',
':P3_ID := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8086661788458942)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12667671797040443)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Cancel'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P3_ACTION,P3_DESCRIPTION,P3_TASK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12667532509040442)
);
wwv_flow_imp.component_end;
end;
/
