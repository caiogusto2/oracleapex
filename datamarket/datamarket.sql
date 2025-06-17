prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7697586261496936
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'DEMO'
);
end;
/
 
prompt APPLICATION 100 - Data Marketplace
--
-- Application Export:
--   Application:     100
--   Name:            Data Marketplace
--   Date and Time:   03:38 Tuesday June 17, 2025
--   Exported By:     DEMO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      6
--       Items:                   17
--       Computations:             2
--       Processes:               12
--       Regions:                 12
--       Buttons:                 12
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         Items:                  2
--         Processes:              1
--         Build Options:          1
--         AI Configs:             1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          4
--         ACL Roles:              4
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included (auto-install)
--       Install scripts:          1
--   Version:         24.2.5
--   Instance ID:     7697315802845643
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DEMO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Data Marketplace')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DATA-MARKETPLACE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'FF093AA37B8691FBA5B801C6BAB8F28C48BA3A4D16B411A6647E1AE89939D2FA'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_tz_format=>'DD-MON-YYYY'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7935638883333817)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Data Marketplace'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Data Marketplace'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>21
,p_version_scn=>44889191330771
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(7936423946333831)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(7937547101333912)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/oci
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(8092296345229224)
,p_name=>'oci'
,p_static_id=>'oci'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaaoi6b5sxlv4z773boczybqz3h2vspvvru42jysvizl77lky22ijaq'
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/ocigenai
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(12898916381597365)
,p_name=>'ocigenai'
,p_static_id=>'ocigenai'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('ocigenai'),'https://inference.generativeai.sa-saopaulo-1.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('ocigenai'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('ocigenai'),'')
,p_credential_id=>wwv_flow_imp.id(8092296345229224)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('ocigenai'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('ocigenai'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'OCI_GENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('ocigenai'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('ocigenai'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('ocigenai'),'{'||wwv_flow.LF||
'  "compartmentId" : "ocid1.compartment.oc1..aaaaaaaacqt2kvaoyjexiops224rzriooevivs63hxhpzjxzwbvadqcgsfha",'||wwv_flow.LF||
'  "servingMode" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "modelId" : "cohere.command-r-plus-08-2024",'||wwv_flow.LF||
'    "servingType" : "ON_DEMAND"'||wwv_flow.LF||
'  }'||wwv_flow.LF||
'}')
);
end;
/
prompt --workspace/remote_servers/jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18298503059003598)
,p_name=>'jls5sznibkq-sa-vinhedo-1-functions-oci-oraclecloud-com'
,p_static_id=>'jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'https://jls5sznibkq.sa-vinhedo-1.functions.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('jls5sznibkq_sa_vinhedo_1_functions_oci_oraclecloud_com'),'')
);
end;
/
prompt --workspace/remote_servers/inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(19298549168100512)
,p_name=>'inference-generativeai-sa-saopaulo-1-oci-oraclecloud-com'
,p_static_id=>'inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'https://inference.generativeai.sa-saopaulo-1.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('inference_generativeai_sa_saopaulo_1_oci_oraclecloud_com'),'')
);
end;
/
prompt --application/shared_components/data_profiles/analisar_csv_function01
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(18298717426003603)
,p_name=>'analisar-csv-function01'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18298961156003613)
,p_data_profile_id=>wwv_flow_imp.id(18298717426003603)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18299244465003614)
,p_data_profile_id=>wwv_flow_imp.id(18298717426003603)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(18299584810003615)
,p_data_profile_id=>wwv_flow_imp.id(18298717426003603)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/data_profiles/oci_genai_01
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(19298701921100518)
,p_name=>'OCI_GENAI_01'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(19298936505100528)
,p_data_profile_id=>wwv_flow_imp.id(19298701921100518)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(19299226255100530)
,p_data_profile_id=>wwv_flow_imp.id(19298701921100518)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(19299577951100531)
,p_data_profile_id=>wwv_flow_imp.id(19298701921100518)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/web_sources/analisar_csv_function01
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(18299870103003620)
,p_name=>'analisar-csv-function01'
,p_static_id=>'analisar_csv_function01'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(18298717426003603)
,p_remote_server_id=>wwv_flow_imp.id(18298503059003598)
,p_url_path_prefix=>'/20181201/functions/ocid1.fnfunc.oc1.sa-vinhedo-1.aaaaaaaaqivulvoskzqlabyjc73isu62yjg4mjmtftm3lmhptvppq4oi5x5q/actions/invoke'
,p_credential_id=>wwv_flow_imp.id(8092296345229224)
,p_version_scn=>44828467590562
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(18300410349003653)
,p_web_src_module_id=>wwv_flow_imp.id(18299870103003620)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "file": "#MESSAGE#"',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(18499103434014829)
,p_web_src_module_id=>wwv_flow_imp.id(18299870103003620)
,p_web_src_operation_id=>wwv_flow_imp.id(18300410349003653)
,p_name=>'MESSAGE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(18499529813015997)
,p_web_src_module_id=>wwv_flow_imp.id(18299870103003620)
,p_web_src_operation_id=>wwv_flow_imp.id(18300410349003653)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(18499962237017732)
,p_web_src_module_id=>wwv_flow_imp.id(18299870103003620)
,p_web_src_operation_id=>wwv_flow_imp.id(18300410349003653)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
end;
/
prompt --application/shared_components/web_sources/oci_genai01
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(19299837325100536)
,p_name=>'oci-genai01'
,p_static_id=>'oci_genai_01'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(19298701921100518)
,p_remote_server_id=>wwv_flow_imp.id(19298549168100512)
,p_url_path_prefix=>'/20231130/actions/chat'
,p_credential_id=>wwv_flow_imp.id(8092296345229224)
,p_version_scn=>44823867340892
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(19300456095100564)
,p_web_src_module_id=>wwv_flow_imp.id(19299837325100536)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'	"chatRequest":{',
'		"apiFormat":"COHERE",',
'		"message":"#MESSAGE#",',
'                "maxTokens":"1800",',
'                "temperature":"0"',
'	},',
'	"compartmentId":"ocid1.compartment.oc1..aaaaaaaacqt2kvaoyjexiops224rzriooevivs63hxhpzjxzwbvadqcgsfha",',
'	"servingMode":{',
'		"servingType":"ON_DEMAND",',
'		"modelId":"cohere.command-r-plus-08-2024"',
'	}',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(19499107544109075)
,p_web_src_module_id=>wwv_flow_imp.id(19299837325100536)
,p_web_src_operation_id=>wwv_flow_imp.id(19300456095100564)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(19499544142110283)
,p_web_src_module_id=>wwv_flow_imp.id(19299837325100536)
,p_web_src_operation_id=>wwv_flow_imp.id(19300456095100564)
,p_name=>'MESSAGE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(19499913614111416)
,p_web_src_module_id=>wwv_flow_imp.id(19299837325100536)
,p_web_src_operation_id=>wwv_flow_imp.id(19300456095100564)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
end;
/
prompt --application/shared_components/ai_config/aiconfig
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(12899380042601318)
,p_name=>'aiconfig'
,p_static_id=>'aiconfig'
,p_remote_server_id=>wwv_flow_imp.id(12898916381597365)
,p_system_prompt=>unistr('Analisar conteudo e recomendar dataset, sempre entregar output como um texto sem formata\00E7\00E3o')
,p_welcome_message=>'Bem vindo, como posso ajuda-lo?'
,p_temperature=>0
,p_version_scn=>44812299463051
);
wwv_flow_imp_shared.create_ai_config_rag_source(
 p_id=>wwv_flow_imp.id(13498533679637734)
,p_name=>'RAG01'
,p_rag_type=>'DATA_SOURCE'
,p_source=>'select classificacaoai from datasets where perfil_acesso = GET_APEX_APP_USER;'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7936423946333831)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44785223884407
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7948028203334058)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7937547101333912)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>44785223884662
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7949571383334093)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7950039415334096)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7949571383334093)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7950445099334100)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7949571383334093)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000006C8494441545847ED976B4CD4571AC67F736718070670061CD882C84577A36D521441531BD74B94466D6AA36BC92AD51430ABD6';
wwv_flow_imp.g_varchar2_table(2) := '8D7EA0D9621AB6F6C31A7463C45A92BA9B342C6A178B782B352EB26D28546AB42E77A82297628619860186B9306CCE316CC4952EA5BBE9973DC9E4FF61FEEF39CFFF7D9FF7799FA3181F1F1FE7275C8AFF03986E060281001E8F07F1D4E974A8D5EA4985';
wwv_flow_imp.g_varchar2_table(3) := 'F3FBFDF27FA55229FF17CFE9AC6997C0ED76535656466F6F2F5BB76E25262666D2FE9D9D9D949696121B1BCBC68D1B090A0A9ACEF97C2F8071C6098C0750A0C0E97492B5238BF8F878D6AF5FCFAA55AB261D70E5CA15AE5FBF4E4747071F9EFE10A3D188';
wwv_flow_imp.g_varchar2_table(4) := '88572A94327EAA35250011EC1DF332E875A151AAD12BF57C7DF36BCACBCBC9CBCB23242484890652281E012C282890D959F8DC42DC8151FC013F215A235A95764A105302181B1FE3BEAB9392A652742A2DB90BB319EC1FA4F42FA5ECDCB953D679606040';
wwv_flow_imp.g_varchar2_table(5) := '82080B0B6374749453A7DEE7D7DBB76308375074E714BE808FAC9F6F678E210A9542F5D424FC47009FB455D0EFB691604A60A979095F5CFC1C97D3C58A152B28292991070B40D7AE5DC31269E1F93529D4F5D7D33ED04E843E9C2D499B899A09005102DF';
wwv_flow_imp.g_varchar2_table(6) := '988FEEE11EFEDA769E0561C9CCD69B49D0C55378A4909494142E5FBE8CD7EB65C3860DDCB97387BD6FEEA569A40587C741ABB38D97E76DC46A988346A5F9E12510F912E9F58DFBB8D871199BDBC6F2C865A89D2A4E169DC4EEB0A3D569103AEAF578B198';
wwv_flow_imp.g_varchar2_table(7) := 'CDE4E4E6E29E354ACDC32F893444B13E6E2D6A851AC191699350F4B9F88920915EFF981F9D5E87CFEFC3D1EF20EFAD3C327764628EB7D0E86C92EF2D30CEA7B7AD87331F9DE1F0E1C398C24DA8551A3CEE51B41AADE48BF818A10D4FEAC3240EF87C3EFA';
wwv_flow_imp.g_varchar2_table(8) := 'FAFAA8ADAD953516E93D7AF4287BF6EC6178649882777FCFEEFDBB695435F38C29064FC08B46A10114740F7691EC4FE2D41FDFE7EDB7DE46ABD572E2C4090E1E3C884AA5E2C68D1BA4A5A561369BD16844CCA33509C0F0F0B00C1A1A1A920C4F4E4E9682';
wwv_flow_imp.g_varchar2_table(9) := '535757474B6B0B3BDEC8A2D7FC1DA9D1A9441ACC7C7AFF33744A1DAB637FC903571775DD5F11D11346E99F4B499897C0D2A54BB977EF1E4D4D4D444444101A1A4A4E4E0E0683E1E90084DA5DBD7A95AAAA2A366DDAC4DDBB77191C1CC4643271B3FE26BF';
wwv_flow_imp.g_varchar2_table(10) := 'C9DFC3807280746B1AB76DDFE0F438991D1441625822412A1D555D3788C4C2B1778E91F27C0A0E87431E2CC4EBD2A54B52BCD6AC59334925FFAD0DC7C6C6240744DA4449BABABA78F0E001673E3EC30BD92FF25CCCB32486CEA3C1DEC837B6BB2CB3A663';
wwv_flow_imp.g_varchar2_table(11) := '3558512BD534DA9B68EE6BE15A5125DBB66EC36AB5CA0C8AB921F615F517FB3EBE26011044112F8AE7040021AD02405979192FE6ACE4D99845249B92A4CAF58EF4F179F7DF59347B11F3C3936971B4D0D2D74A6551259B5F7E85E8E868E6CE9D2B6B3E2D';
wwv_flow_imp.g_varchar2_table(12) := '00A2042255D5D5D5646464D0D0D020B3204A50F3650D7B0FEDC5A6E86745F40BB8C74669B637D337D2877556340BC2E753DD55CD1CC51C8EBD7394F4B474FAFBFB65BD0588CACA4A56AE5CC9DAB56BD1EBF55393B0A8A848D67D646484A4A4242C168B24';
wwv_flow_imp.g_varchar2_table(13) := '617B473B99AF67F230CAC692E8C5FCCC18C3A7F73E931DB02A76259DAE4E6EF5DCC6D469E45CC939E262E324EB7B7A7A686C6C94040C0F0F273B3B9BE0E0E0A703105F6BB3D9A8AFAF97C1A20D0B0B0BD9B76F1FA2430ADE2D20FBCD1C9AD52D448758F1';
wwv_flow_imp.g_varchar2_table(14) := '05FCA8152A84A7FB6EB08F445F3CC5C78BC9FF5DBEECFDE3C78F73E0C001C9819A9A1A162F5E2C414CD986029620A0E0C084100901D2EAB508C3E17438E524DCBC6D33B1F3E36875B5216CC7BC59097CFB8F0ECE7F7C9EF70EBF478829441EEA1DF1A0D1';
wwv_flow_imp.g_varchar2_table(15) := '6825EB27F6FC5E217A522E27A4B8BCBD42EAFB324B1A3A974E6A85DD6E47A3D30AC1C63BEA25D21249EEEE5C868287A979588B25D84CC6DC7552A87E90144F80981846DFBAEE73A1FD220BC29230075B48D0C673E40F47484D4D45981061C3C430BA75EB';
wwv_flow_imp.g_varchar2_table(16) := '16FB7FBB9FC69126EC1E3BAD036DBC149F419CF119343FC60F94B5956377DB4914E3386209559FFC0D9FD7C7F2E5CBFF358E77EDDA25DD50486808692FA5536BFB8AB6810EC2F561FC2AE9D5998D636948863AF9A8A104BD5A4FCEC23770F50F72EEEC39';
wwv_flow_imp.g_varchar2_table(17) := 'B2B2B224C95C2E97ACAD70476270151717F35AE66B18220C9CBCFD01DE8097D77FB19DA8E01918924725F0E2F20DA1516AD0A2A5E68B1A2A2A2AC8CFCF976DF5B82513B27BE8D021B66CD942CA92143C78A45819B546193F952F9C91295DB76E1DAB57AF';
wwv_flow_imp.g_varchar2_table(18) := '9EC459614E264CE9E93F9DFEF1A6F4C98E102A79E1C205BABBBBE5570A997D7C09B93E7BF62C7171715245FF2BB6FCF103262E2622ED62D63FED6222844BB4DCFFE46232AD5BC60C5E9AF6CD68067B4F2BE42707F04FE7029FCE23D9BC96000000004945';
wwv_flow_imp.g_varchar2_table(19) := '4E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7938664314333947)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000200049444154785EED9D077CD4E5FDC73FBFBBCB4E482084B077D810011150AB58176E2DB21C7515476D6B6D6DD58E7F87D6D16D';
wwv_flow_imp.g_varchar2_table(2) := '9DADAD625514A9031505C5811314911DA60923AC1092907D49EEF7E7FD5C7EE10889247797C8B887D7BD1272BFF97D3ECF777FBF8FA5C8885020040A58219C1B393542014500140141481488002824F2454E8E00288281902810015048E48B9C1C015004';
wwv_flow_imp.g_varchar2_table(3) := '0321512002A090C817393902A0080642A240044021912F72720440110C844481088042225FE4E40880221808890211008544BEC8C98725806CDB4E93945AEFD34E52D2313265C592F648CA0FFC58969577B8BDFF370A20DBB6B97F7F49A36B3F27481A26';
wwv_flow_imp.g_varchar2_table(4) := '29EA7023D461F23C5592964B5A24E9B3DA9F6B2DCBB2BFA9E76B5500D57296B10160192529F99B7AF9A3E4BE45923EAF0513C0FAD8B22CB857AB8C5603502DB7B950D2CF259DD82A6F77ECDDE46349F7499AD35A5CA9C50164DB36E2E86A49B749EA77EC';
wwv_flow_imp.g_varchar2_table(5) := 'CDE937F2C66B25FD49D27F2DCB42ECB5D8685100D9B6DD45D26C49235BEC0D2217FE3A0A2CDEA72B9DDB92CA778B01C8B6ED41FB44D55B920051647C7314D828E922CBB256B5C423B408806CDB3E59D2EB1105B925A62CA86BA26803A205419DFD352785';
wwv_flow_imp.g_varchar2_table(6) := '1D40B59C07AB203EDC0F1BB95E481428937442B83951580164DB36A0013C88AFC838FC288018034480292C23DC009A2EE9AAB03C59E4222D4581A72CCBC22A0ECB081B806CDBE6A19E0CCB53452ED2D214B8C6B22C167BC8232C00B26D3B4E52AEA4B621';
wwv_flow_imp.g_varchar2_table(7) := '3F51E402AD41013CD5DDC221CAC205A01B253DDA1A6F1EB947D828709365598F857AB59001541BA2C8AA0D8A86FA3C91F35B8F02CCD9E050431EE100D0F87DC1D1375BEFBD9B7E279FCFA7AAAA2A9596969A4F9B366D141717278FC72397CBD5F40B1DE2';
wwv_flow_imp.g_varchar2_table(8) := '48DBB6C5877B959595A9A4A4444949494A484830F7B2AC90C91CB667AD77A1732CCB9A1BCAC5437E33DBB67980B34379889638B7A6A6464545457AE9A597F4E5975F9ADF5353533566CC188D1F3F5EC9C9C9610191039EBCBC3CBDF1C61BFAE28B2F5458';
wwv_flow_imp.g_varchar2_table(9) := '58A876EDDAE984134ED045175D6480144EC086915EF32CCB8201043D4202906DDBB1924A25856F3907FD2AFB4F645201CCEDB7DFAE8F3FFE58151515755FC219264E9CA81FFDE8474A4C4C0CF96E7039EE75FFFDF76BCE9C392A2F2FAFBB26C039F7DC73';
wwv_flow_imp.g_varchar2_table(10) := 'F5CB5FFE52F1F1F18723887C92122DCBDAFFD0CDA448A8001A27E9BD66DEB3C50F6752DF7CF34DFDDFFFFD9F99DCF6EDDBAB43870EDABA75ABE10EBD7BF7D63DF7DCA3E38F3F3EE44985D301D25FFCE217DAB66D9BE1729D3A7532BF171414184EF4E73F';
wwv_flow_imp.g_varchar2_table(11) := 'FF59DFFAD6B742BE570B11EE34CBB2DE0FF6DAA102E80E49F7067BF3963A0F5DE481071ED0BFFFFD6FA3F3FCFCE73FD739E79CA3679E79467FFFFBDF8D48B9EBAEBB74FEF9E7873CA900E87FFFFB9F7EFBDBDFAABABA5A7FF8C31F74E699679A7BFDF39F';
wwv_flow_imp.g_varchar2_table(12) := 'FF34AFF8E31FFF58D75C738DDC6E774BBD7228D7BDD3B22C7288821AA102E815827441DDB9054F02407FFDEB5FF5E4934F1AB0FCEE77BFD329A79CA2D75E7BCD70250740175C70415800346BD62CFDE637BF119CEFB1C71E339CEDC5175F3460056088CB';
wwv_flow_imp.g_varchar2_table(13) := 'EF7DEF7B872B80665B967571B0D31134806CDB46EFD9559BF81EECFD5BE43C268D09BCF7DE7B555C5CACEEDDBBAB5BB76E5ABF7EBD76ECD861FE7FF7DD77EBC4134F0C0B80DE7BEF3DFDEA57BFD2AE5DBBCC7D1091EBD6ADD3CE9D3B95929252C7950E53';
wwv_flow_imp.g_varchar2_table(14) := '457AE73E7F50C760272214000D90842FE1B01B28D1DBB76F374AF4679F7D66448B336263638D65F4939FFCC4E82BA19AD8DC0B7DE7BEFBEED3FCF9F3E5F57A8D49CF7531E14F3FFD74232EB9D7613C7AED8B8FE504F37CA100E8B0F5FF400826110E8075';
wwv_flow_imp.g_varchar2_table(15) := 'B460C102A33CA7A5A519BDE7861B6E30BF870A1E87E088AE4D9B36199DEBF5D75F375C0FA5FD8C33CED04F7FFA53E37F82FB84EB7EC14CF421CE09DA1F140A80A6ECF33E3FD7022F73D025A959B1F967FB7F3B7058A6D1A365B90E6AF88828CBC9C9314A';
wwv_flow_imp.g_varchar2_table(16) := 'F4D2A54B75F2C9271BE5DA99D0703D3BCF0588F6ECD9A3CB2EBB4C5F7DF595CE3EFB6C63BE77ECD8D100C7F938E036EF73D0BB48BC8DF9D7BACEC7A996653D1F0C3D420150ABC5BFAA7D35DA5EBE5D8B777CAECAAA4AF9ACFD3072592EF56AD343996999';
wwv_flow_imp.g_varchar2_table(17) := '8A73E396DA3F1C2E74EBADB71A51064778E8A1871415D532656788AF8B2FBED8E83FFC04406DDB1E185FF6D952597589BECC5BAADCE25CD5D403519BA8249DD0E904A5C5A68A776BA511745C2C1400B58A090FBF29F616EBF9ACE7B574F74A192604C7A9';
wwv_flow_imp.g_varchar2_table(18) := 'A52CA5896DA2123475C0246576C834ABD7190E80D0770010FA485300E4E830CD9DBCCACA4A5D72C9255F0BA0AA9A6A7DB6E373CD5AFB922AEC0A3FB731F595FE816932A6C3484D1E3849B1F51644739FA719C7DF6A59D6DF9B717CDDA1A10008DFC1EDC1';
wwv_flow_imp.g_varchar2_table(19) := 'DCB439E7C0E6F7541468C69A195A9EBF5A51F2282926C9AC4E6F75A5F656952AC61DAD290326EAA48E630F60FD88152C23F490850B176AC488117AF0C1078D7ED29045C4F178920142601C0BB700F12DBCC928E1F5C50B80435CE6E6E6EABBDFFDAE7158';
wwv_flow_imp.g_varchar2_table(20) := '02A4863850B5AF4AEF6FFD502F6E785935BE1A25452799E787CB165715ABC6B6353C6DA8AE1870B992A243F7943791D641FB82420110A9003734F101833ECC0FA03D9A9135432BF3D7A86D7CB22EEE7591DA442729AB60BDDECE992F8FDBAD290326E9C4';
wwv_flow_imp.g_varchar2_table(21) := '8E630E60FB4C2CDE60ACA0575F7DD54CFEA5975E6A1C7B98D7F58140C803AF717E7EBE396EF4E8D146EFFAF0C30FF5CA2BAF68E0C081C69F535F04023C14F63FFDE94F269CC1FFAFBBEE3ADD7CF3CD4A4A0204FBC9EC07D0077A71FD2B466F3BAFD739EA';
wwv_flow_imp.g_varchar2_table(22) := 'D5A6BBF22B0AF46ACEAB2AAA28D6F0F6C7E98A8197B52680EEB72C0B89D2EC110A805A257DF5400065A96B4247DD78DCCD4A8D6DAB45DB3FD7F4ACA715E3F268522D801C11C67970294C78B80F7E1F7413B808DCE1FBDFFFBED2D3D3EB38114041E1C64A';
wwv_flow_imp.g_varchar2_table(23) := 'E3F71B6FBC51D75F7FBD01038AF77FFFFB5F03C0B7DF7EFB00F31FCE8319FFB7BFFDCD844FE05643860C310ECB61C386C9E3917C840A6DFF9355DBD506402F0120974B370E99A6A1ED0729B774BB1E5DFE987695E76B44EB03E89F9665A1D3367B840220';
wwv_flow_imp.g_varchar2_table(24) := 'FCF4D737FB8ECD3CE14000AD55FBD8145D3EF84AA5C4B4D1B2BCE59ABDE17503940B7A9E6374209765C967FBE47679D4362645D18887EA6ABDFFFEFBC6A4DFB06183011100B9FCF2CB8D920B2702347C77DE79E71950C169E0200004AF36A109FE8E4B20';
wwv_flow_imp.g_varchar2_table(25) := 'D00500E7F9CF7FFEA3A79F7EDADC67C0800126AC919999693CCF9576B54ACA0B55A31A4C45F96A6AB470D7177A2B67BE2CB77459C66465B4EDA31D653B356BCD2CE5790B34BC7DA6AE1C7899125B4F841DCD0092F654EED1B359CF69D5EE2C795C6EB589';
wwv_flow_imp.g_varchar2_table(26) := '4E96DB72A9B2A6527BBD7B0D24D125503A5911B6652BC61DABF1BDCED0C8F62364596E79BD95FAE0830FF497BFFCA50E4453A74E355CC601512080A64D9B6600040742AC39000288E850FC9D140E74AA975F7ED98067E8D0A1BAEDB6DB4C2803310728DF';
wwv_flow_imp.g_varchar2_table(27) := 'CFFD401FE67E24946706CF575653AE126F89F95F72741B03F21A5FB58ABC7B556DD768788761BA72C0E511003593D93472B86D403263CD0B5A9AB71C0F619DE15BF75BADE7172151E75FB15D3ABEE3705D3BF82AB92D92BA6426191011A35ABD7AB51149';
wwv_flow_imp.g_varchar2_table(28) := '93274FD60F7EF003931FB471E3C63A0E742800C179B8CEECD9B3CD75478D1A6574AB912347D6390D7DF2E9FE457FD6A6924D46849987F0DB5A75EF607C58E6B9FD030E7A42C7E335A5FF24C57948356F9571F47220C857EDABD6E6E2AD5AB66B99BCBE2A';
wwv_flow_imp.g_varchar2_table(29) := '23A258CA3BCAB66B4DFE06B95D5246DB0CA5C77794B7BA4AABF7AC5051658986A50FD50D43AE93C7F2D4CD023A0A3A1151736263E8418F3CF288E11E00C889D07F1D80106188324225380FD179B0B88E3BEE38454747D7DD8BE7FEC3C2FBB4AD6C9BD2E2';
wwv_flow_imp.g_varchar2_table(30) := 'D2D4B76D5FC5BAA2B4B564BB36167E259F5B1ADA7690DAC7F9C31C8028C113AFE3D387AB6342A7D6F4031DDD00B26D9FF1FFD896AF76EDB29AA585DBBFD0536B9E529C1DAB4BFB5FA2319D46ABA4BC58FF5E335D5F15646B68030062A2B0B6D05348C340';
wwv_flow_imp.g_varchar2_table(31) := '7CE11B42EC002022F4E8440008451B31545F8401A0B7DE7ACBE40061F663711171476C05BA07FC00BADF0028336D9826F5BB54F13171FA64F342BDBCF115C96DE9FA21D76970FBFD7598967174B9E546F10E5A436D36D73ABA01541BC8D8EF70ABF5442F';
wwv_flow_imp.g_varchar2_table(32) := 'DABE48D3B39E95C7726962C6A53AA1D3F12AAE2CD5F4D54F69636176831C08D2C28530ED9F7FFE7963CEA3C7207A00D08517D2C248BAF6DA6B4DCCCCB1C29E7BEE39030E22EF24A8113805408011851C31583FDE1508A021698335B5DF64C3613EC8FD50';
wwv_flow_imp.g_varchar2_table(33) := 'B337BE2E1CCD370EBD414302006450532B929B0D83E04F38DA01743065D022166E5FA4FFAE7ED67CD937B9B7D2133ACAEBAB5456FE5AEDF516370940E83E70181463441B998A709DC183079B0F83381A2E003813A20F51959595657280703A3A00AA9F30';
wwv_flow_imp.g_varchar2_table(34) := '1608A07671EDD42FB9AF3C2E8FB6956E5776518EDC6E9701D0D0F6FEFB7C83E3D803105C69D18E2F347DE553C64476C91FED0658700D7ECFEC98A9EB075DEBD781CCC2DE5F3D815F68E6CC99866BF4EAD5CB44D0F136EFDDEBB7EA02B909D773C21B0462';
wwv_flow_imp.g_varchar2_table(35) := 'F152E30A2002CF71702A2C36001428C26AEC1ADDBDF08FDA56B6D528384EC0D7045F652BCA13AD9B864ED390D46FBC95C0B10820695BC9363DB96ABA8AAB4A0FD217A25C51BA24E36265A60EAD03174020E049C8019FD0BBEFBE6BFC3C808D8947874109';
wwv_flow_imp.g_varchar2_table(36) := 'E6432E8FC3513806B187B585C8E2A7032ACE41ECA103C1C5B0EC9C81B2FF61EE277A7BD3DBC63C57402F4C549DD498B6BA6EE8B54A8DA501ED373A8E4D00314198F86555FBAB2EFCD3601BDF4A4A4CB25C96DBE8A24C38218A79F3E6997003A53E800200';
wwv_flow_imp.g_varchar2_table(37) := '74EDDAD53800F949427CE7CE9D8DB3102EC379D47AE1F301786434C279D6AC59637E074C8086121E9C90E44353F9E180AFBAA65A059505AAF2E107DAAF15F35B626C8212DD89AD9DBAD110528F4D003575CDC275F0FBE00C241481A882CBF4EBDF5FE34E';
wwv_flow_imp.g_varchar2_table(38) := '3DD5C4BCFAF6ED6B263E2626A63677C7E8B275C3F8977CB6D179A8F458BB76AD3EFDF4537DF4D147C6310990B0E828E32127282323E370CD813EF600E4E834FE84327489A6255C713CE0F9FCF3CF4DA013AE813822BD1433FDCCF1E395DE2E5551B13146';
wwv_flow_imp.g_varchar2_table(39) := '77223A8E17BBCAAE52795599CAAA4A8DEF2FDE93A8384FBCA26CB75CE839C629883BA04CBB76E59B402DB1328085E843C926890DDF5253738F9C777374AD564E283BBA3910930E10E01C1403369452D1D0B2E29C458B1619CB0AA7216285940EFC3B788E';
wwv_flow_imp.g_varchar2_table(40) := 'A3A2A3548318AC2C544EF166AD2958A72DC55B945FBE47A5D5E5420976D93296537C549C52E353D533A9BB06B41DA0AE89DDD4263AD1E857159515FAF8A38FF5E8A38F6AD5AA5546EC110BC3CCE727A03AD4E01CF42BC425EFE870C2439D17A6EF8F6E00';
wwv_flow_imp.g_varchar2_table(41) := '4154FC2E44BBC78E1D6BC404057B8D5539B08A11298007B31B7183F574DA69A789ECC4CE5D3A1B3D6967799ED6176CD0E2BC25FAAA305BA45AC0E3C80334E105AC36B89DF9ABDFC22371D6ED8E52BF94BE1A99769CF180A7C6B637DA0DA28CA83C85863C';
wwv_flow_imp.g_varchar2_table(42) := 'F3F0E1C38D871A4ED418881CCB107D0A4EB662C50A932D401952A0573B4C4069EC32473680024553436F88F28BCF65EEDCB90608575E79A549DC02440DB17A38D6F2E5CB8DB7198EC08A9E32658AAEBEFA6AE304F4FABC5A5590A50FB67EA44D7B37A9A2';
wwv_flow_imp.g_varchar2_table(43) := 'C66BC2218951094A4F485797842EDA5D9EAFD5F9ABE59247C3DA0F52624C92724B72B5B36C974AABCA4D3825212A4EBD937B6B5CD753949192A1682B4A5B73B7EA5FFFFA97C91F425F82D3F11CE8580D019E677522FAD497E1D90640A48334567A7D287A';
wwv_flow_imp.g_varchar2_table(44) := '0501B6230F404E161F44C6C281631097423C39ABD50107C7107B82A81C8BF7181DE68A2BAE3095A7813E1BAE4B16E21FFFF8475348C835E058E824585695F26AE1B6457A6BD37C157A8B44E82025B69D4EEE3C5A8352070B871F2E00BCC57336BE61A2FF';
wwv_flow_imp.g_varchar2_table(45) := 'DFC9F88E8E4F1F296F4DA5F2CAF3B56CF70A2DDCFE998A2BF79AEBA7C5A5EADC3EE768442AE92451CADDBA55F7DE738F4921E17B946A02ADF88F1CEBCC49C4472C538C88A79B0E225DBA7431254278C603F527441C600360702BE8842E0797E29A4DD50B';
wwv_flow_imp.g_varchar2_table(46) := '1B01D7910520880721103194FFE2E9E56F38F470CA610A07362380707CE87E013058B11010DF0BB1AB40F10010117524812146E000F87C30CD01CF875B3ED66B396F18714512FE90B4411ADFFD4CA52774921B7F90E5363E9B7736BFABD737CE91DBE5D2';
wwv_flow_imp.g_varchar2_table(47) := '847E137552A7D126528E2556E3F329A72447F336BDA3B57BD61A60C5786234A1EF253AA1D32879AC28AD5BBB4E77DC7EBBB1FEB0CE48AB452C39CFEA28F83366CCD0134F3C61DE0FF0C069A91E013CCE02E2581C9C2C084A874860E37BAC47BCE024AE01';
wwv_flow_imp.g_varchar2_table(48) := 'A4100A178F2C0031C9A489A264028640871DC466B552D510A82C434C88EC2486913D08F721121EB8AA3966CB962D6695C271C8FF1933768C115B9F6E5FA81737BC2A9FED555A6C079DD67D9C4EEC3C5A51AE985AEBCEAFFB608DBDB3E53DBDB6718E3C00';
wwv_flow_imp.g_varchar2_table(49) := '28E3529DD4698C2C973F088736E4936572B2E76F9EAF0F772C5461C51EC5B9E335B9FF248D481B665248E6CD9D672A56997CC0C1C7996440811F0A9D077AF4EFDFDFE84B04759DF781EB30586C4F3DF594010F1E7340E870707C578462300E9AA2AC1F15';
wwv_flow_imp.g_varchar2_table(50) := '1C082250768CCCC7DA002CE833AC467298293D86900E805042A9B34204404C029A44D0A9BF0AACA070145288C40AFDD9CF7E66B20E3D511E7DB97B995E5CF7920A2B8BD43EAEBDCEEB355E233A1CA7184F80E75835F2F96C1556166A5ECE5BFA68FB4203';
wwv_flow_imp.g_varchar2_table(51) := 'A833BA8ED3693D4E537254522D00F63B044BBD655ABC73B1E66C9AAB3DDE42758C4BD3D47E53D4BF6D86CACBCAF5F0430F9B8C45C715E1643F3AEE087E0E1A34C870534AADE124D0002E8AE5C83BC1497145E0C844874374F3EE3845B92EBA1DC601B40C';
wwv_flow_imp.g_varchar2_table(52) := '721C591C080E71E79D771A471C014B5838AB0E227EF2C9278668CE4A85E0E84644BB011AC0C0DC25310C968EDEE00C08BD6CD932C3A900DD030F3EA8AE5D3A6B47D92ECD5CF782D614AC57A22B56E7F73DDF5470447BA2F7C7CF6C9F7CB6AD35F9ABF5E6';
wwv_flow_imp.g_varchar2_table(53) := 'A6B7B5B5245715D515C69918EF8955CFE49EBAA8D7F9EA99DCDD883927398C73CAABCBF5F6A677F4CE96774DBE5266FBA19A9471A952625294939DAD9B6EBAC944FA9960C48D13EEE0DD300A264C9860C411EFC602213D96C61054D33A5CC801E0A44993';
wwv_flow_imp.g_varchar2_table(54) := '74C71D7718AE0690A800A16116D626BA6190E3C8021075EBB06B4080DEF38F7FFCA38E63000008E974F5428186A8FC8D140C146226C0E136810E38625B8090816EF0FD1B6F902B26469F6CFB442F6D78C5E82AC7771CA92B064E55AC7B7FB69FE3445CB3';
wwv_flow_imp.g_varchar2_table(55) := '67B51E5D3A5D5E95CB6DB915EF8E936DB90C406C559BFFFF7AEC2F9512DDD6E843CEE0FCB29A32FD7BC57465EDCE527C749C26F69DA0511D47AAACA4DC8851B82B00821B61DE3B4A6FE0626131BCF0C20B462421D69CD2228EE13BFEF6ED6F7FBBAE9103';
wwv_flow_imp.g_varchar2_table(56) := 'EFBA7BF76E9304F7FBDFFFDE78D2831C47168000045980C874B805DD2C60DDA44CB0D24E3AE924237A30635142E1504EA70B8846CC09253BD084872BC1C601658F1E3D0CD8468F19ADC2CA023D99F58CD6ED59AF76B1ED74F3B069EA92D4F5A0F29FC28A';
wwv_flow_imp.g_varchar2_table(57) := '423DBEEA096D28DAA0444FA28E4B3B4EC3DA0F365C6969DE32AD2B5C6FF2AC7F9479B3292D72697FAF1F53706DFBCC3D1E5FF91F95549769445AA6A6F49FAC0477BCF16161CA33D9A4D0C27D037B273A4A32D901D0044E4A970F12FB31FFC97A44075ABC';
wwv_flow_imp.g_varchar2_table(58) := '78B15948C4EDE040E8812CA65B6EB945575D7555287EA3230B40AC24E43BE62A62CCE122882D944958B4D33D8C958783EDF1C71F373A004A3615A6FC74C49C5310C871E857E84B5833ED52DB69E9EE657A62D57F09A7EA9C9E676B7CCFF186BB0472107C';
wwv_flow_imp.g_varchar2_table(59) := '3A8B762CD6F36B671A657B6CC7B13AAFF7B94A894E322EC4226F91B6ECDDAC284FAC06246734D828C1E162B3D6BFA8055B3F54AC2B5637664E5346725FF3DCBFFEF5AF8D83111D068EE15859CEBBE37A8083020CB832628FF70020D08B981BF4DABC7973';
wwv_flow_imp.g_varchar2_table(60) := '1DF7E5FD699C058058342134B03AB200E45810100D459A950527023C38FCE0488E4501380011CD32519C598D0D753E75AE8998C0C9882567795C9AB5E145E330A40CE8C661D7AB679BEEB5793981C57ED57A3DE70DCDCF9E6FACA72983266B548791B55C';
wwv_flow_imp.g_varchar2_table(61) := 'CA653CD096C8C3B665D97ECED390039367C8DAB3468FAF7C4265D5E53ABFD7B91ADFE34C792BBC66F2114F585E4E9758073C5C8FF7E483BE87C98F5E8395E90C4044121B5C0A059AF7C4DCA7550D0688E30B3A264458E04B3AE62C7F738850DF9F016121';
wwv_flow_imp.g_varchar2_table(62) := '20CA255E5EF4A2FA83BFF1410FA016FE8A2BAF90D7AED2034BFEA1AF8A36A97F4A86BE37EC1A25471FBC452BC57E6F64BFA5B7B2E7099734A9A7633A8E329CAAB979C9BBCAF3F4D8B2C7B5A5245799A94374FDB0EBE4B25DC65948AC0C51CBE4F3090410';
wwv_flow_imp.g_varchar2_table(63) := 'EFC3DFE0BEE87988F4864AA89D300DDF85C181E890F1C8E240F527BF3E211B231CC1519C8E88A9C07300177D79D035485175FA1416D794E8F79FDCA3626F914EEF7EBA2EEC7DBE623D079BBA88B0A5BB57E899D53354E62D51667AA62EEA75A1D2E289B7';
wwv_flow_imp.g_varchar2_table(64) := 'F9F3892C274276884477EABD9E5F3B4B9FEDFA429DE23BE8CE513F578C3BC6701FB810FA1F62E7ACB3CE3A40E4F0CE7012276ED69867B93EAD1AE386CDE4444736809AF3B281BE1ECEE3FF701EA772021DE3E1871F3629153B2BF274D7A7F7A8C6AED6A5';
wwv_flow_imp.g_varchar2_table(65) := '191334AEDB29F2C055EA0DAE41079067D7CED492BCA58A73459B2069AFE49E8A8F8A5787D8F6EA9ED4DD28D72E82665F33BC355ECDC97E537337CD3709F4779FF81B53DF4515074E45421714339211503FD523C4704473C858FFD86307400D5189554DCA';
wwv_flow_imp.g_varchar2_table(66) := '065516E81098CAFDFAF5534E718EEEFFECAF261C7159FFC91ADBF9C0E60B8166386232B774AB1E5DF9A40A4AF3E4A3459D4528D5AD2877943252FAEAA2BEE7293DBED3D73680AAF25569FE9677F5EA8637E4715BBA77ECDD4A884E304A308E4D7C3B9401';
wwv_flow_imp.g_varchar2_table(67) := 'A1F8B662B4FD50E08A0028104098C228E4397B73F4C7CFFF2A97DBD2D4FE537462A78601E450D7A76AED2ECDD7ABD973B4B6609DBC351431D6A89A9F96A5D4D854DD34EC7A754A4C3FA05831707688B1CDDFFC8E666F784D51EE68DD73E25D0701889221';
wwv_flow_imp.g_varchar2_table(68) := '94FC08805AA1B9427D85DBF1CC06FE1D1186B38E9455F408AC356243BBCA77EBEE85F7A84A5E7DA7EF25FA76D7712639ACB181D7D967D5A8B2BA52DB4B776857699E4AAB4A0D98D6EC59A3AA9A4A8DEC74822E1F40D971FC01CDAC9C6B7AABCBF57AF65C';
wwv_flow_imp.g_varchar2_table(69) := 'CDCB996FDAB3FCFEC4DF2ACE136BC20E98F25894641260A67F9D088B64241E8A69067CEF28865F47348E417FC06F44EAE801ABBEBADA28D0046851A27122E243C1A177D7A777ABB06AAF4EEBFA2D5DD2E762C506C4BEBEEE11FD3D196538505ED92EBDB8';
wwv_flow_imp.g_varchar2_table(70) := 'E115ADCC5BA5A4B8369A36F81AA32305764373AE55E22DD68C3533B578E797EA92D859B78FFAA951A211AF6405206EF16311990FF4DBF07E885F92F39DC87A63F4680ABD9A417E0E3D72459863A2F3168DEDA2E398FA701642020D99F15868F85830E3F1';
wwv_flow_imp.g_varchar2_table(71) := '565F75F5D5A617CF3F963FA4F57BBE52464A2F4D1BFA3DB58D71CCF886CC29278BDEFF9DF91FDDC7EC1A2DA09A74FD6CD92E5B13FA5CAC53BA8E3BC019E94C185CEB91E5FFD4B6D26D3A2E6D98BE37E45A63C6A3D8E38270C23281E91ACEB9380DE14CC4';
wwv_flow_imp.g_varchar2_table(72) := 'B81AFA9EE3A017EF89AB238C3B011D7900820894C74C9F3EDDA434E048ECD3A78F09619047ECD499031E144F7C408E9BDF29E00B5CA18E35C6EA2563F1D69FDC2A4F8CC7C4C0DEDFBC4009D189BA29739AFA26F5AE6D9471B0358539CF3FBFD9EE0F9872';
wwv_flow_imp.g_varchar2_table(73) := '14E91DEF6D5DA0D91B5F3529AE00E8D4AEA73408A015BB57EAF1554FAAB2BA5C17F7BE4867F6385DE5A5E526FB80E6E7B81C1AF2F1F0FE7C070745C1262B915898F38E2C10FA3CB2800846E333C25B0FD828450A114C4716802016A04127A05222302583';
wwv_flow_imp.g_varchar2_table(74) := '540EF284888701225CFB785F8905918D089BC7D186B91E987045FCE8D9679F35E20D1141288342BF157B56E9F1954F9AFE3B67F53C5D17F638DF941453255A7F106C5D96BF5C96CFAD5EC93D8CD39190C7CEF25D7A79C36C2DCF5BA9A49844C355FAA564';
wwv_flow_imp.g_varchar2_table(75) := 'D473F4D946E99EB1EE797DBA6D91E23DF1FAFEB01BD4AB4D4F6DDEB4D93C0F99064C36DEF6FA0A34E10E523848DF256F083D898245E281705CC21CF891A081A307423772C4710F10333B6642194C36BD7528858108A438E0B667AF2D88C5CA22C58115E8';
wwv_flow_imp.g_varchar2_table(76) := 'B8EF0961D07399D45422D2816E7E87FB6026A3AC92644574FAE493BFA5A2AA423D9D35C3E437B7894936ED5E7A27F7918BE4B0403D4CB6B6ECDDAA07573C24D558C66C1FD47E90115FCB772DD7FAC20DAADCE7E321C23EB5FF64E31F0AD481C8525C91BF';
wwv_flow_imp.g_varchar2_table(77) := '42D3573D6DD24046771EA5097D2E519C2BCEE472B35F079C94A027CF19C83158082C149CA1D085E3582870E39E3D7B9AFFD349843C6F82C8D0077A1068E63AF894F02D8560D51D391C88C92625132EC38A446CE1E287DB1003222EC64A7292C91075800A';
wwv_flow_imp.g_varchar2_table(78) := 'D68E1838F5D453EBC20070B2C0B40E82954E57314CE51FFEE8078A8A89D267DB176BD686978C7535346DA8AE1B7CD541CA344AF3EEF2DDBAF7F3FB55EA2D37E0A0BA95DC43AA4A51A893E392744BE60F949ED0C1A4AD06FA91F040FF6BF9135A5FB45E89';
wwv_flow_imp.g_varchar2_table(79) := '51899AD26FB2323B0C56597199EEBBEF7E13F363F2C9F32107CA711AA2CBF0BECE22A06A16CE8CC872421EBC2734E0275E6CA2F9249D011AB214E0C8D4FA935B14E4387200C40BC2AE89F96051E1AF21D20E1149C7204F1AE23A2B1402C379F09B1060E4';
wwv_flow_imp.g_varchar2_table(80) := '38AC315635E101CC62C72A21CEC4B561F1A43CA0742312F32BF33573DDFFB4327FB562AC289DD5E3749DD6ED34C545C51D90D681AE9353BC496F7CF5A63616651B139EE4313CCAFDDAF5D3857DCF53C7B8F403CFB17D2AAD2AD19BD9F3F461EEC746711F';
wwv_flow_imp.g_varchar2_table(81) := 'D961842ECDF88E695F4749118A315174DE09EE189839C8C2408FA1E408AECA3BD0F58C7417C419EFE624D4F33B620D910580D8428AD45D2C4EC2375C2BC87164018849A752944A04883A6EDC38934D070BE73BBCC898B91014C090F2C956957025C41F99';
wwv_flow_imp.g_varchar2_table(82) := '88702D3859A0FEE45829FC84A3C1DAD125A263A2B5BA608D5E583B4B79E5BB95129BA273BB8FD7F19D472ADEB491AB1546585C3EA9A4BA586F6D7A5BEF6D79DFF4621CDF7BBC4EED728A62DD51F2B8F6772043E12EF596EAE36D9FE8ADCDEFA8D45BACCE';
wwv_flow_imp.g_varchar2_table(83) := '895D7579FFA946872A292E31450000DD69E2505FF177BA839071E98866DE116E4ACA0BE021F647554A7676B6B1324A72D0AE0000102A4944415489C00348162083BC21CE3F66525A114B882A5AC4919219A80CA3F8C2A209363AD64A60790FF55698C480';
wwv_flow_imp.g_varchar2_table(84) := '07623A22CD59795832E806101F5022F64E3FFDDBAAB26BB464F7977A3E6BA62A6A2AD436AE9D496B3DBDE769464F3122A536F44E5F1F9354BF618E09474CC898A893EA8541B0D84AABCAF446F63C2DDAF5B9E9C49A1CDB4E970F9CA481ED06CA6DBB4D6D';
wwv_flow_imp.g_varchar2_table(85) := '18BA0FA63B1C917A79C77908F0E136E477F33DBA0EFA1D9CC889B207725644208DB0D0870207CA33714016D931A3443BA5CA4C348A347122261EF39D0471B80DAB29B0DA82EFB1B2487FC5D2825D4370F6BF08CC85E1DA28D278A6398EAA0D1C78197DFB';
wwv_flow_imp.g_varchar2_table(86) := '9A9A77EAB95EDA385BA535E58A73C598BE8567773B5D7D53FC560C206ABCACC76FB911305DBD274BEF6C7A5F397BB355697B951C95A249FD2E317B76D0A00E83005143EE0E0A31CF4AFE4EFD7722CF897742C7C1B26451917119E8077272A2A848C19D81';
wwv_flow_imp.g_varchar2_table(87) := 'E50A378663E1B20044F5DBEB3553941D5922CCEF9FF3377B42596425F23B4AA643B840AEC4F78837B809A0804BA12CD34DBEA11A725629BD9D111D5C97550D57EBDCB5AB7C769596E42DD79C9C379457B6DBF09C444FBC46761C69FA18A6C5B557B43BC6';
wwv_flow_imp.g_varchar2_table(88) := '88A5395FCD35B56213322ED1F00EC799DCE89DA579FA226F8996ED5A6EFE8F99DF39A1B32EE8738E06B61D649C868086D81C46025C9445818809B41C1D1A20B209C1E0E3E2B901110A71FDD2E6407A21E21C43A33EBD9A091CE7F0230F40812F1A58F2D2';
wwv_flow_imp.g_varchar2_table(89) := '1001C82526A718C5996A4C643EB9C58D591D5C0F11C639884A6793B969D75FAFAE5DBA1A457763D1575A90BB401B0A3798526506FA50DB98B6EA189F6E7A366FDCBBD154C30F48C930F1AC6D253B55E02D30C9F9782313A31334A06D7F8DEB76AABA2776';
wwv_flow_imp.g_varchar2_table(90) := '358D31376CDC681460D237E0866CB64B452D39CE8DEDCF81420C2786BBA0EFE044C4126B2C49FE50F40A02444736800EF5C2E8082895883A7C46B06E44D8D7C5CE983C2A3CB04E484263F5E39CBCE5961FAB5FFF7E263DB5B0A248EB0BD76B79FE0AADCA';
wwv_flow_imp.g_varchar2_table(91) := '5FAB8A6ABFF96E36CF316D619D7632FCEA4F6D75B96CC57B12342C6D8886B61BA6BE29BD4C9373BBC6A7255F2ED5238F3C6C2C494412E081F31DAA5710DC058B0BD0017CDE8F329F10FC3A872269FDEF8F6E00396E7E441940682C4E549F2A28EB2B57AE';
wwv_flow_imp.g_varchar2_table(92) := '3420024C000EB701253F28DFB1F171F2F9AA55565DA19D653BB4AE70A336EFDDACBCF25DDAEB2D350D3BE9C611ED8A3620494BE860F626EB9BDC47E9F11D1417152BB73C866BA0772186B094B80F1E625C150E780E155D77625CCD7DC7E622A591E38F6E';
wwv_flow_imp.g_varchar2_table(93) := '00854224946FC226B80D962C59629475A75BC78409DF517A7A47A37B99269CFEBA65BFDFC5A64AD55F5AEC76F99B679A0DE0CC21FE1AF9B2F2326DDFB6DDE830F86ED04DD0C93002509A516E4328370EE5B59B7B6E04408D538C5E4135A63294981ACA38';
wwv_flow_imp.g_varchar2_table(94) := 'E2022514D3997262261C3318FD0A7DA97EB70FAE0D07017C8853E2517036FC307C7045307078523D8B72EFE83C87E23CCD9DE9163AFED804109E63029D7B2BF71EB0952A3A4C9C3B469D133B9B043247A541D410944419779A400124808368C36B8DC98D';
wwv_flow_imp.g_varchar2_table(95) := '25840F89581C03CF371612C0719A6CE261764A8F1D7F142105ACA7BAA6109654555DA52DA5B9AAAAF11EB8DD2B198EF1294A8D496B30AADF424069ECB2C72680B28B73F4C4CAA78CF27BC0B06C53DF75419FF334BAC31879284366ABA5DAF2208040649B';
wwv_flow_imp.g_varchar2_table(96) := 'E8B763D11851E5761BC5151DABA136BFE8547C38C731AB3976E2C489FAE10F7F688A1D03155F9C8D7373E66941EE47A697F5FE2EBF7E5199E8A1566D9AD1A7BEE1712C028846E39F69FAAA674CBE0EE537D471D94C55750D9DC295993ED4EC4511B8D90A';
wwv_flow_imp.g_varchar2_table(97) := '13E56C7540288509C7814991233E26A2DC80033005B69D714211A4CC02143814BA15A3F14EF535BA67D1FDCA2DCD357A1361119043EE758DCFF6875B86DEA0C19146E3ADBF7EEA6F7530B0DD0023B2BC555E2DDBB34C45157B1BDD6C050091EEE1EC9541';
wwv_flow_imp.g_varchar2_table(98) := '332A4A83D9EA00B31B0E4303043E8089D62AE83CE8338451A8DDC2BF84AFC6D9EA000E54DFCF13B8D5415A7C070D6E37C8743C236D645DE1BAC85607ADB163612034EBEFB3BE70C7223DBD6A86B18ED809674CA7138C3EF4C4EAA74CD3CCC676EBA90F20';
wwv_flow_imp.g_varchar2_table(99) := '4041127EE0662B94DEC0590013393A64023A9BADD0B88A7ED380ADA900CA4C1BAA291993141B1DAF8FB67EA45736BEEADF6C65C8F5622396C0D150AE750B2FD1A35F84C109AAED2ABF6FAF36176CF1AE2FF4F4AAE74CB86162FF891ACD6E3D15457A62F5';
wwv_flow_imp.g_varchar2_table(100) := 'D3CA2ECC691440585278A94931451C012067B79EA6EE17E60008D31DB03554A613B85F183D83E85E86B7FBA3DC4FF4F2C6D9A6E3D9B421D76950EAC03A7CD0369805D18A7BC673EFA31B404CC4FA82F55AB473B1490AF30F5BF99505DA5CB4D9E817DDDB';
wwv_flow_imp.g_varchar2_table(101) := '74330D32ABAABDCADE9B6322E5433B0C311988EC9FEAB4ED25F646041C259ADC62524C490DC18C2786E5EC997AA80DE7F08AE3EB4121C75948821CCEC383369C5B749F49B02785A45B623723C2485CCB2DDE6614FB9E6D7A9AC60FCE2015F6A42E63D533';
wwv_flow_imp.g_varchar2_table(102) := 'A987D1EB5A691CDD002AAADCAB67D6CC30DD514DFE4F6DDABB9F1DD55652980DE9FC1DE46150789047763A5E570FBC4251B51DC5000FE10202AD24F4130E216D14B0E05C6CCE969728DBC4BC48B3800B0140B810B94D75CAB75D630A1BB38BB3FD0EC8BA';
wwv_flow_imp.g_varchar2_table(103) := 'AD13FC0FB97F2785803D342C4BA33A8CD0E503A744B6BC0CC7EAF1EFDA5CA0196B9ED3CADDAB8C5FA77D1C29A56E9555976A7745A18852B58D4D5182873DDAFD008AF5C4E9AC1E676848FBC1A629664545A5E9F24A4E0D9C07F0207A6805E3543F3475D3';
wwv_flow_imp.g_varchar2_table(104) := '5D7C4500992028A53A58738008CFB3D38D158F3466FCC2DC85FA70FB27F2B2E96EAD43AAA4AAC4F46AB4AD1AA5C57430E9B554B4E655EC3616E57169915D9BC3819D5A410580F66846D60CADDCBD5AA9891D75CD80C94A8E4DD18A5D599AB97196A2AC68';
wwv_flow_imp.g_varchar2_table(105) := '5DD0EB3C8D481F5AC79DDC8A361514512E8F31DB0935A00CD35ECFA91DC363EC44F401447300E47898C91440C1A65D310A35DE6D946B3F2772A9D257A192CA0AF9E435EFE3B3A54FB77DA6B99BE699368BB4DBCB48E9A3BC927C3DB561860A4B8ACCAECD';
wwv_flow_imp.g_varchar2_table(106) := '570CBCCC54B6B6D2387A4558E0BEF1ABF2D7282DA9836E197AB36957B770E7223DB3EA19B9DD319A3C60A24EEC38C60F20449BE5B7D9AAABFC7BC6939F03E74154918405F7C197139877449A2839C7842C4887E518AC30B8166545702ABCD8811DF2011E';
wwv_flow_imp.g_varchar2_table(107) := '3E241471947282A1E84498F844D43D24CC1BCEE3E78DA4922CC8FD402FAD7BC5E838F8A9E09274C17F74C5BFB4BB6C8F86A71D1B00BA6F5F0BE3DB5B7A85040288A4785251CFEF71AE92F6553EAC295AA777B77CA068975B93074C3229AAF5738ED15598';
wwv_flow_imp.g_varchar2_table(108) := '4CA2E58087047692D188EAD78F53A123115127311FEE44EA0800C20F44FB3C4C7D7275EA17F1710C6539E85694DF701D53DC78EBAD07E52C21AADEDFFA815E5AFFB229613CB7C759EAD9A687F22B0AF4FAE6B92AAED8ABE16999ADCD81EEB72CEB8E60E6';
wwv_flow_imp.g_varchar2_table(109) := '32E87D816DDBE686F70673D3E69CB31F40CF6979FE6A6351C5BB6365596ED3CF901A2CD22DA60EA09BFCC100A2EC858E65E4E8D0B51E4ED1D81E1B4E093522CF09AAF2AC4E598DB3936143015240C4BDD8D6004E06D0E8448B9B2070B001DDFBB90B4CC5';
wwv_flow_imp.g_varchar2_table(110) := '2CFA0EBA5A942BDA44FFCBABCB4C53CFCCF461BAAAFFE54A6C3D1176A765593084668F500074A3A4479B7DC7669F608B9AAB996BFFA725BBBE34DD501D4DD9D9102E25A69D2E1F305983D3061D50EC0720985438015C848A554A7D9ABA8757731F15CE43';
wwv_flow_imp.g_varchar2_table(111) := '349E6EB3FC6C1040BE6A2DD9B154B3D6BDA0D21AA7C7B55325EB8F919D947E92260CF88E62DD41370E6FEEA3DF6459D663CD3DC9315882390F2B648AA4E7823AB99927B1A7574165A156E567A9D2A493D682A87673DC6E095DD43BA5B7D92425703406A0';
wwv_flow_imp.g_varchar2_table(112) := '10EBC81B7DFAA60048ECDB6A57695DC146D34286C245C7A4477FC3921C9636C8FC0CEC24DB4C9235F7F0A996653DDFDC934205D078496F0673D360CEF1B75B09D88332E022A62027A0F1B7F315A2871451AC22CA82C9FDA15A83F48D104A600E7A7CA7F8';
wwv_flow_imp.g_varchar2_table(113) := '0F651A1D8BFECD548BE05C2445A4A16733D1FC004F508083FD8012A3606815C439E75896353788F39ADB8374FF2D6CDB1E23C95FD976180EC0836310C01024251708DD879D80280926781AC2EE36756FECA475B02F190DD1E95344A505394578A6012F55';
wwv_flow_imp.g_varchar2_table(114) := '24E1B8570B9279AC65590B83B97E283AD0004959C1DCB4A5CF6152F134DF76DB6D755B493915AC882FEACBC957268330D481F28CD24CDE355DF251C01D8E03970344D4A5E17C3C8CB313075A96B526185A840220B6B929C0E91BCC8D5BF21CB80FE9ABC4';
wwv_flow_imp.g_varchar2_table(115) := 'BBF0CB906D4881219C88C966EF30269C42BF503903F782EB504488CB80B26CD240C8BFC63189C79BD411B2150F5300B1677ADB7D667CFDBDD39B3445410388ABDBB6FDBEA4539B74A7563C082E40B92FCDABF03AE34444FFC10948001487206DF0701A86';
wwv_flow_imp.g_varchar2_table(116) := '0340143012DD871BD17D8316C3943553170FC0C81522DE164EBD2B8CE45C6059D6B860AF172A807EBB0F47BF09F6E62D751E00C25C27BC404C8A967770000AF7F81BA0A2FA135116EAA4E2B5A63C990652FCEE749AA75203EF355C073F1431B750EFD542';
wwv_flow_imp.g_varchar2_table(117) := 'F4FADDBE67641E831AA10208E4BE17D49D5BF024380162052B888027F12E4409D5184EF70F4418A226540EC4BD2861468439A112422424DC938C4FF2193B3953F971988AB0D3F671202449502354001D967A1093CAE421A648FCE277676089616A13E7AA';
wwv_flow_imp.g_varchar2_table(118) := 'BF655430144439E7FAA4C5120BE377476147543AA193A6EE751FCC3384704E48FA0FF70D0940B57A100EA8C921BC448B9CEA8008BD0785965815FE1F029C44CA031B5886FA004E2C0CAEC7BD48CE278441E884363587297878ED99FBAC2F1CC2418F7000';
wwv_flow_imp.g_varchar2_table(119) := 'E8B0F507A1C03A25C378899948F490707BA21D5F905382CDBD9CF2A010B7610A7A629B7862D0FE1FE7FA2103A8960BE1841ADDC4878E1C76785060D13EEF338B3FA4112E00B55A5C2CA4B78D9C1C4881A0E35F8117091780D880225B52D7C81C1D1114C8';
wwv_flow_imp.g_varchar2_table(120) := '95D4D3B2ACEA509F362C00AA156317497A25D4078A9CDF2A14B8D0B2ACD7C271A7B001A816447FDF17DEB8251C0F16B9468B51E001CBB27E1CAEAB871B4024E47C2C6954B81E30729DB0520087E15996655585EBAA6105502D17EA29E94B4929E17AC8C8';
wwv_flow_imp.g_varchar2_table(121) := '75C242819D92322DCBE267D846D801540BA2E1925E42510BDB93462E140A0536ED5BD4175996B52C948B34746E8B00A81644A992F0529F11EE878E5CAF59147857D224CBB2F29B7556130F6E3100D58288E2EE8768A1D3C4E7891C165E0AFC85D22BCBB2';
wwv_flow_imp.g_varchar2_table(122) := '6AC27BD9FD576B510039B7B16D1B003D2069FF46132DF54691EB42015AB65D6359D6CC962647AB00A8961B7591741D7B8348EAD6D22F768C5E9F6E9FFFE6635916CEC2161FAD06A0006E8458BB50D20D9894E1C80868712A1DDE37403CBD418F1F49735B';
wwv_flow_imp.g_varchar2_table(123) := '525CB5AA12DD149ADBB6CD06579992B0DAF88CD8976240B7A5C6F7E66ECA858FDE63083D50C8809BC4F92CB12CABF89B7AE556E7404D7951DBB6D32461C5057EDA494A6ACAF947C13100628F242CA7BA8F65597987DBBB1D96003ADC8814799EC6291001';
wwv_flow_imp.g_varchar2_table(124) := '50041D21512002A090C817393902A0080642A240044021912F72720440110C844481088042225FE4E40880221808890211008544BEC8C91100453010120522000A897C919323008A6020240A44001412F92227470014C1404814F87FB5F51417B02E9041';
wwv_flow_imp.g_varchar2_table(125) := '0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7938998708333953)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000200049444154785EED9D078055E599FE9F73CB747AEF030882520545B1C4DE4D51E3DA624BB26AEA2671D33731D1C44DB6A4FCCD';
wwv_flow_imp.g_varchar2_table(2) := '9AA871378926F682151511ACD8052BBDF732C0F45BCEDFDF77E6BD1CAE77863B388C8CDC632633DC72CAF7BDF5799BE7FBBEAFC25158817D7405BC0203ECA33B5F786CB70205062810C23EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0';
wwv_flow_imp.g_varchar2_table(3) := 'F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628';
wwv_flow_imp.g_varchar2_table(4) := 'D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F0050628D0C03EBD020506D8A7B7BFF0F00506C8A2817CDA24A5D369452211799EF7B15310F7CBFD7064DFCFAEFEFDB1DFFC5E70030506C8C1004650894442DBB66D536363A34A4B';
wwv_flow_imp.g_varchar2_table(5) := '4BD5A54B1747F810DDDEC400DC8FFD70EF5BB66C11F7CE3D77EAD449B158CC3D25F75C38765E810203E46080FAFA7A3DFBECB39A33678E56AF5EED18A0ACAC4C83070FD611471CA1891327AAA8A868AFD000DC3E445F5B5BAB175F7CD1DDF3AA55AB324C';
wwv_flow_imp.g_varchar2_table(6) := '3B68D0201D79E4919A346992BBE7C25160800FD180993D263D7FF5AB5FE985175ED0860D1B1C21D9515C5CEC98E0339FF98C2EBCF04275EEDC39F35E7B9A4361338DBFD7AD5BA73FFFF9CF9A3E7DBAD6AE5DAB6432E99893F720FAFEFDFBEBB4D34ED315';
wwv_flow_imp.g_varchar2_table(7) := '575CA1F2F2F29CE6D2BECA18050D20394281F8B76FDFAE1FFFF8C77AE28927D4D0D0F02193C1080FC2FFF297BFACCB2EBBCC9919ED49FC26F1ED9A983BBFFBDDEF74FBEDB73BB387D753A954C644E3B9780D0DF64FFFF44FFADEF7BEE7FE1D8D460B2651';
wwv_flow_imp.g_varchar2_table(8) := 'A1356220F7201288FBC61B6FD40D37DCE018C124287633C462C4654CD0AF5F3FFDFBBFFFBB0E3FFCF076F7078CA821F469D3A6E9A73FFDA9AAABAB3392DD98C33EC76F9EA1478F1EFAC10F7EA033CE38C3FDBBBD19776FD432050DD0A401962D5BA67FFB';
wwv_flow_imp.g_varchar2_table(9) := 'B77FD373CF3DE7980102C15C1833668C7AF6ECA9152B5668DEBC798E59CC49FEE217BFA87FF9977F71D2B53D1D4CD35848FF1FFEF0874E6341CCFC60F2E0A3F4EEDDDBDDF3BBEFBE2B7C1A630288FFEAABAF760E7D81010ACD719D5082A09E7EFA694718';
wwv_flow_imp.g_varchar2_table(10) := 'CB972F77AF959494E8ECB3CFD637BFF94D75EBD64D6BD6ACD1BFFEEBBF3A27D3B4C084091374FDF5D70B6DD0DE0CC03D2E5DBAD499351B376ECC3CC7B9E79EEBEE13336DE5CA95BAF6DA6B356BD62C6716C104071D7490AEB9E61A1D70C0010506289840';
wwv_flow_imp.g_varchar2_table(11) := '815286381E7AE821FDFCE73FD7E6CD9B1D3123FDFFF8C73FEAD0430FCD68EE071F7C505FFFFAD733B062DFBE7D75EBADB76AE8D0A1ED4A4CC6806FBDF596CE3CF3CC8CD3CB8D3EF2C8231A316244E69E6FBBED36E1D4831221F1870D1BE6181DD3ADA001';
wwv_flow_imp.g_varchar2_table(12) := '0A1A20C300100E0CB069D3A68CD3F89FFFF99F3AE1841332D21562C7DE36693F60C000FDED6F7FD3902143DA95988C01306F3EF7B9CF39FFC47C993BEFBCD3419E1C10F89FFEF427FDBFFFF7FF545757E75E83397EF6B39FE9B0C30EDB1B4DF276BFA782';
wwv_flow_imp.g_varchar2_table(13) := '0FD0E404037B2219172E5C98716AA74C99A25FFCE217024B7FFBEDB775E9A597AAAAAA2A1374428AFEC77FFC87D004ED294DCDB9C5C6BFE8A28B84FF62D71F356A9473E631CB5E7FFD75FDE4273FD1FBEFBF9FF15B7826CCA2FDF6DBAFDD896D6FBC6081';
wwv_flow_imp.g_varchar2_table(14) := '019A18003B1AE9FEF8E38FEF0423620AE130AE5FBFDE991A1671C549BEEAAAAB1C01B637146A0CB075EB56FDFAD7BF7610A8DD17DA09FFA54F9F3EEE9E6B6A6A32D16B22C2E79F7FBEBEFFFDEFBBCFB427D3EE8DC4EFB46461445200839AFD0CB489C3DB';
wwv_flow_imp.g_varchar2_table(15) := '524E104486038CC6C09934D4A8BD36399CF6F0FCF3CF3B296FCE3BEF19846BC8108C0BF18F1C39D2993F93274F6E57A7BDBDD66577AE536080260D00B1602763D36342E00C9B8434A232BB1A3B1A74E8B8E38E533C1ECFE406EDCE06ECEE778C41C1FFEF';
wwv_flow_imp.g_varchar2_table(16) := 'BFFF7EE7B0130536ED1066045EC351FFDAD7BEE6A2D88520D88E552F304016056232CC98314377DF7DB75E7EF9651711B6035307A7F8ACB3CED2C1071FECCC888FFB80D049D8237E71D75D77B9DF487C0EDE2319EEA8A38ED2E73FFF7961FF5B3E906987';
wwv_flow_imp.g_varchar2_table(17) := '8FFBFE3FEEEB1718206B072C2ABC60C10287976362183181B81049EDDEBDFB5E1349B5A018502EB94B5FFAD297347FFE7CA709780D9BFF2B5FF98A40AC0CBD32ED50F0010A3EC0870490F9034855F26648308350789DDC1FECEDBDA91EC018D6EE11ED44';
wwv_flow_imp.g_varchar2_table(18) := '7C00228701307BF821912F7CB467E0EEE396F22D5DBFC369803463BDBD94D2BEAF86644A75C92007461EDCDCC2A346E2EA1A2D93178DC813C52CB93F6BB63508CB77BFFB5D976660C725975CE218C07C81BD6D63B977B4943100A6D057BFFA55C700A46B';
wwv_flow_imp.g_varchar2_table(19) := 'B474342DAB127E4AD5C96A25534929E2CB73FF3573789ECA23158AC5237C5491485077D0918E0EC700293FAD683AA22D7E95EE9B7F9FDEDBF4BE937492AF9427F9CDECD690F2813A65F8C9DABFF3FE8EF89B53FFFB220340FCCE6452526F6C98AB47973F';
wwv_flow_imp.g_varchar2_table(20) := 'A66DD55B95F67CF9EE27F7A29645CA35A9CF449D3AF4649546E3F2BC6847A2FD4090753418342D5F7EDAD7B3AB9FD56DEFDEDEB4E86C5020AD9A3BD24A6852AF89BA68ECC52A89C49D16C875EC930CE0E330A75595ACD29F5EFFB3966E5D262FE28BB50E';
wwv_flow_imp.g_varchar2_table(21) := '34406EC24E7929457D5FDF39F82A0DEF5CA988D7F12ACE3A2403A495D6EDEFDDA567563DAD94DFA4A49D091466015F5EDA53DA897BDF994795DD86E8EB13AE5459AC022328270364FB0004C6C2261019A36602E5EB44860B6E72994F761E341910A51DF9';
wwv_flow_imp.g_varchar2_table(22) := '9CDF620286FDE30384B356718031817615ACC3A45C53B35A37CCBB51EB6AD6BBB54C7B29791EE6CD0EC24E7B52248DA6F5E43487D7A82F8FBA5407F73F4CD18FBF44BAD51AA8033200B9FBD2ADF36FD78BCB672B017D23CF5351A5BD00FE0B28947FF33B';
wwv_flow_imp.g_varchar2_table(23) := 'AD583A20F7C15D2BF5CD0957A834DEA919F9BFA336809A00B22A9F7CF2C9CC298111FFF77FFFD73994AD81112D851AE23666B0DF612237E6B37AE35C7188EC1D361488CF12CD26DD99DFE604E303C0042DA76CFBC2B75A53B34A7F9C7B93D6D66CC8F848';
wwv_flow_imp.g_varchar2_table(24) := '7E5390D0AEEBF30C5E42313FA2B41F411FEB4BA32FD421FD0F57A4C000AD66C0567F01E91F66801476A7E76B58D7613A6EC8B12A8905D8BCEFA7F4D2AAE7F5DABA796AF0538AFB91BC190002241086B427492E2C9109245D77DD750E4FCF074981100956';
wwv_flow_imp.g_varchar2_table(25) := '51AF3B77EE5C1D73CC311A3B76AC93F4BC6745F61030F107F277C831225A4B902D1CD56DCE64E33CDCEF95575EA9D75E7BADC9270AE20064AFC200C42C9ABFDF9D19605DED4625955069A44C07F79BAC49FD0ECA5CBAAE7E9B1E5CF898D6D46D70C08394';
wwv_flow_imp.g_varchar2_table(26) := '2E3040ABA9F8237C21CC002F2C9FA5B473BCD29AD07BA22EDAFF0255140535AF093FAD7B17DEAFA796CD14F67F54B11618C061204D8C13404904C0C8AC24D7865462333590FE0495BEF18D6FA857AF5EBBCCA7A1A6F81FFFF887631A2BB3FCEB5FFFEA82';
wwv_flow_imp.g_varchar2_table(27) := '52C6049C9B0834B948BC46010E290B279E78E24E2651AE65436B900C47D2DEECD9B333956B300E750CA4761C7DF4D12DC62D90E20895D54D1A607DF546A5A36995454B757AE5A93A71C871994B6FACAFD20D6FDCA0E535CB9C96E5DE0B1AE02310746BBF';
wwv_flow_imp.g_varchar2_table(28) := 'BAB30698A594235C4F07F59EA80B469FAF8A78C000493FA9FB174CD3E32B66389BD5535A95DD87E96BE3AF5459BC6227C894F77C45050E8223679E04A6C44D37DDE4180158D4F07F12E4B0B5A90B26E90C620BDBEEE16722BD1AE227B26CD29EE0144136';
wwv_flow_imp.g_varchar2_table(29) := '67A935C518C8EB27E3143F00A282C1FEF99FFF396711BB994A7C6EF1E2C52EDD195F056633AD027312143BE79C73DC3902932D706B9D7D13F29760797E60803FCDBD516B6BD72BE2C754148FE98CCAD374E290E3338FB4A57EA3AE9F7B93566C5F2E1FE1';
wwv_flow_imp.g_varchar2_table(30) := 'E31734406B69F8237D3EDB044A7A5147DC137B4FD485A3CE57455145C000E984EE9D3F4D4FAE98A988970E7C802E95FAE6B8CB5556D429840205A892F3F3C0B2038C34A30DC8AFF9BFFFFB3F27C531658CF8C810FDEC673FEB7076247673E605D159D28F';
wwv_flow_imp.g_varchar2_table(31) := '1F78E081CC673EFDE94FEBBFFFFBBF33E60D17A36B03D1676300CC16B3DDB3FD0DBB0724FF7FFDD77F393FC5B40B9FEDDAB5ABFB2E4C452A44F07DC76DEE191D93042F34ED456002ADAA5DA99BDEBC456BEAD68A05298EC7F569C700414D04C786FA0DBA';
wwv_flow_imp.g_varchar2_table(32) := 'E18D9BB5B26699D2A03E050DF091E8B9D55FCE6680B41F532A92D2C8AE2375EAD09354162F75E74CF929CD5C395B2FAF794D113F055CA13E5DFBE9BCFDCE5451AC7427140804C48B44D5BDB89B3A17756A228EE0D62CC50026401B7018015654540862A6';
wwv_flow_imp.g_varchar2_table(33) := '9304284BAE239B01203E1807C20DDBF7A79E7A6AAB1800CD425A33B93FD6BA85F3E137F03A0131EE2FEC4843EF5B1BB6AAAA616B808C851820255F9BEA37EAFE850F6943DD4679E9888AE2711DD9F7304DE97F48E6D1F8FE5DF3EFD786FA7501C2566080';
wwv_flow_imp.g_varchar2_table(34) := '56D3F047FA02922A92F6F59745B7EBD965CF384226F8158FC4158FEC68FC846C4BA41AD598A6554820DDBD48C4D9B5D987AF14614CF52EE9A573467F5695E523E5794945BC20B209D1922447C788FFF99FFFD9897071864F3AE924676BE36866E7D96046';
wwv_flow_imp.g_varchar2_table(35) := '61EEA001204634058E340C103ED000E4F0646B0088D8901E3E6F680FCE2D0EAF25BE715E7EF0054E3FFD74875485BBD7A5FDB4DED8F4A6EE7F6F9A6AD275CA4677EC5EEA527522D8E8D68B227BB7AEF1CCADA22D6B5375224A8006F0050C7A99A60C3CB4';
wwv_flow_imp.g_varchar2_table(36) := '8528CC47DAF23DFAE50E0983B23BB7BD778766AF7E469174CBC117831B6D159DD46DB2791D4149C2884A60FFA73C4DED3F45178C3A5FF15844294577C2B6214E4C17CA0CADF78E9D1FA2A6A4D2E04693BC6DCD009C0FE22753D5980D4227DF1F530BC96F';
wwv_flow_imp.g_varchar2_table(37) := '2653D82C6B4C35EAB72F5FAFF9350B40861DBE6F992381751448F30F0B87C03FB023009483568CAC642296D245232FD5D17D0F9142318C3D4AB56D78F20EC700486BDF8FE8D1850FEABE658F2A1A46F4B3F60F746307E13719F93976D87DCE03D74E6954';
wwv_flow_imp.g_varchar2_table(38) := 'CFFDF58D032F57AC883CFFD84E0C80E943921C0C40B139B102880C6640FA830E5127804F60475B32002590BFFCE52F5D078BB0CD0FDAC375E962C17D8493F58C111B520DFAB7E77FA62D8D9B9DD070B897A538E01704AFD8FF9A25B19DE2173414F3D2BA';
wwv_flow_imp.g_varchar2_table(39) := '7CEC959ADC6BACD3A21DEDE8700C203F253F1DD5AAE40AFDED8DDBB5B13E08FA04529DBC95600B3CDF57A39F50923C211FAC28A248D45349243081226EF3A24AA66A55E727E5F9CE98D2C81EFBEB5FC67E457E3CA2B84F8C61C7961A140A51D38A107488';
wwv_flow_imp.g_varchar2_table(40) := '1A613B20448267202F860AB5150300C5C278F821F4F931081566A33F11D7C4E1CD76C6C30C70F5733F770CE0372D5269B40CAF5F11878221004830AC0F52209A22E87115291EDD91E4169631B1685C95E5FD74F1B84B5411E9840CE9704787630034000E';
wwv_flow_imp.g_varchar2_table(41) := '5A32E26BC5B6155A5BBD76477415DDDE74A4FDA45EDDF086DED9343FC3003DCBBAEBD841C72B1E2D563C9554325AACB9EBE668EEA67733DF1BD163A4BE39F64A4563E896E693BB40876EB9E516578F1BEE2447FF4D204C738AC34EF047F101380F70EABD';
wwv_flow_imp.g_varchar2_table(42) := 'F7DE9BC1F441A2087E21F9F9DB31763352180DF0D3E7AED196C426290DC9A775ECE0A334A073A56229521EA2DAD450A5D92B67AAAAA1C68102E4034DEC315E637A1E9093B08BBC620DE93448BDCB7A2BA5B4A2050DB0E705001BE7A502871649E5007D6C';
wwv_flow_imp.g_varchar2_table(43) := '57A0BED0E549EBBD071874D5932A4A465CEECA902E43F495895F5659AC93E27C2D1DD5FDCB1FD0638B77E4FBE4CB0068033A4793220D166F79F9C406BEFDED6FB7390350E08EF943F9A36997A953A7EA0F7FF84306EAB41840AE5DC866809422BA62DC45';
wwv_flow_imp.g_varchar2_table(44) := '1ADF6BA24B7BC62C5A53B35E37CE230EB0CE317FD4C5014ED149A13840F8DC9E8F231C75106A0CD5D00173213A9E0600B307D777BE188E58939486A0431C40287FDA8207F5F88A994AA5938A453C0D240E30F60A951555B854DF981FD3034BA6E9D1C5D3';
wwv_flow_imp.g_varchar2_table(45) := '5BAD0120364C113AB311C032DB98E0D3B7BEF5AD3667003400088FA149300191E2DFFFFEF73B35C26D2E20F7210DE0A5F5C5B197E8A0DE53E4301E5F5A51B74237BDF167ADAB5B2B2F1D537151914E1F72AA4EA8DC11090E3300AB0FBA1425651A13732F';
wwv_flow_imp.g_varchar2_table(46) := '1818D25A11DCE11820DF074CF949DDBDE03ECD58FE7480F4F811F5EF3240DF38E82BAA88963B268A24E2BA6FD5BD9ABE7046AB19802FC000D8DEC6003001D15B1C52D020FE6D3E005DE59C6FE2792E76F09BDFFC26134FC06CB1388025CE8503617CCF4C';
wwv_flow_imp.g_varchar2_table(47) := 'A0FBEEBBCF113C844E7DB2C1B2BB5A970F9B40495D36E1524DE936457E2CEDB23F5756AFD44DF36ED6BADA4DAEC08598C21995A7EBC4CA1D91E05D5DA7A3BDBFCF3000D1E201150375CEFE9F5759B442E9485231BF484FAF98A9D9AB9F6D5306A061AE15';
wwv_flow_imp.g_varchar2_table(48) := 'CC63BA98E436E94C3789EF7CE73BEE9A0665026D624A19E68F2F619160BE67265058037C1406C06AFCCC019FD684CE0766EE6175FD3ADD377F9A0B8861591618A0A3B173E87EB335804B9996D4ADA4B3E4C79D844B4753AA6EAC557D6A47E7877C7D8096';
wwv_flow_imp.g_varchar2_table(49) := '3400E91138C634A75DB46891CB032268650C005A43AB728B2883E1F359348A4587C91A25A045573A8672C01804DBF0012CF7E8A33000906FB7B2EE8AA6E3F29A6C77D66C5BC316C282050DD08169DFDD7AD24FE9DE050F68C6B2190EAB0EAA06F8FFC05E';
wwv_flow_imp.g_varchar2_table(50) := '45C2A523A8FE209FC549634F1AD973A4BE75E057A5B8E77C846C1834BC2ED93E00448A634A7BC2254B96B8514534D902C234623758D2FAF758329C11BE9949300B8C428B439880F68B6FBCF186FBB1082F116812E1C229D5196C3F6B038338C035DA9AA8';
wwv_flow_imp.g_varchar2_table(51) := '929F6A1AAA0790902601305895E0618340574411C5E2810F7072C104EA78EC402ED0838B1FD513CB1F572241F2D70E887467472EA81D0812C5229AD47782BE38EA12A928E2FC86304199A36BF1009AD2E20358113A8488D900715BC3DAF0F77311BB11BC';
wwv_flow_imp.g_varchar2_table(52) := '9943E17F875FB39964D6A7C87C001880C398A039279848F0AF5FFA4F2DAB5FA6482216F07533052C5E2AA2443CA18A58A9CE1C7AA68E1A7C64C723803CEFF813EB0320D0E66F5BA0DBDFFDBB966E5F9551F3B9D685C2EF74CA5745BC42178FB95093BB8F';
wwv_flow_imp.g_varchar2_table(53) := '572A1213F1D270E9A44971CEC1DF7467C6E1C576C78CB1D95C46C46182B7EBC23CE1CF19F1723E9BDAB253025BD317CD3730E9CFE70F39E410D1C19A9E3FF69DE6E200A0353357CCD63DF3EF519D1A5A466C18B3944C695CB731BA60CC79EA53DA3B4F72';
wwv_flow_imp.g_varchar2_table(54) := 'EA781FFBC43200F10224FAE6BA4D5A55B3C6A9FA9C47531A4034EAA94F795FF52EE9E9CA28D38A2BE2EDCC0096A886BD4E7AF41D77DCE12AB1C2841B4E158029F8417A33B18536EA959595CEA4C1BCE1750819538A7A03826B74A7A6CF27A80F5A84F761';
wwv_flow_imp.g_varchar2_table(55) := '187EEC3A6146C444A25F11FE0251611B899AEB5913A984D6D4AFD5A6ED9B9DC9D39CB994F2132A8F7452BFEE7DD525D2B945E1D1F1487EE73BFEC432405B6D4C98D84841667CEACD37DFECA43F04644971763D22C038B803070E74A58F48697C020A5420';
wwv_flow_imp.g_varchar2_table(56) := 'CE6C091D4ED6B3BF3173608677DE79C79552F29B7F03A95AEA73D8EEE76F2ACC60045A3602C15A425C7344DE56EBD3D1CF5360801676D0CC0E98804E0BE4FE004386D11A4B866324111DA319410431325BCC5299C3767D4B0499CD0C0691C2785C1F66A0';
wwv_flow_imp.g_varchar2_table(57) := '6698B8830DBC083BD5301E8139EA0D860F1FDEEEC3FB3A2233141860170C401D00E586D4ECBEF9E69B994C4B735091F8D4DC1E7FFCF16E381DF6388EB0BD9F4DF0D9FFCE26FA301A648C6388119A01740948F5B1C71E730C116E8DC8E7319328AA274583';
wwv_flow_imp.g_varchar2_table(58) := 'DF762F1D9138DBE39E3B1C0364C3894668E64C7ED445338487F35002899D4F2B1486511B21DA3590F6101A1D1C7AF4E9E3F28B805652B414A4ECD0F748DE760E27A917BC97F4136A4C34A82155EFEA96C163E35E912B3C298A552846610BE91E203BC034';
wwv_flow_imp.g_varchar2_table(59) := '695F69707AA05AD7AAD0572291762611E618097936D5C69809266016188972A79C728AF33578AF3984A8356B965D5F11FE6E4734B73A1C031881869112FBBB2D36C0242A660E65904C81C4EEB6D731792832BFE0820B1CF163DB3BC91BF1956C8215814F';
wwv_flow_imp.g_varchar2_table(60) := '85F31AF55593AAD7F2AA655AB071A1966D5DAA75F51BD4904C28E937B80C4A483DE6C514F78A551E2B56EF923E1ADABD5223BB0DD7C0AE03541C21A5029416868A3AA6720E7E53B9260E390971A45AE0288799940CD11FFDE8472EF582B5690B6D101610';
wwv_flow_imp.g_varchar2_table(61) := 'A6A1CC546B8BF56F0D33B6C5673B2C03B0E8A024980538979400B68480E4BB5896E446BE3FF93A1C61A202C921D581DC1DAE979188AE405CF2938DDA9ADAA645DB96EAE5D5AF6AE19605AA4A6F51D4358E457EF39DA01521916987C837698E2481B94850';
wwv_flow_imp.g_varchar2_table(62) := 'D04FD8AE47ACBB832227F59FA0011595AE9C331AF75C11BFE5BE727DD680B46C067B9032610531DC3B261A9562DC6F7687E87CD724FC3943C2B8267F734ED330F9F449DA9D6BEEC9EF74380630130827F09E7BEE719151A045604088335C079BEFC285D5';
wwv_flow_imp.g_varchar2_table(63) := '3A290CD8FBD4ECDAEB967C86A943C13963916CB349B326ADA2C1AFD79AEA757AABEA7DBDB6F615ADDAB65A6902C9E9943C1FA20F083E10E7FC2FE2CC1F5E0D643A7FEDE81C870945CA77C2F79D5934ACF3604DEA7BB00EE8B2BF7A95F7749F0D909EE094';
wwv_flow_imp.g_varchar2_table(64) := '30C5ACD9B35C5C20DC5D82FB844849A53673C824F7EEAC0F84CFF91F7EF86107011F71C4118EB9AC2639DF73EE2D9FEB700C60C80CAD404820C33C41B59F7CF2C92E0F1F8CDD98205F951C367BFEFEF7BFBBBA5F337B4C8A52B44E9A337D80DCE16CFA20';
wwv_flow_imp.g_varchar2_table(65) := '524C2FCD57D6BFAA37D7BFA995352B77149537E567A7E190A6DEED413D6E54AE9575140F01A24F927D1F746276350E4D1FF729F80FEC2A72EFA3D1988677A9D4A45E1334B1EF64758E7696A2E94CEF4E18E19D77DF719ACB86631BA151AD466B77982017';
wwv_flow_imp.g_varchar2_table(66) := '1CDB1C41DA7ADBFB00013019533559375AB0309906D4A92D7C8CF6668C0ECB0010A9A5025B72D8A73EF529D781818090058DF259500B3621D5D85C1C5ECC2B33AD6882457626F9383BEC5E29956ED49B9BE669D6AA67B5A46AA91A7D1A5305F934D1485A';
wwv_flow_imp.g_varchar2_table(67) := '7E3AA994175169A444BDCA7AA94F455FF52DEDA95A356AF6E25941418FA22AF1623A71F8F1AA4FD66B63DD46ADAE59A34D359B55EFD707258B4E95E058BB343595C53B6958D74A9D30F818D70E2628060A34111D1D708A7FF7BBDFB97E4136211EA1C06C';
wwv_flow_imp.g_varchar2_table(68) := '33DA3D3223D8E204BB5A9F3003108FA063DDABAFBE9AF91A6B87E9050A5660805DAD66D6FBE12053BEF6A36D08B8F879E79D9791D4B6A19829484022A4F96A008804530AE6E1BCE6E861DBE24062F323F9C3F75893ACD68C6533F5ECBA17B4ADA1469460';
wwv_flow_imp.g_varchar2_table(69) := 'BAC4BAA6FE5329A5D4B7A4AF0EEE3751237B8C52B7A22E2A8F942A1E8D6B59CD2AFDEE95DF2A950621924A63E5FAF111DF57B9CA55976A506DBA569BEBB668DEC6797A65ED6BDAD6581D184A50381571BEE7BED7ABA8973E5579B48EE877B88A6371D701';
wwv_flow_imp.g_varchar2_table(70) := '0FA6E27948CF207B144DC07DE320A3299917F6C31FFED0A144F9AC8FA56E10F8631D68C615361989704F9B36ADC5E660D96411DEF77C19B195A495F7C7DB5503849D49242C914DCA0A213422A756D7CA029B4D99DD32DC1880DF486CA6B8841B43F1E444';
wwv_flow_imp.g_varchar2_table(71) := '43A99402A13184221783D946721FD8FC409E1CDC27D2DF726D90FC2EF29A9212B1A4EA6A6A74FFB269AEE95643B241D1187027FD8AF8FF987A55F4D1E9C38ED7A4EE131489162B16D9515B8CD1B37CDB425D3BE7BF45B65124023C59A65F4EFDB13A1775';
wwv_flow_imp.g_varchar2_table(72) := 'CD6C1C3E038D99ABBD3ABDB47C8E1E5F315D9B1B6A5C313FD23EE505556E255E858EA93C4A270D3A5AC5917297BDE4D64FBEDE7A6B9EBEFF831FB848B215D1C304D419103506CD0AE720D9C559738B47F01BE2C7FC83A9EC3D3ECBAC341028840E47731A';
wwv_flow_imp.g_varchar2_table(73) := '20AC45381F691E64CAF279D6D666AE859D77A3817C98346F6ACFF1C1766500168F2E0AE0D760EB485B235EA2A63854941412450DF7B30F2F4238F00354498514E6D0962D5BDCE6B0A8FC20E9E8D80663F1EF300318E1735E2423D15DE042BB17DE67AC28';
wwv_flow_imp.g_varchar2_table(74) := '9AE4C0030FCC48CA5434ADEDDBEA74DFCA7B3467CDEBCE2EC734C1018D2BAEAE159D7454BFA93AB2DF912A8975728DF4618D88B7A3B154BE0CE0FA94A64096F00392DA58B75533564FD7CB6BE7AAA671AB3C9F5EA634BC4BA948511D3BF4389D30E03855';
wwv_flow_imp.g_varchar2_table(75) := '1407AD215DC4C0F7F5D4934FBA7580C92D7503A263C23D81B270EC20CC00FCCD7AD2D11A4D82D9634CC17AF6EFDFDF9D17B31361C17BCD26E2A5D3AE3EE2A5975E72692444B32D92CDBEC340989844D2C31DF6DA433BB42B03C0F57457C3D10C1FC6EDFC';
wwv_flow_imp.g_varchar2_table(76) := '466A535082E9417A41F6229816B18D23D71E278C9621408076B029E4CBD3ABC7FA63DA7B66E2B0616C0C1B8C94B4834D013AC4F10D675F6EAFDFAEBB96DEAB5756CF099C57973AEFA9281AD7E89EC375DCC01335B2CB7087D907C12B4F519AD086BA25E4';
wwv_flow_imp.g_varchar2_table(77) := 'CB00403BFC171039259D81693377D3DB7A6AC52C2DA85A24DF8349D2347950CC2BD209438ED309438F57995724CF6B825BD329374398B46918DC5237A84AA39D4AAEB6E92664601A3A593329331C6B0175A3F305C04338B6D01C0320F1FFF297BFB87311';
wwv_flow_imp.g_varchar2_table(78) := '5C0CEF43603206CD8531B1306BB1045A62A88F22F1B3BFBBC719C0081542FBED6F7FEB1A4A61FE84A5B093584D45293C38D285098D147D43C861D56AF6A399367C97730389E21403CD992AE5BB9C2BD73C5FBB1EF7B274E9D29DD685BADEABAEBA2A307B';
wwv_flow_imp.g_varchar2_table(79) := '1C0946559BDCAEBB17DEAB1756BF2A016D3242C8F75C0AF59103A7EA98819F52D7E2CE41F7E52694DE75B070CD72820935AE47B5E76BD9F6A5FAE50BBF56C40B3ACFC5A365BAE6C87F0B509DD0A8275021E0D0E0B04E6EB48359AE592B67EBF9752F2B9D';
wwv_flow_imp.g_varchar2_table(80) := '4CC977E38CD22A8E14E9C4C127E8A461C7AB082668328748E7E0796CDA0D6BCCDA001B5BEC246CD79B80404A63A2DA5AB3AE7C07B48D6A349B5F608979F63B4CE09C03D31206A4A958789FED3AFC36C081F4F28B2EBAC89D7B7720EDD63247BB30000FC8';
wwv_flow_imp.g_varchar2_table(81) := 'B4459C4C2AA44C8AF3804867B0657EC23EC291471EE9FAE5A3AEC30C60987C9801F89B4D261ACA352C8D385FFB31BC29A43710FD75702755637E5A940A3EBA64BA1E5FFEA4AB344B13888A42FCE53A65F0C99A3AE85095D3642AE7E12B8531DF94C6E0A5';
wwv_flow_imp.g_varchar2_table(82) := 'A29A5FB350FF3DE737AEB92CFF9578A5BAFAC8EFAB5BAC47060A0DB769FFD06953696D4B6CD3CC55B3F4D8F2994AA6EB5C1707FAC594464A75E6C8CFE988FE535DABF7208AECB9BEA3487C08BAB587AD35E81AF5CD98AA16FC320DCDDEF1130C2CDC71E0';
wwv_flow_imp.g_varchar2_table(83) := '3750FFFCFEFBEF678A76381FDADDF62D6CFBEFBFFFFE4E236306E70B8CB4F679C29F6F1706C056075E44055A3108D4681E44000020004944415466067DF219E903F1E3B43EF3CC3319278B0506D3B786B361F3043F819AD9B05A663151F1407F7467337B';
wwv_flow_imp.g_varchar2_table(84) := '3EDFC5B154019C614C27776EF2727CE995F5AFE88E85F7685BDDB600B8F4222A8E16EB33C34FD7D47E87A844E50A7A8B7CF84036034DD26F9F9A84950D2BF5DCF2E7347BC573F2A3415BF2223FA633869DA8890326AB47494FC51D31375FB1A5544AF5D1';
wwv_flow_imp.g_varchar2_table(85) := 'A8520DDB3463C5537A64D9534A02B9467D672AF529EBAB4B467D41C3BA0CC96801D61D3384E65A4E17B5A285096B0BDA8360C04E37F384DF662EDD7AEBAD0E0D0A9B59082E0413F50DB6EF9C8B7DE70741054D3CFAE8A3990C5B1C73669AA1855B738FF9';
wwv_flow_imp.g_varchar2_table(86) := 'EE73F6E7F638032011B025AFBEFA6A97C168080B0E18260B4E0F9C8EFD4E56250B6839F666AF8625812D3E762D9FCF3E5860D02154BE950F666FB8497C53B1A68A8968122CCA4C7EF1A5F5F51BF5B7776FD5FB5B162912F1E4A57DC5A2511D5779AC4E1E';
wwv_flow_imp.g_varchar2_table(87) := '728ACA52C54A16D52BA66034D387EEA70955DA54BF4ED3963EA1D796BDA24469A322C918B3255CE25C4C0925FCA8CAA2453A71D0F13A7AE851EA140BCF30D8F9AC09F98A27D36A8C79AA69D8AE7BE6DFABD7D6CF51AA69669722714DEC3146178E3E4F65';
wwv_flow_imp.g_varchar2_table(88) := 'CC466E227693C656C2996DF6E4BC7F18AA4F1F1757005DB3F5B7EFF29B768D3096A586F01AC4CF5E9A8965F700B8C0FE9806A1DF29497B565FC13D7CE10B5F7026F0AE06FBED2ED1B7BB06C0F9C59C6106160BC1C3436C201146DC480824AFE1CCA6766D';
wwv_flow_imp.g_varchar2_table(89) := 'E1C2668A7D079486008C3584E5C1780FC2A71BC37BEFBD97A9CDB587B6F3821E816C18AC87E34590E8B40F668015D3F096C14AA9A41E5F36434F2C7F4275E93A2C7A95A58A7460DF113A77E405EA56D22DE71E38DBDFF794F01B253FAAA5558B74EFE207';
wwv_flow_imp.g_varchar2_table(90) := 'B474DB5297F080594556907BB6A6BC9E14E690EF29EEF91ADD639C3E37E20CF52FEDA98857E49CDDE666F0E2282FDBBA5CB72FB8438BAB96B9FE9E54B4752BEAA633F63B4D87F79AEAFAFE903AD1505FEFB400EB667E1804CA1A82E6E43A58DB71E3C6B9';
wwv_flow_imp.g_varchar2_table(91) := 'CE1406A5DA1AE27B21F9D1EE7684A57698C10C4122128D3F60E7804980644188CC1402B82056910D5EB405C1B7BB06E04129E82082F8D0430F65D42FB9F33000660E0721769C1FCCA530B167074D4C9A43E8102DB939308E0D83C85E743ECF6B99DC1DDF';
wwv_flow_imp.g_varchar2_table(92) := '77A9C4204D04BF6C23B06B61D2E1432B958C9075292DDFB64CB7BEFB772DAB5EDE345228A5EE65BD74E9E88B34A2DBB0CCFC800F6B215A06828246B47CFB22DD31FF5E2DDCB2C4A146CEA906154A63AE705A988D1E0C14E6337737E61CE563871CAD4F57';
wwv_flow_imp.g_varchar2_table(93) := '9EAEA278A962EE64CD6DBFAFA4522E2671E7FCBB54D358AB7424E5B246C7763B50E78C3E5BBD5D4D6F9052412D018C8EC4350D082284E9677181B0F3C9FA847D335B5F6067CA4281356184B08009EF9FADBDAD33F512983D3014E7650F88E520F84CBB40';
wwv_flow_imp.g_varchar2_table(94) := '07BCD616C97BBB629A3D6E02F1E0481B6C7C16CB240FEA0D4797EA29889E698C543AD9418E0992C982632C16502552DBD27E91482C28C44C325C3686DCDCC3732D604E521E38F81E3D3D51C54C4549321B3755A74756CDD6C30B1E7204E62687F9BE3EB3';
wwv_flow_imp.g_varchar2_table(95) := 'DF693A71F0898AD23CB69976C89836E94842A98474EBC25BF5D2AA9795442BA4A3AECEB82456A661DD86AA7771771740239768D1B6054AA483362D5C675CDFB1BA68BF0B555256DCD4A5BA99C1DE4D0C4E1AC59DEFDDA917D6CE715A80A07459B444E78E';
wwv_flow_imp.g_varchar2_table(96) := 'FA274DE97D70E0CF342166389940C7A6FD304B1046D8F746A86182CED69E206D103F848C703382A714F3D0430F75794126F1316DB1F1AD4B06E762DFD1385C9F56EFAFBCF28A3397F80E394B38CDE79E7BEE27C3093609CE43A2D6304D4C8AF3C0486E16';
wwv_flow_imp.g_varchar2_table(97) := '073C3FAC6219F440F49128219F63B1A88622E8052E6D69D09C0BA813F80CDC1EA9114615B299806B710E72FD6D53D04210059B6783A0B7366ED2EFDFFC93566C5FE9E61144239E7A96F6D20F267F5B65B11287B337E7A46185A494D0D2AD4BF5DBD7FEE0';
wwv_flow_imp.g_varchar2_table(98) := '728480637086FB95F6D167467C5683CB87A8A2B8D86916109D77372FD2C38B1F5255E3269544CB747AE5693A7ED0B18AC6831E46CD325BA0E21C62B5B67A9D7EF9EABFBBE74A4523F2D2098DEF3D4E978CBA54258C75C5FC4AA75D73AD5FFDEA57CEEF62';
wwv_flow_imp.g_varchar2_table(99) := 'CDD903D6EFE28B2FCEEC4D73C2837D62EDF88111CC7FC25462FD893293866207F50A04CC18E88166316D8279134681F83CEFC38468A37052E3AEA4F847797F8F6B002346A43CD15F348139BA06A199B4B0CFEEB7DF7ECE192569CBB06553C560F6983D44';
wwv_flow_imp.g_varchar2_table(100) := '13CDBC6113D1143FF8C10F1C44670B1D769E0DAD202883CD4A34DAD433844F800E42C05200717F79FD1BBA69EEFF06C126A2A2F2F5C5B117E9909E87056D15C50CDFDC4BCF79535E4AFF9877979E5E37CB99238ED9A3E5BA62CC651AD175B8D2F4DC7776';
wwv_flow_imp.g_varchar2_table(101) := '3F049C52A397D49AEAB57A77CB22F52CE9A603BA8D54592C7060C3265CAE2B86CDBE7B16DCAD47573EA54830255C657EB1BE35F55BAA2CE9170CB5939CB981D6C40C328795C0234CD0F23C61394C1FA7D7CC1EDB1FCC504C48EA920DB6E63DF61A0D8093';
wwv_flow_imp.g_varchar2_table(102) := '8CC6CDF6E94C18F21B130C9895005B6B3256F77A0608DB904069D6CCC9B48311BE9934A425007386519AB01A46ED529145D6A33181113D0EB66572860923FC7D935A067DE2846173BA73816547D3BAF98DFFD52B9BDF508CB4652FA15EA5FDF59343BEAB';
wwv_flow_imp.g_varchar2_table(103) := '68BC34C89FC14C6A860348484BA61BF5A3E7AE515562B36BE7CE778EA93C5A9F197E8ECA63417FFE287DFA5DA55770778D5E5A45A9208A8C9B1C0D9D3F1F4890E7DADA58A51F3DFB3335A6EBDD1C5F18EC94FD4ED2E7869C118CC1684A8C83D8098C9960';
wwv_flow_imp.g_varchar2_table(104) := 'B1F5D915F69E1D88E4BE483B614F0DB5C96658B43526174892A5AC849FC7A2C998615668643491CF73EFD50C10263623568AB9B11F216022853C2481118250A861CB5434E9177EC0B06DC926A209C283E2F8DBA4523622911DA9E4BC6C1A9B07A4EA4CAD';
wwv_flow_imp.g_varchar2_table(105) := '745AD5AAD5CF9FBE5ADB7D92CFA2AE85E2E995A7E8B4A1A44604B6BCDF6453E75AFCA49F567DE3767DE7851F2BDA9854D2A1F19E2E1C77A1A6F499A878AA48E928D2982833CC101C51CF55103B84C8AAC4ECFCBB220463F646A5F497376ED1CB1BDF709A';
wwv_flow_imp.g_varchar2_table(106) := 'CC8F4634B06C807E34E57B0E65B2F5438A630A5AD0B0B9686EF6F3859D5AB4050E34E6940DE5CBDE6FBB1E262C4007C546681E1B3E8ED41F3F7EBCCB011B397264A68524D7FD4444829BE34E161E78148980E427D0C28FA9C4E6EDEB405C86537E316738';
wwv_flow_imp.g_varchar2_table(107) := '5F4B4462CE5D18A1E03C38DB4490F123ECBDB7B6BCA3DFBEFE1B457DB07D5FA55EB1AE9C74B946771B9597B001E9A96ED8A6EF3E7BB5FC0F7A72A6229E43722E1E7FA926F79E98996BE6CA1A9B31A3F2BA508E0FD1F4F6B9352FE9D6B76F6DEA891A55D1';
wwv_flow_imp.g_varchar2_table(108) := '07F1819F1EF553F52A0AFC299E73CE9C390E7EC4340D6BC75C42229700C2E105D2C44F63DFF2A9BF30E660DFD1E2DC0BD1E5F0F777C5E8BBBB2ECD7D6F8FFB00CD5D381B5E33ED10F60B727DD754B039C64813EC7798200CA1E6FAAE6D40D82443EA10C1';
wwv_flow_imp.g_varchar2_table(109) := 'B48C464C92690B1ED243CB1E729024D0E590F2C1FAE2F84BD4AF2C2888D9D5410C219D4AE8AA67AE567D62AB13E6A03D670C3B45A70C3D4945648706436D3243B97775CE7CDF87019654AFD00DAFFC8FB6A6B7BBAC510A73FE79FC9735B9F7411906C017';
wwv_flow_imp.g_varchar2_table(110) := '82807164C366CFAE4C20032EF82EC819D9B6B667BBFAAE3D4378FDC3CC67E7C9F759DBE2731F1B0370F3D90B1186E09A9304E1B8801134F92D20446169966B71683F881307946A9B05D44A54D9344FCA4BEBFA57FEA0B9556F29CE106EA57568BF293A77';
wwv_flow_imp.g_varchar2_table(111) := 'C4D9AA28EE94D79A3B5B3B29FDC73BD76BE1BAF782E05424ADBEE57DF5F503BFAA5E9D8229924183DAB655013405DE5C5DA55BDEBF450BB72E7101B0A45FA7D3069DA2CF8D3C33C30068509B4E6FC284E443081BE9DE92E0022C00A8B088B9D9EBF93040';
wwv_flow_imp.g_varchar2_table(112) := 'D8440A6B63FB3B9F73E4B509797EE86365803CEF31AF8F653B73D95FE27D2039A0587C103BC83921EC6EA6418312BAF6D96BB5BE71331EB1638033869EA693869CA0D258EE7487EC6BB98171695F73D6BEAA3FBFF31737979769F6512FA6D19D46E8A249';
wwv_flow_imp.g_varchar2_table(113) := '97AA6BBAB3FC5810E165F05F3A9D944743DE14F185A689A5BBC31B691CE15ADDB7F06E3DB3E60517AFC0E11ED7758CBE31E9AB995B8568093801291B51D2558E1412A0E7E68E5C1A3A2CB8F2DAACBDE8439F1806C8674DE966402A2FB9306C240E33DD12';
wwv_flow_imp.g_varchar2_table(114) := '40948C01B627ABF5B3E77EA16D1FFC068BC17C3977D4393A6AC0918A53CC9EC7E1EA64E4AB5A35BA7ECE1FB5A876A1A249EA0752F2A36975F3BAEBF0A1476A68D721EA1A2F57E7586795AA94AC09C523C541513C7947CD877F9BBF0B5FAA4B36E8A1A5D3';
wwv_flow_imp.g_varchar2_table(115) := 'F4D8D2A78262FB685A952583F5C3C3024637ED4BFEBD45E761081213C1EC3385FF793C6B47FFC83EC3006C3029C1641A86471101CD31E5DD186043FD46FDE2B95FA85A8D6EF261C48BE90B075EA0297D0F76D0673E4710974ACA4F7B9ABBE52DDDFAF6ED';
wwv_flow_imp.g_varchar2_table(116) := '2ED80526C94496C648BD835019F74AFD4059A4447DBAF6D5C1DD276874AF51EA5BDC57F148BC85F48796EEC2577D32A927564CD7B4858FB89A03CA277BC77BE99AC37FBA53B091F41450190EA4F8B1C71EEBA6DD135DDF578E7D8601D8601C66D21DC840';
wwv_flow_imp.g_varchar2_table(117) := '349309FB1FBBD788606DED5AFD62CEBFAB3E9DA0F38EE2D1225D34EA024DEE3BD111533E87D57245D251D5A56BF5DC9A17F4D4F2A7B4A996F14360F1B442A17D3B7565B45601370ADAAC0CED3444470E3A5C137A4D5069BCC48D72A5EB5CDE70919F5683';
wwv_flow_imp.g_varchar2_table(118) := '9FD2532B66E8BEF90FBA9A80A49750F7A26EBA6EEAB53B31C0AF7FFD6BD7D1C14C1852144811B1FCAC7C9EB5A37F669F67001024822F3B18608DAE7DE9D74A241A9D0486012E1E7DA126F7C99F01C2440133D426ABF5F686F73473F5335ABA65B1128C79';
wwv_flow_imp.g_varchar2_table(119) := '6DAA1233CD43B4D89926114F5D8ABBE9E4CA1334B5F7218A46E91BEA6CA2FC680D1328DDA0592B66EA9E050FBA28032593DDE25D74DDE1BFD88901C0EF89071803104527125B6080FC96BAC37D8AAA244C20CB47C22C221874E6996766186053DD26FD7C';
wwv_flow_imp.g_varchar2_table(120) := 'CE756A4CD6391C3D128DEBC2FDCFD3617D0F696A6FD8BAC7768D4C488D50A3B6D6566941ED62CD5BF38E966F5DA1DA44B5406DEAD209F91106F545154B45DD75BB1777D3170EB858FBF71C1AF404CD53FB607CD5A6EA3463E90C4D5BFC485052499CA5A8';
wwv_flow_imp.g_varchar2_table(121) := 'BB7E7EF8CF764A2D21DD84A43673823181A8A82326B2AF1CFB9406C0F63727980D2678861D7CE9A5976618607BE3765DFDC22F559BAC51CAA3F4C4D379233EAFA3061CE1B4C16E1D9451120BA0F83B2935A8D1E50A31CDBEB6B1468BAB166AFAA2C7B5BE';
wwv_flow_imp.g_varchar2_table(122) := '7EB33CCF6148CE3C1AD96B7F7DE780AF28198FA8285F0648A7549DAAD7A38B1ED5F4154F3641AD510DAB18A8EF4FF9FE4E4E3091748A534CFB018B922A5D7082776B973F9E2F59925BAEA174D9774404920DB62E077C973A59728FCC1469FCA0B8FCBAE7';
wwv_flow_imp.g_varchar2_table(123) := 'AFD5CABAB52E7B120A3AB9F2389D5E79BA8A63C56DFE90160B218671C3DC1BF46EF57C31A42EA8218EEADB93BFA6FD3B8DA4FD745ED766E05F75439D6E5F70BB8361A38A291969D0C13DA6E8F2F197659E13A94FE5156B411497B8003028C81029C9CD1D';
wwv_flow_imp.g_varchar2_table(124) := 'D6602B7B0682CB8F8AE6E723E5F520EDF4A10EAF0148B442B2931344FD6973071BCEFB14E787CBEFC84BA71374061EF4A41B5EB9416F6E9D17F42391EF26479E3BF23CD7F5A12D0F0BFE980DBEAA6EA5AE7FE5066D4A54C94B079DE04EEC77B4CE1A7D76';
wwv_flow_imp.g_varchar2_table(125) := 'DE081484B8B17EA3CB645D5ABDCC3D43DA4BEA33C3CED019C34ECB300002830C4EEB88C1F718F14AA9AA4DA4CCF5AC300A01B0499326B928706BA2C86DB9766D75AE0ECD0048234AE968B762E58DBB5A180BE45852173D6EC0C233AD537CE9D1A58FE9EE';
wwv_flow_imp.g_varchar2_table(126) := '25F72AEA17B9F2C2FE657DF5E5715FD6C0F2B6B78DC34CC028D33B17DDA36756CC76D23F1D9546940FD277A67C3F68A39EC74173BA45D5F3F587D76F566D82227ECCA994BE3AF14A8DEF392EC30044CF2922A25159F8C895A6107E1F82276D84E4419A13';
wwv_flow_imp.g_varchar2_table(127) := '33FF2C7BBA651EB7B9D77CA45D19C09C2D9E9E24380253E488B38094C8115E0FF7F031A91C4E8BB00DE25C103DA805812DEB5BCFB9C2E912B6D2E1BA025EB37312D6A7331CFD6E3810FACBB62ED235AFFE874A5231D769A148315D3EEECB1AD3EBC0207F';
wwv_flow_imp.g_varchar2_table(128) := 'DF0B8A54F249630820D1605A8CCDA27625004D5FB73EFF5C3B916CD0632B67E8C1F9D39CD39BF452EA57DA53571F7E8D8364F33952A9B49E5E334B77BC7B8F8B30F39CC591525D73C48FD425BEC3B4A16728C52BD6E73FBCD6C694B9AEC73ADA5C003406';
wwv_flow_imp.g_varchar2_table(129) := '3518368FACA588B0ED3D5A183082F6389C0B879BA6BD648572844B57DB23316E8F33407851204CA436C80345E92464591B0DD42E0B815D0A1C67F66476829411B7356B2507284CF06C0E12AAB984ABEC6C4718CE5AA1B81DF03C35A4ABF583E7AE557D63';
wwv_flow_imp.g_varchar2_table(130) := 'B5C3ED29623F7EF0713A67C459AED31B9D1C5CC7F350C7B7E64D2F929ED3AEDF0F241C691ABE0D32E49E2DF4C5C6C6063DB8F2514D5F38DD758506BE1C5C32403F9AFAC3BC19209948EAF7F3FEA0B736BFE3A2C044B34774D95FDF3EF8EB0E4DE2604F28';
wwv_flow_imp.g_varchar2_table(131) := '4C0202B612D5D6109B31087B44A7088AECCD71CECEEFB1F5C6C7A12B085D01217E2B81248D1A538A7D271729CC88ADB9A77C8443AECFB41B03980D4ECF1EEB5016CEEC64A1D80CD263914CB4C8B39E4061E78AF3503BCC8291DC165E703E8F0367ED38B2';
wwv_flow_imp.g_varchar2_table(132) := '35875D830E65B6013873D49F02093AE9C37CAEA8AFBFCEFB879E59F7BC6B8542914CD70FA4E7D547FE58157E994898A3B6B7B94E0D3B2FB4EFFAFFBB029764CC0DCD20C7289776AB4A6E753EC0F2ED2B9C8E48C6523AB4DB145D36EEE29D1AECB6B4D9AB';
wwv_flow_imp.g_varchar2_table(133) := 'EBD6E867CFFE5C4C9B899109FA4100F09FF6FBBC8E197A8CFC54705D84106B3C7BF6EC4C1A397511D658A0A584346B3F690DB0D81BEA37E836614C103633B957DA21D24497A8331A279CB79589834422BAFCF2CB5D7A35D76F8F5A0027EFFC96F4DDEEB2';
wwv_flow_imp.g_varchar2_table(134) := '55D6F7B8041280C00BD23F7B9695333D28086F6AB04A3738D01A8A2D2C4D99CFF03D8A2A485E43F2DBADB35884EFC1F429AEE0F56C44C23ECB06D2A30826B48DC6A1A347914B02A3D993D27A7FCBBBFAFD6B7F7483EC90A3C46ACF1F799E8E1C7484CBD1';
wwv_flow_imp.g_varchar2_table(135) := '71D55A79647222E9D7D4AED58BAB5FD0B6F4761DD9E3080DEE31D8659A3AE90F8361FEA41A5DB4F8BE45D302138BC27A2FA98BC75EACA93DA7C8CB03054253FDF5ADBFEAB9F52F289A2A522A925449BC543F9AFCAFEA59DAC7DD33EB800902A1F1DBCC0E';
wwv_flow_imp.g_varchar2_table(136) := '040EE68C15B634B7F5D44EB07E0891B0E6A5C12D7955F854D60BC8343EE39BD81B18C12C826C0080CF6206918C476ED627AA2492879D3973A6AB1945FDD9C323B1213A089BE659611F819248BA03A011EC75FAFCB090983F067FB250984E943412CA6FA9';
wwv_flow_imp.g_varchar2_table(137) := '45379B8AE442FD1301B5C65914711300C2B103FA4C780DAA4F24F43F6FDCA085558BE533A4C297BA9476D2F7267E57DD4ABB28825B9A0732B9AD71BBEE987F97E6AC7DD905A55C3BC5A1276974D7D12A2F2A73CEC0E64495DE5E3F4F8F2D7B3268881B64';
wwv_flow_imp.g_varchar2_table(138) := '456840711F7D63CAD7DDB4F6480B10A34BAB484B0BB72FD46F5EBF5E89443293517A68FF4374DEF0CF2B5E54ECCC2FD6123304B3C51C608A82203C60D05D495EEBE0C1F781952D159A75C72720B6805D6F25AAA49DB0EFEC9DF95E7C96DA610EEA11C2C3';
wwv_flow_imp.g_varchar2_table(139) := 'BFA9CFA0669B31549F0813880582D0205CCA20ED61296207850076A32C92A2141C333B9006D897D63D80F35042491437AC7EE92509764D5D6A4B7D64C2CE33AD38D0302021CE492C2E76A9C19CA7A4A438B0D9539E9E5EF38CEE5D70AF52C946A5E968A0';
wwv_flow_imp.g_varchar2_table(140) := '884E183C55670E3D4BB15851B335C161E949CB933FCDBB512BB6AF71BD7F52E4177951F5EFD45F3DCA7A8A029675D5EBB4A16E9D4B9E837209DE96D07A71FF4FEB537D8E2290DB6C57083828C51C81E456FDF5DD7F68DEFA7999BCA1F278992E3EE03C1D';
wwv_flow_imp.g_varchar2_table(141) := 'D07382E28EB53C073E90EFC37A9B04670D2168101D93D0CD111FEF23C9692D8359C31ADA7E604ED24EDE8A64383F4C46F5997D86F332710761C5DFD3A74FD7534F3DE52C043ECF7EB30F4CE06C8FDA803D6E02F1E0D6188BA8A34918864FB0E856548149';
wwv_flow_imp.g_varchar2_table(142) := '432B94B09A3464C7ECC4B063CC46D0CF86F45D240F8BDF9CD96304699A07A9437B6F36C6B40BCC866A1F3D7A7FD79B27E925B56EFB46DD36FFEF5A50B5D039B1F4EBEF5CDA45E78D384793FA4CC8CB04AA6EACD67D8BEED773AB685DE8FAC2B988307E85';
wwv_flow_imp.g_varchar2_table(143) := '5950CE6606256A9A78178FC674D8C0293A7DF0E9EA5454E610A1E6DBA250809FD2D32B9FD6438BA7AB3E591B4CA3FCA045E4C1FD26E9F3C3CF524529D2BFC4F91ECCF6C2DF3113120D4A0498B63008825C484E9819AC971035BD747BC0AC85A96C6D4D33';
wwv_flow_imp.g_varchar2_table(144) := 'F31D133AE17249FC053A849B660709446B20DC2C98860944E78F709FA736B2C63F749A3DCE002C0C528245A771ADB5D426F79C6C4473985858DA61B031A62A5B724FD020647262BF1BE1DB800C36076D624DB4B2379585A628C6D2A2B91E5550D8C0B4E5';
wwv_flow_imp.g_varchar2_table(145) := '0B362CE80C3D7BF56C3DB868BAB6A7AA5D17077949EDD77594CE1DF9590D2A1FE422C50D115FC5C2BBFDF0E19EBF7A8D1E58FCA0E66D78D3B5544F01CD2780FC520EA9A118862279FE6366F01103A6EAC461C7AB471C9FC49AAD87CEED4B09255DA627BE';
wwv_flow_imp.g_varchar2_table(146) := 'C2FB55F375E7FB776975F506BC0925A311F52EEEA6CFEF77B6C6F702FB47F607B310684E06FAC35AB10E3000CD08468F1E9DF3FE315341E51010B677F641A436ED2E91D826488C591074D6A0C03ECF7B54E0E16F193A8445402A0AF11CDB6FF680E83C8D';
wwv_flow_imp.g_varchar2_table(147) := '12F6F4D12E0C00DC49CE0D6AD39C2E9C555271416DD808EC499CDE5C441F9640BC0FF1DF79E79DCEE10A0F68E03D169D0546BBEC0A533629658B8C39465C215CE75AD5B855B7BDFB77BDB9719E4B592E4A45948AC67454FF43F4E961A7ABB8A4AB8A1349';
wwv_flow_imp.g_varchar2_table(148) := '299E9B01DCCC2E3FA964AA41B3D6BCA827164FD7B6866A57F082FD1F0C8149A92851A25E45DD74EA985375508F092A5651B3F500093FE99C68D70CAB7EADEE9C7FB7DEDA30CF25EB3544A4929434B9DFA13A7FD4D92A8ED2C42B90C6D443900E4E5F2013';
wwv_flow_imp.g_varchar2_table(149) := '32BB0A7CB1A640D4D8E508284368C2FE1A5DBD4929C9766CC3E694FD8DC647101AC287238E064018D97ED119040DC075F7F4B1C719C090000A4F903E063FB200641F928989D983636A12998540FD21DD2D40620B81C3868AC46E6563C3660FC8041DCB88';
wwv_flow_imp.g_varchar2_table(150) := '0C878F5C6A9DF7B35FE7BA14842081ACD331E6D0DB556FEBCE77EFD2DA8675E42BBB8114E4D89C5279BC8E1B708C8A4B2A6893D5CC5EB92103AE73332D55B6346ED7AB6B5ED71DF36F737501A43C14C78A74E198F37560CF092AF5B1D619C041DFA1DCB9';
wwv_flow_imp.g_varchar2_table(151) := '35B46A246B745D629D1E593C5DCFAF7EC18D62A21F22532A2BBB0CD365A32F705329CD7C0462665D90FE61DBBAB9B5C97E1888117307ACDE4C25FB0C7B4CE7B77BEFBDD7B53B31E642CB0055D315D07C003E4BC33318867BA2B9AE497F3EC3FE82500173';
wwv_flow_imp.g_varchar2_table(152) := '7F229C609314D89EA001667BDAEB16B90D3F2C7F63976292D03223973364DFB7F7F033207E36382CD5726DB049AAB09D6A84425413CD8476716E2333C07CCF8D257A70D123AA4BD7284247675A2346E33A75F0313A62D0D12E4F08403368DAB273800B54';
wwv_flow_imp.g_varchar2_table(153) := 'C7F3D2C10855DFD7E29AC5FAD58B74540E86E415A94CD71CF15375699A2B1688FE6008B61D5612E33A4FA7A5F5751BF4F0D2C7F4E2EA9702FFA4499B7429AAD005FB9FA7313D2728C6079BEA0C2050E670D99496B0B436AD9CB9565390CE08D9D61AA185';
wwv_flow_imp.g_varchar2_table(154) := 'CF4517394C465BB35C310D3B3FFB0D6C4D53DE30C3982F18DE2BCE436B44FC118B2E77780DC042F090D88B46A084C3B3B93B4CA8C09A14AFE3DCC220CDA1017CC7E60F108821D0123E379B84A6C8654BDAF540A8AC35B76D1A5A094DE03A9DB9F4084F8D';
wwv_flow_imp.g_varchar2_table(155) := 'A9841E5DF6A8662C7942F57E4251A4B34787B8624DEE73908E1F748C0676EEEFCA1C83B9BDB98750E43D232C6BE71D117A203E2907CD3EB9EC29CDDBF456D3303C7C09A924DE5967EE778A1BD2E7A05B827A9EE740084C1F24B1AD256B03B185E32C6106';
wwv_flow_imp.g_varchar2_table(156) := 'E07A486F20E770B41893959A0AD6C80267E1605698C8799DF505FC20DA4E57EEF03E874D246804489C7DA744D518644F6B817631816C51585082224869FEB666B8F6901033F82F495664695A9FCA962039FC0B7A8E126043BA996983E9C42661CED84665';
wwv_flow_imp.g_varchar2_table(157) := '4B13CE8BF94500E7B9E79ECB38E4F81548AD4B2EBE3870D69A7277EA12DBF4C8B2197A6AD94C25FC846B39828D5F1C950675AAD4A7061EADF13DC7BAEE11D9D2D1AEBD7B0CE02B9D4A697BAA562FAF7D49CFAF9AA3D5D5AB5DE10C7D7FE83A54122BD719';
wwv_flow_imp.g_varchar2_table(158) := 'FB9DA24FF53FCAF902AEA7693AAAFA867A275131354C92F3FBECB3CF76DDD89A43CFF80C68198205A832DC911BAD4C4F20CEE1FAA9369993D9117BBB1ECE370987EC3B8088C508C2A612B1036A35A8CEB3168B7B9AF8DDF5F77424388CBF734134018E0F';
wwv_flow_imp.g_varchar2_table(159) := 'C118901A169907A50C0F6408EE27AA1B863C9B0B6E41BC204168169B3EC867D954881F7482800B1B91BD39E1C5272E40200D38CF0897B03E8C710C2D139BEC7B24F0B6FAED9AB1EA693DB97C8692A94625A29EE2AE7F2813DC4B34BEFB589D527992FA54';
wwv_flow_imp.g_varchar2_table(160) := 'F4C989A9EF0E0380462DDABA588F2D9BAE059B97AA2159EF4CA714E851C45379B4B31BB17464DFA98AC5E9075AA4082D5D3CE9B65B6F75D2D78403CF4DD2214C8106B075C8061A6CDF70985907D6C8204E081820028205D33726CA750E2376F61D1F8F61';
wwv_flow_imp.g_varchar2_table(161) := '863014828BCF1384C4AF38E79C73768A22679B657BCA14DAE30CD0D28D2355205CD430123B1F8E371C9ADF103F680F8761C8FC4D913B0E5BB603DDDCBD20A1904ED8FE767EEE05F389F3A095024A81B852AA5583662C7D5A3397CF5435DDD730B59D3E08';
wwv_flow_imp.g_varchar2_table(162) := '0ADC8B6245FAD480C375FC90E35512AF50BC69501DE63891002AC07EFDEA7F397309BFA13CDA49571F75953A477B65A4299A85F9C36B1BD7E989454FE8E50DAF2999A2CB28522B2D9FEED27E5A5D8B2A74DAF0537568EFA98AF1522AC8A3613D1030A06F';
wwv_flow_imp.g_varchar2_table(163) := 'CCE8329302AD4AD4F7C20B2FDC09416B6E6D101E64ECE298021D9BDF64828686B6A0432D99AAD9E7E6DE4C60A141DA23E0D5DCF37D6C0C1086D158D47C88DF089D05C464217A1B36A3402718DF89C4C2C6CD7761391F1166BE07A4C7BFF941B21161463B';
wwv_flow_imp.g_varchar2_table(164) := 'B886BDF1B8626937F68EA246CD59FDB21E5FF1A4D6D76E245329E0116609A4236A88A654E2176B7C8F0374609FB12EF2DBD9EBA4E2689156D42DD7EF5FBE41E928C1305F655EB9BE37E5BB6ED2646DBA5ADB935BB564EB0ACD5D374F0BB6CE17CD761DB3';
wwv_flow_imp.g_varchar2_table(165) := 'B875920BA815C58B34A8A8BF4E1E7192C6751BE35023E618B8C4BB0F7AFC100321CEC20416D36A3C0F5A96E7C18CC967CDCDEFC4992D0000180149444154CF4262A3517166C3014ACE4991111A3C9FF399B914B6FFF79474CFE7BC1D8E01CCA946AD83F7';
wwv_flow_imp.g_varchar2_table(166) := '1BF340F06C2E01141BBCD7DA0D213B12D300BCDC88060643451339DE6FC4484780419D18E890B464EB5237A97151D522D79ADC45617190FDB44B7320820B42C3D0BB9E153DD5ABA4A792D146BDB6629EEB0C4760ACC48B6BF280439448D46A7DCD26ADAF';
wwv_flow_imp.g_varchar2_table(167) := 'DBA4DA44ADFC28DF9762C92237F628201EA94769378DE93A5AC7541EAB3E650CA348CB8FA4154D1167F69D530FAC1C8E74F31C24AC81E2A0D17695F363C463820AA6225F8B1412D6C9525A781FEDC91AE55B1219368B5B23FCF221E8D67EE66363009304';
wwv_flow_imp.g_varchar2_table(168) := '76C3AD21562410B01E29BD6C0AF628CE2EFF26C46E766DBE8B61E80F2619880508104EBA99439868E4AE60F38E3EE0C0A6D362F404B9FEB5C93ACDDD3857AFAF795D0BB62D523D1D255C3D31C49F72B6B86B840554E952207CD706114DE2FB51C540CA9A';
wwv_flow_imp.g_varchar2_table(169) := '3A03B9757053E23D17E975A9D32E259B44BA0A8DEE314A937B4FD2E89EA354EC1507750636845BBE663DFDB46BF74ED6AC313104870623E10F0CBEB5F6B53101E7A38492BC2E72FB4178484721C78BE061BE0C1066AE7CF73DDFBD6CEDE73E560668EDCD';
wwv_flow_imp.g_varchar2_table(170) := '9A09646A19C78CB961A85FA2B838AE1F75412DDB114D62B9EB26A5F009885A12B1B6D7CC26066FDFD0B05E8BB72DD1AB1B5ED7FBEB17AA4E0D8ED8636E10868BA105C330E81CC7E03EA74B90EC41FC808990CED174141D300A899EA525E51ADF638C26F5';
wwv_flow_imp.g_varchar2_table(171) := '1CAF219D86AB7349A79D12F1F80E12F9EEBBEF76C1463230C3A6068E26E61093703E6AF9229028480EA622896E0C3BE4BC1CAD6580DDD9FFB6FE4E876300A432EADB7259AC4B0184184EBADADD858230217CC2F540A196A568B92BA04A84EAF931C7DD99';
wwv_flow_imp.g_varchar2_table(172) := '6504A3F00F7CA921D9A84DC94D7A73E31B7A63CD3CADAA59AB74BA515E0464065B3E484B764CE0620638ADF4EF49B9C830CCC49CB0C19D066A628F711AD3E70075897576D369A291841BBA6D79129C032D88D427C313B4270C33525B81B948F261984077';
wwv_flow_imp.g_varchar2_table(173) := '5750584497DFAC7DB880BEC000BB4B75ADF85ED8797604142A4BDCDD4D0D5F9E73B2B1FCB6699240B566B7720D4C22EA154046302D5C014853862781272C9708A60EADC923BEAA1AAAB4A46A891B9AC720BB6DF5DB5493AC613CB6D306C591B8485DEE14';
wwv_flow_imp.g_varchar2_table(174) := 'EFA1415DFAABB2CB60557619A44E452483C12CF0041DA703B429704282E99B38B9E4E9E09C9A2967496E6846CCB9B0E46FADC999BD350685866D77D382F9820EADD8EE3DFED10EA701F6F88A842E805981AD8B9347BAAE493F6342EC5E90284C22246D38';
wwv_flow_imp.g_varchar2_table(175) := '7D371CF1CC260C73E4C3C498EB3346D066FA99E30A8448F220D559C453ACB0C5040292188C1FC71D9B3F1C5369CFF5EB08D72A30400BBB0441C10438DCB7DC728B835E2D99CF8813E907B18182606690C3921D79DE55F259F85C6107D1EC7863001C732A';
wwv_flow_imp.g_varchar2_table(176) := 'AB407730777048CD34338717B38C7E3F986814A7644BEA8E4094ED798F0506D8050398CA27228AC42595233CEED3BE8E2D0CF18F1B37CE65B102391A321236CDC29A214CE0FC9DFD393E8B99438C0213076C7FEEDCB92EB06558BC7D8FFBA4A28BB24602';
wwv_flow_imp.g_varchar2_table(177) := '81E1796B1FD5EC694F826CEF6B7D8219001C1EC79406532917A06AEE20B2EA88916112AEED4FD24D82A4FD09D15D93D024DAD1818EA43BA2AC6E20752AB5937389B941C218702CBD86D00E3005CC8103DD929FC27BF81F14EE138BC0BE87E0996C43421B';
wwv_flow_imp.g_varchar2_table(178) := '0EAE996126F9217CA43EE5A574B71833664CA6287D2786724FE646D8070EBB7BE2DC29DCF4448DA68B820C56E7A4E7D793A8BD89B72DAEF7896500E738923959BD44F3372D522245F7E5DC07844E81C9F0AE8335B2DB484523748493A29C2454F90EF1F1';
wwv_flow_imp.g_varchar2_table(179) := '830D4E1D2B81386B2D183EB349794B0FE037290830009299AC477EF019F82C8C851D0F919331494E9241B036C634978680C0292C62E835E617C140EBC890EB49EB1AEB5DCBC7B5551B5CC4B839BA86A9CA8A2B34B6CF680D281E9057F17F5B10E3C7718E';
wwv_flow_imp.g_varchar2_table(180) := '4F2C03D06379EE863774FB7BF7687362936B6BD2DC01BAD2E849457EB1CE1B7D968EEC7BB4D2D1A4E2F426A472ABE93024C87E033FE2046397B794B26D92D8EC7133AB8CA8C3923A8C369976C91539E53D9028068F5B37BD96A2BBB461BF6FC1037A6CC9';
wwv_flow_imp.g_varchar2_table(181) := 'E3721D1F61EEA6EA85EC75219A1CA370BF68A02E19FB0555760EBAE67D128F4F2C03A4FDA4EE5FF8B01E5B3E5D1E6D13804B5DE179B0EFEE170127573342480A96F134B6F701BA72F415F2E2983FF19D8B521CD1048739C86431D29AD10ECC1108112D01';
wwv_flow_imp.g_varchar2_table(182) := 'E19AA962DFC996E4B9882AEC14730EFC0BA43BDA808A2B63241C6F3A338419A83913AB21D5A06B5FBC4EEB1B36BAB42560D52010B7830DACA087658AFA11C54B4AF5B9C1A7E99821477F1269DF3DD3279601A8C3BD7BC17D9AB1FCE9A0A8C53524096CFC';
wwv_flow_imp.g_varchar2_table(183) := '26127639F3049EC2A587237A8CD437C75EA9680CEBBFE576DF04C960003AD519340A5152644EEA2FB63B51539C669B616C684DB6331C660CDE0349025A258A4B751A7F938343651D4C855945E29FE543ED8A4261809F3E778DB6243605659D41BCCD0980';
wwv_flow_imp.g_varchar2_table(184) := '20FB02A9104806FC2522D62E79AEF2749D5879FCAE4EDF61DFDF6718003FB7A4B844832A062B466E8DEF2B962AD29AC44A6DAEDDD121797719C0CC140A454897C04481F0891F50B043829A113FC51F203636D300BB9D6A2D4B11E65C148680E8E0485348';
wwv_flow_imp.g_varchar2_table(185) := '6E853B34F2B5A8F747610028B66FE701EA5AD4D9F52B82119854B37ADB4A35F809C70B0506E8B07C4DCAF0CE1A00C9D6BF6C802E1D73912A22250EE189258AF5E8DA699AB5FC85CC93EE2E0398D90203040DB68299C2A41193660DE17220BD690D429B18';
wwv_flow_imp.g_varchar2_table(186) := '833261005A830077721E5E27B18F1FAB69E03C74ACE03C6DA201E4EBDCD1676942E7F14A10C84E7BDA50B756B7BD778736D66F72285181013A000398731B98363B0C1C9CBE7B173EA8A796CF92E737CA4F4754D9B552DF9C70A54A8ACA5DB625058DF72D';
wwv_flow_imp.g_varchar2_table(187) := '79588F2D9ADE6A06404A63D6003DCE9B372F23DD19BC0D03585418C2A5139B496E8897AA37F273C2074D00803E8D298C013085600A63A4FBEFBF3F93CA4CC00B27389F14846C1328E54B978FBF58137B1F1CD8418A6A4DF52AFD69EECD5A5FB73E63029D';
wwv_flow_imp.g_varchar2_table(188) := '56799A4EAC3C362725B839C64DC53E1D8054723FC39E2E89DCD30B134E17085F2BA584EE5E384D4F2D9BADA812AE5864509721FA978957BAFAD9489AE21218E0113DB6E4B1563300D7850148C32623D5B1DF074DB0F614038038A1018C014C9390A6914F';
wwv_flow_imp.g_varchar2_table(189) := '0ED4877C0049978FBB44137B4D0EF07E795A5BBD4637CCBD51EBEA366618E0F42130406E1F209FEBEEE9FDFFA8E7EFD03E0049C4491FE20E9A8684DB88508C72DFC287357339D356020D30A86BA5BE3EE17295C4CB9A1820A907963CAAC7973CD96A06B0';
wwv_flow_imp.g_varchar2_table(190) := '2A325A8D5837BBF662004381A64C9922FA2D59D4B72562F8B00648EBF271176B5CAF498ABA962D51ADAD59AD1BE7DDAC751F4CCA3427F8D421A7E8F8CA63729E3A985E1954AAE572EA3F2A71B6C7F73B1C033823879AD8B4F45ED5FB5A5EBDC2754C086A';
wwv_flow_imp.g_varchar2_table(191) := '42DC88F6E0F07CBDBDE97DD742C4D549F99EBA9674D5E1FD0F558C29EC4E75FB7A67F37B9ABF656166AD47761FA96F8CBD42518ACB730C26326717948714642B0C316948FB1192D0AC512F929B42948F6A021124BBEEBAEB5C51B9F912F807B435BFECB2';
wwv_flow_imp.g_varchar2_table(192) := 'CB76EACD9F8B701C033CFF736D6ED8ECD2AF29AB3CACFFC1EA5B36C08D5022DA55DDB84D73D6BEA4EA449D5B4A90A6FDBB8ED47E5D87E5A4C5E248B186751BAE6115954AD38522521892B7E79996AA2A2FA5455B96EA2FEFFC559B1B763466CD0E6D3231';
wwv_flow_imp.g_varchar2_table(193) := '3123995C332BAB3DA6442B487108087A87EF30A2C7FEFAC698CB158DC732D35CECA1AC428C5C1C242FB5B0A03356978C24A6E41004C7ECF2B6620022C3A46060F353C46F2617D57040B1300168517339F930C04F5EF899363756056827A1911CFDDD1D9C';
wwv_flow_imp.g_varchar2_table(194) := 'BB53E64320E1731DC40807940FD4570FFA923A51AFE0E56E0FB9E78962F7AFD0E13400EE1A290E0F2D78400F2F7F547E844113810A0E37D374DD139AD6E5437E022A3BB466E12CA191DD46EB6BE3AF5034E6B9092BE174019805498C53CB800D7C0053FF';
wwv_flow_imp.g_varchar2_table(195) := 'B4F5C6713DFFFCF35D8B6F239AB662009E816BD3DE90F15204C4ACAB1E8E32ED22D13E3044731AE027CFFD429B921B02E2776BD6A42C5DE96530CBCCE5FD6475A40BAF55F8DC163EBC7CDC653AB8FB6435D31F78F7A9B31DBED9011920EDE6E8D2B67CD6';
wwv_flow_imp.g_varchar2_table(196) := 'DA17E525836E0C9910EF87166D876F106CF887B7332CE18E1A7CB8CEAF3C5FC9A294E22E72BC833D4885A60886B6E0C6546612F13A0C905D72D8560CC07538207C0AD34987E6BE4D2BA171183144C7875C47229DD01FDEB841EF6C7EC715D55814785734';
wwv_flow_imp.g_varchar2_table(197) := 'D61CC810A82082CA697D69EC453AACF7A1794DB1D9D5F5DAFBFD0EC90010F2ADF36FD70BCB67BB12436CFCA248A94AE33B7A0BE1C4D5256B549DA284101FC19717F3D42BDADD15A993E568470CDAF2221AD87990CEDCEFD3EA5DD66BA78272080DE90B76';
wwv_flow_imp.g_varchar2_table(198) := '4F95989937BC4E8A02C80FDDEC72990A6DC500E173933C0713702F30A59979FC460BC008D66FC7BEC7F32FDABC580F2E7E48EBEB370591EBA625C024628A65CA4FA82A59E3C678C4520C034CAA3CD679A701E124085635562BE937B835E43C5F1A7DA10E';
wwv_flow_imp.g_varchar2_table(199) := 'E97F78386DAABDE978B7AFD7A119E04518802C1ECFD3B81E07E8DC1167B911441C092FA5694B1ED3D32B67AB281597EF2534B8CB305D3CEE3C758E74DE29C9C1650145222A5689E251D28083F5341F8122731A702175AD1E19C222E599C21388AEB944B4';
wwv_flow_imp.g_varchar2_table(200) := '3DC100DC179A0058947BB28ECC4E0F7A9E6348EEEB434D025249D52BA58674BDA22EEB217850D7C2DDF3B5B666BDFEFAF6DFB5B17EBD22E988A2B1884E1A72A28E1B705486C036346CD25FDEF99B5657AF759A8414930203EC36FFB5FE8BAE7D484603CC';
wwv_flow_imp.g_varchar2_table(201) := '624C8423DE89DDC7E9C203CE554551D0AB92A113F72C7C484FAE78D2419E0014833A0FD737C77FD135910D3BBE4E257044766E6A8BD901DA43C299A13D96F3037131C6870E6B561CDF5E1AC0A2C5D42A930B445B72B4829963487FD021A2CBE410D9E1F2';
wwv_flow_imp.g_varchar2_table(202) := 'A15C2F51D7772E64EB7BAEF1D68A9A95BAF1AD9BB5BE669DFB1CCDB74EAF3C45270CD91108DB545FA53FBEF1272DAF5DE9928908441618A0F574BCDBDFD89901D00011512D7E50CF89BA70D485AA280A3400F1817B174CD3CC65335CE391988238C03727';
wwv_flow_imp.g_varchar2_table(203) := 'FCB34AE39D76B2813376AE258535B52DA1EE16A713E2678E99495872F9E96F8FC34BE7E99602421029CDB618E861DD1A601C5AC587ED6B901C0A602888E1C0A7409203A7EE40AF762C9B3122F946B488A4258A658AF21ECE304CC07D5A7F549799EA1C5D';
wwv_flow_imp.g_varchar2_table(204) := '970A9B6100573B215FAB6A57EAC6376FD15A1840BE8B979C3EE4149D307447206C43FD06DDF8DA8D5A56BB3228D02F30C06ED3F26E7D31CC009840692FE246194DEA7390BE30F23C959B09A446DDBFE8613DB96296FC349D9C231AEC18E08A2606C87D79';
wwv_flow_imp.g_varchar2_table(205) := '93A2203C4C9244FA87DB8363F35380C20007EB8CDCD28340D074460639C21C8218E9D4CC34C470AA34902AF103E04E9AD7D2D3D3FAEDB494E76FC814B02C3102EEDBD021EE95F3D0312F7BBCD1CEF71CB4735953B34A7F9C7B93D6D66C50C44B2B1E2DD5';
wwv_flow_imp.g_varchar2_table(206) := '1995A7E8A4C13B18605362ABAE7FFD06ADA85DE1E69AC138050DB05BA4BC7B5FCA6600EC7FD2770774EAAF09BD27AA285A1CD8EF4AE99D0DEFE8DDAA458AFA3495CD8F01CCA14472E36842BC86ADF31E793EE6F0E6930A607E0459A10C8483A891CE7C37';
wwv_flow_imp.g_varchar2_table(207) := '3B8787F802C535B42EA4437698415A2AB801098249192BC4FD1A32047370AFA053D6723CF7AA6731402DA910F845511DD873B44674DB313FAC3151A76757BFA0AAC6CD41BB960203EC1E21EFEEB78C016E9BFF0F3DBFFC5967BE07992C4D1DD79A4E1CBC';
wwv_flow_imp.g_varchar2_table(208) := 'E22B8AF14F54D3F734B8EB60970C571AAF68160634D3820E0C34C6A24196690592CFD008CE5D88341F200A3F9B9DCF5EB3B841AEE7CF2036A1092DE1EFE5FA8E3118BF418448AA839138600A8659F063B3169A67005FAB6B8264B8B50D1B144DC84D9BA7';
wwv_flow_imp.g_varchar2_table(209) := '722C8C98A553BEA22E921693EF4CAAA4BE34EA0B9A5240817697A45BF73D42F89430DE3EFF1F7A72F5B399114001A6114A85C83A6DC48BA9B26280BE31F9AB2A8D96373BE3D7EC7218004C1DD3C40E6C77A0508E7CA47FEB9EECA37F9A7B67D42C156AFC';
wwv_flow_imp.g_varchar2_table(210) := '8DF985B90603600E357BB8316629ADAE5DA33FBD7993D6D4AD771561480E1AD5355339E9CCCA462FA52F8FBD5087F53ABC43D60E773818D40D904B797A69FDABBAE59DFF0BD27F42A58A61291ADE70D27F8FE83755E71DF079C5233896CDC8C2A673ED4B';
wwv_flow_imp.g_varchar2_table(211) := '0CE062C00CDB4ED4E8CFF36ED6FCCD0BDD2040109E20A29EBBA346C24BAA225DA6AF1DF6750D2F1B1A4CBEEC6047C76300249B975432213DB1FC09BDBFF5FD1D3D72768EE26746D6B12743CA07E8C8419FD2C0F27E2E0FA8B9561FFBA606A04FA91BBFA7';
wwv_flow_imp.g_varchar2_table(212) := '855B166AF6AA67B4A9AE2A281975349D9BB0E3B1124DEA355687F63D4A45F834D10203B40BFF5BCE4A63AA51F5997627CD65AC04B75414896766E6B67493C600B429C10720E7270C5F864DA0BDC10CB2FB35E79DD150F41232DF0007789726905B9020A5';
wwv_flow_imp.g_varchar2_table(213) := '1C44AD2E59EF86F135F55D6F76B968F25B1A2D71C3BD3B6AEBA00EA701F6348799C30B0A448B74E65941E8BC8E0F0032643E403E95587BFA7ECDC9B60E14549B8124F16F9C607C0090A0969DE03D7D977BEFF90B0C90B537408860F1942752CB4BB1BA93';
wwv_flow_imp.g_varchar2_table(214) := '8FBEEF666101351205A655C9DEC400DC33813B243E90AB69069C627283E82C61350A7B2F39B6FF9D1518A069CD8D60A8BDA57885C82D955E9685C9C7ACEB32E90F471F7DF42EA3C07B6A3BED5E0D52E59EC950A5533485F5E17B2600465C81A83010A9A1';
wwv_flow_imp.g_varchar2_table(215) := '417B83F9B6A7D6A735E72D3040937487A8B0FBA9B1A5F0044CDDCCA1F08222F5D10098169FFDEC673F16820ADBFDDC33238AF8A1A52247388066DA8B7EA5946FD2C9CE865A1498E013DC18AB3552C01C4624282905A43EF39A557A998309616157F33AE9';
wwv_flow_imp.g_varchar2_table(216) := '0AA437D0053A57AE4E6BAEBF3B9F359C9F401D7945A459983F90DD32DDEE8F8119F835E1114FBB73ED4FD2770A1AA04903603F43483367CECC04B9201C26C0D09C8AA173109939C0101B5A00A98A59D19ED2D4081D897FF5D557BBC17EE1FB1A3C78B0CB';
wwv_flow_imp.g_varchar2_table(217) := '357AF7DD77B566CD9A4C500C73089F80E7CC278FE99344E8CD3D4B81019A866C33F40D62620E80D9FBD4F6924C4689235A81B2431C4CB3BD990380C620E5B83DE763190390F2405F229B5780C946B7386A17C8FD81A97FF8C31FBA01D7682E34036D1BD1';
wwv_flow_imp.g_varchar2_table(218) := '5CA347EFC8EFD91708BDC0002DEC320485E34BF706B3A3217A0AD0A74E9D9A8903F019D2942D0F88BE9D647682B07C1C1A00098F1F6233037844FA063119C66217F8064C73B7FA65341A4CCD73158E820FE06800C9C9F41706CA190350E4827407EDB1E3';
wwv_flow_imp.g_varchar2_table(219) := '8E3BEE7030A83100199B10D8C7C100DC330DB9CE3EFBEC9DD2B549896620871DF4254523583D03BE0B9A8ED961EDC9B47B2BB3154CA0260660FE17844105188441BF4ECC09D29F2174824B04C190BA66824044B4384413B42731190AC4700E20593A505B';
wwv_flow_imp.g_varchar2_table(220) := 'B08EEED4575D75951BCFC43DFFEA57BF72A395EC9E31DBD074CC3C6ECF7B2E30C0DEBA024D0CC06416D21C98FC625A012D8043893984038C7F101E5A41010BCD70AD24B2BD1ED1707EB41575C194449A56C217617A7BD7AE5DDD3DD3A2DDBA50F31EA912';
wwv_flow_imp.g_varchar2_table(221) := '30727BDF737BAD4D6BAF53D0004D0CC0C211FC62E62E848306209DD820C4ECE013EDCD71269994CED1DE5161EE076604B502DA3484CA98370C85F21A9F472B10DDB6D1A9050D50F00132D21E02C151A47E17898ACD6CF8BFFD46F2C21874600302A5312E';
wwv_flow_imp.g_varchar2_table(222) := 'FFCEB738A6B5D2A9B9CF9B39030153077CF3CD37BB19040CD1E3BD7020CC7284D062DC3335C2C6D405062830C087688CEE0A7FFEF39F5D6A01E60304660C40013C4E24D0235319F786DC1A089C568938E82040409FB46BB4401E783F01307C85B3CE3A2B';
wwv_flow_imp.g_varchar2_table(223) := '13DC2B107FB0F50513288B050C5204616120354C8066809008881D7EF8E1EE77AE9ADEB692F0AD3D8F4585DF7FFF7D77CFC407488EC3CE07A102F204FE2C10FD8757B6C0003918C0025DFC2627881F024B983B3088D9FBED6DF7E7620C3387CCCEE79EB8';
wwv_flow_imp.g_varchar2_table(224) := '5F1C5F727E6C6CEAC791AED15A46FE383E5F60806656DDCC1E23ACEC52CBBD519A86EFF9E320A68E78CD020374C45D2BDC739BAD408101DA6C290B27EA882B5060808EB86B857B6EB3152830409B2D65E1441D71050A0CD01177AD70CF6DB602050668B3';
wwv_flow_imp.g_varchar2_table(225) := 'A52C9CA823AE4081013AE2AE15EEB9CD56A0C0006DB694851375C41528304047DCB5C23DB7D90A1418A0CD96B270A28EB8020506E888BB56B8E7365B810203B4D952164ED41157A0C0001D71D70AF7DC662B506080365BCAC2893AE20A1418A023EE5AE1';
wwv_flow_imp.g_varchar2_table(226) := '9EDB6C050A0CD0664B593851475C81020374C45D2BDC739BAD408101DA6C290B27EA882B5060808EB86B857B6EB3152830409B2D65E1441D71050A0CD01177AD70CF6DB602050668B3A52C9CA823AE4081013AE2AE15EEB9CD56A0C0006DB694851375C4';
wwv_flow_imp.g_varchar2_table(227) := '15F8FF92C6AFFAE41700380000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7939233317333966)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EEC9D07805D55B5FEBF73CBF494494F0829044827A4D011E9D2111B55C52EA0D87D4F9FFDFD5514BB888A0515';
wwv_flow_imp.g_varchar2_table(2) := '457974E94520A10502841A02E9BDB749A6DE7BCFF9FBDBE7AEC999CBF4243313730EC699B9F7947DD6DE6BED55BFE5293E620AC414D86729E0EDB36F1EBF784C8198028A0540BC08620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C0';
wwv_flow_imp.g_varchar2_table(3) := '3E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C0';
wwv_flow_imp.g_varchar2_table(4) := '3E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C03E3CF9F1ABC714880540BC06620AECC3148805C0';
wwv_flow_imp.g_varchar2_table(5) := '3E3CF9F1ABC714D867054010047D244D963441D2C4FC4F7E1F162F8BFF680AAC96344FD26B919FAF7A9EB7ED3FFAAD5B78B9FF78011004416584C16346DF175779FBDEB939C130CFF3BC2DEDBB7CEF3CEB3F56000441D04FD2D992DE29E95449657BE714';
wwv_flow_imp.g_varchar2_table(6) := 'C5A3EE260AD4487A40D2ED92EEF13C6F73378D638F3EF63F4A0004413022CFF030FD7192927B947AF1CDF7150AE424CD92741BFF3CCF435BF88F38FE2304409EF1BF27E9424989FF8899895FA2A752C097F437495FF33C6F794F1D647BC7B5570B802008';
wwv_flow_imp.g_varchar2_table(7) := '864AFAAAA48F4B2A6AEF4BC7E7C514D80D146890F41B4957799EB76637DCAF5B6EB1570A802008FA4AFA1F4957482AED16CAC50F8D291052A056D22F257DDFF3BCAD7B1B51F62A0110044185A42B257D491242203E620AF4140AC0FC3F90F473CFF3100A';
wwv_flow_imp.g_varchar2_table(8) := '7BC5B1D708802008C649BA4FD2A8BD82B2F120F7550A2C96748AE779FCECF1C75E21008220383ACFFCBD7B3C45E301C61490364A3ACFF3BC277A3A317ABC000882E062497F8C9D7C3D7D29C5E32BA0004EC28F799EF7979E4C991E2B008220606CDF95F4';
wwv_flow_imp.g_varchar2_table(9) := '959E4CC0786C3105DAA000E1694286414FA4544F16003F93F4999E48B4784C31053A48811F789EF7DF1DBCA64B4EEF91022008824F4AFA759750207E484C81AEA100E6C0EFBBE651ED7F4A8F130041101C2569E6BFD5FF74FB5F233E33A6408FA740E6DF';
wwv_flow_imp.g_varchar2_table(10) := 'EBFA04CFF39EEC4923ED510220088283FE5DB8F394A4013D8948F158620AEC260A6C9074ACE7796FEEA6FBEDF26D7A8C0008828010DF73FFCEB34608C4474C81FF540AC0FC87799E57D5135EB0470880200850F7EF2181A22710251E434C813D4C01CA8C';
wwv_flow_imp.g_varchar2_table(11) := 'CFF03C8FC2A26E3D7A8A00889D7EDDBA0CE2877703052EF33C8F62A26E3DBA5D00E455FF059206752B25E287C714E85A0AAC9334B6BBA1C87A8200F896A46F762DEDE3A7C514E81114F8B6E779ACFF6E3BBA55000441C0AECFEE1FE7F877DB12881FDC8D';
wwv_flow_imp.g_varchar2_table(12) := '140088142D006DA05B8EEE1600D8409FE896378F1F1A53A0675080F2E1CF76D750BA4D0004414059EFC218B7AFBBA63E7E6E0FA1401D90F49EE72DE98EF174A700F887A4F3BBE3A5E367C614E86114B8C9F3BC0BBA634CDD2200822018F26F1C3F9055BB';
wwv_flow_imp.g_varchar2_table(13) := 'E5F9DD41E8B69E19043B8BC5FEED18127FDB4FAEE577DF0FC3C6FCCEBF9E7230561B7FE1981923DF25128926E7F494B1F7907130F9FB7507B660B7ACA2B8D8E7ADCB0E2681C161147EDADF30149F15327D4F1500B95C4EC964D2BD03FFA2E3B777E3677C';
wwv_flow_imp.g_varchar2_table(14) := 'BC8502DD9217D05D02E07E49EF8817C14E0AD82EBA7DFB76BDF1C61B5AB264896A6A6A9C20A8ACACD441071DA4030E38402525253D560380E119F39B6FBEE9C6BF63C70E2704FAF6EDAB3163C6E8E0830F76E38F0540B32BFF01CFF34EEB6A9EE8720110';
wwv_flow_imp.g_varchar2_table(15) := '04412F859049318CB7D4B84BB273BEF2CA2BBAFDF6DB357BF66CAD5EBD5AD96CD609009866F4E8D17AFBDBDFAEF7BCE73D1A366C581326EA2E6D206AB630D6F9F3E7EB965B6ED133CF3CA3952B578A7742001417176BD4A8513AEAA8A374D1451769F8F0';
wwv_flow_imp.g_varchar2_table(16) := 'E18D5A4D572FF81EFC3C10840676758D407708804B255DDF8327A2CB8666BB3E8C3267CE1C7DFBDBDFD6D2A54B1DE39BED6C8381C961A4238F3C525FFDEA571D43A16AF704E667FC73E7CED5F7BEF73DCD9B374F990C95AFE111F50D9496966AE2C489FA';
wwv_flow_imp.g_varchar2_table(17) := 'CE77BEE3341AF30BC41A4123B92EF43C0FE778971DDD210062F53FC21C30082AF337BFF94DBDF0C20B8E79CCE62F6422FE2E2A2AD2D9679FADFFFEEFFF56BF7EFDBA4D00C0F4C6B8CB972FD7B7BEF52D3DF1C4136ED737C637FB9FBFED73B499934E3A49';
wwv_flow_imp.g_varchar2_table(18) := '5FFFFAD79D69934EA7BBED1DBA8CCBDAFFA03B3DCFA3AD5D971D5D2A0062F5BFE9BCC2FCB5B5B5FAF39FFFAC5FFCE217AAAFAF774C05B3C01803060C700261F3E6CD8D0E42AEC1A646609C79E699DDA6055844026DE58F7FFCA37EFEF39FBBF173980083';
wwv_flow_imp.g_varchar2_table(19) := 'C1396FEBD6AD8D8E4DB4965EBD7AE96B5FFB9ACE39E71CA552A95800EC5C165D6E0674B50020D6F9F72E136F3DFC413007B6FEE73FFF793DF7DC738D8CD0BB776FBDF39DEFD431C71CE398EADE7BEFD5BFFEF52F35343438951AA6B9E0820BF45FFFF55F';
wwv_flow_imp.g_varchar2_table(20) := '42AD86A9BAFA30F365DBB66DFAEC673FEB767F53F761F0B3CE3ACBF92C10100F3CF0801E7EF8E146A72602E25DEF7A973365D062E2A30905BAD40CE86A0110A7FE16A8FFAFBDF69A3EF0810F08468231F8F78E77BCC331F79021431C536122E01FC04F60';
wwv_flow_imp.g_varchar2_table(21) := '76F3D4A953F5EB5FFF5A03070EECB61D1401B666CD1A9D7BEEB94E4B31E174E28927EA1BDFF886860E1DEA3418C68FDDFFFCF3CFBBB1A2E18C1F3FDE8D1F5F467C34A1C06F3DCFA33CBE4B8EAE16008F497A7B97BC590F7F88C5F9F1FC5F7CF1C5CE14E0';
wwv_flow_imp.g_varchar2_table(22) := '282B2BD365975DA68F7EF4A3CE0CE03CC26930D47DF7DDE7188A1D9FA8C05FFEF2172724BAC31168BB3D214B7673C6CF38D04E781F0418E3476011DAFCFEF7BFAFDB6EBB4D757575EE1C84C3F5D75FAF030F3CB05BC6DF8397C74CCFF38EEFAAF175B500';
wwv_flow_imp.g_varchar2_table(23) := '58FB6FB4DFC15DF5723DFD39EC84A601C024663FBFEF7DEF736601B63E074E366CFEC71F7FBCD1F13679F264FDF6B7BFD5E0C1DD434E1300CB962D7302003BDFC68F6F021BDFD47BC6FFBFFFFBBF9A3913ACD730F409E35F77DD754E90C547130AACFB37';
wwv_flow_imp.g_varchar2_table(24) := '500899B25D72749900C877F4DDD2256FB5973C044620ECF7C94F7E520B162C68CC02244EFE918F7C44C71D779CB3FBD93989AF6326585A2D9100CC02ECEDEED400366EDCA84F7CE2137AF9E5979D6ACF8E8F5672E9A5970A5380CFEEB8E30EDD74D34DDA';
wwv_flow_imp.g_varchar2_table(25) := 'B2654B634AF329A79CA2FFF7FFFE9F060D8A71609A59AE955DD569B82B05C091FFCEFE7B7A2FE1CD3D3E4C73A2555555E997BFFCA55387719811E6E33B181B730021817660268225D6100624A986F3BB5300A0D21301F8DDEF7ED7E804648C38322B2A2A';
wwv_flow_imp.g_varchar2_table(26) := '9C13B3BABADABD9BA538E3B864FC2435F17B778C7F8F4FF0AE3DE0A87F6705CEDEB55BB4EFEAAE140031EE5FC19C18439039878DBF62C50AB7E31B4334570C04C3930CC4EE3F72E4C8468DA07DD3BD7BCF323F06F90BC4F5D162A2D981BC1FF6BEBDA7D5';
wwv_flow_imp.g_varchar2_table(27) := '334C9B36CD3905C78E1D1BA705373F255D5617D09502206EF5D58C008029D8DD6FBDF556E7155FB76E5D637AB05504DA65A8D730CD17BEF0051762B3E29AEE08033226637676F93BEFBC53D75E7BADF357140AAEE87B60FBE3DF20198871C75980CD4A80';
wwv_flow_imp.g_varchar2_table(28) := '2E0309E94A01106700B6B201A326CF9A35CB250591568BB73FCA38A8CAA79E7AAA8BFFB383E261EF29073B3CA60CB90C8CFFE9A79F6E14625611C8F8F109BCF7BDEFD5E1871FEED29AF9AEBB84574FA15D0BE3E8B2C2A0AE14007104A0955507B3E33063';
wwv_flow_imp.g_varchar2_table(29) := '0725BCF78F7FFCC3D9CFECA6F8037014BEFBDDEF56FFFEFD1B4B6C7BCA228691AD7E61EDDAB5FAEB5FFFEADEC1320389667CFCE31F77D102B2032DFBCF1C9A3DE53D7AD03896799ED72509125D29007A647BE49E32E9B653E20380817EFCE31F373AFE08';
wwv_flow_imp.g_varchar2_table(30) := 'A76133932014ADAFEF29638F62172008FEFEF7BFEBAAABAE720280EFF0F4337E340098BFF0889D806F2149BDE779255D31BFB1006807951D588FE7CB0F249F9D3AC8364219B5D6F53DE749692F25E02F3C2F04F568E9307B1A0170C30D37E8273FF949A3';
wwv_flow_imp.g_varchar2_table(31) := '0060D73701505828D48EE177C929367E0400213F2A038910F0CE642B522C8409534883B7D0249002F17F9E72FCE7E7E407BE94F094085A8690F213524A4925049D437AEFCD87D74552311600ED58253920AD0269536EB39E5D39476B6A562B401A7838C2';
wwv_flow_imp.g_varchar2_table(32) := '5A06362B499468E2C0099AD86F828A12AD87EB0A05C04F7FFA532700F83C2A007ABACD8C198306F0DDEF7EB7B176010D80A805B1FFB69C7ED033504EB57EBD9E5FF782166E59A44CB6415E1272B7CCD4292FADD1BD476BFAD0692A4F942A91606977D9F2';
wwv_flow_imp.g_varchar2_table(33) := '6EC72AEAD829B100E818BDF6D8D9F037EA393BD13D8BEED583CB1F92E7251D6386CCDFF2224B24030D2AEAAF0BC75FA883FA1DA8442BBB522C00C229CCE57C059EAF67573FA77F2EB85B55B9ED9287D6E5CB0B9C2ED5EC5CFB495F252AD2F963DFA72387';
wwv_flow_imp.g_varchar2_table(34) := 'CD50D2D13A16006D3146975128880688DB1A550FFBDE57A0CD99CDBA6EF6EFB5D85F2A2F1B8272A2AA866A690119034F811728C84945C5299D3DE22C9D38EA04670EB4D704E80E0DA030ECD89969D8550D00DCD3AC1A74C782BBF4F0EA7FC9CFA2FE0762';
wwv_flow_imp.g_varchar2_table(35) := 'F34FFAA916593AC825942DAED3117D8ED025932F5159B24B4CE8CE90A85DD7C41A40BBC8D435272100B6D46DD6CF5FBC566BB7AF71CCCD6EE46C55ECCD60A700483844DF84FC444E9E9F50512AA1B3469DA953469DA4247A6C0B8765066243E341C70780';
wwv_flow_imp.g_varchar2_table(36) := '0DCDE778CE51A14F3FFDF46601425BA3421449D86470344E6F4CCF67D173B9675BEABA3DD7AEE36FC67FE38D373A27A08532C135A016C062FFADFB427C6583AC6E5978BB662D7F5C3968AC40CC41C2D95C795A4377D47C24465EE026024F93074ED44727';
wwv_flow_imp.g_varchar2_table(37) := '7D44C5A9E2AE591C7BE829B100D84384EDCC6D0B0540A8F6072AF3CAD4AFA25FB830393C4F593FA755D5AB9CBD4AF3E7742AD921018013F06F7FFB9B8B02980020660E3EC0673EF319E751EF881F00E68411F127B03B1352B4EB0B330E7936F506A0F694';
wwv_flow_imp.g_varchar2_table(38) := '979737EBB16F8E7E1605E027B50D30FF638F3DE69EC733CC074014A0ADE49F20C8291BF8BA65E16D7A7CF913CAE070F53C2595D2E08A814A356A519E7C2FD09AED2B95932FFE97505293074ED047277D58C5A9580368CF5A8F4D807650A95000B0E3FBC9';
wwv_flow_imp.g_varchar2_table(39) := '9C0EEC75A02E9E70814AF2BB0D1AC18A9A15BA7EEE9FD400CCB702152753ED16000C0566A5F887F2596A002C560E431247BFF2CA2B5D95607B776784085584681520F682C2430E7E149D976750CD07B20FC948A41853CC3365CA94760901CB61001BC0A0';
wwv_flow_imp.g_varchar2_table(40) := 'C12CA599EFF6DF7F7FA7011C7BECB16D82814605C013CB9F544390719B7EDFA2BEFAF8211F52BF92CA70C602696B6E9BFEF4DC5FB436BBD189E064908805403BD673F4945800B483606F11004A28486435AED7787D62DAC7559ADF6D10008BAB57E9A7CF';
wwv_flow_imp.g_varchar2_table(41) := 'FC487E36EBD4D7E2745A67E74D80B73A015169F35A6DBE11083B36E8BA08006A040C19D8E2E7940AA309105A0B958ED6A71074DECB2FBFDC210E5B52D1D5575FED62F21652E4197FFAD39F84DFC14277279F7CB20BE5B507779031F31CEA019E7AEAA946';
wwv_flow_imp.g_varchar2_table(42) := 'FC3FC647EDC269A79DA62F7FF9CB8DD8053B871C6A52D10381910D724E0398B5FC09E570A4785265493F7D61FAE734A0348F201478DA9ADDA61FCFFE893634AC917C0280A95800B4633DC702A083448A0A8075556B9C571AC7DF81956375D9A19F504972';
wwv_flow_imp.g_varchar2_table(43) := 'A7BDB97CFB12FD68CECFE5E7B2CE57904A2674F60167EBA49127BB18B51DE40F383722BE042F54952D760D43920EFCA31FFDC8A1E858992D8C468520E6009981806A38F5B80548309809C6075C84B25DFE66E7BFE28A2B5C669E018EF03CF20C6EBEF9E6';
wwv_flow_imp.g_varchar2_table(44) := 'C662246A0EC01B60F76E4EC898DDCF3D172D5AA49FFDEC670EB68CB19AEA8F8021F64FED025A45631213A2119F0354749EFDA64220EB37E8F6857768E68AC7940D12CED6EF5BD45B5F9CFE45F52FCD6B00926A1BB6E8DB737EA62DF51B5C442615C42640';
wwv_flow_imp.g_varchar2_table(45) := '079776D7C549F6F628803901D76D4700B0707D8DA93C58574CFDA44A13A1BD8906B0A86AB17EFAEC3504B4E42703979A72EEA8B374F28813E42577460110008811EC588B5847190D5300B010EC69A0C0A2157594DA8207F0B9CF7DCE9903AD0980975E7A';
wwv_flow_imp.g_varchar2_table(46) := 'C9090020BB381000D4EF833A64028067E164A420C954778A7628F1B58AC34221C0786CE7475B01EC83FB587E3FE7830B085EE07EFBEDD768B23807240E3CBA9C2104237E3D4743DF53C6ABD7ED0BEF720280740BC44365491F7D69DAE7D4BFB4BF5900DA';
wwv_flow_imp.g_varchar2_table(47) := '51BF49DF7DF61A6D6B5827B08893B100E828FFC702A03D146BAA01AC75BBBF9FF035BCF7487D78C2852A4EECEC71B2A46185AE7FE1AFF2B2BE734EA58A923A7EF8DB75D4F023541CA4501EC205EC4939FE48782A57B92AD2154D765AB3AB29B16577A6D0';
wwv_flow_imp.g_varchar2_table(48) := '86CF0C120C4D00E41DCA88F9BDB95D9AF35F7CF1457DEC631F73601C1C3814D11E10006656C0F43C03D091A80000B10701D09CA901A36FDAB4C9F9247886A5FD5AF92F02EA8B5FFCA233550CE3806B1CA6A117687B66BB6AFC6A912799F0779A31B9A4EF';
wwv_flow_imp.g_varchar2_table(49) := '1C7FFF5A3653CFAC7C46592440C2539F54853E3EF95255968428496459D664B6EA17736F504DC366274893416C02B4673DC7264007A904236DAADFA49FCFFDB536576F74612A167192345F2FD9240F8090759D4F0A6C181B208D952C35D25423D142A7FE';
wwv_flow_imp.g_varchar2_table(50) := 'FB414E89745AFDD3FDF5CEF1A76B62AF43E4A50225FC948B7BBBEB7DDFA9F1680226040C631F66C31C007F2F8AAE1B7510A201802E84003013C004805514C2F468008502000D60C488118D283EB6BBF37C8A7EB0EBF15398A392EFD130403202F00364A3';
wwv_flow_imp.g_varchar2_table(51) := 'C2884383DFA0D9EB9ED1838BFFA5EDF53BC2005FC40270A651C27334CEF899BC8A800CF01C1D9BE45CF881EA827A91F3E334004F9ADE7F8A3E30F15295A48BDE9A9FD1C179EFCED3E330607752BFE0D941E06B53C3665DF3C2AFB56AFB9A7C9A697E272F';
wwv_flow_imp.g_varchar2_table(52) := '38B7D1AD155DD4F90D2E8C6887874B20420B404B08523A64C0445D32EE1255941629F08B9C00308F01363ACC8F930EF00D1300DC87DD9FE8004C4ECBB0429CFDDD25002CD4079383F20B8AD1A38F3EDA58B188D041A0E05CC449491F43EB5C14D54E36D7';
wwv_flow_imp.g_varchar2_table(53) := '6ED66FE6FE5E4B6B97BBF743408646509E2EADCC7B947E6F4DF40D94F37C4DE977883E36F9C32A49A195EDBDF500B100E8410280455AD550A5DFCEBD4E8BAA5738FBDF8E421F3CC5423B0F8CDD5612525D0E0B0945390DEB354C574EFAA4FA55F4561050';
wwv_flow_imp.g_varchar2_table(54) := '37B0F33A53FDD1044810C22710EDC0637D0450EB89B947196E770980A8CDFFC31FFED0D9FCE416985A8FE041ED47BB00E8D3D07F9CB08B74035E5BBD563F98F36355E7AA15640225524D99344C560AA9DA910EE808692E386CD00C7D60C2C52A4E819710';
wwv_flow_imp.g_varchar2_table(55) := '0B80B6D8280E03B645219C50BEAF06E574CFF23BF5D0A2A7242FDFFB2E1FC22B6079B118A369B58E19829DCA2BCE423C0478C2BD00C8AC9C86560CD1E7265FA1F25EBD950E302B9A7280D5DC2F5CB8D081693EFBECB38DCCC7FDB1ED71EEE1E1DF532600';
wwv_flow_imp.g_varchar2_table(56) := '4207C7234D3EAC4989B5023FEFBCF39C3F80A841131BD34537762EB3353BD6E847CFFE5835D96A67FE64B259E7280DCF091490DD075DC9A370A1D19D7773957EF93F436D2054A39CA9E44925B994CE9FFA6E1D5979B49484FD6301D0D6F28E05405B14E2';
wwv_flow_imp.g_varchar2_table(57) := 'FBBC9ABADDAFD6AB6B5FD1E2AD8B1BBDF294AC465DA9D5B9ED7A65F3022533BEB2A9848A94D5D0DEA3B45FE93017D3266058EB795AB1759136D46D6A340906570CD195932F5765791FE7CC6AC93D8B206057C7274088301A8E9B3E7DBAABC48BA205ED4E';
wwv_flow_imp.g_varchar2_table(58) := '0D00D41F1C8F7433B203C173C20927383F84850C5B4B525AB363ADAE761A408DCB964CF8390DEE3D42FBF51EA6849F91E7A51CE3AFA85AAE753BF0EE27E4A5A5B4D29A583956C5C9E69B4A17A54B3571C0584DAE9CA0A457DCE84369CFF4F6C4736213A0';
wwv_flow_imp.g_varchar2_table(59) := '07CD0ACE3AE2D558AB54AAB9DD3CBF35452528FBFAE2AAC5FAF19C6BE40539653C4F255E42678C39DB8501032FA9B4EFABDAAFD7ED0BEED4536B9E0A6BDD6996D04E01C0B9F80470BE115F5FBF7E7D23A5E8BC4B280FAFBB1DBB4B0058B620F5083CD398';
wwv_flow_imp.g_varchar2_table(60) := '1C5B1F7FC09831639CCD1FAD2D686E0A0B05403A99D0C9234FD6E9A34E75E9BE3847B3BEAFDB17DDA959AB1F5336E349A984FA14F7D297A67D56034AC230E05B0E2C00175675FA401313A4072DA5760F251600ED26D59E3FD11271C2C49DA86A5E087244';
wwv_flow_imp.g_varchar2_table(61) := '26E072FD70F6CFE4E51A1424922A4AA774FAFEA7E9E451272895483987577DAE5EB72EBC5D4FAD7ABA530200266337065F8F241C2BF2D9D302803A01B2FA4CE8200428F001161C4D80C37C022D6528160A805422A953469DAAD3469DA2640216A6396AD6';
wwv_flow_imp.g_varchar2_table(62) := 'E5013CB6F211942F0589842A8BFAE88B333EABFE252DF51244FC7278615891284A479C087B7E1975E809B100E810B9F6ECC9CED66C525D1EEEFB6F050309B4AC6A917EF8EC2F95F3336E470B8AA5B3F63F43A78E3AD1C5BCC91F68C86575CB825BF5D4AA';
wwv_flow_imp.g_varchar2_table(63) := '677759002C5E1C9A231C93264D72A1BCA80980E3F0C31FFEB00B035A2621BE029C75CD65029267C071D04107B94C40CB0340C82000CE38E30C875CCCDF681AA013FFEA57BF6A7C66B4E2B03D1A403215E8D4FD4FD5A9A34E532A890690502657A73B17DE';
wwv_flow_imp.g_varchar2_table(64) := 'A1C756CD9472844F03551657EA8B3376260215DEDB7910CC7F984FABDEB3AB62CFDE3D16007B96BE7BE4EE088AE5558BF5FD393F738841CE0595F274EE88B375D2FE272848A2A2FA2EBE7DFB9B77EAE935BBAE01980080F168171615007C46C71E3201AD';
wwv_flow_imp.g_varchar2_table(65) := '4537717A12831002560B00D383E083F960E09EA8F4BFFFFDEF5D1E80EDEA851A009E7F040070E6CD61FDB5470080DCF38E91A7E8D4FD4F72763E4EBDFAA05E772DBE478FAD7A9C38A18B99520CF4A5199F6FCC04DC2313D8836E1A0B801E3419ED1DCA5B';
wwv_flow_imp.g_varchar2_table(66) := '04003B5132A1719507EB80BE07B872558F6297444EAF6D98A7A555CB434F76077D005113A03901003362B6C0B8380A3FFDE94F37660262A71F75D4513AE288231A4D0754E5471E79C439174D9BC0B6BFE69A6B5CF75E0405D7519D682600634083D85501';
wwv_flow_imp.g_varchar2_table(67) := 'E079810EEA7B900EAC3C28A48F3C0708327FD37C2DA95A12BAF76301D0DE25D8E1F3E228408749D6F2058502204C782718C54F983FA9841F289BCAEDC414CC9B161D7102B624003001C012A0C3100943F807962C59A2D9B367375615327ADBF90D8918E6';
wwv_flow_imp.g_varchar2_table(68) := '8E16F1707F7003101464F38D1B374E4418F88C583F3E805D16007E4D08AA8253D587ED43842517D94B7861829007E2121951B106B01B9769935BC502603752D615036D5FAA9F3CFD33658306979BDA129065682BBBD5EEB20286F4220C784563B59B8B61';
wwv_flow_imp.g_varchar2_table(69) := '5B06A1C31FCCFB211CE250E8043CFFFCF3850660D5773028CCCA67B414479DE73BBBD698DF0A8B9C5FA315479955EF61EBF7E9D3C7752542989003C081E038FEF8E35D14C0F2FDED9EAD39017FF0DC4F559DAD76DA509828158DEEBB3BB8FBFBF21D8A12';
wwv_flow_imp.g_varchar2_table(70) := 'F912BDD3BDF5E5199FD3C07C31D06E9CB61E79ABD804E891D3D2FAA042409055FAE5F3BFD2B6DA6D7928F09D5983D1ABCD6195F3A9184CEAE0BE07E923933EA83E257DC39DAF2085D098D85474189C462130BB417C45A1BEA2CF8A7E6EF67C94F9B97761';
wwv_flow_imp.g_varchar2_table(71) := 'E2525468D8B9F6999D6F2600A602C2209AF7DF9200D850B341BF7AE1575AD9B05A89BAB49269AA039BA711F910240AF945598DA918ADCBA65CA6BEF962A0BD70797468C8B100E810B97ACEC9D5991A3DB8E221CD5DF782EA73D956074636202021E5C972';
wwv_flow_imp.g_varchar2_table(72) := '9D34F2441D3E689A9289628737B033E72DBC85311D3B3AC83BA403930C44455E9479A30C6E0FB7EF51FDD9A9F947D8CEB2F8D014A8E6B36C43C3F22B14123CDB9C7D561B80E391DCFF430F3DD46909F67D4BC94075D93A3DB67C969E5E375BB5B97AA705';
wwv_flow_imp.g_varchar2_table(73) := 'BD0554353F70CBF42B4B94E8F8E1C7EBE8FD8E5451A2E7B444DB93AB2E16007B92BA7BF0DE240D5537D46A4DCD1AD56559E02D1F30115EF0DE45BD35B87CB08A1380DFE73103F2A1ACE8CE4FFFC0279F7C5277DD7597130085CCCFAE6B763D0C88490068';
wwv_flow_imp.g_varchar2_table(74) := '08F5F843860C11E09C540D523B8000B0D25D040079FD68150087F00F21832F81901F2841515092A8C6C17328423AFAE8A39D7F005F4161CBF2A836C0FB9005B86EC77AD566AA43B8EF16E0D2318DD08ECAD2651A523ED8FDDC578E5800ECE5336DDEFD02';
wwv_flow_imp.g_varchar2_table(75) := 'B09BB7BE5563D14F53778CEDF85C00F301B94558EE81071E70F6BF4185D92E6D4C09D3538C83030FA6C489670C8FCADE1A2827F7E41F4204FC4004028E44003E11380804EBF767A5C1A671706F1A98E097A081A94189B5D4C9A85DF48990A4252D612F5F';
wwv_flow_imp.g_varchar2_table(76) := '262D0E3F1600FFA933DBCEF732159BDD976EBB406E8115C8E7080453DFB91D80A1ECEEA8E1975C7289C68F1F2FBAF19AF080094D256FCDE917351F6CC7372722DA07C01F6007025202C290250D9989C2F5ECFE8418310BC84CE4EFF60298B69334FBC469';
wwv_flow_imp.g_varchar2_table(77) := 'B100D827A6B9F99784C9D98909B7FDF39FFF74CD4251C9ED30551F269F3061828E39E618D733809DDFB2009B63F4B65263A38EBFC28C3ED3481048F3E6CDD3FDF7DFEF0413D589963C648200D3824422321069688A06D2D6B3F7E1E96EF6D56301D08356';
wwv_flow_imp.g_varchar2_table(78) := '4461082E3AB4DDB9B0ED39ECBA78F749B17DE8A1879C0D1E3DD8FD6130804008C38D1C3D5A45A4D13AA04DC786F9401AC54BCE48C85F4E7C3DAB4C2EA3AC9F7525C91CA015816E944C1429992019270FC4E79A9EEC6CD6198214F0045FD5D5758EF91F7C';
wwv_flow_imp.g_varchar2_table(79) := 'F04127A4A21582F61E9801E79E7BAE0320359C02331D76C7F49A73B3B988C5EEB87F77DE231600DD49FD826747C35F850EADDDA5DE1AE006F76387B5725F637E3E47308000C46E0F0210D97A29C26F29528C5D6F0CD11DC7B17020E5129E1AB275DA52BF';
wwv_flow_imp.g_varchar2_table(80) := '4DCBB72DD7D24D4BB5AA619DEA1AEA549FAD532E6870958D342E2D4A16AB7751B906950FD201FD4669BFDEC3D537DD47455E4A5E22E562F2D8ED38E542A1100A069C87AFBFFEBA13563828A3BE09E8C67829183258703E8B562BEEEA349BD3D389B97C8E';
wwv_flow_imp.g_varchar2_table(81) := '445453DAD5FB77D7F5B100E82ECA37F35C4BB4E12B5377596CCD415E7576D866DBBFF1C61B0E8F1FA79B319339D2060F1EEC8A78D855B1FB4DF8B87C1A7667B20CB3F5DAEED76865FD2ABDB8EA65BDB9F5756DCFEE504639D76423994B3BC6C5C31EE600';
wwv_flow_imp.g_varchar2_table(82) := '856025FC049093C41BAAE98A93C5EA9BEEAD09FDC769EAA04334B86488CA92654E43006CC309C57C31244C48B1D19FFFFC67978948CAB0D18CF3A83FA08808C090284E60676965D7452313614425041631CD60776A67BB3AD68E5E1F0B808E526C0F9E6F';
wwv_flow_imp.g_varchar2_table(83) := '997378C5614C0031A9929B3A75AA63C4DDB1D06076989FA21CF0FFCCF9C6BDD9310F3BEC30B7EB1F7EF8E18DA5B7F21217F1000020004944415421A250E84F27BEBEAA768D166E5DA879EBE76975F53AD5FA61988DC2A430D9365FC59857ED9DA94008CE';
wwv_flow_imp.g_varchar2_table(84) := 'DDC3A1F487C2219F98432E4252452A4F576878AFA11A3F68BC0EEE73B006970C503A51146A045C9F67BA9AEA6A3DF2E8A32E5A81C3D2321111940801EA08C030206CB8ABBBB4094C840D7342E892BA05E68410E7EED2CCF6E0B26AF5D6B100E82ECA37F3';
wwv_flow_imp.g_varchar2_table(85) := '5C0400E9AFA0EDD03E8BAA38ECDB0F7DE843AE261F062D44BF6D6BF851BB95FB634FC3FC38D6F8DB76501C7D74E961E707ABDF691DAECC306C7F9DF11B5C2FC2E7573EAFF9DBDED4DA9A0DCAA85E3EA025307E1E6A8B84637ECDA0BF937BEF1A6E6415A8';
wwv_flow_imp.g_varchar2_table(86) := '4801FDF712241FA5C2E21B50B9723997A3E02512AE534F12D53D5DAA6165C334A5DF244D193A59838B87B8EF29E871C2033A65329AFBE28BAE9008416661431812C6C429087A1070E18CCDFEB5452FBE8F8646F99D0AC7DFFCE637BAF7DE7BDDEFE43A7C';
wwv_flow_imp.g_varchar2_table(87) := 'F5AB5F75A8C485E0A8EDB97F4F3A2716003D6836586C78E461422AE62C238EDD9F70D785175EE87638C7961100CCD65E21EA57C0C30FD0260E35C3D7375B19D539CA308E11DC6E9D54CEAFD713EBE6E8C1A58F687B668BE8A8430D012DC9BC8C2F9F3A83';
wwv_flow_imp.g_varchar2_table(88) := '14B63BE0A39E12C994CA1A48BD4DAA01C86D65A504F7C9A92C2893D281B2CA3A5320C02C2091D1C3FA97BC1C260F70DD752A2D2AD5E0E4609D3DE13C8D2F3F58A934F0E83BA18F3399062D5BBEDC41835394642A39638766E409600E545434ED85D0D694';
wwv_flow_imp.g_varchar2_table(89) := '9B5044B3401BA381EA1D77DCE1FC10F60C60D2C14CC4F7B0371FB100E841B3C7E222EB8E2E37ECD0B61BF193C41B1A60B0F03AB3A059BC37DC7083DB3171F8115B2794874061E7A7A9264C6336AEDB05256DAC5EAB3B97DDA797D6BFE8404561F69CDBBD';
wwv_flow_imp.g_varchar2_table(90) := '134A516197C82A9148A9B7D75BC37BEDA7832A0FD4F0DEFBBB1E7B2F6C9CABBBDFBC4B390F4CBEA47A254BF49E71EFD4C8DE231CFCF9E26D8BB568D312ADA959AB1DB96A51AFE01AF9F859A5BD74DEC188BE90D3C9A38ED789FB9DA48AE23E744C0C8B77';
wwv_flow_imp.g_varchar2_table(91) := 'DC1803AD5AB5CA8188024A620946ECF8E42CFCCFFFFC8F33090AB306DB129A080176FB3FFCE10F2E27C1C049B98E7B5F74D1454E0B807EBBC334EBAE65180B80DD48794BAA61B158128D65C5451F137520453FB71C7970F0D95D087945936670CE01C94D';
wwv_flow_imp.g_varchar2_table(92) := '718E25E0D8826CE9351813CCFEC4134FE86B5FFB5A639CDFF2F54F39E5147DE52B5F11F77602C7A9EE522EC86ADE96D7F5D0927F6961D5E290316952E2BBE09D12A994EBA233A6CF688DEF3B5E070E385095A57D54AC2257769B51568FAF7C42B72EB84D';
wwv_flow_imp.g_varchar2_table(93) := '59D28DE5ABA2A8972E1E7FB1A60E38C4DD037CFD4C90D1861D1BF4EAA6795AB87591966E5BEA5278C1E7706D38C0E94848493FA9F10327E9D45127EB80DE2394460070D7BCF9B170C1027DFB3BDF7628C6D17E06542DD2FB900AC3A8D654C8B485A612CE';
wwv_flow_imp.g_varchar2_table(94) := 'C6EBAFBF5E37DE78A333C56CE7E71E241E2130F9D9560BF5E87D114E56FF80E9C0DAB071D8CF682878372ECD166F150B805DA4B2313D8B0E86A5ED35BDF64C7D07E906300BB3AB0B174C7421DAC24580D00093061D4B972E75BB9A4502B03F497CB9F8E2';
wwv_flow_imp.g_varchar2_table(95) := '8B1BC35C85F66D5415E69ECB962D73AA3061B4A8179B345ED47E98C38DC3F9E902E532BE9ED93847FF5AFEA8D657AF7728C3D4CED3272B48655511946BC688C335BEEF381DD87B94CB9DC7468FC2633704593DBE62A66E7DF30E672A20557AA57BE9A209';
wwv_flow_imp.g_varchar2_table(96) := '176BDAC0431AA91ED6E607CA65036DCB6CD5C2CD0B3577D34B7A69F33CE5720D4A5A2830E13914E3FD7BEFA7B3C79CA6717D2684E0A0617CC13116CC7FD555DF77EF6907EF85868340B5AE4608D528B290553E722EF4223D19DAA3F6930E1D15C23366CC';
wwv_flow_imp.g_varchar2_table(97) := '700E46B221B9476BA6587443C04FC1F830F1985F929670243207A43647230B1D31F17671F932EF5D52AADF250FC9ABCC85089ABB4AA356AF6771A052933B8FBA481E3BE9ACC68438A4D85D598478D799EC96506D6D21F2406C7434811FFCE0074EC535BB';
wwv_flow_imp.g_varchar2_table(98) := '94F9A21AEE539FFA941302B6905BCAC8C38625DC0784978516191B1E723E3FF2C8239DD36CA720F3F5D4DA59BA7BD983AA6AA0C8285F690868AE278DE97D904E1A79BC26F419A354B2D4019226683D46D82E8231DE6E01E08A91D03A50EC0365E4AB2EB3';
wwv_flow_imp.g_varchar2_table(99) := '5DF336BDAAFB96CED49ABAB52EE700C71FADD28918F42B1BA2F78D395713074C766DBA1CC06720651BEA75CF3DF738276774D766A7FDD297BEE4D476E8D5DCAE6DB4E73A70076EBAE9A6C626A4B600004241ED87710DE7B0350D80390328050722F80698';
wwv_flow_imp.g_varchar2_table(100) := '7796D6CC7C61D6217CADCA31AA11B4D7C7B3AB8B3B1600BB48417688FFFBBFFF738E2224BB258C449345602E26F79C73CE71F63DCC57A8FA99BD1F75DAB158102C24EB183A8E0D173F00987B94C93677D87D68AF05E8260BDB1639B63E093344168CF961';
wwv_flow_imp.g_varchar2_table(101) := '60927966AF7B4E772DF9A7B6D75629914C3BC41C18AC3459A2698327EBC451276B687A083AB900D1214C4FB75CD7382322E6DB2B00C218BFEBDC970F0CE494F453CA048196EF58AA47963CA6B91B5F512651AF6436500EF0133FD080D2C13A7FFCBB35AE';
wwv_flow_imp.g_varchar2_table(102) := 'F2201579840AC3C16CDF5EE5BA1AA1BA23F02CB189BC00B420A202CD994D1611C154623E11EA36479611F9F5AF7FDD854711226DE500703FC2AD7434B6888B5D633F6DADE0ABF8E637BFE9DA9DB14EA23515BBB83CDBBC3C16006D92A8F9139CAA9CCBB9';
wwv_flow_imp.g_varchar2_table(103) := '1D077B10871147549D6401B1080D3B0FC6836951E1ADD3EECE249B9DC5379678C2FD10023C03486C3401CBE4B36ABB28404654ED3501609577360E9E872062C1F5AAE895673DD79344AF6E7959B72DBA5B6BB66F5052D8E7F54A7A45EA57DC4FC78F3C4E';
wwv_flow_imp.g_varchar2_table(104) := 'C7EF779C8A93408E87ADC6F007B0E93BFFBF8BF9E7952FAC053FD0AC95B374F39BB7C877CC9953AFA2DEBA081FC04084D6CEFA7C76FE308A18B640229240548031ADAF5EAB27D73EA599AB9E76A13FDA9BE512BE8AFC22EDD767A8DE77F07B34BAD70825';
wwv_flow_imp.g_varchar2_table(105) := 'F3F5FBD087583DCC6E4D4EA10574B2DDBF30932FCA90D03B9A90C575ECFC984A9420178614ED6FE7908CB46BA388894DC10050CD24B467479FC19C90EF819982803173AF934BB34397C502A043E40A4FB689A674966EB7A8EAC6FC4C26529C5D9E458086';
wwv_flow_imp.g_varchar2_table(106) := '105D70EC44575F7DB583C38EDAA19C63892585363D8B925C7D2AF55029A302A2ADE19BCD6FD7A072B2431E7CF0C1610B6DB770A50D356B74C3FC7F6849D55265FD5C386649834AFBEBCC9167EAD0A1539C16D0D2E14C88C6AC3F5F6094CC5C3D4BB7BD79';
wwv_flow_imp.g_varchar2_table(107) := '87C802403890E873C9F8F33565C0140750420430EC4DD8B28598CBE6541FD4EA89954FEAFE958F6947C31625022200840BA543064CD10507BF477D8A69E71D7A0478D7A79E7ACA454D50BBA373D616BD4C3BB05A02D47DB4257EDA3C1A4D4D6BC05CE3BB';
wwv_flow_imp.g_varchar2_table(108) := '68BA30CF47689040C43C9B00AEACAC740C8E90329F0FD772CEFBDEF73EE75FC0C4EB22D33CF601B46741149E63D29E783A6A218C6E934F9618134FA92C3B36B9EBEC44A894A6DA51B0823650985FCE35E400C09C513595C5801000511773006763D4D35D';
wwv_flow_imp.g_varchar2_table(109) := '38BE428FB22D5842619FFFFCE7F5810F7C20B461C3F616CAE56AF5C7F97FD30BEB5F70BBAEB51C0740E45D07BE5333061DA2A48AE5850677B307D88404ECBC1C093D59BD59FDA6662E9EA95736CF0BFB132AA1B497D2D183A7EB98516FD3908A612AA13B';
wwv_flow_imp.g_varchar2_table(110) := '31474BADF5102A3E49459EBC5CAD1E5BF998EE5EFAB0AAB3B54E80E49259A58384CE1C718ECE18758292C93074C8FB63F220E8A8702CDCF1DB3BE79857444E607E37CC7C0AB0456B70EA1129C0EF137D863D3FDAD804DA939C4452174280A6A708F4A8E6';
wwv_flow_imp.g_varchar2_table(111) := '8870C62F63C2A6BDE3DC95F3620DA013D433C94FC61E0E2753B3B1CB494A31DB1A26C5A6C4C983332E1AE231A6B4DDC9767DBCC2DC032150E860C2C770DF7DF7390D821D24AA72465FC31C7A85DF4F9B36CDA999AEB827152202917DF7E4DAD9BAE9F59B';
wwv_flow_imp.g_varchar2_table(112) := '44DD9E6BA0A94025C9129D71D0697AFBB0E3559C4D4B4554F48559814D9E951723F4D96BC8D46849DD723DB8E831BDB966BEFCD29C826CD89A3B8C1210D6F39452918E1C7EB88E1B71AC86950E550A74A2669CD1CED420F73EF0944DE01CACD15D0BEFD7';
wwv_flow_imp.g_varchar2_table(113) := '93EB662997CD28E7618EF82AF18A75C5F48FEBC08A039D607019867EE0DA9A21A0972F5FDE6C6D454B530FDD11E4DFF8C63784D79FB931C7ADCD174E3D680966014754989BB665580A7C8746483E01B4E77E6886D75E7BAD4B67B6A804EB070180A0682B';
wwv_flow_imp.g_varchar2_table(114) := 'BCD88965DBEC25B100E80425599430FD5FFEF217E7A5B7621A60B1581484FD6C4760F191C107E4557467B6EFCD4965B0594C3C4017A882EC4006A56D0B1021409811C7125A85D9AFF61AA69DDC7EFBEDDAB0614313C71FBE874F5E71B94AD2A4E562B97B';
wwv_flow_imp.g_varchar2_table(115) := '5AB663857EFBD21F55D5B051F54156A95C91D2695F470D3952EF197BBE4A6892E954859DEDB4ED590E523B0877F76CB64ECFAC7F4E0F2C7B585BEBB6A8818625C80BE7BD278417560064DCE7691507390DEC3D42678D3E4D932BC72A950EF307426DE0AD';
wwv_flow_imp.g_varchar2_table(116) := '6A860B2406BE36D66CD44D6FDEAC799B5F951FA4453F65CA8C0FEA7DB03E38E922F52F1EA06C22AB6490D6B66D5B1C43DD79E79D8D02003A826D70ECB1C73629E8892E03B4332A0BC13D883222B4451343BD67DEAD5D5AD48750A82998C038E490431CB3';
wwv_flow_imp.g_varchar2_table(117) := '138A64CE59334466BEF5AD6FB97BB21EF00B7DE73BDF719067ED6D80D289E5DBE49258007492824CA06900065FCDC2C1CB4F0A2A19629C8306802D6A61297B5CA13DE996BD3502F53CB15B731DEA60E122340764A1F660CC8FD0410BC1FEB4FBD25197CE';
wwv_flow_imp.g_varchar2_table(118) := '3A63312F5C2DBE5493ADD1BD0BEED3236B67BA2C3FA731247D8DED3D5E178E7FAF86960F76A9C02D1D61C3516CEE7A3DB5FE693DB8F0516DACDFE89C7861B14F2837C8EF2796401621FD0A8244CEB526F713498DEA3D421F9C74A186940E0BD1CB0B508A';
wwv_flow_imp.g_varchar2_table(119) := '9BAA1B8409735AB26DB1AE7FE5466DA9DF804BD0E52894A94CE78E3E5347EF7FB42B3BC68C617CF867C80634751C5AE27F212B92F932FA149A4D51E7AAD1155B1FD59D1C0163FEE87551611CD5BE607842C1D75D779D0BFB71102AC604601C766EDFBE7D';
wwv_flow_imp.g_varchar2_table(120) := '9D4689061087013BC998414B7A7127EFD7DC65B62070CC6123A28EDB0E8D3797183D9E636C43A43E5D732C068FED0D78A6A5DD1A3313AEB3C39C736802F813B8977D161520CD8D0DF59372597C055127D359679DE5EA008A5269E5E8C013045AB863B16E';
wwv_flow_imp.g_varchar2_table(121) := '9A778B56D62C53D60F3F2B4F94E89229EFD7A17D0E915281125EEB0200065F9E59AE5F3D7B9DB6D76F55BD17A8389B944FD66022AD5EC93295179729E725B5A3BE4AD54195B23E7226A584EFAB2C55AC8FCDF888C6F61AAFC003BDB8E5E785024FCA6632';
wwv_flow_imp.g_varchar2_table(122) := '7A74EDE3BAF3F5DB954DFA2E5109FA8CEB73B02E9C803019D4287CB0B1F179A03599A38E73A111E696D1B5D0E966CBC8928010F2ECFCD010109568B936BB35895ECCAD7D8E5F08AD8F837B90B9896678E9A5973A271F1A1CFE21CEB33190B58800983265';
wwv_flow_imp.g_varchar2_table(123) := '4AEC04EC2CBF76A50080C189023CFEF8E36EE26D81210C580C96F6698B8889260ECDC433D9512D005510FB9E2C345B7CFC4455C58E658145176961A420BA4BB1C8E6CE9DDBB818B12DA92E248C85AD9DCDE5A45C831E58FD98EE5BF890B2418D32414A45';
wwv_flow_imp.g_varchar2_table(124) := 'E9848E1B7E8CDE39F27495A6CAC2249F563CF4CE1996ABD7F5AFFD5D2F6F9CAB062FA7744E6AF0A4DE45653A7CD8513A6EFF63353851E9D4FFD50DEBF4D0B2997A6DDD8BDA12543BDBBF7FF1405D36ED431A9EDE5F7E2AEB1A9DB6E469742844F94607DB';
wwv_flow_imp.g_varchar2_table(125) := '6A37EA4FF36FD41B1BE74B8400130893325D30E6BD9A3E649A6B969220BFC8F79D2390783C4C6C821AB30CE16DD57CD11DD7EC799B07E6913A038431DA95F980986318FBF2CB2F7742C66C7E860983138AA40683B932BF8039822D21C8E68D08109A2311';
wwv_flow_imp.g_varchar2_table(126) := '07EE196B009D94005D21006C81C0F44067E394B34EB6CDEDD0E6F06362AFB8E20AB758F8DD189AFBB113908186BD6AAABBA9A7C486C964039ECBAE892E105B44DC87DD89869C16FEE21EEC283081AB1FA05A4F8143EFF9C32B7FD282AA856E41535CD3B7';
wwv_flow_imp.g_varchar2_table(127) := 'B88F2E187BBE26F79B20727B5230632B399C5CB774FB525DFBE21FB43DB3D58501535E5225A912BD77CC799A3E7886D302D8D401FFC010A8CED5EA99D5CFEAC5F5AF289D4A696AFF293A62E8612A4A851181B6C25FA6665359387BD533BA65E16DAAF6EB';
wwv_flow_imp.g_varchar2_table(128) := 'E5F10E4A68C690697AEFD8F355C1FDF20543444D602E7EDA5C404B3237D98D390AE969F3C81C5369C8CE4C4A75D4DE279AC35CBEFFFDEF6F029CC2B56885D420309F307B34412C94633B9BA4F06CFC0D6C266466168EA793ACD0AECB621F40BBC8D4F424';
wwv_flow_imp.g_varchar2_table(129) := '26D376079815871B55761490D861DFDB4ECD6E41110F613E4C005BECD1DD9E05CAA2BCF9E69B9D26601A023F3103AC81664B8CC2BD0011C1E430F59FC5854020FCE716793E59E5E5AAD7F4E717FFA6EDB9ED4A64734A144953FBCDD00563DFABB2E2DE8E';
wwv_flow_imp.g_varchar2_table(130) := '59D3D8FFAD0A809C1E59314B772EBD47F5991AB773A795D2F1071CAF73469CA5B4CBD547E0E40B8858F41E6E3B5FDB6BB6B9F32B4A7AA938D284A32D01D0485F055A5BBD567F99FF772DDAFC86125EB14B481A5A3C481F9EFE418D2CDEDF652A72C080EC';
wwv_flow_imp.g_varchar2_table(131) := 'D2F8038C11D971DFF6B6B7B9CACAA807BF7039702DE6033BBF312D7424979FD46E040B61BD42C10CFD31EB480602EE9C239AFC6382889FF86710F0279C70827304DA779D589A1DBE2416001D265953C008261E870EBB047637936E5E5DCBE8C2DE8701C1';
wwv_flow_imp.g_varchar2_table(132) := 'D8C30B6C4EBDC25DC1B2D83011FEF18F7FB8FB44A30451A152E8EAE03CCB128CBE128E258413F6AE0914DFF3F4F77937EAC9754FCBCF86D97B4525499D3FFA7C1DB5DFE10EBA8BD46057F5D742AD08DF35E41A74CB82DBF4CCEA275447F25090524922AD';
wwv_flow_imp.g_varchar2_table(133) := '4FCDB842A37B8D543248C84F58D7C21048145110BA085DEA5F5EBEEC9432ED15008CB9DECFE8DE45F7E8A1E58FBAEA45B49B74A258EF1E7B964E187282D348CCE38ECD1F8DD898BA1E9D8BE6964221CD2D03137300B0544322B6822DD310780F3E038301';
wwv_flow_imp.g_varchar2_table(134) := '471FF389396099A23C8B7B21843015C801B1E222CB1AECC4D2ECF025B100E830C99ABF80C9C6E1F4F2CB2F3BFB0F159C620FC23FC06CA12EB2EB147A9BED6E8DCCE9FBEE3E9803A491923F602142CE8D2E48BB36BA834517209F13F242A0E09CE480296A';
wwv_flow_imp.g_varchar2_table(135) := '330DBAEAB9EF6A7DCD6687E883F3AFB2A8529F39FC4A0D2E1B18DAFD2E25B76505208407ABD14D6FDCA2E756CD563D1E7EF91A50D44F571CFE590D29E9D7B8F337B27A9ECF437DA0E9FF77661AF0F2BFBEE175FDFEB53FAB36B7DD451A68FD3D7EC0785D';
wwv_flow_imp.g_varchar2_table(136) := '39F932175234BF0C002B1FFDE8471BB5B4A8C7BE258D2AAACDD9BC31A73879C9DA437B68C97488CE338C8FBF88C4212A1509DF92114A4315F23D30430A6DFE8E08C2CED02EB2EEBAA450AF4B1E9267902EAD062C24BE250599E3CFC249D1105F4B1316B5';
wwv_flow_imp.g_varchar2_table(137) := 'E5095B51C443496A3489A8B96BA38B2DEAE9E67E5421E2003335959A7EE0BC7E38E7FBAA696870213B62F493FB4DD487A65DAA322F6CF4D1D6116A00F5FABF376ED733AB9F74C53BA8F715EAADCF1CFE29EDDF7BB84BFF0DF140F7D0F403A0D2B055D7CC';
wwv_flow_imp.g_varchar2_table(138) := 'B956ABEB5686FA44E06960F1407DE5C82FAA3CBD134711151EFF0BEABC31BCCD517B0247D015072EF63E0E44DBF92D3BB0357AD9BC1A7621E7729D39200B1DBA6DD17E777E1F6B00BB939A05CE9DE8C26ACF2447BDCFFC8E3D4F592A1581F8045A131C7C';
wwv_flow_imp.g_varchar2_table(139) := 'C7CE12ADFAE399940CE359B69837E1B9E7D7BDA0EB5FBF5EA0752110D837DF3DE69D3A79F4894D6AFADB220D40A0772FBA5F8F2C7B50B57E838BE3A793C53A7FD2BB74CCA0631A23087B4A08604890C9F897976FD0B39B9F7768C56816A589627DEEB04F';
wwv_flow_imp.g_varchar2_table(140) := '6944F9A8468D0B272B19960F3FFCB07B2D53E53191ACC9494BEF0B1D39EFBCF3CE7348C930BF990EED99D7A826D11A4DBB6AD78F8E2116006DADF20E7E1F75EA995A5798F3DF960610DDD1616AAB35684B00E06C2249052160E126D4551A6658A111797B';
wwv_flow_imp.g_varchar2_table(141) := '37BF72B31E5CFF908AFC62055E9800FC8569576A5C5F9284DABF5B930704E3DD36EF666DCAEC502AE72B97CC6948F1507D7ECA67D4A702F82ED3FBDB7FDFF692DC251B65A4C7D63DAA9B17DD253FD3102208A792FAD0F88B75F8E0D0A3CE819F86AC406C';
wwv_flow_imp.g_varchar2_table(142) := '713BF0BC937189FDDD5AD88D3925971F21001D39CC84E848B8AE351F4E77307F5E13DAFD13D3CC0476C943F213D3AD26407B176F47CF6B4D4DE53BD44B7C0684AB0CBCD2EAFE51592DB534E367F59BB9D7E9D56DF315F8F9DCFCA4A7FF3DE2DBAA2CAB6C';
wwv_flow_imp.g_varchar2_table(143) := 'D1E9D7DC78E950BCB56EABAE7BF14F5A5ABDD4A50593CD9B0E523AB8728CCE1DF72E0D4E0D50329DCC77022247DF774226E1231A12793BBDA3D4C89FEFE2FCD2A22DF375D58BBF741904381AD389944E1A7DA2DE3DFADCC61BA3415152FDBBDFFDAE9179';
wwv_flow_imp.g_varchar2_table(144) := 'B1C3A117B6786B8CDC5DCCD949AA74E8B25803E810B97AEEC924B9E06D262781DF59B43897A8FB27B7DC16784DB656D7CCF99516D42E0DE1BC9570F9FE3F38EE7B2A4E16B55A9A5BF8F614DC908AFBD4DA6774DB1BB7B92A3D3CFFB944D6E5E70F2819A8';
wwv_flow_imp.g_varchar2_table(145) := '7103C7A97F493F171DA848F55665597F0D2CE9EBECF304713A20C15B68DBDD26B5433431ADAA59A6EF3CF353397580E4E54442870D9EA10F4FFC40E32D108AA4E2E25CB5701C363DB1F7534F3DB5CB126FDA7CA72E3E2116005D4CF03DF1383400989E6C';
wwv_flow_imp.g_varchar2_table(146) := '3FE2CE166A6A6E81573554E967B37FA115D935F2726CC0090D28EBA76F1FF94D2540DB692DF05F307834000A78AA55ABDBE7DFA6D9EB8132AF51CE3512211D38E31C8C54F351A5579C285165795F0D2FDB4FE3FB8FD3C4419354EE9529916CA91EB86D6A';
wwv_flow_imp.g_varchar2_table(147) := '61866CCCACD5379FB85A59D5BAE7921538A1EF787DFAD0CB1BD36CA10FC55B94085B0F016C792AFEB0EBBBAAFAAEED37EADA336201D0B5F4DE234F3301807A8B0FC0CC050044412B22C1C43480ADF55BF593677EAE35D9754AE4C2DD77689F61FAC6D4AF';
wwv_flow_imp.g_varchar2_table(148) := 'B8DCFF8E080007E21D7605D5A6DA4DBA73C95D7A71DDF3AACF1211C88711BDC095E65A99B14F7EAE12EA93AE70E8C0278F3AD1690A010D437CFA03768C449800DB321BF58D277EE08043B81CB4E1B19507E9F3877EA6D109484E05EDC41090966445D20D';
wwv_flow_imp.g_varchar2_table(149) := '69D62468C502A06374EFE8D9B10FA0A314EBC0F95101408599652A528146793258734D04C09C5F684DFD5A364A571938A8D7107D67FA5729DB0BEDF24E1C00826C6DD8A6C7963CAED91B9F534DDDB6500838CF7C2810DC2208FF549004DBBF4433064FD5';
wwv_flow_imp.g_varchar2_table(150) := '59079EA67ED40B24134A3A2764FB974B0E1CC086CDFADA1357A9214003A0FC38A1B17D0FD0E7A67ED60900FEA101200048CFB5FC7C04001A00DEFDAE2ABFED0469F7E825B106B047C9DB753747AD059DC64C0084026093D8B8D1F2D21DF5DBF5D3E7AED1';
wwv_flow_imp.g_varchar2_table(151) := '8ADA1561BF3F6A00CA2BF5DDC3BFA114ADBF3BC07CD1B7C31C401BA80FEAF4E6E6857A65F36B5A57B3411B6B37299BAB73F8FD35D97AD72998D063DA4FBBF661C589A48EDBEFED3AE78033954E6390746C0CD9C0D796DAF5FAD6ECAB95C9D586E9455E52';
wwv_flow_imp.g_varchar2_table(152) := '93FB8FD315875EE1868800803E00722020CD0488FA48620D60CFAED5F68BF45D1C47571403EDE210F7C8E5B6C351AE6A5D6CB071710262E39A065097A9D3CF9FBF568BAB173BA04EB2E74A8BCAF4FD23BFADB234054A9DD300F0C6E59B83C9C71118D46B';
wwv_flow_imp.g_varchar2_table(153) := '737D95B6D56E519DDFA0866CBDD654AFD14B1B5FD2AA1DEB1C9478D643E9A04370B92E3EE402CDA83C34ACE26BB7100A5C53D235DB57E97F9FFD8982A02E0F7296D491FB4DD707C75FDA280008A702CF4D56A4D54920203191688ED29170DE1E99C06EBA';
wwv_flow_imp.g_varchar2_table(154) := '69AC017413E1DBF35873E659C65A6BD7B0A86FBBED3617D6B2CC414049487EB130203B6126F0F5C7B9D7E9B9ADAF28E150BE122A49A5F4D519FFA521E5433BA27DB7389C42EC20E0C25CA832C868EB8EADBA69FE4D7AA5E6752532217C1736C198CA8374';
wwv_flow_imp.g_varchar2_table(155) := 'C5211F5579BA57BBC7E0E2BD7EA0D736BFA26B5EFCA3430722B210A4723A67D4793A63D4298D3E00D47EFC23E03358588F221C4C24AB9368E985ACCB531493C1FC2C7BBBE08805407B38B19BCE61E191D4431E796B20A08E0F7CDFE59AB3CB990020C38D';
wwv_flow_imp.g_varchar2_table(156) := '4A40DA8959134B78FE8EF9B7EA81358F49D99C5397BD20A72BA75FAE899593DACD7C1D2149935A05055A9F59A79F3EF10B6DF5AA1464293C0AD4ABA852974DFA9046F70D31F3DA73389830DFD7C3CB1FD2ED8BEF959FCBB86EC48964A08F1CF2314D1FB0';
wwv_flow_imp.g_varchar2_table(157) := '135883AA4D842398FF1CD0939260AA0449086AE999303ACFA006C0805CA263EB4826607BDEA9ABCF8905405753BC9DCF638152DB0F7024305466B73677B91512718DC193D979E79F7FBE83C42229C89D27E9C50D735D014D265BE70A78FD6456E78C3A43';
wwv_flow_imp.g_varchar2_table(158) := 'A78F3AC3D5F3EFEEC3B2E61AB32473BE1E58FD90EE587097025A88D33CBCB44C178C3E5747EDB73385B8AD719003D010D4E98F2FDFA0E736CD55DAA7E2D0536932AD2F1FF1650D2B1BD2C8D8E02352C1072DAD6AD2FAF3B566FF1B8383A54063D64B2EB9';
wwv_flow_imp.g_varchar2_table(159) := 'C4017C1AB0482C00DA9AA5F0FBF689F4F6DDABD5B3BAC307104DFF25230F7B13466481B1700A9B403657D1E714E17CAD3E3FE90988C79AF45ED4D7A8FA59480013008ED03079E43EC050E117A02519D879FCB7A16E9DBEFBEC8F549BD921CF4F29280A34';
wwv_flow_imp.g_varchar2_table(160) := 'BEFC407D62DA2755962C099BF5E47BEEB5774A5C4F80FC7FD6ED8722A09DF7DA792732065FDB325FBF79E1776A50BD52414AB974A0F3469EAE778C3EA3DD8E48D7CFA0769D7EF9FC6FB5AA7E8D8A283F9634A474A0FEEBF02FE77D1AE1D2A39F02580C0B';
wwv_flow_imp.g_varchar2_table(161) := '1786002885B46A4D03B0C62E6801F853D0A8A8EEB442A0C29A8F28CDEC3B9EC99A606D20A85917A41737D7DAADB052B1BD73D099F3620DA033548B5C632137E2CC302D4D3D01024575A75C940EB2E0000001861A6E8C6CB66334EFDFEE451110BB36D0D3';
wwv_flow_imp.g_varchar2_table(162) := 'D6EEDAEAFD0B17AE0D255A77C067763E6A2E1970A8B96E31E207C8D5E9BB737EACF5D520E4849D782AD315BA7CEA651A5131DC65E7B980A00B13B65376E799CAA5E6393F227802618B71B74B46E99C0B346FC71BBAF6D95FABDECBA828482A9BF674EE88';
wwv_flow_imp.g_varchar2_table(163) := 'D375FA01A7B77BB720B23077C34BFAF3BC1B94F1337289499EA7C307CDD0A5933ED8E43E4F3EF9A43EFDE94F3736FB343A9AC06C29D59AEFCDFC62D78771DFF39EF7B81A7E6A038CD626C0ED7E36AF5C4B79F7FCF9F3F5CF7FFED3C188B35610208467C1';
wwv_flow_imp.g_varchar2_table(164) := '03E077FC3576B4D704DAC5A56B42B09D13BC6B4FEB9287E427618FD7024425344CCB04D3B483901BF677E1A241030094934583FA68F5FD85A5A4303BDD86884D8333186576EE693DEE0B3B0319F39BBD6A78735C8FD0F9C52F7EE1165AD8D0929D3AD04D';
wwv_flow_imp.g_varchar2_table(165) := '8BEED063CB6639A6212C97F2D23A77F4393A69FFB72B95208BCF0FCB795DD3CFB60F5A8003011C228853954FBB2FABF96F7AA5C4F85500002000494441547D900BF4F8A6A774F3CBB7A85E0DEE3945E5E57AF7F0735CAF80F64601EA730DBA6DC1ED7A78';
wwv_flow_imp.g_varchar2_table(166) := 'F5232A52B1B2B98CCA12A5BA78CA453AACDFF4107624CFC09852D134606808D399406EADD6C252ABCD19CB35385629B4229260CC5F28D4B90E8D03A86F0045A3A60673C93CE15720190947A46D1036EF6D537DD7CF8835804ED0306AD3625B52B74F9249';
wwv_flow_imp.g_varchar2_table(167) := 'D4FEB673A23B02EA3850DFD68EBB104C82DD818215D08659A0B6285938808302EEC16756E917DD318CF9A97BA77CD85089783E8B9570A0B35BF310FF6F6E5FA0DFBFF4676D6DD81C36F6CC793A64E0645D38EE7DEA575CE99827CCC9695F5890C2A2EDD9';
wwv_flow_imp.g_varchar2_table(168) := '2A6DAAD9A2A497D6D08AA18D054085E5C09BEB37EBBA177FAF653B563A3872CFF3555ED6571F1D77A9C6551EDC2E2720E35BBE7DB96E78FDAF5ABE6D8D725EC6E510EC5F3E549F98F2090D2E19900F4BCACD0B602000B518B3E2136127E7676B9E7CAE45';
wwv_flow_imp.g_varchar2_table(169) := '130350C4E6123AC2C040AF536949C255A11F81F903258A0A4440626C572F841FE3734C0BB413EE67E3E92A2D2016009D14005C66B1777616547E93DC4CB23989A20E27160D4E393A0511A38FAAED302E9055ECFC96AACAF7DC87669E2C10760B5B18CD2D';
wwv_flow_imp.g_varchar2_table(170) := '109E0570258E2A0329E53C1085F17EF34C2480EFE554DD50A33FCDBB41AF6D7C2D84E94E79EA9D2CD3FB0E7E9FA60D9EA620E1BB649D56DA0234A1DCB6862ADDB5F81E2DDAB644E9444233FA4DD351238F528557EEB0F948F141486D6BD8AA7F2EBE4BB3';
wwv_flow_imp.g_varchar2_table(171) := '57CD51CE351BC1CA0834BC78B82E3FEC93EA9BEEEB7C15CD1DE1D961FD417DE0EB89D53375C7C2BB94C9D0309402A4948E1E7EA4DE3DEA3C95169718FCA133CDC0EE03A8D39C7608538AA730D35A73E4A1950122821F854E43BC830977F309982660C2D9';
wwv_flow_imp.g_varchar2_table(172) := 'B01C4C9343184443B9516D83CFD1CC1022B41E2727C1B00A3AB1343B7C492C003A4CB29D6DA0680E81FA660BC32DE644C2D58C5388431D3F75E84CA8E1C5B36850C9810AE35C766A3CFC341479F5D5579D50312711DFE179466B6081B4B453D9E2E227D7';
wwv_flow_imp.g_varchar2_table(173) := 'E0A4429058D51BAA2ECF7435015E425935487E428FAE9EA5BB17DEA3BA1C587539D70E9CFC7CD76C335DE99272DA1991D333EB9ED55F5FFB87EAFD062595958A8A35A57C82DE3E9A3E8083954B047A63F3023DBDE2692DD9B2D44193655D69B0549C28D6';
wwv_flow_imp.g_varchar2_table(174) := '0513DFA323FA1FAE74B2F93661E1D61D7622A6866155C32AFDF9A5BF69597588D4CBD1B7AC8F2E3CF8BD9A34608AD2AED1702874A89024FE1FED938043109A1B2A4F6BCB80B903EB919C015479C3FF477030D7545B7EE52B5F69B201E0BCE5338386E71A';
wwv_flow_imp.g_varchar2_table(175) := '9E0F32137E040060A3D11BEE83AF08A1016E64571DB100E804A54DDDBEF7DE7B9D6A8D0FC016211D7D0CC21B671EE6014D44A38D24D8895910C6B8303DBE0363581606DF1F7FFCF16E57A0A807EDA1A5236A92700F508A0979454D04CC0F3495301F206C';
wwv_flow_imp.g_varchar2_table(176) := 'C3BDBC7A95FE3EEF262DA97E53C96C4A99A4A7A2444A178D7BB78EE87FB4BC22FA02B5CF047860D9FDBA6BD1FDCAE4F01CD64BB9A402A74014A92C5DE6DE8D0E42081F70089DD94126A0921ADB67AC8323EBA5D2165B8385EFE23BD09FDA6C9D1E5EF980';
wwv_flow_imp.g_varchar2_table(177) := 'EE59FC880304088594A749FDC7EBFD632F5469496F1505210829BB3E0D3971C2D90E8D40067919076DA139D5ACE6916F053F6FDE3CA7D2D373C17A0C98D667B87EA6E2A3C5192E03CF60FED0424068621340D8E31B40F3B37BE0A805BE0D0CC9D804E804';
wwv_flow_imp.g_varchar2_table(178) := '63BA4DA2356F4E27EF59781993CC82A635180BC29C44D61C94E212269CA16007A222E22BB0898E3AF16C514687CD6EC06E0D92B041819B9ACA795C6F8BAB706C7C0F9E20763F30E5765F9C8FE4C14F9F469BEBA472B0221D7656CCD23D2BEFA64F8872AE';
wwv_flow_imp.g_varchar2_table(179) := '338FA7A1A5C374C9C48B34A6D748D7D433BFF9B6EA9D5F59B5427F79FD46ADD8B1463EF06038DF080878740E0C51804317615EA0E0F84BA47540E5289D77F03B35A27884BCC64E444D4D80F06A189AA49C9C5EDAF4B2FEFEDAFF697B6687BB1DEF5891AA';
wwv_flow_imp.g_varchar2_table(180) := '709ACBD4C153954A8052502C7A94DF73CF3D8ED10CB21D6644FB22610ACDA8B9901B02C21C84F935158A1FDF77CC4F7816E875DB082CE21265DAA80F886BA13FC8C480B3721EF3C718F8674D651022A426A30974556D42AC01744228985D6FCD4111002C';
wwv_flow_imp.g_varchar2_table(181) := '02766A16DB71C71DD7E8E9C72647EAC394D19DDA84411407D06C7E8B188C1831A2D13E35C6278E4C33121660D4DB1F8DFF734F429174A03501C082BEE8A28BF4B9CF7E5645C5C54AA4120EFE7B6DED1AFDE1E53F6955F57A97AA9B844793094D1F305DE7';
wwv_flow_imp.g_varchar2_table(182) := '1E70AA06940E7642C035FD48841D859B3B3299AC5EAA7A59FF5AF88896ED58E6FC0C39E08148F4017840F42374B97BAE0291AE4013FA8DD3C9634ED4988A039CFD0EA86873D588AEF517EABC1F68E9F665BAE5F55BB578C752D7CADC4FD079D8D3B4BE87';
wwv_flow_imp.g_varchar2_table(183) := 'EAE24917A83C5DE1D089734A68D3860D8EA1E8B864B0DD8C1DA14A9F85960EB4240430F358A879711F3401F30998308F3A7B2DF210ED14443F429AB3B87C8C7CBB77109C881C59A8970DC49A83C602A0138CD9551A8031238E3516180200A663E766B7A7';
wwv_flow_imp.g_varchar2_table(184) := '3517761EB63DE1416C415251AD4F803909A3AF68BBC799679EE9767E1C7E855102CC047611ECD968B8B1505D8C26BAD80EC6B381A0261DD6FC0F6E472696BEE5355DFFD2EF551F645CECDF4BA41DBCF6C9238FD169A34F532A59AE349F275B8EE6D62BA3';
wwv_flow_imp.g_varchar2_table(185) := '644E5A5FB75E4FAC7956CFAE9CADED0DD5F21339D7A20B86C4B158942D72D0E16F3BF86D9A3A608AFA25FB3A0CBF968EAC4FBB30D2953D6DCC6ED4ED6FFC532F6E9CAB4C36E37C164881D2642F7DF1B02B34A46C981314D003A6C20EC747635D92A1A7E5';
wwv_flow_imp.g_varchar2_table(186) := 'F5B7A628723D3E1CCC287663D3E66C8C5CFBC61B6F38ED8F080147349C68DA5AD4EC235CC86E8FD9C1FCB01EF04DD021D80EFC03DCB32B8B93620DA01382C63CC138DAB0D169FE603B3AC921B4E126AE8BE308941E527ACDBEE75A7ACE735E94715940B4';
wwv_flow_imp.g_varchar2_table(187) := '03A7D9048B8F235AA30EC363B75A434963ECD66CC5A879C1EFDC8FB0154EC21025188FB6A720E7EBE6A5B7E8F1654F2AAB9CDB59839454E215EB9C51A7E9B8FDDEA65451A953DE5B1401AEBB70D2E1832494D19ADAAD7A64E9239AB9FA11B7FB53F55752';
wwv_flow_imp.g_varchar2_table(188) := '54AC93469DA463871FA7DE895EAE761F4D21E9348BB7DE3974ED052E44B9C5DFA2FB163FA8C7573EA96C50E7A0C7B2AE92B054171DFC2E1D35E428050ED1284C3CA22F03BB2B26407366565BD3CE3DC00C440890B08370B779E75A9898E8020558CC6FF4';
wwv_flow_imp.g_varchar2_table(189) := '3B7E674D98DFC1E608FF109B03F34BA8F6C61B6F6CDC3C10D06825080022145D75C402A01394B6C946ADC769838A69717B269BC561EDC12DBBCF1601BB3036242A6173E1A7C24C418687BD48C88A7A7F6B731D55390B5F211A6B8E8624B9063385AA3816';
wwv_flow_imp.g_varchar2_table(190) := 'A34B0DC61FE727B429B34537CEBB49AF6F7A5D59AF5E493FE9348192A2529D39F2441D39EC18E7CC633777F6BC63F49D8773E8BB0F400092D8B967AE9EA55BDEB8D5B50547FDAF4895EBE2F197E8D00193E5110274DEBBA69106CB53704CE6F94EEDDFD2';
wwv_flow_imp.g_varchar2_table(191) := 'B0590F2E7B44B3573EA31ABF4E49073916285954AC63071FA933469FADF2A21237360EE6E2EEBBEF760E5AA23051E6B411B716FBB7F3614ACC05C2B6602A5878CEB40833054DF89B56C1CF3973E6B8EB880445E7CAB440B403134CDC0F01837040838C26';
wwv_flow_imp.g_varchar2_table(192) := '0475627976E892580074885C3B4FB6D82E29A62C342AF68CC90B179C31352A1EA1271250502B0B3301A3433107130BD8D47E6B1A6A3906ECE2D6A0A2F0356C31E28D2647C13410CEC3B645FD746DCAB0EF712C7AD2A2AD8B75DB9BB769F9F6C56E772502';
wwv_flow_imp.g_varchar2_table(193) := '1024722A4996EBD8A1C7E884FD8F53DF92BEAE9168280642B49DE68E8620ABC757CCD4AD6FDE814EE16CFF5EE95EBA68C2C59A36F09016A91E46F470F70522A0B0BC6AB91E5D3953CFAF7FC1F50060AC29D784B458070D1CABF71E70AE06950F55128182';
wwv_flow_imp.g_varchar2_table(194) := 'E7DFF7DD5C7CEC631F733BB3311F343358EF42E637271E348361F1B3440F3401B238F1CDA045715E73C54036EF3C13FFCBAF7FFD6B8743C8FDA26BA33027807BB2FB634EDAEEDF9A80EAE4926DF6B2580074829AD15D9DC9C5D644DD344FBFDDD2160A3E';
wwv_flow_imp.g_varchar2_table(195) := '023CBC4878BAC92208A28D259A1B02D7C2B8A8899811E6D1B77BA246921F80D9603B5073F7C156454B41253527240B8E3261CC011C4F7664828CE66F9AA77FBC79BB36D6AC235540C9808881549C4C685CDFF13A75D4491AD36B8C12C954AB65029D1600';
wwv_flow_imp.g_varchar2_table(196) := 'B99C7304D606B59AB765BE1E5D3C534BB62F51D6CB6214896E2624278EAC3848E78F7BA746558C929FCCB982228403AA3F763F3519A695F1BE2443F1B9D1BED0636F9A03029D5E8AD1B02C7385E6846FE6B4D34E6B34074C838BDECBFC2FD07AD5AA55EE';
wwv_flow_imp.g_varchar2_table(197) := '5ED40044BB0245CFE7DED46B9063806FC69A94B466DA7562C9B678492C003A41CDA8E79ECB2D5B0C894F1F7918D7BCCEA873A891F492C3C187696093DB9A0610B5F989654705064941DFFAD6B75C9E80DDA3A505832312E71363B370258B93DD1FCDE51D';
wwv_flow_imp.g_varchar2_table(198) := 'A79EAAE2A2E2B0E8874422DFD7AB9B5ED52D0BEED4E6DA4DC2034FB150DAC35EA787E0609D34FAED9ADA7792FA96F56B74BA1592B13302805D9F86A31BEB3669CEDAE7F5C4CA2754D5B0DDE1043A6FBB9754D24B69BF8A113A7FE23B7540D948F9CE7FE0';
wwv_flow_imp.g_varchar2_table(199) := '904D54BD7D87FEF6B7BFBA126A341F9B27D46BB22C51E3A3EDB8A263368D8E9FA4759338C51C387DC40F9B8C1295B12EBE16422C9C431300761D6B01EFFFFDF7DFEF3A3D312EF3C720C489F983498096613522662674626976F89258007498643BBBC2D8';
wwv_flow_imp.g_varchar2_table(200) := '0233BB1F159D048F175F7CD179795924540132C98DBDF928B0C997EC16AA79A642A2F6E31D66119264C4A2B4CEB1EC6474B339E9A493DC7D6C71160A00DBEDF989DF006D812C361B33CF46DD24423163FA0CA5D2A8B661CB4E0A7BE66D9DA77B16DFA7D5';
wwv_flow_imp.g_varchar2_table(201) := '3B56AA3A68503247188F7F1915F9691D30608C8E187498C6F43B4095A5FD5C5B707208F220C102AB6FD6F299BA65E16D613E807CD717E09289176A8A3301E8E3E73C06EE674390D1DA9A355AB465899E59355B4B6B964939EE89579FB8BEAF5432ADB1FD';
wwv_flow_imp.g_varchar2_table(202) := 'C6EAECD1A76B74F9FEAEF330D101CF97EA1AEAF5C0830FB85C074BAE616AA11B2617CE5A4C26A34B731A40A32694C9389F0BA617BB380721577667E2F8D01FC76073669C995ED165C5668069416896B0304299A800EB82BA906825A05D176B009D604C2E';
wwv_flow_imp.g_varchar2_table(203) := 'E98A44A0D686664C6CF1E18EC473B9C63AFC00EE691986E62C82F9F12110A36E6ED1B4644A705F0A5260024C025B5C30078B106D02353484F242010F5C95DEF2AAD57A64F9237A61E35C81BE8B84C0E2C7A5877F009C7F20C50FEA75800EEA7BB086F519';
wwv_flow_imp.g_varchar2_table(204) := 'AA5E45BD95CC857903B356CED22D8BEE509634632F5045BA973E30EE224D1E38D9317E46F5DA56BF4D4BB7ADD6C22D6F6AD1F6455A5FBD410DD94C63251F6A3D61C2E26C5A470C3F5CC7EFF7360D2E1BE27209C034E45D783FD09050A329A88A3A418F3C';
wwv_flow_imp.g_varchar2_table(205) := 'F248675BB786FA534837E88D004775477362E78EDE93102DDE7A223D1DD9ADB9AFA52377E4BA4EB242BB2E8B35807691A9FD2715EE001D91E42C32766BBAD892E863CE43160B09242C64CA7AA366445B23B3F1A0FE934074D5555735F14CB38BE180A20A';
wwv_flow_imp.g_varchar2_table(206) := '71C890A12EE927CCDC2345C0D78E866ACD5A395B0FAD78D0E108902DE876DD202D87F1EFD72B952C55B19752DF741F0DEF355CA3078C721D7AE76F7D438F2D7DDC85FAC8FB2F2F2AD3E9A34FD3B0F2815A5DB5468BB72DD7AAED6B5C815043AA4ECA24DD';
wwv_flow_imp.g_varchar2_table(207) := '6EEE927BC278822B31AEF42A75D6B8B37468FFA92A4D974809A0BF924AE412AE33115A174E3AF2EBCDF482D130BDC8ADC7E9D91186331F0FD117927570989AEA6EEA3BF9FFE45418D45A5BF3602641D419D8558EBED6C6160B80F6CC5C07CE8986829A0B';
wwv_flow_imp.g_varchar2_table(208) := 'F3B5762B162D4E2C76792B5D65E1623E103A64373353A0A382C53CD3981534C864715B180BD596B020BB9ADB29D95D1D8847B8E367B30D5A52B74C77BF76AF96ED58AE7AD5851EF7C057C24B2BF072A2C6DF8515531E3083F277E45CB661D6610464E479';
wwv_flow_imp.g_varchar2_table(209) := 'C52E4C97C805CA715ED2736A3DF42A22E9C00B9455C6D9F90E53C4F354962CD384CAF13AEBA05335283D447E92ECC59C925EC2751F6AA8ADD30B735F70C0A730BF9943FCC4E34F188E946868D811DCFFE81CA2AE93F28D6961C957DC9FEC4E342A12BE3A';
wwv_flow_imp.g_varchar2_table(210) := '3217D10DA223D775600976E8D4580074885C7BF66416073B357800A89E78FEF13EE324A298A7AD36D66D8D8EFBA3CE1215A040C9321859886802E6909A3A759A8A8BC3E223B713E31F0C7C6DABDFAA97D7BDAC1737BDAC95D5AB555357E398D9690C04FF';
wwv_flow_imp.g_varchar2_table(211) := '9D599F0F0BF2BB8BE9E5E3FD41980B10B6EF0CED7F97B6930FFCBB339DB331A98A92720D2F1DAE23061FA6F103C6A9A2A862274C982BC795AA6B6BF4C8BF1ED16F7FFB1B9770651E7FCBE387F129A1A6F0C618AD330CC73BB0FB93F0434486F01ECE3B34';
wwv_flow_imp.g_varchar2_table(212) := '0BBCF61DD12CDA9A9FEEF83E1600DD41F5169E69AA278C491619DAC0D0A143DDAEDCD19DA6A5D7E21938B6D8D148608AC6A859CC2428513D473A6A149CC239CFF28D3F36D76FD58A2D2BF5EAD657B574EB4A6DCE6C71683C06078630709D80901C79C7A2';
wwv_flow_imp.g_varchar2_table(213) := '63FCBC8020CDD84A7B1DF048422A55B1FA95F5D3E8BEA33469C0048D2A1BA98A923E0E54C43917F3CE53547CE80243928A0D825234C70186A7E601009068B66567983FEF53729A0574C27F82330F3871CC8BCE68633D68B98502BEB384E9E08BFC474182';
wwv_flow_imp.g_varchar2_table(214) := '75F0DDDB7DBA09005B785113A2A3E6444B0F8591602234018400E12916B7391A4D7DC6C645F3205CE84031FD300C9872B5020907C891CBD66B737693166D59A81737CCD7FAEDEB5593DBA15C22A36CD620C228CC41C34720E45B83A57CE7444C0745EA53';
wwv_flow_imp.g_varchar2_table(215) := 'D447237B8FD0A4A19334AA7C947A25CA952E2E76AEC8A4D7208F2221B4877C7B2F927C28C421A241B4C4222ABC2F02EBFDEF7FBF3EF2918FB87147BFEBEC3A8FAAECFC1E3533F6F6DD3F1600ED66CDAE39D12208F989697CA831E7EE1805F722A4055393';
wwv_flow_imp.g_varchar2_table(216) := '1C846FE1E1871F76F6AD391D790E8B7BFAF4E94E084C99322544CE219897EFE511E602821B9890EFB0FF02D5E6AAB5B97EA3D66F5FA365B5EBB5B57AAB76D457B9101F3B00EDC72B8ACB34A0789886F61AA2A165835459DC5725A952B7CB378605FDAC3C';
wwv_flow_imp.g_varchar2_table(217) := '2FE5ECFC505508711781F426C64F28CD547EC6CAB8D9F969F28903159F4921CD4C83E80C0DA38C6FC2394AABCE0A97CE8C65775F136B00BB9BA27BD1FD58D84087D1330F6F37EA6DA113937835D96F54C511B336E00B6384284334978BD09CD3ABA5F32C';
wwv_flow_imp.g_varchar2_table(218) := 'AFC10420D7A2EE935C45488ECA4A76FDA886C4EF24D160B650488520E809DEF5BD6519C402606F99A93D304E8B4BB3FBC35CB417278E6EBB6514A1083F041A01D97453A74E6D826958A8B1140EB5ADD0A87D1F4DA385F1815AC321FADC73CF3993252A18';
wwv_flow_imp.g_varchar2_table(219) := 'CCB3CF98A8BE0434D56AF7F7E61D790F4C73ABB78C05405753BC873DCFCC0E83B006366CD6AC598D69C3D1D456CC061C6B3826F111200C8852B40757AFB5D736BF04BE09C27938F81E7DF451C7F478DD392C55D7405348EF052F117B1FA71C4C6F495726';
wwv_flow_imp.g_varchar2_table(220) := 'C06241D0F6628B0540DB34EA91670444D131C8A9A9778933CDFB595DE8CD3A0579B8DE922EB516645D6C77C724914E429801A8DB54B1611E10078FA60F1B73C1F484C348753EFAE8A375E8A187BA6425547098339A236F0ECCA88F0366E7DE64DC119520';
wwv_flow_imp.g_varchar2_table(221) := 'F1891D1F0D84F0A7E528449999FB90048536423113199121AE417814A6F7928DE8F00E5C7F807CF8B199D9747D8D8324A5462E7AE1D28F7BE4ACEFFE41C50260F7D3B44BEE98CBFADADCB0498BB62D556DA6260CD637B7B849C4F10207A0D1BFB852A3FA';
wwv_flow_imp.g_varchar2_table(222) := '8E527951B9C3FB079023DA0EDC9C5D38090979913988E3CDCA6AA3DA40F45108039C84E0DEF10FBF017FC39CD61ACD9C8F242061C7C3F8643D12C6E3279F457B1970FFA8E38E67206CA881A02C97C21CABCF6FF6BD83405BEAB66851D51255D5D1AC258C';
wwv_flow_imp.g_varchar2_table(223) := '44344F23C04C3CF52BEBAB037A1DA0DEC53B7307BA6432BBF121B100E846E277F6D144D3B666B6E9BE0577E9A5AAF9AAAB0B2BDF9A3B42E8FD40412AA95EA95E3A7EFF63F5F661C72B954A2BE1BA04598BEE90E1A2F63A4C0AA82965B4564EDC12B34577';
wwv_flow_imp.g_varchar2_table(224) := '6018D34033605C0B9759AD4321908685EBEC1DA23BB9690F4069310E1C910815ABC76FC9E15793A9D1DD8BEED59C75735493A95322E9D0435B1492A429541457E86DC3DEA693479EA0E2647167A767AFBA2E16007BD574D96003ADA85EA91F3DF34BD507';
wwv_flow_imp.g_varchar2_table(225) := '550A2C36D7AC7A4B120DA05C3905898446F61EA94F4CFCB8FA95F4C9A3FAEC14005C1E2D7A4118E020A49A8E1E08261C604A03D1889E1FDDB55B0BBB99B7DF18DD4276D19FD1EB7916A5CFD4D65BA3D5B642A3EBABD7EB472FFC5C5BEBB685F50549BF45';
wwv_flow_imp.g_varchar2_table(226) := '8073B04B53B984325EA0FD2A86EAB353AF506549E55EB9323A3AE858007494623DE07CD716AB6AB1BE3FE7670E322BE7651D7007AA3E20DCFC47EC9C76597C1E45EE185C3144574EBE5C95E57D947439F82DBF104C86138E965598011CECE254C3617F9B';
wwv_flow_imp.g_varchar2_table(227) := '771E5BDE002FA28C6BBF9B666142A37087372D819D1D871E5106C2923C9B73617A52A1498F6E6F4EFF9A1D6B75F59C1FAB3A5713D6373A29106A3C3B21CDC02AC2444A2881104D04EA5BD4575F9AF179F52FEDDF03667ACF0F2116007B9EC6BBFD098502';
wwv_flow_imp.g_varchar2_table(228) := 'C0A9F9C9408920ADB49752E080FBF2A9BBAA6FA2D6EF8A00B0B020D58314C890234F1E3E30D9B4CFB29E8451200E1C8256026BD97C441C4C28105520CF60FCF8F1AE2A91B2647C01E41D983310A6DF55018043309928568A2A42877AEA2B48D0C328E3E0';
wwv_flow_imp.g_varchar2_table(229) := 'D013AE7F592C0076FB62CDDFB0CB9CAADD8D07B0A70818BD6FA100A03A8ED25CCA6527F51FEB7676844090F5347BFD535AB06D51BEC057DA1501604C4B11CC4D37DDD4D8DD88CFC11BC0336F209830EDC9279FEC8033A2BE05220C543A5ADA331807ECEC';
wwv_flow_imp.g_varchar2_table(230) := 'D630032D817B809E041212E7ED0E0D807D7FCA804334B17242BEC2894F7CCD5DFF92E66D7D3D246F2C00F6D8F28D054027481B56E5BFF50805C012FD60CECF5D151E0C964A2575D6FE67E9945127BAB25C1075EB73F5BA6DE1ED7A7AD5B3AE9A8FA32302';
wwv_flow_imp.g_varchar2_table(231) := '00E6430D07CE8C36D71CECE238E48028B776E5260088C9DBAE4D0480BF492536871D3B3BA01DA01D192A2EC5472420592C9F6790F68B5600C6A2C5F7F1010089DEDE8AC8421380D2E477EC7F8A4E1B718ABC543A6FCE34E88E45776AE6AA2714C21605EA';
wwv_flow_imp.g_varchar2_table(232) := '53D4575F9CF1390D68C1046829DCDA89E9ED1197C426408F9886E607D1A20008022DDFB1443F78F6975290552EF0954EA474CEE8331D6827CE3EE2FCB5418D6E5B70A79E5CF574A7050091001300B69303440A1347BBE6D03EDB0400E711AFA701273D08';
wwv_flow_imp.g_varchar2_table(233) := '8C6951FD014FE55AC32744034000581724F33B90644478D00400A01E680A9D1500692FA153469DAAD3479FEA9090F180E6FC9C6E5D70BB66AE98E54A94695C8200F8D28CCFB5E803880540E71826D6003A41B7D0EB1E0275151E4B772CD20F9EF9A5BC20';
wwv_flow_imp.g_varchar2_table(234) := 'EBCE40E53E6BD499A106408C1F01E0D7E8D60577EAA9D59D13003C1F751C0140018EA9ED5D2500D00042ED26A5638E39C6355A6DAD496A9446851A405122A153469EAAD3469DA25412C412A0447DDDBAE036CD5CF17898306402607ACB0280A9F84F1202';
wwv_flow_imp.g_varchar2_table(235) := 'B106D009C6EC8A4B40E3CDF861CBB1E6525A57ED58A11F3F7FADC3C5834992C9944E1F719A4E1C79BC43D7A1275FBD6A74E7C27BF4CC9A399DD200D8A5C10CA05F5DB4C145570A007B7F3404907D012D694FB14FA10048253C9D38E2649D3AF224D758C4';
wwv_flow_imp.g_varchar2_table(236) := '6900414E772EFEA79E58F594A39709804F4FBD4CFD4B9A6FD14D9BB214ADD3F24D53BB622DECC967C402604F52B783F70600D3F3035565AB74DFD207B464FBF2460FBA43DC89F804E8C5B761C7A6106127085CFA6AEF92DE2E9985DD9F7DCA0FB2DA5657';
wwv_flow_imp.g_varchar2_table(237) := 'A5EA6C4DA3137048F9107D66F2E5EA5BD15B5E3E0C18DDD14CCDC7734FBF03D0836881150DEF5180033A4E541DDF9D260050DA64FB59F21142809D1FE723305C94275B2E424B245E53BD56573F77B56A33756A50A022CF5345512FF52AEAD5E4124049AB';
wwv_flow_imp.g_varchar2_table(238) := 'EBAB1B1329A1E3A0B2814AB9E6276F3D4ABD628D1B3E45EFE8F7B6F0FD39AD85733B38FDDD727A2C00BA85EC2DD8FC7EA01AAF5677BC7E8F1E59F548B85335E6B84716A42B91A7663E9FFFEE107B23F7C4074037DD7C669F6BC3953F70027E6AF2E5EA5F';
wwv_flow_imp.g_varchar2_table(239) := 'DE47097204222AAD9D8FB38E18FFD7BEF6B546C41DCBEDA713114C78CE39E7EC310100C39BB39050A3850FF12BA00100654E5A70B400A890A20880AB9EFB91EA73750EE63CE587A6948BFBE7C9E1E897072A6B6265D179A4A5048920EC4170F184F7E8C8';
wwv_flow_imp.g_varchar2_table(240) := 'A147AAC8033AADCB2CDCDDBE5A6301B0DB49DAF91BFA7EA0AD0D9BF4DBB97FD0B21D8B94CBEF2C216C5EB8AB87073B7EF87B98E9BB93C159D034D60AFBEE85574497E77E15FB3B01D0BBBC5C2962DFEECBFCBD82C0A10381B6C3CEBF64C992C6146304C0';
wwv_flow_imp.g_varchar2_table(241) := 'A04183F4C10F7ED0016D16D6DDEF2E0DC0FC0C840071FA113624B2402481C801BB2E42006CFE68279D42AAAFAD5EA7AB9FFB99B667B7015BA254BE262AEC6918BE2F7472B2B1807FD1C45A626AAECD25733AACDF0C7D70E2452A4996366D92D8F9E9EF96';
wwv_flow_imp.g_varchar2_table(242) := '2B6301D02D646FFEA184EAB6D46DD6CF5FBA4E1BB6AF56CE638192A99607CF8C5C96AF710B3F710BB8A91068FA492810B05F670C99A68B0E385F45A545AE40C8E1F4B9AF3D579D073A10C8C1A4FE46EBF3A9F4A3EE1E87A0353989DAC1BB4B00981662D8';
wwv_flow_imp.g_varchar2_table(243) := '857FF8C31F5C79B0A1189BEA4F8765D093F9D95C76E096BAADFAC32B7FD2C2AA37C124765066612D501E65A8517C867FBB9A083394A2DA94FB9A0FD0AAC22F988EC9FDA7E823932E5171B2CC646D0F5A49ED1F4A2C00DA4FAB3D7E263B9213002F5EAB75';
wwv_flow_imp.g_varchar2_table(244) := 'DBD7BA72DD14CD2F12252A4D9534D9A8D2594F9B54A584EFB9C69E9E9F5159B242BDBC72D525C3C61A1C303979EE30EBFEFD46EA94034ED4C8F2114DFAD9731E363FA02038DAB0F9ED8021B1BF61B64B2EB92484066BA621E8EE1200512223048804D0CD';
wwv_flow_imp.g_varchar2_table(245) := '98D460C662F903641802650E243879098598047427A6D3F1A3CB1FD3BA6D1B9549645D6E841DC5D922511F5415D46A47B65A299C7A9ED31554E620CAC2DEC7ECF829BA27D76F5590E47A60D0929A3C70A23E3AE9432A4E95ECF175B1271F100B803D49DD';
wwv_flow_imp.g_varchar2_table(246) := '0EDEBB8900A85AE35A5FC1C6E3FA8CD5C7277F305437F33BD7A2FAA5FAE933D72891F35DD79EE2444AEF38F074BD7DC4DB54E217350A0BEEE92768AC29A5836287B24BA2901D3019CC4F3B336C6BD4FE68E61E363FC93C406E59214E73AFB5270480D362';
wwv_flow_imp.g_varchar2_table(247) := 'F25D7AE8598039804F00738071F3F3F0C30F775582B45D6FD28509CD299B737D0932898C6B779E682C070E54976A50900D74D7A2FB356DA3E9160000108F494441546BE56312C0A309CF3951BF30E54AF52FB15A80409BFC8DBA66F6AFB529BB39542302';
wwv_flow_imp.g_varchar2_table(248) := '4F93074ED047277D381600ED5CE35DE625D99B5381A302606DD59A70AD253C8D2F1DABCB0EFB884A523B4B545754ADD4F7E6FC54C95C8372494FE95491CE1E79BA4E1919F60CDCB98587FB58088A11752A86CC45A80F9B9F501F3DF5A265C5007ED0D198';
wwv_flow_imp.g_varchar2_table(249) := '7FD68DA825949D3D29001813D981A0182304484EB212627E9A63905A82A81020FFDF30001C806993C59A502697D1AD8BEFD4CC958F0A358AA2A0BEC57DF5C5E957AA7F69580D08E8E9E6EC36FDF8A99F6ABDBF51891CD44CC402A09D8C6FA7C502A01D04';
wwv_flow_imp.g_varchar2_table(250) := '8B0A8035DBD7B8C5EB27339AD86BB22E9BFA0995A4C2661D68050BAB17EA27B37FA9C06F50E0A5944EA574F6A8D375F2A8139550AAC962B7069C7933B731A487CD0FE61E8CC5CEDF38599EE7C03FC1D6C7E117C5D76FE9352806425080E58760A165D6A7';
wwv_flow_imp.g_varchar2_table(251) := '3EF529770FB3D11136B4D302CF1F67236609DE7CBA1703EC69B5FF85CF308D84B0208EC13BEEB8C39529473501CC011AA0524968CF33D749E82269BA04A135EDD06F5F78A7662E9BE57A1942B47EC5FDF585E99FD780D2BE8DB4FEFFED9D6B8C55D515C7';
wwv_flow_imp.g_varchar2_table(252) := 'D71E66505063B135D4F80069D458F8A0A66DD040F8A0B50F132190965682D60FD036A9504CD4B626B6C6A4C147A8B58D5A4B0C4449DBB435D28194DADAD8A0A1D4446C499587C12806AD280FB151869939BDBF7DCFBA9EB99D0B173D779FBD67D6216460';
wwv_flow_imp.g_varchar2_table(253) := '72EFD9FBFCCF5EFFBDF67AEE3DF2A6DCF7CCCFE48D81B7FC9180C421D300DA58D0858F1801B48157B30DC0AFDBAE7EF9F429D364F1C5D7CB8963EAE74D04FAE5775F967BFFF1A01CC9DEE7A42F3DDD5D792420812EC3FBB055A5E627BBEA962D5B7C68EE';
wwv_flow_imp.g_varchar2_table(254) := '8B2FBEE885560B7520BC081369C01C01DAB9A8DF77F3CD37FB0EB80832B50257AC58E18D746A2CE4FCCE0ECE984A00B367CFF66E45C639568EBFDA04A80BA024E27B16E4DD9369D649CBF32953A6B424137D962C1BF01D8CE95EFCB7579FF60155F43DF8';
wwv_flow_imp.g_varchar2_table(255) := 'D8D8D3E4A64BD000EA4700BC2AFB06DE91BB9F5E216F656FD5DB9B791B801D01DA5917A6011C074A438E00680018A606339974CA64997BFE6C19DBA85293C92BFFDD25BF7DA157FAA5CF07FEF4F48C699B00D4AF8E1061F4D352DB4C959D9FDAFA74D739';
wwv_flow_imp.g_varchar2_table(256) := '9E6E4408374482C59EA8418A88703ED7EE39F5B066F1D67CDA9251F493E83E3E472250D1A3D0EA98A19A006E413C151806B99FFE1E2D824EC7D42A68A54D0C4B003E14B81E7139AE67BC5C7BE1427F1450C23C387050D6FCF3377230DB2F6E80C222DD46';
wwv_flow_imp.g_varchar2_table(257) := '00C7B1AEEB441AE81A293680BA17A05EECB367CC5839A90B77D30730128E72A8EF803FB762DC6E5703D0458DFAFFE8A38F7AF51FC31ABB2B197CF8F949EBD59E7AAD84B1F975AAFF5E73FDB1D20F677350ED83CF21F41816DB117EFD9E860653B09416EA';
wwv_flow_imp.g_varchar2_table(258) := '6BD7AE6DE42810A78076415BB36251D2E1961E027F24EB97DFBF4432D0C6FA4772923A9916E7B917C02FDDC14C0EBE7F4006BD6255AFB3801760911901DB966A238036A042B5DFF7DE5EF9F9F30FC99E437BA4DFBB9DA8DFE9C491AE5AB87011FAC216D4';
wwv_flow_imp.g_varchar2_table(259) := 'F9CDC64A57B7C8D5E77C593E3FE58AB68E004A00B8D8D4C74E314F048854DC2116F536E6DEEA23BAF3ABD1AEA112E6FDFEFCF30DE3561C5E68EB350BF93C1A075D8EB12910B908314C9C38D16B00575E79E53163F5A9A44497E3C7B7F7CA5F5F7FAABE43';
wwv_flow_imp.g_varchar2_table(260) := '0DFAFAC0FF3734BF53A72015960EBB7EF9DCE917CB75D3AE95715D7407FE080055FC55730356FC023E183E938CFCFBC3EFC803CFFF5276F6BF2463FAC6D63725BFE8874E54058BDF722E1DDBDD23F3CE9D233326CDF2E9AEADD6A47E8F1DF891471EF13E';
wwv_flow_imp.g_varchar2_table(261) := '7655A309F6C11B402A6E5904D0297839F75395080250ADA3590338DAD8A4029346FD879DEBE489D7FF2283FD944CC7E6520FBE1A1A5B5DB8D38013D7E3E4D28F7F56BE326DAE8CEF3AA96D02EB14161FE5BE46001F05BD92BF8B61EA4896C933AF3C2D8F';
wwv_flow_imp.g_varchar2_table(262) := 'ED5A4B784EDE2FEFE8030D7675C959E326C935D3E6C9E493CE1E5203B0F99B460075440609B0CAC6C8BFF66E95B5DB1F93B7FBDE96812E8AABD483815AD4629123DDFD72AA8C97AF4EBD462E3AED22E9E6A850570F92BC8C00227A6DA89AFCE9EB3B2CCF';
wwv_flow_imp.g_varchar2_table(263) := 'EFFFB7E0EB273CB81E9A3E7C7520A67F6AD778997AFA5439FB9433EBB5008EA2931E8D003802A0011455E876D5F3D030168F001F4603A0402891D0FD8303B27DDF4ED9B17F971C1EEC6B84FBB642FB84AE13E58209E7CA7913CE971EDF64258F0D0E0D40';
wwv_flow_imp.g_varchar2_table(264) := '49E31901940464D9B741F0BDF0376EDC9A003014E2FA6B4758D5628ED0AC59B3C61BD270C971D152FB8E3BEEF004E08F163EAB30AE03AE062A7104C006408420F60C2E029720306A111E2B5DB8F8BE8662DD1A67BE03D684096BA870D9EF3DF4FD8C0042';
wwv_flow_imp.g_varchar2_table(265) := '235EF178108036E8188E005403500288A9F0453151887F5398B46803500D062FC0F11040C5AFA4D2E147220190C932A95254231E1CE167F7A7F5D7EAD5AB65FDFAF58D965C04002D5CB850E6CD9BD768BD159B31100D801D9F6C458C801427E53880C093';
wwv_flow_imp.g_varchar2_table(266) := 'A8347FFE7C1F5B3079F2E4B6CB8745FCBA3A3DB5579C73933B3D485D730A746559B64144BE1068B86486D1DD93209D75EBD60969B634E56CBE10242AEE2C5EBC5866CE9CE9437AAB3E06A8EB0FE167FEF41F58B972A5CF5A54F762B15518958629464A49';
wwv_flow_imp.g_varchar2_table(267) := '72E6EF17606447994816CE9F9C735F0C3197900470AF882C0DF150A98CA1E7664A6DAD5AB5CAFF25A1A6E84A54215181A2C9E78D37DEE84B7369E9AFAA8448C3947157E2BA44F889062C5E3A37250BEC014B962CF1DA8C761E4AE57D059CE79DCEB9EF85';
wwv_flow_imp.g_varchar2_table(268) := '182F24017CAB56FEFE81100F95CA182A404F3EF9A48F9567E727C71F62E08C5F2402EDFEC3EF29FE894D802CBB6385D676120BB55B50A39040A5DDBB777BA12EA62DABE017038E68248A5193D6E5EDB614EBE4734478EFEB6B47805521E6159200A6D78E';
wwv_flow_imp.g_varchar2_table(269) := '009B423C540A63A870934EBB7CF9727F66464834938EF05FCECBECAE7BF6ECF13F117ECED584F3DE70C30DB268D1A2A3D602E8240E2AE4CC0B8B3F863FE647F41FCF4012D119679CE1FF4F19311A9928E1A1B9307F3212359DB993734DF0DE97D68E007F';
wwv_flow_imp.g_varchar2_table(270) := '0F31EF90044016C750FD30C413463C063B3DCD3D110472FE555DE6ACBC74E9529FB187C053029CDAFB54E1E142D0B0A8531F1041ABC223A0048070936E8CF1523517880B01BFECB2CB1A158DEEBFFF7E2133518F3DF413B8E79E7B7C98705547988897C6';
wwv_flow_imp.g_varchar2_table(271) := '04E7DC8110F30B46003C4C96656FD0052BC483A5300642B475EB565FD28B3C7A040195188B3F0244E20F178273DB6DB7F94C3DADB8831AFDF0C30FFB82A055091073C1E03767CE1C3F7F2E767FFE7FEBADB7365296993F2A3F750DD108202C48029B0129';
wwv_flow_imp.g_varchar2_table(272) := 'C2760D41E03FCEB94F86C22434013C2522B3423D5CECE320401000C53D340F1F1B00597FFC45D5E73318062180DEDEDE463F3FBAF5E22E44CDAEE252759EDE8418F4347109025BB06081DC72CB2D7EFE9013C71CE2023443906722D51802A064985D4310';
wwv_flow_imp.g_varchar2_table(273) := '08E60160D4D004F0A0887CD35E781D010461DBB66D3ED517379AEEEEB8F9A803C8EEC8EF9E7BEE39BF83A2667324D09A7BE4DE1364538506A0360C0C971428210D588F27A8FED403A4AE00F3A72C19F3E759F57BB41DE758A0BD076D4D3410F8694DFDFF';
wwv_flow_imp.g_varchar2_table(274) := '6E283C4213C0D744E457A11E2EF671100ED4632AE86EDCB8B121C818C668BA0911B0B36ED8B0C1570952E14185A61438EE348C85551200BB3BF347BDD79A00ECFCD3A74FF7FE7EBC17C4074062DA7894F953D864D9B265326102A6A1A0CB30F665F175E7';
wwv_flow_imp.g_varchar2_table(275) := 'DCAF434D3228F2599651C70A4B56BD88DE28BF106884020B3A65BA1026F50220D458CBF90CE766AFAEE54133A8CF1C0968CD5D6568ADCE9FAEC277DD7597B7032849F1132240635117A6BA0439B6A0214010ED36151D254BA54F443EE19C3B14EA798312';
wwv_flow_imp.g_varchar2_table(276) := '000F9565D9E322323BD403C63A8E0A0AC2F1DA6BAF7915192D006157DFBEAAFBAA5AF359B403764FBC04ECFE552606A9451FEF041E09C29775CEC52AC6EA3160AECC1F9B01C14C9439AB328E21C2B5B1D6393727E4BCAA20003B06E46FB8B85BEED8B1C3';
wwv_flow_imp.g_varchar2_table(277) := '0BD1B3CF3EEB63EA75B7CC49D36B0684CFD2FB0F0F41F1EC5FC5114017A90A373900B8F5283ECAB145037F8A21C108FFE5975FEE8F0C782F94D8422EF8C8C70AAAFE7BAD323420760C181E717677027EA8CEBB69D326C1BAAE0D38D929E9B2336BD62C9F';
wwv_flow_imp.g_varchar2_table(278) := '124C39F02A7CFFADD68A4604620864FE9B376F16084D5D9BC42A60F49B31638677116A5DC3D06B2FF2F182ABFF951040BEA3596250D36AD49D149B0075F6F1AF133DC70E4A49303C02ECFA680231AACDEA1664FE040711E0445E0044C5FCF1FBB3EB37B7';
wwv_flow_imp.g_varchar2_table(279) := '0A8B5C28434E2FA8FB4F1F2CB806901380E505B4200035F6A940A991AF9817101B0134E72CA85D42BD027A44693EAA148F3921252DD2B182C5FF179FBF2A02207A859CD74AC68F7401D8B4462F0295A8FF951D01722D806CA7EB46EF3BB72737041A08AC';
wwv_flow_imp.g_varchar2_table(280) := '76CE7DA30A3C2ADB81B32C3B57445E1091B4FB3857F1D66CCC918400851F2FAC11C007BDDF033E5D6504906B01562424E0CBB6A1A2442068E86F33025513009981DBA9A01DE5ABB14919029D45E01D1139CF39F7666787697DF74A0920D7027E540B10FC';
wwv_flow_imp.g_varchar2_table(281) := '615500D8B886408508DC5EF38CB0FE2BBB622000767FB400AB1350D932B0812B40805D9FDD1F2DA0B2AB7202C8B500D21F7F52190A36B021101E816FD70A7F901E5FE9150B01F488084DF7BE54291A36B8211006813F8BC855CEB97A9A6785571404906B';
wwv_flow_imp.g_varchar2_table(282) := '011C0536D7EA055C50211E36B421D06904768AC867AA56FDF521A321809C04107E48C0BC029D5E8676FF2A10E0BC8FF04302515C5111404E021C03D651FC360A846C1286403908A0EEA3F6A3FE477345470039099851309A256213290981288C7ECDCF12';
wwv_flow_imp.g_varchar2_table(283) := '2501E4246005444B5A79769BCA11F885738E0CD8E8AE9809608C88DC2D22CBA243CD266408B4874056AB7FF96302DD9C7303ED7D25ECA7A225008521CBB2F922F290885050D42E4320150428EC39DF39F7C798271C3D01E4C701BC03C409988B30E6D564';
wwv_flow_imp.g_varchar2_table(284) := '735304B68AC8BC98ACFDAD5E4D12049093001A009A001A815D8640AC08FC4E44AE75CEBD17EB048BF34A86000A4782B9F9B9CAB4811456D8E89923BBFE0F9C73B8B093B99223805C1BE8CEAB09DD2E22672683B64D742422B0A756DA8E75B8D2393798DA';
wwv_flow_imp.g_varchar2_table(285) := '03264900056D609C887C4744BE2F22135203DFE69B3402B4BABF5344EE4B45DD1F0EEDA409A0400408FF4D22420011A4609721D0290438DBDF87F03BE72081A4AF11410005222087E02A11A1BD1221C52727FD766CF2B120F0AE88D0CB82B676BDB124F2';
wwv_flow_imp.g_varchar2_table(286) := '9401CE882280222059969D202257E46470B588D47B51D96508B48700053B7A73A17FC23947E9EE11778D5802682203128B3E558B25B858442EC97FF2EFD347DC1BB507FA3008D0B17A4BD3DF975234EA1DEFC38F0A0268054A96656715C84089E19CE305';
wwv_flow_imp.g_varchar2_table(287) := 'D13E9F1402AF360BBB736E77524F50E2644735019488A3DDCA104812012380245F9B4DDA1028070123807270B4BB18024922600490E46BB3491B02E5206004500E8E7617432049048C00927C6D366943A01C048C00CAC1D1EE6208248980114092AFCD26';
wwv_flow_imp.g_varchar2_table(288) := '6D0894838011403938DA5D0C812411300248F2B5D9A40D8172103002280747BB8B21902402460049BE369BB421500E024600E5E0687731049244C00820C9D766933604CA41C008A01C1CED2E86409208180124F9DA6CD28640390818019483A3DDC51048';
wwv_flow_imp.g_varchar2_table(289) := '12012380245F9B4DDA1028070123807270B4BB18024922600490E46BB3491B02E5206004500E8E7617432049048C00927C6D366943A01C048C00CAC1D1EE6208248980114092AFCD266D0894838011403938DA5D0C812411300248F2B5D9A40D817210F8';
wwv_flow_imp.g_varchar2_table(290) := '1FE6239EC1CCAA4F970000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7939502588333967)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEC7D079C5D7595FFF796F7DECCA44C7A4222250D84D00443E82875218080A008B6B5AD6B5FDDB5FEEDBAAB1F';
wwv_flow_imp.g_varchar2_table(2) := 'D7B6F6B5D2C48EA880020222B202A10BE98D96407A9BF26EFB7FBEE7BEF3F2CB6332EF85992433F3CEC53833EFDD7ACEBDF77C4FFB1E2FCBB20CB698044C022601938049C024D05412F00C003495BEED624D022601938049C0242012300060378249C024';
wwv_flow_imp.g_varchar2_table(3) := '6012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C02460';
wwv_flow_imp.g_varchar2_table(4) := '12300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012';
wwv_flow_imp.g_varchar2_table(5) := '300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C024601230';
wwv_flow_imp.g_varchar2_table(6) := '0998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C02460123009';
wwv_flow_imp.g_varchar2_table(7) := '98049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998';
wwv_flow_imp.g_varchar2_table(8) := '049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C024601230099804';
wwv_flow_imp.g_varchar2_table(9) := '9A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A';
wwv_flow_imp.g_varchar2_table(10) := '500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A50';
wwv_flow_imp.g_varchar2_table(11) := '0206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A5002';
wwv_flow_imp.g_varchar2_table(12) := '06009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206009A50E976C92601938049C0246012300060F78049C0246012300998049A500206';
wwv_flow_imp.g_varchar2_table(13) := '009A50E9CD70C95996C1F3BC9D5E6A5FBFD71DD7DB4F33C87A6F5CA32BF7DADF793EB5BAE73A3D7D5E7BEEBA5E23EBEE8DEBB6639A04FA53020600FA539AB6AF012301F785DFD3CB5F8DC6CEBEE3E7BEEFEF703DAE71D02FD23495F57A031B03462843E0';
wwv_flow_imp.g_varchar2_table(14) := '44A803D503E54EF9F35F1004A203FECE85DFB9BAE5E7AA53AE57AB4BD59FAEC7BF6BF53F04C467976012D841020600EC8618B2125063E11A67F7F75AEFBDA7BFF533DD8E7F274952F526CDF8EFD9DB278A2231F461188AB1E7DFC562514EC2D515BF533D';
wwv_flow_imp.g_varchar2_table(15) := '150A85E70139FD8EFBB1C524D0AC123000D0AC9A6FC2EB566F9106841EA36BF0D560A8715183A23F755DF50A2DF4BFF76EA05A2F9F7F97CB65D1290DBAAB239EA50BDEF4EFDA089102023792C075F8B72D2681A12A0103004355B34D7E5D6AECF545CF17';
wwv_flow_imp.g_varchar2_table(16) := 'B91B16E6E71ABEEFC960A8A7AF06A1162CA878DDB072938B7C8F5D3E8DB51A671A77FECD9FFCC78800F54920C075E238967F8C02B8BA7481810BF67A8B10EDB10BB4039904F690040C00EC2141DB61F6AC04D44B748FAAC65A8D3B8D44BDDCBD0208050C';
wwv_flow_imp.g_varchar2_table(17) := '6EF480FBB61A803DAB5737FD526BACD5F82B1868C47BE7FEA843D56BBDFB61CF5EAD1DCD24B07B25600060F7CAD7F6BE9724E016F9A9C748CF508D0243C66BD7AE957FEBD6ADC3962D5BC453E43A2D2D2D183B76ACFC1B3F7E3C860F1F2E06423D4A0512';
wwv_flow_imp.g_varchar2_table(18) := 'EA659AD1D8734A76C3FFEE5135E2A3397DEA77CD9A35A2DFCD9B37CBBF8E8E0ED12FF5397AF468F9376AD428F9A9DBB9F78A1501EE39BDDA91F68E040C00EC1DB9DB51F79004DCEA6F7A88AB57AFC692254BB072E54A2C5CB810CF3DF71C366CD820C641';
wwv_flow_imp.g_varchar2_table(19) := '43C9A55209EDEDED1833660CA64E9D8AE9D3A7CBBFFDF7DF1F23468C10A0C08506C28CC41E52640F875140A6751BD4DFAA55ABB07CF9722C5BB60C8B172FC6934F3E89AD5BB7A2BBBB1B9D9D9DB217023CEA91006FBFFDF6C381071E283FF7DD775FD139';
wwv_flow_imp.g_varchar2_table(20) := '41A246054CBF7B4FBF76E4DD2F010300BB5FC67684BD24018D02D0F03FFBECB378FCF1C771D75D77E1FEFBEFC7534F3D251E223D4535205A18C8F5755B028149932661D6AC5938FEF8E3317BF66C3116C3860DDBA1CD6C2F5D62531ED64DCB2818A3A7BF';
wwv_flow_imp.g_varchar2_table(21) := '60C102DC7DF7DD98376F1E56AC58818D1B378AF1A711D74E018204FEE376D437BDFF09132608D09B33678EE898604FA33E06009AF2166B9A8B3600D034AA1E9A17EAB6FAB9D5DEFA3B43FB8F3DF6186EBBED36F9F7E8A38F8A37C817FFCE72C4B5AD7F9B';
wwv_flow_imp.g_varchar2_table(22) := '366D926D5EF4A217E194534EC159679D25C662E2C48955A1EE4A7BE1D0D444FF5E959BC2E19E5DF9BA511D023846746EB8E106FCF9CF7FC6A2458BC4D367D11F8D3E0DB8E6F93562E3F200F0388CFE1010509F2F7DE94B71FAE9A7E384134E90888F720D';
wwv_flow_imp.g_varchar2_table(23) := 'B840C03A40FA57D7B6B7BD270103007B4FF676E47E90807AEB34E61ABAE50B9FBF777575E18F7FFC237EFAD39F8AD7EFB68AD138F0A55F9BF375FBFCB59A5CFBCD75BFFBECB30F2EBAE822BCE635AF017F57E3E092C928914C4F00A51F2E7B48EFC2CDF3';
wwv_flow_imp.g_varchar2_table(24) := '6B5A463B385C6040EFFE1FFFF807BEFDED6FE32F7FF98B4464D4F05340D4B716692AD8D37D6BA1A01677EAFDB07EFD7A49055C72C92578D5AB5E85030E38A01A215220E2A6070C0C0CE95B71C85F9C018021AFE2A177813B7BE9D2A0D3E8B7B5B5C9CF6B';
wwv_flow_imp.g_varchar2_table(25) := 'AFBD56FE3134CC6D5A5B5B051868185843FE1A52AE8D20F06FB7425C8D0AA301CC159F7DF6D978CB5BDE2239640522CC2F9BD17F61F75C6F5E3FF7A8E17EEA853AF8EB5FFF8ACF7DEE7392CAE167F4E4D5BBA7DE58D8A7BC00AA73B75E40DB03350DC4B4';
wwv_flow_imp.g_varchar2_table(26) := '0ED7E3DFDCEEB8E38EC33BDEF10E890A70D919DBA01581BE307DDB567B5F020600F6BE0EEC0C5E80046A8DB65681D353A4F1BFFAEAABC5F36748985E210BFBD4DBE74F65F073BD76D7B3ABFD5CC3C7EAED332DC00AF2B973E7E2CD6F7EB3D408F414AAB6';
wwv_flow_imp.g_varchar2_table(27) := '1C72E3CAAD054E2ED0D3C88C46766EBAE9267CED6B5F93223F0566D4B31A7C2D10549D2A30D063701BAECB6D08DEF84FB72730E0DF04044C05BCEB5DEFC2A1871E5ABD10EE83DBF23EE27A049CB6980406A3040C000C46ADD939EF5080E75683F3E57DCB';
wwv_flow_imp.g_varchar2_table(28) := '2DB7E07FFEE77FC4F8F3C5CF173B0D81B6F9E9CBDF259071FBFCD5686BF85881838202EE8F9FD10B250860A8F8B5AF7D2DA64D9BB603BBA0A969D725E032F2A9F1AEDD0B6B39BEF5AD6F49C11FABF955779AA2D17481CBFCA8217F4DCDE83ABC275C90A0';
wwv_flow_imp.g_varchar2_table(29) := 'C7A281D708C119679C818F7EF4A35223A0F7866EC7F51AE11BD87549D8162681DD2F010300BB5FC676847E96805B04E61674D1F37FE49147F0D5AF7E15F7DC734FB54D8F215DF5DAF4543415A05E7B6F0040A30D5C573D51F51619766671E01BDFF84601';
wwv_flow_imp.g_varchar2_table(30) := '022C2ED450B5F1CCEFBAE2293B25E551C3EC16653EF4D043F8DFFFFD5FFCE94F7FAAEE9C5E38F5499D707BAEEFB23EBA9199DA7B4741616D3A48EF076E3B6EDC38D1ED5BDFFA5649FDA8F15776494B01ECBA9E6D8B812101030003430F7616BB20815A2E';
wwv_flow_imp.g_varchar2_table(31) := '787DC1B307FCBBDFFD2EAEBCF24A09CDB2954B0BFDD44BE3DFEADDA961A97D91EB5C000D172BE10FFFD64243AEC37C3F010081C749279D24A1E297BFFCE55523D408D3E02E5C7653ACDA130050FD92CCE77BDFFB1EAEBAEA2AB0588FFAA59E297FA6785C';
wwv_flow_imp.g_varchar2_table(32) := 'A0E00ACB05700AE2DC14927B6F687448D7E34F461608F23EFEF18F8B9E792C3D277E573B6CA82914651739242460006048A8B1F92E425FF61AC6A741FEDBDFFE864F7EF2934200C397B4E66935ECABDE212BBED92AC69FDA135E5B58480F523D4AFED434';
wwv_flow_imp.g_varchar2_table(33) := '8382052D14E3716980980AB8FCF2CBF19EF7BC0723478EAC569F379F66FA76C56E95BE7AF2DC2375F7F7BFFF1D5FFAD29770DF7DF749DEDDED10A0AED9F249BD53DFFCCE6505D4224D0DD9BB057D6EBD078FA58C91BA1FEA97608F9D1F04796C0FD4F354';
wwv_flow_imp.g_varchar2_table(34) := '50D8B7ABB6AD4D027B47020600F68EDCEDA87D94807A709AA76731180BFF7EF0831F5487C1B86D7EEE8B9DBF733B1A010DE7D2C86BAD80B68F1120B80649EB085C4F93DB68053AABC53FF0810FE0C4134FACF6ADF7945FEEE3A537C5E69ABFD7E80BBD7F';
wwv_flow_imp.g_varchar2_table(35) := 'B6FB5D73CD3542EB4B00B06DDB36D1218BF5588F413DB8397DB73D535336DAD2A960503D7D35FA9AE271DB0795478004419FF9CC6770CC31C7C8716B0B499B42317691434A02060086943A9BE762DC4A7E5E3519FEBEF295AF8897A85EA01A79050BEAD1';
wwv_flow_imp.g_varchar2_table(36) := 'D3FBA701A1A19F3C79325EFCE2174B2B1F79FFF9DDD2A54B85269891042E5C8F8BB6F869B1999B3FA631E2F6AF7BDDEBF0EE77BFBB1A26D6FCB47503ECDABDA969180565A4F6FDF0873F8C071E78400CAF1A7AEA843226006041A01B11A2DE48F77BF0C1';
wwv_flow_imp.g_varchar2_table(37) := '07E390430EA9EAF7E9A79F16564812082940D308814BEFAC29209E03A3003CE6FBDFFF7E29F8243BA416875AADC7AEE9D6D61E381230003070746167B20B127001008DEF6F7EF31B0100E4F6579A5E2DF85200A064416A308E3EFA68BCE94D6F927E6F1A';
wwv_flow_imp.g_varchar2_table(38) := '0F2D1CA331E1AC801FFFF8C7D251404A591D27ABA7A81EAA52CC6AEEFAE4934FC67FFDD77F552BC60D00EC82522B4596DCC22DACA33EFEF0873F48F89FC65B5B3A5DB22595BFD65D503F24F121203BF3CC33A5385301218101A9827FF7BBDF49AB28EB38';
wwv_flow_imp.g_varchar2_table(39) := '1408D48E7FD688003924187938EDB4D324CA73E491475AC7C7AEA9D6D61E8012300030009562A7D4980494CF9DC57F575C7105BEFFFDEF8B57A6BDDD6E0BA0EB19F2654F4E7FE6EB19B62760A8A5F2E5BE392F8015E734140401DAEFADC6460D8AE68A69';
wwv_flow_imp.g_varchar2_table(40) := 'EC6918588770C41147540B06355CDCD855D95A6ED11E654B83FDF5AF7F5D8A3B39B8895EBF9B837759FDB82DBD75EAE1ED6F7F3B5EF6B29709B8E3422041C0467DF07782895B6FBD15DFF8C6376466807AFA2E6B200105F5CA6312003092C06240167B6A';
wwv_flow_imp.g_varchar2_table(41) := '9AC034661218AC123000305835D7C4E7AD39782DC49B3F7FBEE4877FF18B5F48019EB67069211FD7D3A230FE642BD7073FF8419C73CE3952495E9BA7D7ED690848214CC2993BEFBC530C84E699E911BA1D06DC869E24BD4E7A88E79D779E14A1A9976AAD';
wwv_flow_imp.g_varchar2_table(42) := '628DDFB01A7A57C34E834EB0C6FE7F35E2DC9BDBD24759F36FA670D8B647CF9F00403B41B4CD4F790674DF4C2D7CF6B39FC5EDB7DF2E4C91CA0AA820408B3FA97BEA97C3A13EFDE94F4B41A0B62B367E65B6A649606049C000C0C0D2879D4D031250CF4B';
wwv_flow_imp.g_varchar2_table(43) := '73F1ECF967EFFFCD37DF2C2F7F0DBBAB27E9E6EAB9FBA38E3A4AC2C99CEAE712CFE8A1DD5E7F1A04920A31C240EF931EA4B2BF6907811A791A081EFF6D6F7B9BFC53563A33FE0D28B512FE7719FBB46E829E373B2C38C8898B16DFB900400D3C75C0563D';
wwv_flow_imp.g_varchar2_table(44) := 'D661B01893BAE23E354FAFA91BEE87DBB073E0F7BFFFBDA46DB8ADCB0FA18380B88DCBFC4752A0D7BFFEF51239AA4D573476A5B69649606048C000C0C0D0839DC52E48A0D643A477CEFC3F0B01E9DDEBD01F351034003AEC85BF93D4852F71F5FEB5DDCC';
wwv_flow_imp.g_varchar2_table(45) := '353E6E7B17EB0BBEF9CD6F4A6120B7512FD10D556B5899E1661689FDFBBFFF7BB5525C2FCD80407D25AB6ED5D013647194338996C8ECA8A0C0EDE3778D307543FDB25D8FD118058B1AE551A3AE3A27406004E93FFEE33FA43090A17E4D3B2848D0FD1304';
wwv_flow_imp.g_varchar2_table(46) := '3055C07D7306048B3E1584D6BF325BC32430F024600060E0E9C4CEA8010968F89F2F74868699236607000DB41A1135129AF765B1205FE2F40EE9A133A7EF82099742568D353FE39859EE9F91061693A9E7EF9E26F7CBF034BDC2CB2EBB4C520C3A4DD00C';
wwv_flow_imp.g_varchar2_table(47) := '7F030AADACE2B65DAA21668B278D2E0DB49B9FD7C80B37D51A0FEAF30D6F78830CF1993061429532DA6DDD549D2B1860D70701807618A8B7CFFD6A1B22F7CFFB88E908168E921570CA94299206B22E80C6F56B6B0E2C0918001858FAB0B369500234B64A';
wwv_flow_imp.g_varchar2_table(48) := 'EA72C71D77482117A7C31100D4D2C0AAD1A0F7C63C2F5FDE341034D6B51EA57A7B9AEBE73138788600E0DE7BEF951CB01203697E5873C13C27D620303CFCBEF7BD4FAE84EB5A0B60834AADE4F5D5FBA77C09F49E79E61991E7830F3E5825E97149801400';
wwv_flow_imp.g_varchar2_table(49) := 'E85138A699FAE5585F9796596B3BB89E0202FEE44861D66D3CF1C413723C7EE6F206F058DA75428042F04810C051D05608D8B86E6DCD8127010300034F2776460D48C0CDDDD3F3679E9EFCF064E4D3022FDD8DE67DD58BE384B7CF7FFEF3F20277F3C96A';
wwv_flow_imp.g_varchar2_table(50) := '545CEA5F6E4BFA59120CB1DB805EA0B6046AAFBA5BACA635000C115B04A00145D6ACE286F63585C30E0C1ADD79F3E6550BEFDCC88DEE4201D929A79C2200E0F8E38FAF86E85DE3AFFAE24FE6FD19E1F9C4273E21BFEB24409D2DA02440D4A5D61330BD43';
wwv_flow_imp.g_varchar2_table(51) := '904730688B4960304BC000C060D65E939EBB7A6F9A7F6571182300BFFEF5AF2544AF46C45D4FC3B9DC869E3F0103FBFF69D035DFAF35000A186804C807C02A71F201E8BC78868135ECEB86A4F939C3C2AC58BFF4D24BAB5D00B5F9EA26555B4397EDD655';
wwv_flow_imp.g_varchar2_table(52) := '689E9E95FD1CB9CC148C4BF1AB443C6EEF3ED7A50E08C0E8A5ABDE3554AF2D9BBA6FB67A32BAF3AB5FFD4A8C3FD3425C87C65E0121FFD6B90F047F9FFAD4A7C0288385FE1B52A9AD348025600060002BC74EAD770968BE9839E29FFCE427F8E10F7F58A5';
wwv_flow_imp.g_varchar2_table(53) := 'F3E50B5E8D3B43F35C74880BC3BC24EC61DE977DDD6AF8DD56317A7CAC3EFFCE77BE23ED85EBD6AD13E34023414F91A906D798A8D1D03E71920CF1F89A67AE8D4A986E9F2F81DAE24E0570D4DF17BFF845FCF297BFC4A64D9BAA44409A06A22EA8131DF2';
wwv_flow_imp.g_varchar2_table(54) := '44E34D7E07E50150E22065F9D382C0D5AB570B68648707D30C6AFCF9BD4B294CDD711FAC21E15020D201935CC8C2FF76170F7609180018EC1A6CD2F3775BC098DB27A31B5B0195B697C683868046585BF7942448A980192266C53E2301CA1EC8973DF7CD';
wwv_flow_imp.g_varchar2_table(55) := 'C230EEF3861B6E90D0BFB208F23BCDEBF3B85A87A0C68BFBFACFFFFC4FC93FBBB97F2B04AC7FA3BA9112F777EA94C69F9E3A3D76055FFC9C865A819DEA5B7F12845D72C92538E38C33840C480123F5C2C80EBB3BAEBFFE7A2C5FBE5CEE112EEE3EDDCE11';
wwv_flow_imp.g_varchar2_table(56) := 'DE3B041C4C1F3105C07900B6980406BB040C000C760D36E9F9BB617A1A57E671D9CBCD4A71EDCFA621D03CBCE67619CAD5BC2E5FF03367CE945900FC497E777A929C01409E78A616987F56CF51BD423792A0F500F40E991366E89F91059D1B40F598F16F';
wwv_flow_imp.g_varchar2_table(57) := 'EC26AD05001AA6A7DC59A84786C5871E7AA81A7AD708018D3675A2FC0F1A8DA17E09C40E3FFC70D131F5AB45858F3DF698EC93D4D15C54B72C12D57A0105839A46A08ED98DC02E03A619AC05B031BDDA5A035702060006AE6EECCC76220135141A05A017';
wwv_flow_imp.g_varchar2_table(58) := '4E6E77D2F6FEE8473FAA52F6EAD018EEC69D0CA77F6B3F3FB767ED00FFD1CB63DF397F6AC4C035046ED85F73C0FC8CD100D2CFD23B3CFDF4D3AB0443160568FC367619196B8B0109CC980660C89E69001A77CA5D19FAF46FEA9432D7498FD4218D3A7BF6';
wwv_flow_imp.g_varchar2_table(59) := '09CAA8571A72EE83BF2B17047FE736EE6C072590521D12E031BA43FDF233F7FE68FC2A6D4D93C0C09180018081A30B3B930625A09E9F56E1F3C5CD173FF900E82592E39D2F7BB772DB1D12C3EDB5AD4BB9DE751A1C4F81FBD34881AEA7397C7DF1D338D0';
wwv_flow_imp.g_varchar2_table(60) := 'F870A1F1A09121010DA7C5918C48E705685D81D500D457AE0200AEA9DEBF0B0A6EBCF146217CA2E74EC3CDC54D0551379A0252B9ABF16681A61B11E2F7CAD4A8FAE3BEB4AE40EF1D4DF710345C78E185D28E3863C68C1DF45BFFCA6C0D93C0C094800180';
wwv_flow_imp.g_varchar2_table(61) := '81A9173BAB5E24505B29AE55FC2C06FCD6B7BE25B97B9786D7A57F55EF907500EA412A6F80020B1EDAAD045722210D136BD5B94606E8FD33274C82211687D5F2CDEB7E2D15D0FB6D5DAB578DB668A485457B646464EE5E499D68D4754683CB0D405D697D';
wwv_flow_imp.g_varchar2_table(62) := '00F54B7D334D40604730C063713BDD0F019CB601F2773DB6020182BA2F7CE10B422FAC2920EB02B0D7D46097800180C1AEC1263D7F9D04E886E7E9FDB1579C6D7BAC05E00B5E5FF8CA1CC8F5B52EC0F5FA5DE3EC1A229D47AF9EA67AF69A2B26973C8D03';
wwv_flow_imp.g_varchar2_table(63) := 'DBCED81BCEDFB9AEB607D686919B545D0D5DB60225B71B40232DFA1D5B010902D89649DDB8A38155EE94BD56F2ABBE6B1906357AC47B418D3FEF07AD1FD1C80F3FE3BA1C2EC4E80E791E5C0E0A1734367491B69249600049C000C00052869D4AE31260A8';
wwv_flow_imp.g_varchar2_table(64) := '56C3B31AD2D75C3CDBF6BEFBDDEF4A81971A08EE59C7BDEA8B5E5BF4D4E0A807A9C65B8BFFE82572D1C23E2DFE523070FEF9E70BBBE061871D265EA7920BF17C742E81EEB3F12BB435B5184FF3F9FAF3B7BFFDADB467B25383FAD5A98C4AE0A4B51D8CDC';
wwv_flow_imp.g_varchar2_table(65) := '68F4475B4295CC475B3F3522C4CF356AC40801BFD7C80F874791DA79D6AC59D5B48F6AC70080DDA7835902060006B3F69AF8DC3502E07A8B1ABAE7D43EA602AEBBEE3AE9DFD7173BBF770B08F9B79BABD7548052BF6A8B1FD7D35CB27A990C29F37B8684';
wwv_flow_imp.g_varchar2_table(66) := '5919EEB6852920710D975B0CD8C46AAB7BE93D4501688C5D4ADF356BD64831208B3EF9BB82008DD628D8D282400562D417D751FDEAE43F1ED36D15D5FA0F824C7610707014F5CBE318A0ABAB425B611049C000C02052969DEA7609B89E57AD17C6BF992F';
wwv_flow_imp.g_varchar2_table(67) := '263910F3C52479D1A22FCDDFAB97581BFAAFCDD3D3F0B835006E01E1A9A79E2A6C73EC37A7D17017D79059EEBFEF776E2D702337C31FFEF0075C7DF5D5D2B249121FEDFA5000A0D4CFD4A116FA696E5F497CB4D6833FB59550D906A9574676482AE4324C';
wwv_flow_imp.g_varchar2_table(68) := 'BAFA34DDF65DB7B687BD270103007B4FF676E4DD2C0192C670D63BBD45F67DF3C5CE97BCCBF3AE51038D24B8DEBE16176A3E99A081A1624E999B3B77AEF4FC332C5C6BFC77F36535F5EE352D405DAE5FBF5E064091C9EFFEFBEF17FD7218532D10D03CBE';
wwv_flow_imp.g_varchar2_table(69) := '768250809AE32770608A47C983D81EC87912679F7DB6900831ADC3F63F8D16687A476988AD10B0A96FC7417FF1060006BD0AED027A93007BFA5918C8A2B13BEFBC13EC14601858EB07B43DAF2700A05E22BD471A7FB69ED1E0D338D0FB9F366D5AB56FDC';
wwv_flow_imp.g_varchar2_table(70) := 'B4B06724A0004073FBD40DA704321AC03650823E2E2CECA38E35C5A334C1B5912305035C8F40EEE0830F963EFFD34E3B4DC8A134FA534B3C650060CFE8DB8EB27B25600060F7CAD7F6BE9724E056F2D37893EEF5AEBBEE927F2C1EA3A1E03AEAD1D50200';
wwv_flow_imp.g_varchar2_table(71) := 'FD9B2F7E7A8434F62C0623152C097FF899460F2C0CBCE794ECA60234C4CFA353A7AADFF9F3E74B6D00C181B6FB110CF06FE515509E0016FCD1C3A7B1E71C074E129C3D7B36C68E1D5BAD175190C09F6E7A817F5B0460CFE9DE8ED4FF123000D0FF32B53D';
wwv_flow_imp.g_varchar2_table(72) := '0E0009A8A7C7D02E173500340EF414AFBDF65AAC5DBBB66AC4F98B1A172D06D40800B9E42FBEF862C9F56B9B9FE689F5380602F68CD2DD763E170C68070039FE7FF7BBDF4901286B036A0B4055A74AE8C49FD4EBE5975F8E3973E6085DB01A7C57B7FABB';
wwv_flow_imp.g_varchar2_table(73) := '7B6FB88060CF5CBD1DC524D0BF123000D0BFF2B4BD0D2009B8CC725A454E434D2639F674933EB8A790B01A7335161FFEF087A5C79F2162FD4CB773C96706D0A50FD953D1363E25E8D14E0D976FE1DE7BEF9571CF9C0FA1439EB46D54A336DC9EDE3F6B00';
wwv_flow_imp.g_varchar2_table(74) := '68FCC9F0C74880DE33DA29A0A9A25A81BA1126037F43F6761BF217660060C8ABB8792F50695DDD762FBEB81F7EF86169DD6325B912C5B81100ED11A731A0C1F97FFFEFFFE18D6F7C63351FCC755D06BAE695F09EBF72D7F0AA31E7670A0C68B039308893';
wwv_flow_imp.g_varchar2_table(75) := '21C917C0824DEA93C69E05A04A0044E0C0FB8340E0B2CB2E03411E0B08B5CDAFA7D0BE4B4BACF78B4BFAB4E7A561473409F44D020600FA263FDB7A804AC0E588D77C3E81000DC5238F3C221100868BB9688FBE1A171700F0BB0F7DE8431201A0B7A86D80';
wwv_flow_imp.g_varchar2_table(76) := 'FCA961672D241CA0A21852A745FD69FA45E5EF4EE5A35EFEFEF7BFCBE8E09B6EBA4900807605707DEDE8A050F83B75FAEA57BF5A2638B2C8538B0C55A72ED3A49B12D07B44EB48869490ED629A460206009A46D5CD75A16EAED8F5EEE9F53105C0173E53';
wwv_flow_imp.g_varchar2_table(77) := '008D00800F7CE00342054B0F510D821A885AAFB0B9A4BCE7AF5601188FAC065D43F0D42DBD7CA600BEF18D6F5453005AB1AFCC8E1A39D008C06B5EF31A21FB193162443505A057E68247050DAA732D20DDF352B0239A04FA47020600FA478E036E2F699A';
wwv_flow_imp.g_varchar2_table(78) := '9F92E767489180FF1F2040167BF0E10329907919F8ABBC40BDCA2564CEA5F4F4D90BBD52EE2B03928895D474BBF92F01FFE31F7E1682A7239FF7C3521B2A5610A011008EEDED2D02A02F7BCA86EB32024003A1FBB1BC6F3F28E905EEC28DD4B8BBD04880';
wwv_flow_imp.g_varchar2_table(79) := 'D600DC7CF3CDD2ADA15300DDED68BCB52E8011808F7CE423D50983B5E4500A1854F77ACC86EF810CC8F83C067C045278FC2FF1E419CCF709781C2CC94781CF89FED34792DB2393E7541E49F7197D8132941DF1F83C26F7C7BF8B3CBB147139461814E007';
wwv_flow_imp.g_varchar2_table(80) := 'FDF430BED073B4ED76BB040C00EC7611EF9D03F0A592F2C5E2F1C5C1D747FEE249920CBE971B5BDAFD860C6E3FBD70BA91204802841E1095CB080A1E1078C8320F7E16E42FB77E7AE768B8D6FDC9DDB3588C39621700686B977A7BFA625783C168010180';
wwv_flow_imp.g_varchar2_table(81) := '8EA0750B07F78E76EDA83D4940F572DF7DF7E16B5FFB1AFEF8C73F4A3B1F01800E0872ABF999EF679FBF02001D04D4B061DF0535080010DC9D0800F7520F5994558CBF87CC776E7D3EBB3291B2F28CD61EA71F9EC754DE0919823477068802122F81C7E7';
wwv_flow_imp.g_varchar2_table(82) := '3149F37784AF1EC02E5CA8AD3AA82460006050A9ABF19315709FA662E843DF173723CD12248C0878193AB36EACDDB6065BBA36570BA3F297A32F9E86BC1ED214A98084BEBD08084602DFC7B0E2704C1C391E23FC3620CA50F48BF065725BFE220C82BE1D';
wwv_flow_imp.g_varchar2_table(83) := 'C795CECE00008D018B000D00347E2F0D9635073200A0979D89D31FE70020F3914629123E7325A0135D58D3B9065D8BA59C8B0000200049444154E52E747777A1CC2984592A46D80524F23CF6F131217E28FA2186155A31AA6514DA4BA3514211691C0B50';
wwv_flow_imp.g_varchar2_table(84) := 'F2F9BCE7DEC34E10C860B923EC3CEB49C000403D090DD2EF19F4176F9F00C0230000922C415C88F16C790D9ED8F0041E5FF718566F5B85244EC44B92822686190918E813A429621F486898FBE075104CB47A2DD8B7B40FF61BBF2FA68F9986296D53D0E6';
wwv_flow_imp.g_varchar2_table(85) := 'B5E59E509A83122F90E444BF2C0600FA458C836A27031D00D07867884154CD3B9DE75B468CADD88A951B5762DEFA79D8B46D133A3B3B502E77E7917901DF04C8A9FC1D877E5F1EC5AA3EDBBDE1185D188529A35E8499E36662BF91FBA1252B22480301E2';
wwv_flow_imp.g_varchar2_table(86) := '1973037C17F0DD61CB909580018021AADA880F308D7F1AC0ABE41AD320C5FA7403E6AD9A8787563E84A73A9F46A7D7998F4C4D08192AE9C70A00C851003FEB83F5AFC837408836B46198D78623F63B1CC7EE779C8080425A906364410E02827E82000600';
wwv_flow_imp.g_varchar2_table(87) := '86E88DDDCB650D6400202939A6E1080212FECC63FE1B93CD58B86E11EE5F763F1EDFF6183AA20E4953F189A321F6FD406A75F2A2563E1F9554595FD59B0408D202C6B48CC1C1135E8C97EEF752CC1C3513057EEE7BC8BCBC20C100405F053DB0B7370030';
wwv_flow_imp.g_varchar2_table(88) := 'B0F5F382CFAE8C48BC0C02003A1D0C1B7605DD7864EDA3F8CBE2BF60E1BA854018A0B5344CC2FDBAC84B54638C1E248220C5797D5C323F43E477A16353275E347C328E9F76028E99722CC615C70840493DA61B1284520DD5F7C50040DF6538D8F6309001';
wwv_flow_imp.g_varchar2_table(89) := '001FB1288E108634E01E922C45E44758B661056E7DFCCF58B46E31D2629E97E7C3CA941923627CF852A207FE2328C8FCEDCF671F14D41996D11577C18F8031FE681C31E1089C73F8D9181B8CCAA313AC0790F7804500FA20E601BFA9018001AFA2177682';
wwv_flow_imp.g_varchar2_table(90) := 'F4E7255D98B0A88755C61936C59BF1BB877F8F79CFDC8F2D2D5BE0F9F402F2629FBCAF390FFBBB15F4CC5B667DAD01E08BCB23DEE0CB2C45580E7040EB0138FBD07371F0988310C63E127A47614AC8F2C22EB8662B0300FD22C641B593810C00786EDD5D';
wwv_flow_imp.g_varchar2_table(91) := '2C3ACCABEBE334C6FA6423EE7FEA01DCF2D82DD85CD88A421022AB74E4E481FF1449C23A81BC549F9D0BECE5E98F85CFBC4FAC4D4FBF23C5A46C125E71E4859835FE10B478C52AEAAF3A03FD7150DBC7809380018001A792FE39A1AAD39E6648F82F8CB1';
wwv_flow_imp.g_varchar2_table(92) := 'BABC1AD7DCFE533CD1FD2492D119E895A771A5F7483A0135DF98B71DF1A515328D408FA00FA7251D47312BF03D1487076460C1F0AEE138FF880BF1D28947A32D2DC9CB2E0B0C00F441CC4DBFE9C00600EC7C89101642A9B361C4EBA96D4FE38E657FC55D';
wwv_flow_imp.g_varchar2_table(93) := '4FFC0DC9E8047167B9D29297491D0E8D749EFBCF0434B0402F287B123123307FA10B537A514700AFE4C11F0124E508C3B6B5E165FB9E8AD30E3A0D6D6841E0578A015FE8416CBB412101030083424DBB7E929588A16C98204697D78127BB9EC635B7FE0C';
wwv_flow_imp.g_varchar2_table(94) := '1B5B36A3A3D8013F0A508C0BE295737D56FF0A2B9E242AF3BCA3940FF4310220BB905E7F0F5DC156D0C168ED6CC1DC43CFC73193E6605436423C119E67C12FEDFAC5F6B0454F11007EC6FCAA7501F48B8807DC4E6A01C09FFEF42719DED4531B208D2979';
wwv_flow_imp.g_varchar2_table(95) := '00F6581B20A595E6BDFC526F136458BE69056E597C1BEE597B1FBA479431BAA3BDCA0D2075BB7C0CD354BA79980A2008C8FA2942564A5A50F6BBB0ADB81129228C8CDA71CCE86371C1111761B8D7262908E906B065484BC000C01055AF00008FBDFF3903';
wwv_flow_imp.g_varchar2_table(96) := '407752C693DB96E3DBF3AE42946E4444D32E0582CC47324790A11896A41F3F8A62F1C6B390E63F045286E5771603604573828217C34B0BF0D24040431CD09C2752C0C4C8829FFA083D0F09BA10178152B915171C74368E9D3C07C382F6DCCB01FB8FFB27';
wwv_flow_imp.g_varchar2_table(97) := 'C429C0274972F294CA3F7E4663401E000E7FE148607ED71B0F00BFFFB77FFB37BCE10D6F102640EED36580DB5BC3805CCE026D13E3B970D151B74A57EB0E37E2F7CA66A8D7C1ED94D35E6991DDC782FDF2B553F5F47B022A7EB73B7AE77B7A345D79AB0C';
wwv_flow_imp.g_varchar2_table(98) := 'F49C753E037900BEFCE52F0B0FC03EFBEC237300DC7B40B7E3BE48057CC10517E0631FFB5895E84959247B92C50B7D5DC8E39845729767EC02F07D2CDEB8087F58FE473CB8F651147C0FC5AC24CF0ABB6208C285BD83ADBCAC1764DA2089213D839297DF';
wwv_flow_imp.g_varchar2_table(99) := '794C8E3C1B3961903008E53F08E8D9DD477CEFFB28A419628FCF28BB7F221483125ED27E245E7BF8A5680B46543A000D00BC507D0F96ED0C000C164DEDE279E6AF875800409615504E623CB57529BEFCE88F81CE75C85040C2374BA5F88E854685A08030';
wwv_flow_imp.g_varchar2_table(100) := '2D080060C740564CE1A71E8238E8C5FCE7BDCD8C33847C81A55CD74312D2AF28CB9B482A97D3BC7829643422CC508ADB70D1CCB370FC94396829B48375CF4539E7FE79E9B854C03A1780868A46E2D1471F05E97D972F5F5E3598F9FB324F7BB84440DC86';
wwv_flow_imp.g_varchar2_table(101) := '008054C04A15AB46B49616781755F482569717799AEE30BF408D37BF73018A12DDF40416F4E07A0DD2022A5E5FA505B4220BA5D1E5901DAD0DD191B80AB20838F6140090A85485E652CFD50540D4D7830F3E2844407FF8C31F306EDC3819F0A33A737FF2';
wwv_flow_imp.g_varchar2_table(102) := 'DA5A5B5B71DE79E7E1E31FFFB8E857E5CB7DF62F00C8E0A5DD487DA6C0F234C0924D0BF1DB9537E0E1E7E663645644E4E760590B0173EE0E7AFE6CCDF5F2224214C822D06B4A2E95FDE4697CED0092FB9B410882E180444465245E903370A611B2828F23';
wwv_flow_imp.g_varchar2_table(103) := 'DB0FC53F1F76195AC291B271FE24F6CFF3F8826E76DB68B74BC000C06E17F1DE39C08E00204439496A004088D8E30B3F7728923421510042BF002F63EB11CD7A0C2F4B4820BCF38B20AB9FF433FB2885252938E4CB4D58CF92282722F2829CF844E20931';
wwv_flow_imp.g_varchar2_table(104) := 'BA0A194AD18E0080458B79FD7FFFBC70E899AA61A201A0D1E0385F050064F75BB66C99BCF0EB4500182DE0344046001428B846784F193F1E5B0DA04E3894C2B00A20708D397FE775931B5F01800B5CF477775B35F01A39D094098DBFCBA7EF022495DD9E';
wwv_flow_imp.g_varchar2_table(105) := 'BACB15E4B8865C0D3575CE73D5614077DC718778F8BAB84048074371FD8B2EBA48263E12006814A5165CF4F5FA84CAB72700B0E2463CB2E6710CCF8A203BB03C69D57A9C1C94E6E58099A40E0A811AE69D9F51270D3C097D240898C2278820B4C899882A';
wwv_flow_imp.g_varchar2_table(106) := 'CF5882D80F0500202D0385C000405F953C08B73700300895D6C829D707000594C5EB0382906C7C29E228379A8117228BA5370F99CF68003DFC9D2F49EA23F34B2896427496BB5008B90F4FF6E1A74028154B1E12AF1201D80300C0F5846918B8D03BA451';
wwv_flow_imp.g_varchar2_table(107) := 'A487C808C0934F3E593705C06DE921BEF9CD6FC691471EF93C4A5935867B0A04B81D1ABC161A3037D4EF7AC32EB0E1E7D25F5E013CFA538192820BFED414823BE84879F31570E8FA7B32FCCF63F27C356DA3A37D73F63A5F74BB6DDB36FCFAD7BFC68F7E';
wwv_flow_imp.g_varchar2_table(108) := 'F42319F64400A453035DF0A6FB2228BCE4924BAAE380756E804639FA2B0AD008008849CF2BD17FA6AD722E6029A0159E0E7207B03F9F6980DE4B72A32C40502CC267912F8D7B9A22E4734DBEE1A8F25C7B1962F2FD678C48180068E49D3A14D731003014';
wwv_flow_imp.g_varchar2_table(109) := 'B55ACD106A0AA0A7084001DDA41AF5806220FD4088E8B1077CBF78F0CB3E461447C20F437465DD3BED3D16C292C447212B20294658BD6535FC922FE904BE707CE95BAE84D7A5C96FCF4400D44069EE570D278D04C7016B0D404F616FD7C3E5763412E79C';
wwv_flow_imp.g_varchar2_table(110) := '730EFEF99FFF19071F7CB0BC88FBDB43DCD5DB50C3E0EAC1BBE38FF5FCF49AB5084EA3065C97C0410DA2460E1434290070BD7EFD5D8DADCAB5B626A2F63ADCA8C2AE5E634FEB2B9873EB1CB40E81B9FEEBAFBF1ED75C738DA479F43A15FCE8B92B10D214';
wwv_flow_imp.g_varchar2_table(111) := '00670170E4336701B891234D8BF4C779F706001E5EF338466445A4BE97D3773312A0B53324024A32F9D7526C118EFE7A5132AF0B281643C47E842DD16694936E84C51061100A2708A37164248C59E96F1180FE50EFA0DD87018041ABBADE4FBC9108405C';
wwv_flow_imp.g_varchar2_table(112) := 'A9B70BB3108117E4397BE6FEE30CADE9304C1F3F0393474D11721E972CA8F6C805028034C39A740DE63D310FDB3C165D91F0249452E67C1A215B0A43047B1000A8E1A3B1E6CB5EC3BB8B172FC63BDEF10EF110D59B5463585B03A09F13049C76DA6978D7';
wwv_flow_imp.g_varchar2_table(113) := 'BBDE859933670A00D0B9F47BCAFB57B9F3B804323CA78E8E0E31741B366CC0E6CD9BE57A18CA66EE9BDE2F171A46F58469E0B83DABDF7B32701A26D7EF28437AFFDCFFDAB56B65FFACAC6F6F6F97E3D40342FD0D005C3DA9AE784E5BB66CC1ADB7DE8AEF';
wwv_flow_imp.g_varchar2_table(114) := '7DEF7B62FC79BD0439BC5E896E558A15352AA229009E3FC7017FF8C31F1600A0FB74EB1DFAE315D10800801F2062BF2C3D7701E71E423F849770768087B1ED63316BEC6168095B7A7F1EBB583408AC2BAFC3B2F5CBB06AEBB35293E30561851E9C8DBD65';
wwv_flow_imp.g_varchar2_table(115) := '24A4DE3600D01FEA1DB4FB3000306855D7570010222932FC97C12BE72F9AD82B232DC412BA1FE38DC39C19C761F6E4A331DE1F2D39C89D2D6CEF4BBC08CB3A97E0FA87AFC7B3E575C23D808CC0C143E4B1E72045292DEE5100C097BE7AF8EAC1F2A5BA74';
wwv_flow_imp.g_varchar2_table(116) := 'E952BCED6D6F9322C07A0080456234A03422347A73E6CC01EB07A64E9D5AAD2CEFAF307123B7A286BD359D71CB2DB7E0AF7FFD2B58F94E03CD8985071C70008E3FFE789C7DF6D9D86FBFFDAA55FA3DA5006A23251A49A081E475339FCE90FAE38F3F8E8D';
wwv_flow_imp.g_varchar2_table(117) := '1B378A51E5FE4F39E5149C71C6199832654A15686854A0A728407F8224F71C79ACCECE4EFCEE77BFC377BFFB5D2C5AB448AE57010E81927AFEBA1DCF85D7C1EDF81DD33B8C08E9B867B79BA2119D34B24E230080069A5138B26625EC18C8189D2BC2273F';
wwv_flow_imp.g_varchar2_table(118) := '7F1A60BF49FBE3F2191763746954AFCF6320CF6382A59B97E3EF4FDC8BC7572FC056AF9353C1848FC3F70A08D08D846DBF06001A51DF905DC700C010556DFD084088B8C096A4147E7780825F40D9EB44522A4B98700226E1E5879C8E6327CF467B32A22E';
wwv_flow_imp.g_varchar2_table(119) := 'DAA0915FD8B110D7DE7B359E8DD720CB0294FC56A938662892002088F76C044073D8B527FFCC33CFE0139FF804EEBAEB2EF16E7B2B02D4B0B91A05CE973FE184132482F0E217BFB8DA12B8274100AF87DEFE75D75D876BAFBD160B162C90E24682159E07';
wwv_flow_imp.g_varchar2_table(120) := '0D1B7F3FF7DC73C5B81D78E081D52A7DB7684F8DB2464A544EFC7CD3A64DB8FDF6DBF1AD6F7D0BAB56AD120F9AB2D28E0316449E74D2492287E9D3A75741C6EE96839BFAA097CE73BAE1861BF09DEF7C072B57AEACEA435B1BB90E0101230204030A0AB5';
wwv_flow_imp.g_varchar2_table(121) := '4872F2E4C9321992B2D282C1DD12B5E8A5085053009E5F409496E1177C01023C0F01001CA19D163073BF9978DDD44B31AAD05EF7AD950429166D5C8C3B97DE8947563D8ACEB01B7E29EFC661A16F967423662ACB00405D590EE5150C000C51EDD6070005';
wwv_flow_imp.g_varchar2_table(122) := '44058EFCCD508C4A28054574622BE25259E6948F8F27E0D4179F8163F69B83760CEFB5ED88857EECF95FD0B51C57DFF313ACCD9E934E8252D6224DC8022CBC14C5AC75A71180FE6E03ECE925AEA1601ABCDFFFFEF7F8D297BE84E79E7B4EBCC59DA50034';
wwv_flow_imp.g_varchar2_table(123) := '244C23C2EDE9151304301DF0A637BD496A0234D4BEA76E251A3D7AFC9FFAD4A7C074862EDAF5A0617E46035EFBDAD70A08603F3C0DA08495C3B01AEAE6DF9AC7D71E7B5EF3BC79F3F0D9CF7E168F3DF698800B5EA35B4F4139D060327CFEDEF7BE57D202';
wwv_flow_imp.g_varchar2_table(124) := '6E487E77C9425314041A8C48D0F8FFF0873F94A80E3F53C0C6E3BB5D20DAC9C0CF79FD1A1162A4E40B5FF8020804B4F06F67918CBE5CD3CE2200D7AFB8010FAF992F350024F989B3184189A980B280F3D02BC28BF31A9B83A71E8C4B0FB804A38BED7931';
wwv_flow_imp.g_varchar2_table(125) := 'FF4E169FAC9B21B078CB52DCB9EC0E3CBAEA6174153AE1177DA09C2264970FAB007C2B02EC8B4E87C2B606008682167BB88646004099D3F7B21405E6EB8322E2841CA3DD88FD1823BD713873C65938FE45C76044D0DA6BCE91857E719662E1B625F8D17D';
wwv_flow_imp.g_varchar2_table(126) := '576053B64E0A957CAF04D607246919653F45D16B91FEE37201684B46E0C219674A84A1B53852C68F074247D8DBAB2DBFD0BCA69F15D2F97FBA6892420A139D7EFEEAF74E9FFCB3CF3E2B21E35FFDEA5792DFD6FCAFCB1AA706C54D25D0F0D1B070FD33CF';
wwv_flow_imp.g_varchar2_table(127) := '3C136F79CB5B70C821878871AC25E251629AFE328CBA1F7AE4DFFEF6B7A5D88D9FA9715343AE069EF501AC57F8DCE73E87638F3DB66AE0DCD641B70D50C3E594CD15575C21F25163E91A54BD560211A60048BA337BF6EC6A61A11B51114D49497BFDA596';
wwv_flow_imp.g_varchar2_table(128) := '54C9ADC7D0688ED626304271F3CD37E3273FF909EEBFFF7E01716E4784AECF3A094644544E3C17FECD9F471C718414769E7FFEF9D5C8414F350039AB660F7DF195163D99985567E1681D3E6BC2BD91F9321B63E1A6C5B86EE5CD7878ED3FD0CA163FD6DA';
wwv_flow_imp.g_varchar2_table(129) := 'A464E4F46558105B71F93B0BFFC338C4AC6987E235D35F29637C2B1C9D3D1F956C3FC8B06CF312DCB2E20ECC5BF510FC42843060DD8A8F300E90FA0962764F5804A09EEA86F4F7060086A87AEB03007A1B7955BE1770525F083F2E212C77A35C2AA3AD38';
wwv_flow_imp.g_varchar2_table(130) := '06E74C3D1B274E9983B6A0F7A2237201A6598CA55B16E2FB0FFC145B9375E2A194FD102D71002F49D0290020841777232AF9188676BC62FA19386E9F63AA0080FDCA590300800552241AE071A5B7B9C27B5CE936140AD5B0013E01E68B69E86EBCF146AC';
wwv_flow_imp.g_varchar2_table(131) := '5BB7AE6A48694C680CB57E405BC3B4704C8D228D0B5B0459457ED86187891172F901743BADCA6FD410F6744BBA110D86FCC95CC728801ED335967A1C2D7CFBFCE73F2FF500AC61D0FDE879BA4C7EDA56C87CFF17BFF845B0BE805E3EE5A0ED777A6EEA2D';
wwv_flow_imp.g_varchar2_table(132) := 'F31A3FFDE94F4B2F3D230E1A72179359D14BA3D7AD004A41831B717041146B1D786E3FFBD9CF84D5918B763568153FD7E7FE34F4CFBFF93B410B17B6745E76D965221725785260B4FDB864A6AC10F30895DF76C059C10462683953A39185B97CB2F1319C';
wwv_flow_imp.g_varchar2_table(133) := 'E67B29166E5C8CEB57DE8647D6FF032D69177C09CD93EB9FAD3864D0221A204B7686B01CE2B0A987E1D5D32FAE4400767ECC34CBDB6D576E5E8A1B56FC05F7AC7E08A530150AA18803B723EE3F421C5A1160237A1BCAEB180018A2DA6D0400241EAB81E9';
wwv_flow_imp.g_varchar2_table(134) := '4FB325882C802D284465948BDD682D8CC23953CFC109938F458B440076BEF0FD473AD1A58C003C78AD0080384B5006670D907C2441B79FA285A40309014080966C04CE9F7E865001B716466F670264AF722F0B5BA0FD34CAD98B94305DA853F905FFE5DE';
wwv_flow_imp.g_varchar2_table(135) := '1AA45DAAFEC2BC31BDC8DFFCE6370202983B77BD791A0E2598E1E78C00D0D8D0F0B2E79C60801E24A982E951AA61745BEEB408ADFED9EC7C0DD798B28D91C435040004216A6CD5D0AA01A371A6A1FFE4273F8957BCE215183B76EC0E94B85CCF6D7B5330';
wwv_flow_imp.g_varchar2_table(136) := 'C0FD336A70DB6DB70968700100B7512F5C0B12C9A94063AA6900B7CEC005268D5CBF121D715D05606ACC296B7AFE64F8BBF2CA2B253DC175A80B7EC7F357E0C6BFB9707F1A89D17D1F7DF4D142ECC4080EF5EDF21DB8604FDC71E4F4CAF9782C5F98F42A';
wwv_flow_imp.g_varchar2_table(137) := '7798C40472105AFFCA3C026D1A764EDE94F95B31966D58881B97DF86C7363C8E5644D8EAB32687043E39B532E705101033025088421C4A0030F55518C588592F87E4135D2400D8B20C37AEBC13F73CFB104A41228F0609BBFC88674D7E0F8B00D4D7DCD0';
wwv_flow_imp.g_varchar2_table(138) := '5EC300C010D56F230020A6474ED39B4548FD228AFE3094E232BAC34EB404A33077DAD938719F63D1E2E746A6E7251382F1388DB064CB22FCE0816BB18511802C411486684301819FA13B48504A33647117BA8B3E4AE9089C37ED0CCC997C0C5A8AA3E535';
wwv_flow_imp.g_varchar2_table(139) := 'CB2C6841C297BD848CE9550A27BA10A4E7E353B99044455E8BF9ABB1917E69F582C908C848004100C3C334023420DA6BEEE6CEB5B88CDEA4D604301DC02232E6DB5913A0A1687A9B9A3B97536C3014DE939C1500F027BD5E52D73EF0C00355C0A2DFEBB6';
wwv_flow_imp.g_varchar2_table(140) := '6AB40958081648763371E2C4E779E53D196812257DE6339F91224916FBF506006874DFF9CE770A00D2FDBBB9F45D79BCDC1480B66D2AD190EA85D19AABAEBAAAEAF953F62ED5AF4644B4589132D7C2419E2B3D7F9EEBE9A79F2E110B35F89A36D9CE6BC0';
wwv_flow_imp.g_varchar2_table(141) := 'FB90B324B69B5ACED420D6E42739635F6EFC8B7546F3F1CE8CBC1441EA091530F71CB04A7FFD02DCB8EC363CB6FE31B46511B6082D272BF4438900A41E6769A4021814005C36F512B41747F53A0BA0CBF350CA12ACD8B404BF67048000204C24ED10B3F5';
wwv_flow_imp.g_varchar2_table(142) := '8F5D05499C9F8BA50076E5161D72EB1A0018722A557F853F7B23020A1189971C036C390A4B68F187A11075A1C3DB8692DF8E73A79D83135F3407AD01FBC97B7673F8A98F000C3B2EDFBA0CDF9F770DB6C4EB906431A220400B87097B09BAC20445320696';
wwv_flow_imp.g_varchar2_table(143) := '3B512E7868CBDA71E18CB32A11807624ACD6667353D63BEB601E862D88E1176EF3CA99E5E63F91C2297ED11214764A5EA42AD7B0360D1641C04F7FFA53C9ABD32868FFB816FFD190A831676E9D8682DE37418292D39C75D65978FFFBDF2F6D72343A6E4A';
wwv_flow_imp.g_varchar2_table(144) := 'A02FC65F3C4E67BC230100BB1898FB66885E8D9C16C8B9608320843DEE975E7A29C68F1FFF3C1EFD9E6E7F020B86F5EFBDF7DEE7A5006A2300BCF677BFFBDD6254274C9820BBAB25256AF4117359F8F49AF919E54820C3563F32FCB1CF5F2BFBDD688DF2';
wwv_flow_imp.g_varchar2_table(145) := '3268C4403B1208C8A8337643305A71EAA9A78A2E1564285DB21B09C8F5A5779802D24A74CA7D14645C2F2352BD4064465ABCA204A81810E3DE4A48307FC302FC66E92DF8C7DAC731824379C282B4E8D1284BE489E09C7500A90300A65F8451C551322678';
wwv_flow_imp.g_varchar2_table(146) := '674BEC1584567BE5E6E5B869E55FF0F7550FA110C4F03346E218280B106609522B026CF4D61CB2EB190018A2AA6D280210B02F9F2F924878C10B690BFC72073ABD6D680DDB3177FA5C9CB8EFF16809C9A7BE7300409F264D132CD9BC183F79E067D8966E';
wwv_flow_imp.g_varchar2_table(147) := '14A976FB1E0AB4C769373A8314AD7E1BD2EE0E94430F6DC970BC72FA59386EF2B1682B8E143E021AFFB8D47BC1980C14922A66612A168F2CE74ECF17729CE539D6C60ACFD460F1E5CF7400F3CA4C09D038A8715743A29EA41B92E6EF5C8FDFD190B03F9E';
wwv_flow_imp.g_varchar2_table(148) := 'C38366CC9821468A0658A3097DB9D56A0100230004009AB27023046A3C795EF48ED9E6C66A7D1AE8DA4245D7804AC199E74907002300FCA9AD850A967A0200EC0278FDEB5F2F00C395A71B866FB43DD005651A11A0F77FD34D37495122EB1F34E4AF059B';
wwv_flow_imp.g_varchar2_table(149) := '34F0FCDDBD364D4350FEFC9C91990F7EF08338E69863C4F377CF4753219A72908BE0209ECAF01CB99F2A59A67CCA5E057992A18F33335A7ACF01F09E651F3FA3057125C045B0BB406A00EEC0E31B166138E7F22564DC64AB1E01758684C0C2673D8B8F42';
wwv_flow_imp.g_varchar2_table(150) := '54C0AC030EC5ABA6BF5200406F458071EAA1258DF1C4A615F8D3937763DE738FA21444200940171906C9CE9925488C0AB82F8FE490D8D600C09050E3F32FA22100E01711CADBAC8C6E2F4490145088BB10558A00E74E3F07274E3A166D59EF5D00CC8B76';
wwv_flow_imp.g_varchar2_table(151) := 'FB652CDBB2103F9EF7736C8BD7CBC853528D969823F5227404290A69ABA400E2A287612901C01998B3CF31682B8C940C2B0797640CEDF7EA4E71C049FE3696822A1A7F099D7A92AE95FC2A2F89418B3A18405BC134644DE3438E004602D85AA646C40DA7';
wwv_flow_imp.g_varchar2_table(152) := 'F3777AFE6E4E5E3D4F1A217ECEFE78B6E8EDBFFFFED57DF467048021FA9E52007A0C3D373D6F92DC10003044EF7634A8985D39701B0500AC31A82D02EC0900901D913975020C17A8E8F96C0FABD70765B5243C5BB76E959C3FF908D8EA479D109470D1A2';
wwv_flow_imp.g_varchar2_table(153) := '456E4343AFF510FC4EC11B3F3FE8A083A4A5F1252F7949358AC3F324685390E216432AF0E07DA57E36CFBC5AEBC7FB4BFEE5BF54D3503DDEB77991AA27F3287C64216B5732784182C51B96E0F7CBEEC4A36B16A035ED46544CF2D455E28B1C49E6E3871E';
wwv_flow_imp.g_varchar2_table(154) := '0A5E884214E090FD66E1D5075C223C00BD3173B2DEA68432566C5C869B56FC0D0F3CFB185AFC7CB05739F0107A6C698D1171FAA3A50086A80568ECB20C003426A741B75643002063BE91F3C6137473326012A294458887256809DB71DA9453F1B27D8EC3';
wwv_flow_imp.g_varchar2_table(155) := 'C802A7E0F552750C602BBAB1B26B11AE78E057E82C6F44126528679E0080C0CFBB00FC7200DF8B91B68568411BCE9DFA721CB3CF51680DDAA506A0249DD0794F7EAF1820636E349F90962FB961E1E86292A654DCA6BA00408D150D37177A967CF9D3D090';
wwv_flow_imp.g_varchar2_table(156) := '60E717BFF88550CC6A85B91CA3323297C6C725D0E1B634780C35D3682A6D30C982DCA2B87AD7B6B3EF5DC34A00509B02D0EDD440BBC69D1EBA02008D6CB8C7D1D481160F3205C00800590099636FA40680008000C3ED82D063F4F4594FD7E992FCF09894';
wwv_flow_imp.g_varchar2_table(157) := '25FBFC69FC49DBAC6D991AB5D06244AD63A00EB4F05181C4E1871F2EAC8F2F7FF9CBA5DA9F8080FBD19C7F6D74C70520BE47439CDF4E3A912F11C60B5603E4258079C95E9D825376B72092F5A50D1019022458B679396E587117FEF1DC7C94CA5DE82C90';
wwv_flow_imp.g_varchar2_table(158) := 'FE378F000840E1335360C22B80DFE5E1A0292FC61B0EBC14234AA3ABB52E3DC9B103090A7C1EB72CC71F97DF8D07563F8612917112A31C703A672860C06601BCD0A771E86C670060E8E872872BE9150074AD43968588D310054E040C5374F1C544008008';
wwv_flow_imp.g_varchar2_table(159) := '5D2D65647101278C3E1EB3C61F844CE2F83B1114BD1932FCA501D6E219FC66D19FE0073182D44777EAA348A3EC33F498A01405F25D779B87B8CBC3C91367E3E0510721F35A50F6121459F0542F74CFF3E0DC54BE462B15E99C63D05268417BEB488C691D';
wwv_flow_imp.g_varchar2_table(160) := '8361E13029786A74A90D3B73BB279E78425201BFFDED6FABDD01EA55AAB7A8B96E1718C879553808E6CE9D8BB7BEF5ADC218A89E66A3E754BB9E1BE227006065BF5B03E07EAFC75783CA9484A600D418EB777AEE0A0268105963C01A80BFFDED6F55BEFF';
wwv_flow_imp.g_varchar2_table(161) := 'DE52006E0D801EDBDD5FA3D7ECE6E0C9CDC03E7F466298F35720A2D18ADA56476DD1541D715F6CCDA4F12718D39A01ED04D0CE0C35F82E10A84652D20C81CFD1D6E4E64FB0B97B2BD66DDB804D5D9BD1957423F5394DD367617FAF0BCD3FA9B1D9062B4D';
wwv_flow_imp.g_varchar2_table(162) := '88718211A18F67BBD7E0AE358F60E5962731224D405E0E36F0D5020002DB6C6B8AE9FBCCC0EC4947A12D6CEB350210C701467A1ED6743D27FB5FB0690546963853202101B0A400988248ABE38023A0E0DB38E0466FD421B49E018021A4CC5A04C02C624E';
wwv_flow_imp.g_varchar2_table(163) := '6012A09C26D2A6F79D87AEC0B6CEE7500ADA9049C57D02CF67C11143950C09B2782F4612797851690ADA8A6DD8868E5EE3E98524446B5A4439ECC492CD4FA050F0117AF471FC7C14B04702941461E578E53045B92BC6E49689680FDBC1C9C311C39D1EC3';
wwv_flow_imp.g_varchar2_table(164) := '9EF589808284D5D84C03E4E17F16211651C49861A3B1FF84FDB1EFB8176146CB6494B261522820B5027C59672CA8620896638E7344E31209A9715063CD4800BB030802D6AF5F2F9E3D0DA1D2EE727BDD46C3C65AF8A74C79175C708114E01D7AE8A155C6';
wwv_flow_imp.g_varchar2_table(165) := 'C15AEFDBFDBB1E00A261250060653F0D35CFC92DFE732305FA390BDF780E6E88DE5D4F5320220FCF93FD330270F7DD7757F3A03E122D0000200049444154E5F500002300AC01D81900A805251A6D7053292A07CA9A39FFABAFBE5AAE91A17DD657A877CF';
wwv_flow_imp.g_varchar2_table(166) := 'F5B4AE821E3DF7C1280D7F6A21215B322FBFFC72E9F3A78C145CB84C817ADD5AC7E1EA410012EFB120C3B66C2B16AD598C25CF2DC3BAAE8DD8B86D33BA99AF0F7D999EC996D77A0B6BF6E879CB9A498A368EA6463756756FC0B6B4036DACFAAFB615E6AD';
wwv_flow_imp.g_varchar2_table(167) := '963211906D83EC3CE84E316AD82894C2D6BAC5AD7E1C62189F7994B1AABC1E1B93AD682BB1DE87E79A1F45D232410124E74ED32E19177CD4E897E03587BC1A6D851148597CE8F01ED4BB3EFB7E704AC000C0E0D45BFDB3E64BA352294CCA9C7216637ED7';
wwv_flow_imp.g_varchar2_table(168) := '125C31EF4A3CDBBD1AEDFE08E9618E2A15CCEAC4546AEA64FF0CB1C7498C982FC35E16A1E49119E61E02B646E5C3CC85CB447E97F9A67927355FAA7CAF4A88334BC5B3122390FF4F487C7A5B2417EBA588D80AE80301C7DA72E26077825256C2C4D11371';
wwv_flow_imp.g_varchar2_table(169) := 'C0A4FD70E694E331B9340D85B48488E501418C9039DFA8900F5B09537644D72B139074C08F7FFC63A940A757AA690235483C570D91F3771A221A25FED4897DECC1678B204180D2D3D61A6ABDE6468AE5681459D94FCF98F970CDB12B205110C19F34881C';
wwv_flow_imp.g_varchar2_table(170) := '5E44B2221700D4020D35D0DC870280FFFBBFFFAB9B02E0FE1901D01A80DA707F2D205043ACC657DBF5147CD0F8FFF18F7FAC1A7F1A7AADB9D01E7F5D57BD7EFEADC08BEB30ECCFAE04466014B4294F802BDF7AB2E6FDBA35DD8A851B16E3CF8BFE8C45EB';
wwv_flow_imp.g_varchar2_table(171) := '9600AD796125BB4D0A6125545F8F07404A56F87FDB9F891C009111307F5EDCE76E67F73F416F398E7AF5FE4536723E5975FF4C65C8B109262ACF65B7D00C17107A409476A0D50B71F4B86370D1C1AFC2C87018229F803C4F71D8327425600060A8EA560C';
wwv_flow_imp.g_varchar2_table(172) := '2A8BEA32F17A3966744179297E72DF155897AC431811FBD382F6FEF6926FEB85D3AB0551B930AB21D4EAA6DA52E5ECCCA9DC5715544AAA7A251DE29E48F3CBB9E9C2AB12D088935CC513C294200930ACD08697CF38162F9D7C22C6866325AA907AB1646A';
wwv_flow_imp.g_varchar2_table(173) := 'FDB8282023AA30A3D5BB349E1BA7069278E6E73FFFB9F0CFBBA37579ADCA0CA8C64F8967348F4D23F4CA57BE523C52760768DB992B2BF5881BB91D6B01801AD5810C00786E948B80C44AD7848220FD9BF5169CD1A0038EB45E81DB68BA45B91934E2C29F';
wwv_flow_imp.g_varchar2_table(174) := '4AE643622616FA91DE972D99E430700189CB12A8C0AD3779D3835EBE7925EE7CFC4E3CF2ECA3E82876A265E430A471822CA127CD683E81681DF22A31CADBEFB41DB25CFA8780E2DE81B63E8BBD3DB1D52E851C6F3C6FA9769306641CCCE51A7B5D68F18B';
wwv_flow_imp.g_varchar2_table(175) := '3872D45178CDE19763A4DF86844583AC0B3200D0C8233968D7310030685557E7C419019092F854FA7EA324C1A2F232FCF89E1F6353B8096927ABEE7D04740176B26CF74AEAB5E6ED08127207C4A953767AD82B10A1DABAA7D182FCF3BCF5AAB78567424A';
wwv_flow_imp.g_varchar2_table(176) := '53BE4F598C15A72432E238E30041E6238D5264518283C64DC3992F9E8B0347CE947444EA95736F2B2D4A0482BC042C50AC17035003421040021A7608E8643CE59FD7B4000DBEF2F2D3B8D173E577AC6467011A6983E9994E9B364DD6D3280101847AA3F5';
wwv_flow_imp.g_varchar2_table(177) := '520094CD6005009A46A04C954741230464F8BBFEFAEB45BE0F3FFCB000855A921F2DDCD31A0CCA57DBFC082ED8EAC76804497E080AB42B43019702807A9EBFDE7F1BA28DF8BFA7EFC55F1EFE0BD679EBE08F08E085019272028EDC0D38FF819D2BF58A00';
wwv_flow_imp.g_varchar2_table(178) := '2AC4D53BDED77924ACF6B37AAFA3DE3B0EF2ADF3D0BD3264579E432702C775C230401A67F2FCC4612CC3C00E1B7E385E77C41BD08E5664415988B61803B065E84AC000C0D0D52D58B1CC3A80302B48EE6F49E7527CFF6F3FC0D6D66DC81817AF10EAF52A';
wwv_flow_imp.g_varchar2_table(179) := '821AEFBEA775C56891C6547D7735FECF7FC3F58BB4C903C0973873FBE534EFFFE6DFC580A4439E4C382CA5255C70D88578E9F8A330CC2B0A00F099B04D8AF99C8290CC839502EF5ECECA0DAF1304300AC094000D979205A9D1D62A751A38D600F0736DA3';
wwv_flow_imp.g_varchar2_table(180) := '2308A0C1FFA77FFA27E9CB678B2017F57EB96EA38669B002005E6F6DCB2165C5903A8732B1E06FE1C2851251D1963E35E25C8F808B32D29E7F054EE409D03E7F8E6A267050DD701B493755D258DCBE1190C5737DBAE319DCB0F4663CB4EC2178A3802888';
wwv_flow_imp.g_varchar2_table(181) := '50EE8E58B022AD792C10A4D75E2F6DC57D3D3FE59203DE1D968AE1DED9EDA8C0BAEE43D4C07E9846E3F39FFA1EE2628200010E6D3B0C6F38F28D188556A47E27BC804CA1A414B265A84AC000C050D5AC70FC4548A425281F52234C7D777D1FEB4B9BE007';
wwv_flow_imp.g_varchar2_table(182) := '25E999E70B6C67FEBD4400F25ABBBA18C15DC9CD6FEB6B4E58D32554EA7A3EEA9DE43FF3E35472033DC539F915CF27A17312484E931E1127A7E5F50EDBDBB3880E2E38E4429C30E1580969C2A347E3036991355888425665B30AA2B185F2A3E179F2C927';
wwv_flow_imp.g_varchar2_table(183) := 'A53D90C5811AD2D617BC1A378D021004D048691B21BD5502027AA8CCCB73929E56A3376A9478ACC10800344D511BCA2730A2E74F50B564C91291875BD1AF5112974B408B3469F8794FCD9A354B487E389150D91A355A4079D5721F2818A8D79EB97CEB4A';
wwv_flow_imp.g_varchar2_table(184) := 'FC6AF16FB1E8E945F0477AE88A3A64CC756BD00A3FE11C85282F26ADC75DB19374576DE2BFDE7356850C756A0EF2E72F7FA2AA4CD9D57C407E325912E584406188C88F241D70F88823F08697BC01ED5E0500F806001A7B3B0CDEB50C000C5EDDD5B5CA64';
wwv_flow_imp.g_varchar2_table(185) := '1263FE3BC80A4299F7E4D695B86ADE9558517E0A5EB125AF01E8A582595BA0DD4AF99E0E2A1E568D37E376E8AB71674EB1EAF538B9CF7C9F8D9441E5208161FB2421171ADBB042A903603121C3991CE022DE7410E0FC99E7E3A471C7A1BD301C991FE584';
wwv_flow_imp.g_varchar2_table(186) := '2D6951F88393422A0C6BF55EBABC36CD37F32C69F457AF5E2D796AB6096A619A147255AAD0E975EAE4B95AE63D2D0C241D2DDBF3180970096C1A0102831100A8115639F12773FE24F9E16863B65DD220EBF43ECA897254992B752F3FD7A80A73FE2CAC64';
wwv_flow_imp.g_varchar2_table(187) := '4124ABFE39B848EB05B89D448998E38E63D997FB5D2335174BB72EC72F17FF064B9F5E82B4354539E9466BD88A92DF82B83B92FB2D2892B6B7DE4B84A0D75D69BB61CEB7744B70EBEDABDE1D5B8509D51D55EA0F77D87192465204C8A85857DA8D120A98';
wwv_flow_imp.g_varchar2_table(188) := '3D610E2E39F89518C10E21BFBB9202686CA856BDB3B6EF07A6040C000C4CBDF4FDAC1232E525487C527F72D46F86B5F11AFC7ED16F316FF5C320E928E783B3F968674BD570F74203A4E57DB52FB8EDFBCC5F7C95C264A730A9F625B8E3ABB037017801AB';
wwv_flow_imp.g_varchar2_table(189) := 'DB632471262F30890648A341DEF6E8FB040021E64E3D07278D3F1EEDA5914883286FB3A22C78C941DE0E553FBE91B7FAB9DE3DCF8DDD01AC09B8EEBAEBA44590068A0647D7530F5443D834383A244841000708BDFDED6FC7F4E9D3F34A707232D42928E3';
wwv_flow_imp.g_varchar2_table(190) := 'B107230070DB00D5F8FFF9CF7FC6D7BFFE753CF5D453D5764A255A927B8655EFACB8CF3209EB2B985219935FE1CD6F7EB3B4FA6937840E0F12B35A91A9761A682AA0D134C0B22DCBF1AB25BFC1B26796222B71D2448A825710C6C9384AA49B242C855210';
wwv_flow_imp.g_varchar2_table(191) := 'D8DB4203EC02E4E79BF04AECAB01DBDEC02A3B54FFED2C6D9064090A5E513CFF38E9C6B86163F0B2A92FC7C9E34F464B50421A96735222AB01E8FBBB7800EFC100C000564E9F4E2DCA0140CAC162698820CEB02DD88ABFAEFD0B6E9E7F1BD6333CCD706B';
wwv_flow_imp.g_varchar2_table(192) := '9DBEFBBACE4DE524354A900382ED5B493FB36B662B9EBFB42AE5DD813B78E18D8C568D7D32F7915B9D9CE61CA19A1F53D8D9F28E27010673A79E8D93261E8FF6D676C43E2B223813BD8040060890679DF9CDDE5FA96AB8D4E8681F398D0B670770380D2B';
wwv_flow_imp.g_varchar2_table(193) := 'D7D7AC59234648C3D74A0FAC864CBD51FE4D6F94E16B828677BCE31DD21DA02D7A43350220F741E51F0D32E986BFF4A52F09DB20B9F9357A42F9A811AF95B9B60ED2A367D89FC6FF8C33CE90088AB6676A9701F7E3A61BF87795E257EFC13AA4530400BF';
wwv_flow_imp.g_varchar2_table(194) := '5EF46B2C5FB51C5E89A37933099865B1079F2D8021FBEA73D2AB7ACBF6E23D071057EEBE3C3850691374C076352E50A9E897885C030FA4AC520729C41EC14C115E99C5C03166EC330D735F7C0EA6870709374014B266860C1B1601A8A7DBC1FCBD0180C1';
wwv_flow_imp.g_varchar2_table(195) := 'ACBDDECE3DCE5B003352E2253EBC24435C88B03C5A863B17FE0D2B563F8DF5E90674FA9D790F7E2544E98646733292FA2F13B638D1A80AE3592140919E439CE7463D9996C6D1A33E8294A4A609D22095F244B6ED31A09FB0FA5F3C121A897CE42A098404';
wwv_flow_imp.g_varchar2_table(196) := 'C0043EB22440987808C204E54239FF9B834C84D294AD4C95222F250762EBA317E0DC697371D2A4E3D1DE3212B1CFD96AA91006F95C3F8BE01300D43102AE5CD498D300695E9F796BD603308FBD76ED5AF154DDB0B31A22E50AD0EA774606582370C82187';
wwv_flow_imp.g_varchar2_table(197) := '08AB1FE7073462FC076B04C025595AB56A95B4557EF39BDFAC4EE553AFDC35D20AA2F89D12FEF0777AFEAF7BDDEB70F1C517CBF65ADDAF217EBD876BEB0D5CAE038D10F4F608490460E16FB07CD532F8AD74FCD9FEC73B3644582820F113444C55204477';
wwv_flow_imp.g_varchar2_table(198) := 'E089710E622092413BECC34FE1A52C5065B42B947B5E8E1BA7207BA5D4A4F0B9E07392E4645904B3922A63B64A865B0001234B65F6ED87287BF57900F278C4F6245C4F5880D18C625AC048B4619F11E3F192FD0FC33193E76044320A59429E8C38AF4F69';
wwv_flow_imp.g_varchar2_table(199) := 'B84A66A8BE4887F675190018A2FA65563EEF09AE78C834C4F45890E0E98D4F63C9938BF1C8E6C7B02A7D0E29F3E9B555D20C5BB2D79E2E791D0787898430CDD09D74616D31C6F02C44D049F011CAD8D1C4EB42772144A9DC8A52DA89722942D9F7302C6A';
wwv_flow_imp.g_varchar2_table(200) := '454B301265B210A71D188E0C65CF471C735CB08FD8EB44574B0188DAD0DAE9C12B6EC1EAD2B328758F92F0BD5B67E0AA51A20A9E87F3669E8793261C87F6E248A47C71F265CA7A888C98883C853987405F1717049027408B00E995D238B92042230194AD';
wwv_flow_imp.g_varchar2_table(201) := 'B2D97DEC631FC385175E28AD82B546AAA7731B8C2900B71682B306BEF6B5AFE1D65B6FADB6FA697A440B2B95B847206225974FD990E4E7B2CB2E93B03F73FEDAA6594B40D4579D727B01008BAEC3D2554BE1B779883216CE71942E43E3E4F5678B6D8262';
wwv_flow_imp.g_varchar2_table(202) := 'E4617D6B88E168C5D8B4051D4984AE12A7444608A22E14D8E69916D021649B1EC2CE18252F44147AD89A4608B2148532C16D2633348280645540392BC30B3214C302A22D114614DAA576A51F6E59F1EE877B2DD86FD8141CB9CF619835F1600CF34688B3';
wwv_flow_imp.g_varchar2_table(203) := '10C79C41E0B30BD096212E0103004356C1157AD28C857EB9B1E4AFF462BAD085CEA413AB363D850D5BD7E6863E49727ADDCA22F95229B4639F732F42223E28F848C3046BB63E87FBD72F4152EE4456E6B0111F051A6ACE02E05093A48052D42554C34161';
wwv_flow_imp.g_varchar2_table(204) := '18A60F9F867D474E4510B6224BCA20C379A79F48A1DE707888D081AE62083F1B8E62578A759D4F62DEA607508E6AD20A35A7D7080048FD449810FB0300507ECB962D931E76B609D25BD5A237CA5159EAD4BB556F583DFE8F7EF4A378D5AB5E8551A338E7';
wwv_flow_imp.g_varchar2_table(205) := '9D9E63EFA0643002003702C0F0FF57BFFA55DC72CB2D027ADCD90A5C4FA32BFC9CE17DCA8DC0809EFFBFFCCBBFE0CC33CFAC465A34BFEF9206F5D723DD0800005300E5185B4B254C1DB91F8E18350D85A04DA6EE111C0451842064203D4487B4B0F828B0';
wwv_flow_imp.g_varchar2_table(206) := '76C54FB1BA6B2D16AC5B86F55BD7204CCB404B1B52020046A6420FE5B45B28798B6108740193464CC2E1A30F921C7D6FD3001BB9FE42CB308C1C360A13DAC6607CCB580CC770E10B9168A05267D7506537B25F5B677049C000C0E0D257C3672B41761695';
wwv_flow_imp.g_varchar2_table(207) := '89B7925B703ED8E42D676A80A346C9A897E714B753F4B2B5CE4101F9AF750C12B3EB1DC9162CDFB40CBF9C7F3336CBB0A1145D3E50609E9E53F2C20C4192A1149725143AB2340E2FDBFF241C35693686B78C91E9641C3ABC8DB30950143090641DE8A69F';
wwv_flow_imp.g_varchar2_table(208) := 'EEB58A97B474E3225CB7F0F758D5B15A8049AFED8B752200FD09004482592685810401E4B0D7B6419D50C775B4305023025A5CC82A760EEB193366CC900500BC7E35D2F7DC730FBEFCE52FE3B6DB6EABB2F52945B2CA524110D324DCEEE8A38F16E37FF2';
wwv_flow_imp.g_varchar2_table(209) := 'C9278BE7EF165B729B5D65F96BE4416A0400F81C72E57BE8085A70EC3E2FC1D92F3A11A35BC623E6739772422547FA72C686876EA979F150E283E82798BF6931FEFCC49D58BA76017CBF8C982DAA11C141015EE00B0020602F051CD35DC0F449D3F0BA99';
wwv_flow_imp.g_varchar2_table(210) := '97604C71B4DCFF7D5912CEFD60F7BFA4E972564001CE21DF1319E2AC5CF9DE6A00FA22E781BEAD018081AEA117787E4C01A429BDE9CAD0D28A612773192B80196214C45F2D60A2E7C970AB5B9DDF20413F0BAEBC084F742CC777EEBD061BA3E71014C569';
wwv_flow_imp.g_varchar2_table(211) := '4121E6CB2F4057C8A2E90C2D09C1428491FE189C3BF32CCC997C4C3E7C2421C31F9006791D40C00046DC8D44F2A405D976F1C625F8F143D7603DD64A55F54001009A6BA6AA1809607B20F9ECC96E4703A61D02EE7A5AD0C6EF3FF2918F48587BA803000D';
wwv_flow_imp.g_varchar2_table(212) := 'D3B3F0EF2B5FF90A6EBFFD76897A68B484465DA325F4F80998D805C0823F764B9C72CA290218B8B8CC896EB1A03E2EF5A2288D3C568D0000769E78698A6D718053F73D0EAF987E1AC696262293B0190D6B2585C61A19A9C7216DB5CCBEC6A24D8BF08745';
wwv_flow_imp.g_varchar2_table(213) := '7FC23FD63C84421BB9F78721616D2A1B74090084C7230647F614B3120E79D1C1B8EC80576154B1BDB7E9DC8D5C9AB4C2E661C17C75BE0AA44B576A7EF21A19EB02684C9483792D030083597BBD9C7B1E22CC84152FAF25E2E4B2CA509E4AA97D2A13C82A';
wwv_flow_imp.g_varchar2_table(214) := '4E7EF5CDF9FC1463DDCA7C199C966245F713F83A9906B3B528B4308799A1540E10A621BAC37C60508B97605B1AA135198EF3679E89E3A6CC4129188E989CEE01510219055928C5D367A9D2F6735FBA7509BEFFD095D818AD1F5000C06D81A4C162889EC4';
wwv_flow_imp.g_varchar2_table(215) := '349C61AF5CF53448FC2E0FA86C9F1F4000C008003B01C68E1D3BA423009ADED008C01D77DC81D1A3474B789F8B86FF95E94F7BF72FBAE822BCF7BDEFC5A449934476FA4FBB0AD4D8D71601F6F5D16E0400D0CD0FBC10DBA210A7EF771CE61E700AC68463';
wwv_flow_imp.g_varchar2_table(216) := '736B2A4C81392537A76CA67E1181D0570A9F35966D5D811B96DE8247D63C88421B0B0059EC970373460018A5E3B6A4B82EC4451CBAFF2CBC7A1A01C0C806B8077ABF7A2FE6586082131F19FF553A72980A24FD8F04FDE834D41BCFDD5721DBF67B550206';
wwv_flow_imp.g_varchar2_table(217) := '00F6AAF877DFC1C5285598F3E4D73C31BE837567A86FBB2BB17D229FEB5E488EBCCE4B204D5920956145D74AFCCFDD3F4427D649C53E470CB744010A0400E2FDA4680981CE30434BDC8A0B0E3C03C74E9E8D523002519AA085E50A9987D82FA0C0C88517';
wwv_flow_imp.g_varchar2_table(218) := '23664E3C096454F0C28E85F8C123D7604BD7A64ADB5FCFF2DB1B3500EA95D29BFDC73FFE81F7BFFFFD58B0604135C7EDD60468AB1AC18102004E0B1CEA004023003D0100B7F6C12DECA3AC383FE15FFFF55FA555521905C56BADD44B6834A096F1AFAF4F';
wwv_flow_imp.g_varchar2_table(219) := '57A300C0CF4274A6459CBADFB138F78093312A188D988374C8B78F48C6FE86925B6F915A80B02B83177A58BC6D056E5C722B1E7DEE6104A5287FCE62460DE88E7BD22D23CD026C3B8C02CCDA7F162E9B7131461547F5B90600599417A77A0132CFDF3E8A';
wwv_flow_imp.g_varchar2_table(220) := '38CD2AF3C1180EACDF01D45719DBF67B57020600F6AEFC77DBD113227C3EC341A594B7020872574BE97819F677C686556B006B9A8DEB0100F8287B29563005F07F57A213EB91B08029F0518A03E9938E0ABEB43F15820C5D45A018B5E282E9A7E3F8C9B3';
wwv_flow_imp.g_varchar2_table(221) := 'D112B6A3EC91B23815DA91B2BC28F361C5AC08F01276262758D0311F3F7CE4A7D8D2B979C00100F54AE9BD6A91DEE2C58BAB0435AEE1D228003F63C12023004C010C6500A0DE3A8DB50200A6003402A0DF53362C02644D006982F9F35DEF7A175EFFFAD7';
wwv_flow_imp.g_varchar2_table(222) := '63DCB87139CB63852C49899394E0470B021B21536AE4C16B080080DEBD8F4EB4E0947DE7E0FCA92FC3A8C218440CE4CBF85D127247D24F4FDF9A8D752C02A4615FB079096E5C721B1E5BFD28FC0299F748BB130A00608A2BF5D911904FBA0CCADB01403B';
wwv_flow_imp.g_varchar2_table(223) := '5300BDCECCAC7F752C2E54F89F104891F287F30D2AE41C694CF0918F10B665E84AC000C010D52D4796F259965CB3589CEDDE3E437FF9E451F5EE9DC8402DD148DE4B58574A8957C6F22D4BF183FB7E81AE6C333AA36D484B21420E1C493324A500454915';
wwv_flow_imp.g_varchar2_table(224) := '443900E81E868BA79D8913F6998396623B484CC242BFC0CF107925E948E0CB936F4A02881019166F5D2411804D5D032B05E07AA3F4421F79E41131EA0400EAED6BFEBF365CCDF5B9EEA5975E3AA86B00388277FCF8F13B8CDF75E5E2B642120090048800';
wwv_flow_imp.g_varchar2_table(225) := '80A08732105C5A6945D5F90804475CDEF39EF7C8885FD60BB8B97D170828C05250B0A76A003C86E891A1232BE1A429C7E215534FC598960988B30A2F807069908D936DADF9634490EB4911E042DCB4E476CC7FEE7104216142826250829F727A674EE415';
wwv_flow_imp.g_varchar2_table(226) := '84E4CF0804001C7AC0A178F5F4575622007D2B02D40A9A9CA82BDF57C0BEBFCAA39E2415464D030075DF7D837905030083597BF5CEBD320254EA01C4C65788482ADB651CAB5BD308A79D805586BE061C005612A46927566E5E8A1F3CF02B6CC32644E56E';
wwv_flow_imp.g_varchar2_table(227) := 'C4A57C0641C299E985002D7CB1795DE80A33B49687E3E299E7E0B8497330BCC03E7DA28354CE885E3F530A6C5120D94F18311A906269C712FCF0C1ABB13EDE30A06A00D4D0F165CAB0FEA38F3E2A467DFEFCF9D5963677988DAA4DD7AF07006AC988382E';
wwv_flow_imp.g_varchar2_table(228) := 'F7431FFA901C472970B5A850C3E21A9160DD01070FBDFAD5AFAEB20DAA91AC35D06A34D9A7FF99CF7C06F7DE7BAFF0EE7371E7210874ACD0ECF2738EE025318FB219EAB9E83AFA53B72300F8EFFFFE6F01008C00B81C14DC9F122D713B8280B7BEF5AD12';
wwv_flow_imp.g_varchar2_table(229) := '05D02249E514D0A1406EFA40CFB33FA2000D4500FC18A117A33B2AE28429C761EEF4D331AE34114C8B55313743E969DEDEC9921C4606C818347FE37CFC69C9ED58B0763EBC6282284951F44B520310B35897D18590245B010AE502664D9D85574DBF04A3';
wwv_flow_imp.g_varchar2_table(230) := 'C96B51EFD9AFF3BD04FE7A20D2E0502DD603908CA8010EB03E9E856DBEB7256000606F6B60081C9FEF91348BF1E4A6C5F8C64357617DBA16AD4920A43E0418F490C2D4473129A1ABB50B9DE8C2F06818CE3DF85C1C3B6936DAFD11C838B780F4A459095E';
wwv_flow_imp.g_varchar2_table(231) := 'DC492A4024C2F457845FE64BA98C859D8BF093FBAFC5C674EB800400EAC53202C022408EB6556FD635E2FA3B7F6A048029003586AEF17243E3FAB916193EF6D86362A0D5E869285CD7E3B16940397E981106CDA1BBA173170CA881BEFFFEFBF1E94F7F1A';
wwv_flow_imp.g_varchar2_table(232) := '040204186EF4C2BD0E3D2E0100DB1859A4E7821BD743D773A3D126B0D02E0056F553060A3E74FF4AB9CC63BCED6D6F13CA6402803DB9D4030004AD491023F31314B7863871DA893865EA2998509A24D5FE12730BB7CF0160311FE24C6670247E8CC51B17';
wwv_flow_imp.g_varchar2_table(233) := 'E1F625B7E3E1358F206E4B10C464A90CA465505AF1BC049ECF67274010E54580AF997109F214802D2681BE4BC00040DF65D8F47BC801408427372DE91100307C2F34A96980AE4237BAB33246C5A370DEC1E7E1B849C76084375CDC11212A621E54C2A6A9';
wwv_flow_imp.g_varchar2_table(234) := 'B4118619818387D44F317FF362FCE4BE6BB0D95B3FA06A00D493EE2F00A0DE7B4F37160DE47DF7DD0792071160907A58ABE86B2311ACA22700E0D4411AE87DF6D9670703AD930C5D4F9A469B86FF539FFA94F0F4D340D756DB2B5050D63E1AE737BEF18D';
wwv_flow_imp.g_varchar2_table(235) := '0230DC73D04880B6F4E975F1FC1901E0302065F3A3C15790C07D0C1600C0191334D6AD1D259C38F544BC6CDA4998509A003F6645ABC6FB2BF134BAED6C010C80244CA4ADF5F6C577080028B746F27C180068FAD7E91E158001803D2AEEA179B0860000DF';
wwv_flow_imp.g_varchar2_table(236) := '7B9E874EBF5BC29B6393B138E7A0B371CCC4D918E90FAF3290C52441AB342C74A679BEB4C8562A3FC5C28DCB70D53D3FC7FA60B5A40C060A0F407F0000250272EF10F5861558689BDCE38F3F2E5D068C343002A055F334B0F498753D0DA16B0A4073F46E';
wwv_flow_imp.g_varchar2_table(237) := '68DE35E6DC8E9C054C317CEE739FC39D77DE295D0C1AA277EB17B89D4E3A6485FE9BDEF4264C9CC8FEF77C2E83A63C94FCC83D2601006B005C00A0EBB97500DCC7808F007889F4FCB775B7E08469C7E3A469C763527122FC88DEBEDC19B9D59742DA4A8E';
wwv_flow_imp.g_varchar2_table(238) := 'BD0099CBB178E332FC65C95D7864CDA3028CD92863006068BE2307EA55190018A89A1944E7D50800607E9F8429719833148C0BC6E3D499A7E0A8892FC198608CD4FC93219099CF964AE1214BC03C92A0C8D0E232966E5E8EEBEEBF01CB9315329A75A803';
wwv_flow_imp.g_varchar2_table(239) := '805A30A07DEE34A09C1F4020400F9D8658C3E81A76D7B03D7F92688835002CB853363E0515EA956B111DFF7EF0C107F1852F7C4198FAD443AFAD2D505E036EC7FC3C23009AA3572A5F05177A2EDC87A60094095059FD066D0A8061FA34405BDA8A39D38E';
wwv_flow_imp.g_varchar2_table(240) := 'C19CFD67639FE24494B2A230EC69819DCA820976CED7E8F43AB164F332FC7DF9BD78FCB905F23739050C000CA217DF10385503004340897BFB121A0200694AF653A4050F6C3B1AEEB7E1B0C98760EAA8FD312C1826AC6334E959946018BDA52CCDB9037C';
wwv_flow_imp.g_varchar2_table(241) := '4E0264DB6284559DCFE1EFCB1FC49A6C607601EC8E148086DFF5270D2873FF2C022410E0285DD798D716E0111C9063802C7AF4EE9912D0E13A5A4C47E3CB7401F74DE3CDE1469C69C04800B9F8DD1A00050CFCA91180F7BDEF7D5204C8363DB71E81A084';
wwv_flow_imp.g_varchar2_table(242) := 'C774AF81A17D970740990015600CA61A00D6ACB0529FC57485A88003271F8899130F447BD88E30CB1B59F366BB4AC38D36E2900BC8EBC6EAADABB0E8D9C57866D3D328073919920180BDFD366BAEE31B00682E7DEF96AB6D0400B006802FC534F0D01D97';
wwv_flow_imp.g_varchar2_table(243) := '65FCE9B861A330BCD02A2D894C8D667E08CE4D1FC6F0699AA0BBE021651574922248136C43194F6F5D8742C0F9023BBF943D4D04D41F29002D02AC358455CFD1B95C7AE8ACD2BFFBEEBBC570F39FEBF96B189D069DBDF41CA243E3CC9CBFB2112A773ED7';
wwv_flow_imp.g_varchar2_table(244) := 'D594018D338BFEB80E298D376FDE5C9D6C28C6892DA515F21D4D37F0F377BEF39D0232B4085053003AFAB85653DA064826406D03740B23B9FE60A80190F1BD04004811772618357C2CDA5B47C14B7CA1B666012C89FFF20E1C825AE6B23284E4070880AE';
wwv_flow_imp.g_varchar2_table(245) := 'A4039B3A37A22BEE805764B4C03700B05BDE50B6D39D49C00080DD1B7D9640230080AF3719C51BF80200D2B88C02894618DC8F1324DC09C79E8601DACA1EB23841B9084919D0F80B8740214497976144CA1983430B00F45403C02BA431A6215EB76E9DCC';
wwv_flow_imp.g_varchar2_table(246) := '1658B3668D78E637DD741356AE5C29C69F8B7AF30A466850E97D7774748811A7E74F8F9D465C8DB71A7497798FA0815EBF86EB75DF4AC0E3E6E8153C9C70C20938FDF4D3317DFA744919F01FD3018C4EB8C0444104BB005803C01483A625DCF31E4C0000';
wwv_flow_imp.g_varchar2_table(247) := '7E2A8CB99D1DDD288625699F2B97E37CB266E04BEE9FF335180890CF1809E357FC8EA5AC592260202C04D222C874827501F4F995643BCD1121FF000020004944415468500206001A1494ADD6BBC1CDBB00D80678B5B401B62501BA2B6D8061A5AA9F45D0';
wwv_flow_imp.g_varchar2_table(248) := '61504092F0B75446A2CA8062B1FE05788522BA11637814208B5301005121819FC4289213C82F222914E097F3702941400FADCCF92C01CFC3F933CEC389138F433BFBA6BD48FA9B0584703C829FD0DFEA9771C0BD450068506BFBE06BDB0099A3E72C001A';
wwv_flow_imp.g_varchar2_table(249) := '4E1A7C7AEDEBD7AF17A3BF6AD52A31F4F4C89F7EFA69F96CC3860DD8B871A378C934F2EAD92BE9901E4F2BEBB51890C6580183B620721D2E3C4F82040209FEEE0205B73EC005009A06E03ED801C02243FEDB77DF7D3163C60C4C993245FE669D025B1C59';
wwv_flow_imp.g_varchar2_table(250) := 'B0C87DB3CD9000E0D65B6FDD8107C06D791CA81100F6E807326193DE3D476593AB226FB72C168A79FB5ECC413A10121FAEC71918521C29065F6FDA7C4E001BFA7370256C1AF0D37C3A9F4EEC245A601B601815316BBF5978CD4C6B03B47771FF49C00040';
wwv_flow_imp.g_varchar2_table(251) := 'FFC9B2A9F7946431566E5E826F3F7015367AEB1196D9C74F227312A2F0D5C64A681F81579090BFD014CB5834568DE70DD31C831A27650C4F49870A446156010049CE05900548C322B2A09CF39857971C0AE48C87F90B959ED8DC19E7E0A409C7CBF4B4CC';
wwv_flow_imp.g_varchar2_table(252) := '8BA5F8CAE3CB5B5EB0F4DCEA939DBB7DEF7A380D83ABE1772BDC6940EBF100B8AC750CC53387FE8A57BC420CFA934F3E290C82F4F249244400B065CB169919A0ED749A975743AD9EB5E6F6F59C090CB84F4600942697EB6AFB1ED75390C07DF15C341AC0';
wwv_flow_imp.g_varchar2_table(253) := 'EFB492DFE50AA805001A05A001E4F1B80D8F47A34F50C0A8C081071E88A38E3A4A0001D3046C5FFCCE77BE2344405A04E83E3C7A3C3D071201B1D3A027AAE49E74D15F0FE2B22D2BF0CBC5D761E9334B11B4798858D69FB04B25C8A328EC00A0A14F78DF';
wwv_flow_imp.g_varchar2_table(254) := '4628148AF0C80DC0917E4C99F0AE4CF31A819C8C8BD4BAF9A01FA607328EE0CD2771CB9206510E2E327E9F8FEC26152F3F0BCA210EDDFF505C263C00F944445B4C027D95800180BE4AD0B6172F862FC7459DCB70E5DFAFC1B6D2366CDBB219458FC62744';
wwv_flow_imp.g_varchar2_table(255) := '175BFF38ED2FCD0BD676BEB83EFDCED7F2C3389F075FF19E84E3503C2CF297E7435802BF80D3A6BD1C278F3F11E3829C4086BDD71CB15A441141C2696DF5879DD40E9851A3A4BDF3B5CC733A0C88AD771C06A4465A0D2BCF4399EEB82F1A6386CFF7DF7F';
wwv_flow_imp.g_varchar2_table(256) := '7F2C5AB4480AFC3A3B3BB16DDBB6AAC1A7D7AE9EBA0B7C5CE3A720644760940FCCE1A255F60A5A1434E8776EA15EADE4B5F0AF76DFB57C05BA0F05050A16F839BD7F0280D9B3674BD482F50BBC561DEFEB1624AA4C79CDDC073B0CC835E01619D6465534';
wwv_flow_imp.g_varchar2_table(257) := 'ADA1A98AFE782C976C5D819F2FF92D963DBD0C615B201E7F7767378A41C8DA5429E4E3F15AA2D63E1F8E06BFABD8811005F84928A0989D2EBC7F024EC2E84871C4F4C3F1DAE9176354C100409F056E3BC8DF0B59ED536D823109ECAA04328EFE8D307FDB';
wwv_flow_imp.g_varchar2_table(258) := '625C75F74FB1C15B2FB1CD161491251912E6498B3E1825E8CB22F080C78A1204413E3086C69FB306E436AECC32E72F85D8C3D9B3CEC2C9934EC0688CCAC3FE9C50E871244B8880442DF9E675170117292310E447F7AB796DDD50B9EC3524CEF63C56E92F';
wwv_flow_imp.g_varchar2_table(259) := '5FBE5CD6D5163D7EAF80420104C3FD5AA0C77C3D3FD708811E4B8D9B1E47F3EAAE1174C100BF770183DB86A7E7CC6DD540D70204B7D2BF1618D402895A10B2336112C4B08681C69FE4458C683062C03A01FEE47E18456011A2462334E2C108007906D831';
wwv_flow_imp.g_varchar2_table(260) := 'E0322B6AC483DB71BFFA772D30A9ABE09DACC0B6D39F2FFA3596AF5E0E9F8CC8818F344AD1E2B748F2A81C7583332F39DAB7CF0B715A041483A280D718890C11E2683E3F61918187C3A61E8ECB67721CB03101F659DEB6030300760FF493043220CA622C';
wwv_flow_imp.g_varchar2_table(261) := 'EE5A865FDEFF6B2CDBB20CC55280B6B00D51479EE30F5B42C47E47DF0F48431ED3CBCF73EBAC27E03F317A7E802CCDC099E6C39212CE3D6AAE500D8F4C46E400A090875539912D60A781300EF57E4AAE07ED1A3B25A9718DB41A6A7AB60CEBD3A3E76734';
wwv_flow_imp.g_varchar2_table(262) := '4EB5464D0DEBFF67EF3CE02D39CBF3FECCCC29B76C2F6A2B5457DA5505512540600408518D310687E0D8268E9DC409D8718A93388ED35CD28B9DC48E531D27B131C6A61A3088AE860AA8212169B5D2EE4ADBFBDE7BCACCE4F77FE73C773F1DAF7457EC6A';
wwv_flow_imp.g_varchar2_table(263) := 'D14AF7E87775EF9E3367E69B6FBEEF7D9FF7799B2D71949D73F45172FC58D9A696B58F4F3F4B15B903FB9EAC35AE2DE4F173A78A3EB509A0F3D3B11E694CE375F77D4CFA9BFBC795C15801030620F6F5730E17034A4B03731CCAFFA77EEAA7229E8017F3';
wwv_flow_imp.g_varchar2_table(264) := 'E4EA878E6938DECA9FEB3C72F0517DFCC18FEBDB8FDEAB5EB727753295FD4AAD6147C53060A4F26EA699E2E031AF6B68FFC9E194868352FD7AA8B23D50DD1EE235533128345D2ED28BD7BE58DF7FCE3BB4B8BDF898AFB77082851908E0BFC0002C2C8463';
wwv_flow_imp.g_varchar2_table(265) := '9E01E8CABAD4E6F2717DF6C1CFE9C6876F543FEF699A4632C35CE5A06935AAAA7FCC976A4E300CDF2BB469B801F24CED561BB52EBA2056C35A6B26CED49B5E74AD2E5971B12607134D1476874643245B915A7874FDCED300382BC254095A9199E2471101';
wwv_flow_imp.g_varchar2_table(266) := '003EF4A10FE9C1071F9C630BC26531F2B9DB278F12031CA0F01C2C682B9FBBB4E56E0BDDFE7A53E4A935EE63CC0A1800A4D6F0381390D6EA4FADFE94F2E73C29084A8FE39AA9BFDEC7A500221DA39909BB08FC99D3063D76E602C50E23C21C9166480C00';
wwv_flow_imp.g_varchar2_table(267) := '0C803319D200C714F49821381E0B6DDBEC365DFFF017F58D076ED6AE62975A4B5BE1C3AF66A5F2501D69ADDD4E4783E3B0AE09166CE51DCDCCCE684883A1E95C79572AFB0365FB339DDE3E5DAFBAF86A5D7DFAAB03582FBC1666E078CCC00200381EB3F8';
wwv_flow_imp.g_varchar2_table(268) := '7C3F07057EAA5A7BF27DBA6DD76DFAFCBD9FD7A67D1B954F646AB5BA11E0477A532B92A28FF54597C0BECAE867DC50F2A1842916449FF532D34431A157AD798DAE5A7BA5CE983C4D2DEA0B136C450956F7250041100330CFCB56BFDD001C6E7A3DB5BCAD';
wwv_flow_imp.g_varchar2_table(269) := '9850EE77DD755754C723721F05CF717C6ECBDE017956FC50D8DC83AD6D0F29B5BC53056FC53B3EF4238D71FC7BFE6E7A5FE30A7EFC9814108CB301E36E88279B4EEED9EE0DDF3FCF2EED32C8FC304FFEDC00E9277EE227C40FAE92143C1C29A5D10CC77C';
wwv_flow_imp.g_varchar2_table(270) := 'CFF5683E3F54CDE8EE9DDFD617EFFABCEEDB779FFA8BFA2A26DBD1ADAFEAD7CA2A94765BB9FBFC1ECD499FEC984CAA087A2DFB8D6BAA8DDB69A8EA60A9C5FD257AE1EA17EA9ACBDEA073A75FA016607AE1B53003C761061600C07198C4E7FD29C8D12F15';
wwv_flow_imp.g_varchar2_table(271) := 'C17E9B878FE9E6476ED09D5BEED0CED9ED1A66F435A7D14BA69CCA7EC7F80A377F96ABA4D20A295879E30618CE0EA399CA92E9A53A6DF9697ADB0BDEA2B5CBCFD57431A9AC6AA2FDF815B9D6D42468AAB31CD56BDC578E9249FDFAB68209DE23829FFCF6';
wwv_flow_imp.g_varchar2_table(272) := 'DFFDDDDF8D543D47E2A7CA1FCBD615F24C81A74182A9D23E12D59FE6D68F2B3C8FD5EE082BCCF49CE3613F0603295B60456F66221D87CF65F747CA123CD9847A8E7CACC10EE0C716BFE735AD69C03CBDFCE52FD73BDFF94E516F8086469CCB858C0C22E6';
wwv_flow_imp.g_varchar2_table(273) := '8060A49434458B8EF5C59976F477EB968D37EBD62DB7844BE09066D46AB71B774564B0D0C2FAD8AF15A08BF53C3A17F3422AECD2D6129DBFF87C5D79F655BA62CD159ACABA47BB6C8FF5F617BEFF3C98810500F03C78C8CFF82D92E78FEF5D522FEF6BF3';
wwv_flow_imp.g_varchar2_table(274) := 'A1CDBAE7F16FE9C11D0F68F7CC1EF551D0A435B59AF4A8637B65CAEBC93900808FB48E32C3B9964C2CD50B4E3D4B67AF3A5B2F5D7C99961453C4503509598086A0D59BFA2C4F47645BD9DBF24FE97C9416C16D5BB76E8DF43F1ADC50A217E58F92E03774';
wwv_flow_imp.g_varchar2_table(275) := '360ACF4A09A06066C08ACBAE84D48AB7721FF7BB87B24802133D9F3E9ECFD2A87A2B6AC6EFAC045F77FC3C2834EE971FDFA7AF97020553EDA99F7FDC2531CE608CBB1CC6C769CBDFD1FF76BF3077A4125E7DF5D57AE52B5F197F5368C88C42AAF0C79FD5';
wwv_flow_imp.g_varchar2_table(276) := '31ADB55AEA0D87DA3ADCA6FB767D5BF73DF66D3DB67BABFA555F792B57990DD5AF7ACADB4D2D85637DC16075F3AE8ABAA5416FA0E9EE94CE5A7D962E3CE542AD5FB15ECBB365D14A7801011CEB4C2F7C7F4E662CC4002C2C86639D01D43BD1D0ED7A2252';
wwv_flow_imp.g_varchar2_table(277) := '02CBACD6F6D9ADDAB26F93761EDAA5DE10FF37F4FBF18801C89495AD4891A2B940E449678526F2AE964DAFD0A9CB4ED78ACE0A2D0E4B89EC007ACDE7AAE935D054626D0AB445E781A3830169AA9F15A45BED92A78FCFFF739FFB5C74CF7BFCF1C7477508';
wwv_flow_imp.g_varchar2_table(278) := 'B23957817DD4CCB383FB4C77A7F43B9FA794FAF873B1B2767EBE152ABF519244D05323C03FFC9B287BA2EEF9DB65839D5668EB19A509DDCE0F96270085287DE7F6F337AC053F8EDE77F1215BE28CDBA0C0E022050E691685DF67CCFC700ECECB39D2F44A';
wwv_flow_imp.g_varchar2_table(279) := '17253250E0B3CB2FBF5C6F7CE31B03089C7BEEB9715F06369C37CDA038D6758D42269EA49EA8B44FFBB56DFF76EDD8B553070F1DD4B01EA85FF734A8FB6AB7BBC77AA9486F190CFBEA6613EA169311A84A27C653579DA2E5DD655A5C2F563D2315134504';
wwv_flow_imp.g_varchar2_table(280) := '062EBC1666E078CCC00203703C66F1797E8E817AE267B25EA28C167E08287A9EE743F529C0435A9EDAA23DCAF1786535A17C300E9407A4A44A1E7E595545D4610F2A82D4ACAC29B5DAE4FB376E88C8168435A88751C12D6AB4CFF34AAD6907ACA124F1F5';
wwv_flow_imp.g_varchar2_table(281) := 'FFC99FFC4954B47BF8E187E794B0D3DAD21A00BE84A97E53F3A6D8AD14D360422B345F3FA5B5C99FA7300E7E717E28BA033DCE6FDEE7378A9FE3AC24C7C1C693DDB66316B80F571DDCB66D5B801B7EEFD8B1234A12F303FBC17BAE22681093321B66379C';
wwv_flow_imp.g_varchar2_table(282) := 'E5C067F6F5A72E06DE0708F0723962BB08388EF10042B8A72BAEB842D75D775D3439A2BE40DA0F216522CC5A787EC7598AA77CF4A34EBED04851F42798179CF57554EAABE96E4523A0ECD80100E3640F11C84AC02C6E2DD638F50688746DD7DD665D1F65';
wwv_flow_imp.g_varchar2_table(283) := 'EAEA7C6B7AE1F3851988BDBAC0002C2C84E3310308ABA6E1C91353EB9AFA7C47A366BF9B518C57031C9D636C0C4F76E634AA3FB5BC8FF4B77DD77C876A7D1FFBD8C7E2875C7FDEB3020A413E18C47B58B7F6C5DB076EA5EE287DA7C4F9FC28C1D4A7EEE0';
wwv_flow_imp.g_varchar2_table(284) := '39943C8ACE95F54E3DF5D4281E44653D2CC5B47C6FEA3A48FDFAE3F3301E0B70A4CF1D5390BA0A50E4286203812D5BB644C603950B990FCA150390523A3E4D97F41C981548C76BB063A6C46E08A7F9794E0106808457BCE215A28FC255575DF584DE037E';
wwv_flow_imp.g_varchar2_table(285) := '86AE4CC8359F2C35F2BB5979CFCC778E72E13E33175F38EBF370061600C0F3F0A12FDCF21367C0A977CE434F7DDD69DA198A8D0E766E95EB92BA5636E9F79CABCE67F8FBC74145AAA0AC6419878306B172A9A97FD14517E9924B2E09BFF719679C11A573';
wwv_flow_imp.g_varchar2_table(286) := '517CA6F34D99A760E67804C0A58C85AD67DF5F9A8E882266DC660D00052E657CE79D7706208045A0A111DF63EC56E6E9F90C02EC8AE0BE50F6E396BB0116C79B250000BDE52D6FD17BDFFBDE98277FCFDF35DB621785E7FB78CED3C29E5A988193710616';
wwv_flow_imp.g_varchar2_table(287) := '00C0C9F8D416C67C5C67208D944F2BE85941A0E408F0FBE8473F1A417E04FCF9E540B4D49AB632B3EFDF6E8334A88DEB705E2C69330850F758F8975E7AA95EF4A21785854FB01BF9EF94D24D69EE71059D52DB4F8BE69E6726D3FB3A12C84829765BD9D0';
wwv_flow_imp.g_varchar2_table(288) := 'F8543844F1D3C808F7887B1BC014501008B7042E0A5E698C451A6099B229697EBF9F910198D902E68D9E0A6F7EF39B831971EC80018B830C0D007C9EE3BA98164EB6300327D10C2C008093E8612D0CF5F8CE8015B27DD49CDD4ADB14331DF850FA9FFAD4';
wwv_flow_imp.g_varchar2_table(289) := 'A774C71D778462E3182B63D3FD7C370D84B345CCFBCE00488180AD66AC57ACD6CB2EBB2C143F5DF4505E54BD43E9A72F47E65B711968F8DAC777769AB3D96FEF73A77104A95B20AD8D6045CB3C318FCC19F103CC256E028301FE0D58607EB857BB3E9C32';
wwv_flow_imp.g_varchar2_table(290) := 'C9B5D3CC80F4FED367C6DFCEAC200E8200418000EE01071902D4D2024A4FE51A7926E671E19C0B33F06C9C810500F06C7C2A0B633A213390FAB76D35DBE70E158FC2FFC4273EA1AF7CE52B4165F39E696747ACF35EAA4C52EB7B9C6A062C703C2E01E87C';
wwv_flow_imp.g_varchar2_table(291) := 'E87DA2DA51FCE79D775E28FE54E98FFBC8AD10CD4CA40080091B67218EC7243A28F148E7372360259DBA35383E05054EED236870D3A64DA25FC2EDB7DF1ECC8ADD04CE664801938B253963C1A0CDA0C7736457088C0A7348D32140C0F77DDFF789788923';
wwv_flow_imp.g_varchar2_table(292) := 'B9698EC7FC2C9C6361064EE61958000027F3D35B18FB31CF806BCA5B41A050B04A6FBBED36FDEFFFFDBFF5B5AF7D2D3AF399663E92B56D00905AF8F6D1A3C0DCD90FCAFBACB3CE0A85FFD297BE345AE462F193AA972A582BF2D4DA4E41C6B8153E1EDD7F';
wwv_flow_imp.g_varchar2_table(293) := '3C5D00E9048F038C270B224CAFEF9E09A95F9ECF9917B208000037DC7043802D800000C155135D32795CE9A7F504C65D103E37BF49132453E0077EE007629E8F148771CC0B68E1040B337012CFC0020038891FDEC2D08F6D06EC634E7DFD28255AD5FECE';
wwv_flow_imp.g_varchar2_table(294) := 'EFFC4EE4F73B4D2DF553A78AC40AC874B8AD72FB9F6DD562DD63EDBFFAD5AF0E8A9A00BF1474A40ADE0A2F55744F66E1A77EF96782D61E57BEA92BE04840E4C9C6E079E27C0EBA8409E1B56BD7AE8813A082E24D37DDA4071E78203209B8FF34C8316554';
wwv_flow_imp.g_varchar2_table(295) := 'EC02F07CBB99120C0DDFE1DFB805F83700E0DDEF7EB72EB8E08288A7B09B672108F0D8F6CFC2B74FFE1958000027FF335CB883EF72069C16667F3D016B7FF8877FA8FFFB7FFF6F28A5B4688F1551EA87763EBB03010109281C2C57A8688E25A80F6BFFED';
wwv_flow_imp.g_varchar2_table(296) := '6F7F7B58FC283D77B0ABEA4A7952D565DCF24F8308B945E7D68F5BBDDFE5EDCFFB35AE63659D06E18D330E29081A67055237411A23614093A6F9710D3A28525701B7CB7DF7DD174080E7E3E245065AAE56C8FBCC79EA5EE13A6986068C0E41957FF12FFE';
wwv_flow_imp.g_varchar2_table(297) := 'C5A82648B0E582F29FF7F12F1CF03C98810500F03C78C80BB778E419B0FF18650205FD3FFFE7FF0C9F3F7E7AD2EDACFCACE8791F654F043B8ACB31016930A10BE2E0E32737FDDA6BAF0D7F344A27F5D98F2BF12758D38D768C411F99CE6F3E8BA246D99F';
wwv_flow_imp.g_varchar2_table(298) := '2D6474B400E1C928FC74B6A2824372092BE01490A06C5BB42F3E42FD7D576AC8E6FE6862159A313E71FC14BFE1C5BC9A11F8EC673F1B81832871C714B8A680B3370C2CF8EE786AA63F830DC025F0BEF7BD4F6F7BDBDB74E699673EC9DC2EEC96851978FE';
wwv_flow_imp.g_varchar2_table(299) := 'CCC0020078FE3CEBA671C948489B4EB50219F7DBA602FE649EA2712561DADF3E69940D657CFFFB7FFFEFBAF9E69BE722FCD32E75A985CBFBCE0070E4B9AD588E031CBCE4252F89E23458FE0089A82FC0BCE7542C54D39FC03FA1E59B19A659220D8BA2E1';
wwv_flow_imp.g_varchar2_table(300) := '116D8EA38662D3B5305A1F4771638A200F1B70D094388CDFF19DF83D2AC63452B8FC6A6ACA8DAE33A7896988E4839AEA76D1637974A6F81555139BC13555F09A71368AFBF0B8EBB21CDDC2082C341D9B62F4F45FA0865EA73C5C7839804756298BE6501E';
wwv_flow_imp.g_varchar2_table(301) := '2105EFF2B8864106F3FBC8238F0810F0E94F7F3A02070101CCB15D2C5ED3477297A4EE0B9E012082824AB0313FFCC33FAC8B2FBE786E4F789D98F57146421ABB70B2EC837186667CDCE36EA393E5BE16C679FC676001001CFF397D569CD1F4ADD3B84C61';
wwv_flow_imp.g_varchar2_table(302) := '5BD18FFB6F2D006D5D3DC10A3C8295F9ACB8C9A71844AAB47D58EA97E73D68FADFFFFDDF8FCE7D14AF618E50008002FBEE3D2F8DE2CB8E58ABDF606ADDBA757AD7BBDE15563F16BFD982F05737E67AA35E43911E36898D052ACACB52FE15BABFE6D8C395';
wwv_flow_imp.g_varchar2_table(303) := '1569B6342C433BAAE5E71135E1010899EAA43E7CA552031DD4B02A83C5E80FFBEA0F7B1AD0E48716B35519306250349DECC24ACE0A15792BDADBB68A960AFCEF79A145ED69B5B2422DB5E2D8A65BDDA8DC32167B55ABDF2E021050A536A008E31CA2FA6B';
wwv_flow_imp.g_varchar2_table(304) := 'D545A13ACB35A4814E91376E8CD1B0E337DD99E6D00400A779A50A9EC0408A0A01D428BD4C1681FB1DF879190898D5712AA15311D39E033C9B37BCE10DFAF37FFECF47A7415E698AE07835C267FB5A3FD2F85276C77BDEEB747C2DA7B220950FCF5430E9';
wwv_flow_imp.g_varchar2_table(305) := 'C9389FCFD5312F0080E7EA931D3546F1E6B6FF38B5FCD30D9E5A0516C0A9A03819A7C911FE6905383798A17E3D15FD3EFCE10F47195BFB92B112990BFBDFD3423FBC97560DE46F287F22CCAFB9E61ABDEE75AF8BAA7D58993ED66985B42D6E38FB46C997';
wwv_flow_imp.g_varchar2_table(306) := 'D0E04F30A31B3D38B2E19559A397B6DE1BE5386778F3472E0D54E9607948FB66F76AF7813DDA77689FF6F5F769977645C7C4C170103FBD000083390040FC014021FA28000042F98F7E8A76287F7E96B5A634D19AD074675A8B27166B717789964E2ED5D2';
wwv_flow_imp.g_varchar2_table(307) := 'EE124D1553314EDA3D872D1FDD9600151E651DE084510F680435A2FC99068044114D198C850049417BCCCDBD953AEB94E742C9613206A8C9005B0380A38E828B2991FEE7544907583A2B80F56B10C0732323E3CA2BAFD48FFDD88F4560A6833DED42F01E';
wwv_flow_imp.g_varchar2_table(308) := '3819198074AFA6A9A4E97E1FDFFBDEEBBE6F03E8051070324ABEA31FF3020038FAB93AA98E4CFDD2A654D3C02736765A75ED480221150A27D5CD2716A4AD76DF1F021E8B127FFFFFFB7FFF2F948A03F7B0FC99372B0ACF57DA7D8FCF0114D0D38006FCFC';
wwv_flow_imp.g_varchar2_table(309) := '94A1A5573D297E7C96D69C8FBF0B7ABB5576DA07D5DFD8C72346A069CAD1287F68F851AB5F05453E22C973BE53EA5079507B7B7B7468F690761DD8AB5D333BB56776AFF6F6F6EAC060BF6686339A297B3A54026450F28DBFBDAAB1F9AB686263AD1B1D15';
wwv_flow_imp.g_varchar2_table(310) := '474C835D083186AC88E044E6AC93A1A85BD1A676B298D4746B919676976AF9E4322D9D5CA689F6A45E30B15A4BA6166BBA3BAD76DE51867381F6CB7535F2F5A3E84B15730C0AF79BC535D0F90D30500016C7491890A6F9FF3C17522AC9CE8009F8CC673E';
wwv_flow_imp.g_varchar2_table(311) := '13B102CC39CFC260977FF3CCDC4888CFDC7CC8BD04380F7F9391F1233FF223C108709C191F83C093BD5A60CA7A1DC9FD975AFC47721D2C0080934DF23DBDF12E0080A7375F27CDD169239671FFA601814182859C69D0F17F9F8C11D3A90BC0828DFB45E1';
wwv_flow_imp.g_varchar2_table(312) := '7FE4231F099F3F11E644E55B699B1DE07EADE8ED0EF07B2C00AC457CFB4494935E4674BFFDD229DD6AF0114A1CAA9BC037CE1DCC3ECABE7107E0EF0F4D1831707970E9D162B925F5D5D3BEC17EED3AB85BBB0FEE8936CB8F0F366BFFC183DA7360B7F6CE';
wwv_flow_imp.g_varchar2_table(313) := 'ECD36CD9D3302F55135C5034D6757BD07E225D80926D4206468C7BA6321FB5708AA0BC5121A100204D64019F0EF226302F064DF3C5325351179A28BA9AE84E6AB233A133DB2BB56C7A99562F5EA595532BB56C6279800318027ADBC312701A5890803CA3';
wwv_flow_imp.g_varchar2_table(314) := '53CE852B3009C43ECCC518D0B5B1012E71E9AA9A6BF36B8B9CD800B20560030812A4BCB0B305C68B06F18C1DB4694B9F63D9233C7B32047EFAA77F3A9E27C7A600EE645580E3313E06F3E9BC3E617D26F39DB22727EBFD9F3482FA7B3CD00500F03D7E00';
wwv_flow_imp.g_varchar2_table(315) := 'CFD4E5530130EEEFE79A696B560B058386713AD4F103CFD4589F89F31A0018E4706F74F1FBF8C73FAE5FFFF55F0F4A19A58DB230EDEFC2334EE743F9F33220F2FC50B50F5F3F95E688F6F72B054A9EF3C692CCC2D51D42385C01A300BB39E7FF881D8041';
wwv_flow_imp.g_varchar2_table(316) := '87D62F863A303C1896FDB6FE366DDAB3495B766FD1AEFDBBB467B84B7BB33D710A2CE802BF7AAB150186E8CB920B9552CB2D6A478ABD713C1C8E3C4411B79C82180A7FE46A083FC3688C44D517658CB97189A08C8761A937F3CBA1B9CA61A996DA5A544C';
wwv_flow_imp.g_varchar2_table(317) := '69D5C44AAD5974BACE5E72A6CE5C728656765668A235A5A9CEA268BFCCD802F08C5C1811E098E18CA868841B6E045BDF113B515573B1170663565CFC9B6A823039D410D8B367CF131A01B985F061370CF7D0A436F24C79DE3C7BD801989CBFFC97FF7294';
wwv_flow_imp.g_varchar2_table(318) := '0FA61193D9B19371ED7B7F7B1ED3F599C60604307564E728CD34055C478A077A26F6EAC239BF7733B00000BE7773FF8C5F795CF1A791CD46F6EE5AC7669FCB4F1F69ABD44278C6077B9C2F301E0485F2C7E7FF5BBFF55BE133C682A7431DF4BF9BC5F01D';
wwv_flow_imp.g_varchar2_table(319) := '940ABF01071CC79CA024981F8AC8E0EF7FCF7BDE13C5656C599AB6B6F0E4B7630038574496A34043E2DAE26F74608D154EAFF9ACD46CD5D39EFE01ED3CB4531BB73FA20DDB37EAB17D5BB477B04FC362A0BC9B85954F205F80893ABAC787626D2CEB4C75';
wwv_flow_imp.g_varchar2_table(320) := '49EF7A69D869DC0B01EE1A491FD71EFD2BACED09ACFAF4350A32187DB3F91E11FEB00A8C3F270701555D362E850C1E034A042050282F7365FD4279BFA5E96C5AABA7576BCD8A33B47AD92AAD5D7181964C2CD5646B42137957113510590723604256808A';
wwv_flow_imp.g_varchar2_table(321) := '00136964BFE7D1CA287DAE06AE8F3DF6D85C3C073D07FC3CFC5D9E29CFD1FD00FCBC0D825D53E0852F7CA17EF6677F56AF79CD6BE29939E3E3382FCD67FC742968E26F07351AE0BAD2A201968182E38416ACFE67FC113D6B2EB000009E358FE2F80FC441';
wwv_flow_imp.g_varchar2_table(322) := '706C7C2B372B79941B3E527CA12842363DD1D1583F3E26556CC77F74CFEC19D3E027BAD211E98FE5CF7D738FC40120E451E2CC8DDBFE5A49F09EFF0600A0FC292BFB810F7C209AF7707CDADAD660C941689EC33926205CFB0DFD1D297E58BE45AD5EDDD3';
wwv_flow_imp.g_varchar2_table(323) := '81EA900ED607F5F09E0DBAEFB16F6BC7EE5DDAB677BB0E55B3CA270AB5275BAAB2A17AFD5EF8CEBBAD495558CA44DB876B013D9AC4138C52EB9A14FE2673219EA5F30D477A7F309712D83C8BC618748D018089D4AE48E76B98033219EAB881862588C0C6';
wwv_flow_imp.g_varchar2_table(324) := '5CEA0CABC82204961056580535808A273BA009103C77EA0C9DBDF2053AEFD4F3F48245676A71B6445DE2056004F00014C513EA0DB8B29F5D2B667452178B9F318A8B980CD2057FFBB77F3B62043CEF3C231FC76F9E25CF95F79B7B6E409F591E82383FF8';
wwv_flow_imp.g_varchar2_table(325) := 'C10F464CC0C9E8FAE29E5C33C14C1EF7C8BA648ED8EB06BE0450BACBA441510ABE9ED91DBA70F667C30C2C008067C3537886C690A6335908B0D1A14A6FB9E59608A442582218107654AD7BFDEB5F1F3F74A3B31BE164A541B1ECF0F313F0475D7FEE1BC1';
wwv_flow_imp.g_varchar2_table(326) := '0F0840B1A04CD2663EB6D61DE4C77D0392CE39E71CFDD00FFD5058FD50FE0607F635DBE24F03AAC27826227EA47C43CB419B07D9DED8BDB39AD5A6038FEBDE6D0FE83B5B3768F3C187B5BFDE291558DBA4F68D72FB46AC013504001128DB2695AEA1E123';
wwv_flow_imp.g_varchar2_table(327) := 'A2601450D0FC9B00CFC34CFE9C9D3FF2EFCF2DB7A0F147A97791A2380A4A305008D73FFEF851AC42C3D737A022CED5F8EAB361A5BC5528EF14C1120CEBA186655F753518651848F5B0D68426B4AAB35AE72C3957EB57AFD7F9ABCFD38ACE72E575A16C08';
wwv_flow_imp.g_varchar2_table(328) := '2092CA0C08910520208831320B127A3AB55ADD608867049003CCD25BE07FFDAFFF15018280087719642DF3CCDDBDD141B0BCCF7701C9742DE44576C05FFA4B7F496F7CE31B9FA19DF9CC9ED68096ABD8CD419C047342F604E5AE59F71446A259128C07A0';
wwv_flow_imp.g_varchar2_table(329) := 'D6868219849315003DB3B3FBDC3AFB0200786E3DCFB9BB71E094A95383019422D6300AF1A1871E0A25EFE03F8425D438962E6553517CB6BC38B19224BD7E0000200049444154018153E49E0D82C2630AB567653B9A052CFFFFF6DFFE5BF888B76EDD1ACC';
wwv_flow_imp.g_varchar2_table(330) := '86D3F8527FBF03CBA2A25DAB15E7011471EF575C7145E48B038A56AC581167B6B5E860292CE3505A2845F4622EF5240DEB4A13F8DAE1E409FBE7B34EA5833AA8476737E9EEC7BEADFB1EBF5F8F1DD8A119F2E435548BC8FD3C5749AA3D89F50D8FAF3CB2';
wwv_flow_imp.g_varchar2_table(331) := '04F89D07F50FB888324123A0805B3D6A0DE4B98A3A5777C0380825C4879E472E3FC8A1CC862A0BD201FBCA06853ADDC5AA6BB214A436D444D5D770D8D350B58A7607D37CE4F3C7EF3F2A29045D3F4A670CE58CA5CFB80218E067CF54E35E8812052306A2';
wwv_flow_imp.g_varchar2_table(332) := '9E0D37489915AACB428B8A253A77F9797AE1E997E8C215E769556BB95A553BE67758D4E15E2073228A260598C9625EE2198F5C1901B82041462595F90D18605DE3EEA1A4B3530579DF6BD9EB976BB96F80C19FD90094E24FFCC44F84720C30579601926D';
wwv_flow_imp.g_varchar2_table(333) := '21DBFD70A2B304E618A511784B41A75D1A69302FA088B2CAFFF93FFFE7004731BFC361DC0FEB1E1600C043FC03C1AC06C5CCCB0200788E2A87E4B61600C073F4195B50989266B323DCA049FFCDBFF93751739DCF5C9B9ECF50800887534E3925ACDD1FFD';
wwv_flow_imp.g_varchar2_table(334) := 'D11F0D56C00151083FA75185DDF994E56A9F99894D998C54D0A56389E237FD7E2800AC41F2FC19B7953E42CE40C042D382D48565501CE4F593274EAA18C028BD06E777DB5A68F1508EE143C727DF58E9FC131D5E0EF0F14B339AD1E67D9B75FFD6FBB561';
wwv_flow_imp.g_varchar2_table(335) := 'EF43DA72F071ED1BECD3201B2A6BA1A49B68F9A8081815FC9AE43C5204A1FAB38A2C82C63A1E96CDA7C1C287953E6218461906D407089D1F8EFF42F930573DACC2F59075AA7029B4AA5C797B4ABD7E1D590AAD9C730E54D643D579A1A2D35531C4EA6FB2';
wwv_flow_imp.g_varchar2_table(336) := '041A90655F01B47F5308A8D4B069DC93B795E7453003D439685C060D5DD12A9B34C4B24DA063A1ACCAD51974B4BA58A175ABCED385A7AFD5B92BD66A516B4A7985F3A0D34CE05C7544D88AAA011A113BF0675F81BF46CF9686427FF4477F14751E366FDE';
wwv_flow_imp.g_varchar2_table(337) := '1C4C003F0001B33E06B50E0834983443446D879FFCC99F8C52CE0E00F5F9F93D5E5CEB9959F17FF6AC06DE69A0E278AA2AC7709F5FFCE217F55FFFEB7FD55D77DD150C475A4E997BC05DC0BCBCF9CD6FD63FF807FF60AE647500BB11E03A51F7B5709D13';
wwv_flow_imp.g_varchar2_table(338) := '3F030B00E0C4CFF909BB224A21CD062040EA577EE557F4C94F7E3294BA05982D1BBF8700C4050008C0FAA58B9A23B01D30648BC937732203876C855928A76330D3C13DFEC66FFC4654F8732C8305A7EFC151E2B60CF9CD39610AA04629178BF2A75D2FEF';
wwv_flow_imp.g_varchar2_table(339) := '3BCDCC146B94F80DFFEA6CF8C2D5EAAAAE50B6B5DAA169A5322F359395DA34BB451B763DA48DDB1ED686C71FD49EDEEE60038A6E1308471DFC4814281A0517A973FC678537A2DEABAC52BF1836750350AC05CA12B450AA2EE1D1A9BE27CD76478C409529';
wwv_flow_imp.g_varchar2_table(340) := 'ABDACA8699F2AA889AFD98D0553550A6BEB2A2A3D961131A588401DE58F979415E7DAE6CD0008D86FAA76810963E631C15FE611CE8FCA837C03D34DF8705A1E640A3940938EC34458934806A50869B63502AEBD55AD25EA4958B5668EDEA0B74E1EAB53A';
wwv_flow_imp.g_varchar2_table(341) := '77F10BB44C2BA5614B752B7EC5795B008D601BB863D70C1C8D23322C46759447163B8A9F75800284014A4B089B1973E11F033F5C44AC212C67181F6A3CC004B89DB041431A9478A2D77EEA0649634F00A406B43058544EFC1FFFE37FE8D65B6F9DDBEBE3';
wwv_flow_imp.g_varchar2_table(342) := '7BC0311074A7FC3B7FE7EF04FBC71CA4A990274C602D5CE884CFC0020038E1537EE22E689A122181A0C3EAFF999FF999B08879CFAC8003DA100E0E06C23220289074370AA590FA6636C1D4604AA59E48BAD000C02C84DD1DFC9B7BA166FCAFFEEAAF86BF';
wwv_flow_imp.g_varchar2_table(343) := 'D354A6051AC7380DCC91DEB676B00E99132CFF9FFAA99F1251E1E39911F63B87AE2E8AC6A75CF54271ABE88672426952AEB72A4AED1CEED686035B75FBD66FEAC15DDFD1CCEC41CD0C0EA82E2A156D4AF062E256E1232F29CE445A1F4572CA5A45008146';
wwv_flow_imp.g_varchar2_table(344) := 'F136A67B11806290E160185501C605C07FB872E0CA9B947A1501FE387F4B79D6D67058A9D52AD42EDAC14894C381B216258F3B1AB80D4001101928AB0A4DE4531AF44A55EDDE28736044E5631546395FAEDBFCBF5B77A3BCF0B0823D80AF8FA186E6F71A';
wwv_flow_imp.g_varchar2_table(345) := 'EC54DD602A864080BA1F0C44D16AACE86A588765BE2C5BAC73979DA34B4EBF4CEB575EAC53BAA7AB03BC21D5900008514CC8E588937D34CA7018054434A077545170C78E1D73E59EA91DC0BAE7995A69B36E5D24C800CFEB82F70101EF7CE73BF557FECA';
wwv_flow_imp.g_varchar2_table(346) := '5F89BFBDCEC7DD4D276A57A751FD06F066C20CE0994B5BFEB457B6256F778781ABF73BBF6101D8EB800003A5C85E3909CB809FA867F15CB8CE0200782E3CC5A7B80753E608050000C14D94C175DD7B0B3F363DC7B84C2ABFB122CC0460059D7AEAA97379';
wwv_flow_imp.g_varchar2_table(347) := 'D629B310BAE8040A0AD39D697C8253B948F7FBD7FFFA5F47C0139FBB0A9C7D9E69647F4AE3F239963E79E044FAF3DBC78EE7431B4038089068F85074A17051D4957A9AD5E3335B75CFF6FB74E7966F6BC3DE8D3A581F50AB5DA868A144C971C76AA7294F';
wwv_flow_imp.g_varchar2_table(348) := 'AE0E8A199B1C1086054E55BC702B34CC00E0A0A2322035F7330AE3D4A2143F3F5143306FA968B5E3674A6DAD1E74D46975D5999854BF1EEAF17D8F47D061DEC2F26E8A0E55D10B80AB8D621708C02BA5E5ED655AB3F84C553395F6B677AA57F5353BE8A9';
wwv_flow_imp.g_varchar2_table(349) := '379C8DBF8759A98AF4C5282C54AB35A0FA1F00C841894E776C98020E1C0C2A753BB8617295655FFDC14C2095D6047106B9FAC381F27DA5F2AAADE5CB4ED305A75FA4CB57AFD379936BB4B25811F74796419637BD129AD888110EF2DA8B6B312F65138049';
wwv_flow_imp.g_varchar2_table(350) := '3C445144C607312FF47DA072A09577CA6259E95B291ADCB1274E3BED34FDDCCFFD5CD0E48080F1F89A132D425CE1D0E085EB3BD88F75FCD5AF7E352CFF1B6FBC31F633CADDEC96F7818320EDD260ADC376FCF22FFF72B8052D1F4EF4BD2D5CEFC4CEC002';
wwv_flow_imp.g_varchar2_table(351) := '0038B1F37DC2AF663700143E00E0AFFED5BF1ACD546CE933A0C3547653E0C52F8EC11D0013001DFE17FEC25F986BA3EA60A9EF9595604B2815DCAEEFFF6FFFEDBF9D2BF4624AD43E51477CDB0FEC887F0428B43FC150975F7E790841E74BDB4562AB9FDF';
wwv_flow_imp.g_varchar2_table(352) := '73019158ED04A651E90E655C0D75B0DEA70DBD2DBA65CB1DBA67F3DDDA37BB4B19B9F2D0DE236B3B7CFC8D0B3D9470587304CF95B030D40E804A8F963DD14D8FA03C0203F18FB7874D79DE56D6515B94E89DD2E2EE522D26CFBE3BA5259D453A7B62B526';
wwv_flow_imp.g_varchar2_table(353) := '27A6D59E9AD063871ED70D0FDEA047F76FD4301F04C3D0CE277488E8FDAA0120F8D76900B4B8BD48979C7A915E75FE95EAF6BBDA7270B30EF40F6ACFC1BDDA7D709776CFEED2DEFE3E1D2C0F46DD82413D540FD6802A7FAD86820F60468D82BAA576465F';
wwv_flow_imp.g_varchar2_table(354) := '81B60ED504E155C2CB0048021894D19C880C82B63A54E0EB139B403A2140A4D6998B4ED15567BF5857AC7EA15614A7AA5D7554E55504478E921F9A00C9D4573D4A9120FE20F58B532910A5F8077FF0077320C06B87B9E7C72032588951F541BB0668F4F4';
wwv_flow_imp.g_varchar2_table(355) := '0BBFF00B5130088ADCD90466884EE4C6F61E75309F190D583B02FE4877BDEFBEFBC26DC731AC6DC64C160C60C06BD700DAB1407449FCA55FFAA5B9F4D6131DE07822E770E15A23F05CA7127F61569E5333C046B795C326DFB061837EF1177F31A8710B47';
wwv_flow_imp.g_varchar2_table(356) := '6ED8D681CBE26261A420004182E0C01540501C8000A163EAF144A7099A56F6D8B16288F8A7652CD63F694E1E1FCAC1021BBFAE5D024E034468324F8EFA46C0A70563D23803AE930A45E6258E6DFAF5AAC806DADBDFA9BBB6DFAB2F6FBC451B0E6D52DD1E';
wwv_flow_imp.g_varchar2_table(357) := 'AA9355CACB4CF570D41530687452E60A0DB1E423404E6AD5B9DA61E257CA5A14DB69AAEE1935E0ED27527E4A535A36BD44A72C5AADD3F8993E45A74CAFD6CAC9959A6A4D8D6AF13779F864013C78E0417DF2AE4FEAFEBDF7AA97CF4AC34C13ADC5AABB93';
wwv_flow_imp.g_varchar2_table(358) := 'CA06A55AA12CFB013E16E78BF4D2335FA2B75C72AD96F41707978F1F9ED803E8FB03D501ED98DDA9AD7BB76AFB9E6DD180E891439B746878307A10700C3D0C0854C47D510E6A0D07A53A4B3A1A96030D66FB6AA9D0447B42051906C36A14D0986938D989';
wwv_flow_imp.g_varchar2_table(359) := '22437939ABACEEA92A2B2DE9AED0156B5EA2AB4E7FA9CE2CCE50A73349E0C3080060EDC3621CCECC98CB911CB91F527711EE00B203CC04B8AD33EB09A0CB3AB17F3DF5F13BFE837E0F50E4975E7AE913588413E9FE32A3C7DAB70B8EF7D8B377DC7187FE';
wwv_flow_imp.g_varchar2_table(360) := 'C5BFF817F11B8082E2779D0B00100C17EB1566CF4C87592CF634993F3FFEE33F1E2E00C70A9C4866EF39257C4F929B5960008ED3833A1A1CF5BDD84CB6129C274D40D46FFEE66F463110DE634C69B0A0953FC2C2C2060585D080FE7CFFFBDF1F415174BC';
wwv_flow_imp.g_varchar2_table(361) := '4BFDA027EADED200BC340FFFFAEBAF0FBF3F750D486D72D543BB2752E5ED42297CC67D11F8C43DBDF4A52F0D25E06B38E3210D1234A8326B120A4355D4ECDFBC7FB36E7BF4367DF3B13BB575B8334AFAE2976E47C5BE2665AD21589A74B66A94474F341F';
wwv_flow_imp.g_varchar2_table(362) := 'C0A2890720A6BE8C48FC602FAA4293D9A496B6166B3A9FD69A156BB4FEAC4BB478624ACB3A4B359D4D6A226B87B59D57ADA0F0E322DDC8A7D330AF75DFDEFBF5A97B3EA10D830755752AD5B352BB9ED021ACFE61A509DC02E4EF57A5A6B245BAF28C2BF5';
wwv_flow_imp.g_varchar2_table(363) := '8E8BDEA2893E2769DC03065B65D6A4120EF9A9CBF8797C76AB1EDBBD451BB63EA48D3B1FD1AEDE6E0D601ABA855AED76809D417F66E4976F5C0E73E034820A1B46A54F1C453554ABC46ACD55B45BEA11A07028D7DA15E7EA95EB5FAA754B2FD6927C45B0';
wwv_flow_imp.g_varchar2_table(364) := '15E10A08D74B13BB12AF708D1C8E01B08B8BB5CE0BA0883B80EC103782E2BB28480A44F15C0003AC2DA78D3A5686EF9B095BBF7EFD13D2028F931899F734A6FF19B3531B599F807AA2F88973600DBBB1550ACEB93733774E77755604E9AEFFEA5FFDAB88';
wwv_flow_imp.g_varchar2_table(365) := 'F5715AEC89DAD3BEE967AB0C9DF7A19CC4072C0080E3F4F04CAB3DD5E94EA4A560016B0518B2B1AAC23AFEF7FFFEDF07158AD0A32DAA37BA8180AD9FF49E52DF28C142B812881CF6A63D91C2C28C857DF8043AFDC7FFF81FA3390C8231B5FECD1698C677';
wwv_flow_imp.g_varchar2_table(366) := '8C03828F1F2C7FE222DC12D60191E95CA4E9567EBEBE5FACD44A87F4C08E07F5958DDFD0B7F6DCAB03C57EC1E853DC8608FCBC985499917BDF54F26B22E99DEBD704CD51D33FB2012A146B1395DF2E26B46262A5CE5E72962E5C79BECE5AB4462BDB2B34';
wwv_flow_imp.g_varchar2_table(367) := 'DD9A564EF43F2CC2A8301040C3197AB80E8A7CA8A2EA463EFD77F63DA83FBEF38FF4C0CC7754B72B6926D74436ADD9564FD960A8891640A1D46C5DAA2B00C055FAC18BBE5FD3FDAECA0E8862045A4648207DD6314FC3527D0DB4B7DCAFCDBDCD7A68EF83';
wwv_flow_imp.g_varchar2_table(368) := '7A68E7063DB6F771EDEF1F8CD2C5537537C60B7DDF8088C6C191117730AA71D0AD46FD0C46018FB02664544461C1898EAAC9426F5DFD26BD62C54B35394D23A2EE1C1310631A79AF223D71CC424E9930F600B521FECB7FF92F418B0376590B06895E33BE';
wwv_flow_imp.g_varchar2_table(369) := '4FD68C5D0480600244290CC5DF1C7B22F7B5F79BB37258AFB448664F53DCCBFE7E83D63456C7634D6368F83E608620C7B7BDED6D73313327BA0E40CAEA3D990CFD5E055E1E2715F1AC3CCD0200388AC7E2CD642B28FDCA9C2F389AA5348D4C9ECA77962A';
wwv_flow_imp.g_varchar2_table(370) := 'CC94A2E79CA9CFD9D74A054C4A67CE37EC2301127FFFDBDFFE76083F52A42C00DD0AD5D4A11BE1A4F101A647298B4B8A203101580CA9C04CF3EAED2230CBF0DD0ACAD432F0B93C4EAC388A9C40EBDADA63FE53BFBDD9000B35E6012B0FAB079F3FF9DE28';
wwv_flow_imp.g_varchar2_table(371) := '01A7105A11C47C957953D9AE18447A5D8B54BA7EABF1E7B74AEDD701DDB2ED16DDF6C8ED7A74FB161DAC67D49EC4D35DA91A34E5F8F2BCA55E3108FF7597B8F661A62C42EFF1EBD751F8469D5CC372A8AA37D4D26CB1CE9A3E43EB575FA0F357ADD58A89';
wwv_flow_imp.g_varchar2_table(372) := 'D55AD459AC6E6B22E8F3B920B8D1228862794F488DE70D8009C70EF5F0DE87F4E1BBFF58F71EF88EDA6DA935207DB1ADBA18365D0A8B4C1D2A139644E62FD6D56BAED27B2F7CAB5AF594141D03D3D337177AC2E5869CA3E972D8532F1A19ED9CD9AD47F7';
wwv_flow_imp.g_varchar2_table(373) := '6ED6438F3FAC4DDB37E9E1EC7E95F930B20B3AD9840AB51BAB7F3850950DD4EAD24B60945619D72C2348827BEDE47436A4F811A068522F3AFD325D73F6AB74EEE439117899E5518098CA4BAAF2D6E136CBE4491E362F23E092FBCD8B5C0F3FB251BFF33B';
wwv_flow_imp.g_varchar2_table(374) := 'BF135D211987633E58037605A4F502AC7C000A975D76993EF4A10FE94D6F7AD39C2BCDEBD17BC47BCDFF3E1A7FBA19371FEBF5985AF1A6E6B92D47FB037EBFF9CD6F86F287DDE2E5181FBB2FB0EA9DF6EAD807BE7FF1C51747BD8F77BCE31DC18078DF1C';
wwv_flow_imp.g_varchar2_table(375) := '2F659B2A76CEE97B72EC9081369FCD271F5239ECC79A021CCB86D4A0F1FCA780D0C6CC7C32F4F9F0F9020098E729A7F4B8838D524AD816360B1B8B1A8A11A5CADFF6114349B3B9F88DF2741DF21489B3191D50945E270500DE3C4F087A9A67FC69FEBA01';
wwv_flow_imp.g_varchar2_table(376) := '07E724550E01F8B18F7D2CC6EC0E6869E014A7B6C07134BDE9716707E0120004F8DCDEC8AEAD9F6EEAE3C512F89930BF301954FB23DFDFD4A7C76A85EF063F0841CFC79A356BF4D7FFFA5F7F4264B7C7970AF3A6884FADB2D59897513C67984564FDBE62';
wwv_flow_imp.g_varchar2_table(377) := 'AF6EDF74876EDC724BD0FF94AD6DB75B9126D7EFF79ADC75FE1D5573F3704F57C3A17262024641EC4524DF179AEDF535514CEACC1567EABC656769FDD2F3B566FA74ADE82E535EA300290DDC14064AF5DA933DFE68E54B15C27AA08D7B1FD4EFDDFB09DD';
wwv_flow_imp.g_varchar2_table(378) := 'B3FF7E75DB993A654B0372FCC9D3AF2B95853455679A656CED45FABE335FA9F7AEBD4E593EFD4445FF2417ABEB619305102E0D147263E5EF1F1CD08E83BBB4FDC0367DFBC037B561E7466DDFB75B331CDF8519A17A62AD02CD0E5842D103A4C932889681';
wwv_flow_imp.g_varchar2_table(379) := '4D27C026F73F8B56C4C3ACD2546B5A17AD58AF579F7DA52E5A76BEF26153B2388A268D5C2B314F9169D114686A4500E6A8A0121509AB5277DF734F00803FFEE33F9E7383852B66D40828DD9FAC63D613FB94CF89988709000CA45D0ABDDE53E57DB4C03D';
wwv_flow_imp.g_varchar2_table(380) := '5586566606BFFC3618B7B100E34599EBDB6EBB6DAE3705E34BD93AFE4E41B9BF8BEB8B6057E27AB0FC8901300071E0E0D18096A7123F2970B74193CE85659BF71D858A76EDDA153F0074C7DF00CE602A91518C9339766C432A7F39B78B7DA5634F65B8AF';
wwv_flow_imp.g_varchar2_table(381) := '351FD8783E28FF98BB8520C0F91FB517904BC51A919B5227E276E3C68D51710C1F1CF5E74D29B22051482C58D289A8B94D0DEEB3CE3A2BEACA9BAE4E7D735E9C295B60653CBE699E6CF456DCFCF6C6F0E637FAC66A00047CE2139F988B09E0FC2E28E220';
wwv_flow_imp.g_varchar2_table(382) := '23BEEFC868331C6C50D2027107502C0810E09AEC5CC78AD6D6780A64E6131A4F05142CA418CFD7BFFE75FDBB7FF7EF840B2015988CDF6C8A95BE8520BF0162F8FCFFDC9FFB7351F5D055017D8F4E95629CB3D56C34B4A1DD6DDEB0F51A68A86DE576DDB8';
wwv_flow_imp.g_varchar2_table(383) := 'E916DDFED89DDABE7FABAA7A10CABE2028B0AA3418F4C2D26C7528CE3254D1EFA8A85A1AB4663568CF460A1E88A0DD6B6B79BE5CABA74ED1B92BCFD7DAD56B75CA92D55AD95E1ED63ED5FF48F98BE64151EF3F4201E75DB44F04000FE9F7EEFDF8610030';
wwv_flow_imp.g_varchar2_table(384) := '1C01002C6DD20C0B69B2D608002C7EDA0080C03D77238C92C76401144DE7423E1BA8AF3D7B77E9913D9B75F7AEFB74D79EFBF4D860BBEA6EAD4932007A99F2192CF3286BD830F91940A0A925D04081A8B7A825E5A47AFD8106ED4C979E76815EBFE64A5D';
wwv_flow_imp.g_varchar2_table(385) := 'B06C9D5AF93404805AA3FA89002EEA0E44C9E4D1FA6DAA18360592F8B33FE887E5CC1A22758E17FBD1FB3DDD7F5EBFFCC6CA86FE67FD409DB39EAC70C615B715D4D1281C030EEFDD34C8CF8ADCE096F6C7C4F3B0F66D3818B8DA65E53448EF19331DEC5D';
wwv_flow_imp.g_varchar2_table(386) := 'E410CA1FCB1FA56A3707DF3500389A31CFB7977DFFE3E0C6DF435692BA8BDC2448990C25B27990251E0BFB9239C6E838F3CC33437EF2830B920A9D9637964D0640B6FEE7DC75A3D6D2C77A5FF36EBE93E880050030CFC34A693950B3536E68414A830D04';
wwv_flow_imp.g_varchar2_table(387) := '088A0800007225B88E85CBA275308D9521141D0A07E54FD7B197BFFCE5516CE6F4D34F9F2BCAE3F38F2BFF23D15F4F3574A3670453EA6A488503E724688EA0A83FFCC33F0CC106D2E6C5BDDA9F8E60E133331756B0699D00B203D890E3564A2A848E66E3';
wwv_flow_imp.g_varchar2_table(388) := '8DDFF791EE11B004CB42C433D61BD1FDB6087CBF47A2033937543F94FFDFFC9B7F33E6DD42C2710F2903C2DFBDBCA7226BAB53B6950DA47E3DD08E7ABB6ED97EABAEFFCE57B5A798A568AD723AE245D95B27A85321AFC9578BB2C1E4E5675D95DDBEFAAD';
wwv_flow_imp.g_varchar2_table(389) := '5EB8153A555BABF315BA78D97A5D76E6653A67F979D1250F3D1FD96C91673F9A01AC6232E16B6A0D70C5A77E9D480030A869FAD3B4266E5A028E3A0612D7105189A534DBD6B0A8B465B05977EDBC5377EEB84B9BF66FD1A1213D17B8A7B65A7016914248';
wwv_flow_imp.g_varchar2_table(390) := 'C82420876E00C40BD01FA10ED03431D30EC57EA83D136997172D5FA7379CFF269DBFE85CB5456601967FA89DB9D8165B9DE1181901005814822E593B5FFAD297C2870E90E7950270D6077B92E352D7100A8A6C809FFEE99F0E256AE563656496CE05A88E';
wwv_flow_imp.g_varchar2_table(391) := 'C69AB681C1B952A0CFDF4E51644DE2F3C78587CF7F9C694859AF74BC76C7711E943FFB151683605EBBC8D24A820621C7C2DA8D3300A6EB1D74494132000CF741E9662A95C29C9A65610EDD15D2563F0A9FF2E4181C301804EE52A914B9E5F3A7CF309583';
wwv_flow_imp.g_varchar2_table(392) := '06214F87419D6F9F9DEC9F2F0080799E208BCA962D9B01A507DDFCA94F7D2ABAE9815A6DBDDBD26781B1F04CC7F13ECA1325CA02F7466721D371ECAD6F7D6B04E2B0B8ADB8D2CDE2857B3442C4B7E3EFDBA7C7350D2ECC0A58E9111340EE3C7D021002DC';
wwv_flow_imp.g_varchar2_table(393) := 'A315B9AD10EE914DE6DC62A7D6712C4C0031015843FC9D6EFC631120BE17CF89FFCD18002C442D2334DCF2D51BDFF767CAD6F7C96F0017D1D2F83EEDE77444B4ADACB451107EFB764E847D53F56F5B7F9B6EDF758BBEF09D2F69B766A4F684260AEAD50E';
wwv_flow_imp.g_varchar2_table(394) := 'D41F0CC2C424A0AF19739362C96FA2DA45B39AFE2094DD92F652AD59747A34C3B9EC948BB4BAB35259D9823BE7B0A6A02E79F591614839DE0A57FD48A98D22DE9F62ED9E50005001925A41D58F5A1DCE8DCC7D12C2A2AF726545A57E7E405BF66FD41D1B';
wwv_flow_imp.g_varchar2_table(395) := 'BFA96FD10CA9DAA7436D4AFDF6545414FA81FB684597C07826F550157EFE56030E9A8AC543CD507F20DC0117EB9A33AED4BAE51768B24DF60AEABFE99BD0B422683219B0FC09B00CC518AE85E605F5FCD18F7E344000EB29F54F5BF1700CEBC42E02B346';
wwv_flow_imp.g_varchar2_table(396) := '575F7DB5FED13FFA4773F531385F0A62BDC6C695E1933D3A1F37BE7F1DD54F719FFFF01FFE836EBFFDF6D8CF8C098BDE7D29ACE8398F19ADD4BDB87CF9F208E0FDFEEFFFFEB0FC39DE0C21DF718F0B1B1C4703DAE7BB97743E0052B81CC95AA057030614';
wwv_flow_imp.g_varchar2_table(397) := '2C00E3706AAE15B4F7AD8D308EE1C78DBA606108DEE55E30A6F8B78D2E03A8D46D9A028063B9AF935DE9A7E35F000047F134AD18D8485085D0E6A070162296A7AD4F6FA6F1537A31A674349BD70D78F023927F4B095A36A88FE33C56C4A6B59E0E139006';
wwv_flow_imp.g_varchar2_table(398) := 'DC84CC1C5160E3E3E37D3AA82158B0A8115A56F0283D8F23A537BDA9191FC76059BFE73DEF096A1DCB9A0D66DF287FDBB29E6FBAC729540B035B45085E28C39FFFF99F8F1AE756FA6636F8B769520742F9DE015C80142C3647FB1B54A5F36A4118D46ABF';
wwv_flow_imp.g_varchar2_table(399) := '696633CC2B6DEF6FD71D3B6ED117EEFBAC7667FB55E453AAFB13AA69E653948DD23FDCC04F6549BDFE4C9D565B8336D1F0B3EAF617696576AA2E3FED0ABD7CED4B755A6795BAF40F1895B6ABA3942E018690D9BC00045406246E00FF7A030AE67B9D4800';
wwv_flow_imp.g_varchar2_table(400) := '5053B570E4836F546FF3725323FEA607405BB9DAF81B82DEA874A8DAA7DB1EBF5B376EBE5D9B66B76A7FB54F654DE44211DD0BA3AA62F8B0613E86A1B4EBC95AE560A07C96464613EA43140C2B5DB2EC02BDEE9CABB56EF9459A6C4D45FCC5C8DC578B66';
wwv_flow_imp.g_varchar2_table(401) := '0504118EAA2AF277781B46CA9AE70D7B470D898F7FFCE301D26D0D9B3D33136025C2BF01F4EC572A4792496220997E77BC94F4533D37B351A9CBCDAE2C7EA3FC69E40553E114408300000A34B9A973C690C632F037D63E8C050A137FBAE5520A5ACC581C';
wwv_flow_imp.g_varchar2_table(402) := '0F2BD932C27291FBC278A24917B147EECFC0D8ECBE60DCDE7F665253196839E07D0BF8C12DF0EE77BF3B323352B7AAD9103F33DFEF82F23FBC0A1700C03C9294456B45FD918F7C2402CEB09841AB283D162EA8D6C8D3A83545FE564EE37433FFE6DC0009';
wwv_flow_imp.g_varchar2_table(403) := '5AEFBEEF7DEF0B9F3A016AA9F24ABFF774A8392B6F6F2A6F9E945148FD64C430FCF37FFECFA38948CA02788A100E0003CE67762365087071FCE00FFEA03EF8C10F86B0B1521DA7E3E7535E164847620FA0FE09DCFAEDDFFEED396B251530A63D7D0E9748';
wwv_flow_imp.g_varchar2_table(404) := 'C57F48D60251FF8CCB73E2B178AC69F47408F408F81B687BB543B73C76B3BEF4C0F53AD4DA176570AB43E4E82F8DC877320238BE1C5267BF545134ED5429AE83461C6633EA1499CE59B25657BDE0D5BA7CD58BB59868F8C1A8810D95FF72BAF061FBD3F8';
wwv_flow_imp.g_varchar2_table(405) := '370B77FAA8255054EF8B12BEA49D759F5D0CC0E1BE3C4D07402A17C25910B4181D01695AA499E86D50D44DBF8488C7CB6ACD64B37ABCFF98EE7AE89BBA75FBDDDA36BB4B838ACC804A39BD12A8300800A242629D69901D52D9C6BFBF48F980EE897DF5F3';
wwv_flow_imp.g_varchar2_table(406) := '599575A1F54B2FD675E7BD5EEB565E10D507A152E880185D166169922E8D9003D5C8DF0D80676DA3587FEDD77E2DC0BDDD06AC2D17C24A83FDCC32B17E009634D98292B61C482D4F2BB2F9D6BDD7A015A7F72BFB98E23E8C0DD0EBFA14A96FDBB1443614';
wwv_flow_imp.g_varchar2_table(407) := '6CB49801C4F54811233217000AE9DE627C294398EEDBF9C6FC549FA7AC0773473B62000CD50A7D7DBB4A192FCF208D194A1537C7DB9D681701C7F21DDCAEB09330A97FEDAFFDB57009386D33CD0832B03A967B7AAE7D7701001CC513055D83584937C36F';
wwv_flow_imp.g_varchar2_table(408) := '655FB8A3FCED77B6D249177EBAD158806C54A37497A5B50F8E7FA3A040E8F8D3BD79AD949E2E9D9E0A12038714FD5A311BA0703C20002A147ACE96BD3FB770F1F89907BB3B3C8D5816F816113480240B426FEEA31118A9D5950229DEA79A1B415B040D59';
wwv_flow_imp.g_varchar2_table(409) := '917B9E2CB40D7CFC3EF34A4317A2FE61274C798E0B9C747E2D04C9CBDFA3BDFACA2337EAFAEF7C597BABDD9A20277D761096E7C4D4A486289AA0E7730DFB4D6A5DBBDD0D0B933A01289E15D9325D7CEA85BAFCDC17EAACC91768B29E8AD2B671504E061B';
wwv_flow_imp.g_varchar2_table(410) := '35FB9A72BC9C07D4301C519E8009DC104DA6FF780EDE9167F44432000DED3F8A7F20B360D43E28F6C368C079DD040A96751E4D8AE61A06719FC31995554F376CB955F76EBB5F8FEFDBAAEDFD9DEAB706010250E0B4252EA8135095EA4322747005E46A0D';
wwv_flow_imp.g_varchar2_table(411) := '069AE91DC219A35553A768ED92B374D59957EAA2532E510716214087BB1335E381596972069A6E99B694F91B06E0B77EEBB74259B9263EEB84BF6106502C6B041E260000200049444154FC6D05CB3AE13D5825D6BD5B0EBB0A1FDF7546CC93EDDF147CC2';
wwv_flow_imp.g_varchar2_table(412) := '2A38E68073B09F28E18DE1014019CF52F07890458C0FE5CEF92C93D8AB0014180AF6243439068B65188FC760380514B6969FAECC4957A3EF8B31E0EB47AE40F95B2638E0D2D538EDB21807F19CD3329073A1EC91C9BC30C27816182CC81B527BFFEEDFFD';
wwv_flow_imp.g_varchar2_table(413) := 'BB11631580BC2CE7623A2C03BDFF8F42F43FE70F590000F33C6228A6CF7FFEF381BEA19ED30879D3DCF6197BB318B987ACA6408BFBB58FFD7B5CD171BC7D740814ACD6D42A783A96741AFC6260C26FFB08536A3DDD18BC0F4D97D60940A8F95E7C8EF4DF';
wwv_flow_imp.g_varchar2_table(414) := 'DEA09C0761E7885D537B9CD37334DF8E4A6950A37EBE638B0B014094B0859CAD323F97F1F942B850E31FBF27A55C5350E4671351F623FFBA3F3778D85FEFD58D8FDCA22F6FBA499B06DB824A6ECD669A202DAD3BD0C16C8F6872DFC92683EE070944A19F';
wwv_flow_imp.g_varchar2_table(415) := '3A1B0533B5B474C5525D73FAF7E9152B5EA6C9898968FCA3BA0C6A1F6B99463715DFA948DB6B5AEF4685BBE880D728567466930278D877FD9460EA096980A32C8003F7ABDBCAD419CB0238D63440187D947E04F08DDAFF3626BE9D010CBE89688C5B8B0E';
wwv_flow_imp.g_varchar2_table(416) := '41A3AE81145760FEAB5CFBAAEDDAB0F721DDB1E54EDDBDFD3EEDACF6A8ECD461CD1703BA2CE22AE986CB65981F52D51A48794BAD7E5713C322B20EF6B567F48A1557EA4D6BDEA05356AED464DE0D00400D800056CE3268120CE66A58B08E50ECEC77803E';
wwv_flow_imp.g_varchar2_table(417) := '6E3E7CD3568EE320DF73EF3D894235B8340BE83DC2DA9DEF656BD7FB32FD8ED3E352975E2A53BC3FBC9EBD4759FBC4BAE096C33A661F9BB14B5D5FA951E0EBA6E79A6FEC4FF6B9F722600AF7223146BC6C04D9D5C9B55C75319DD7549EA6E332D04FEFDB';
wwv_flow_imp.g_varchar2_table(418) := '208E735E7BEDB511E44BB0B5C1D738E3772CC0E6BB9D8F67E3F71600C048B9A49B208D982542956033726D79DF149F3790159015526A8DA68A37A506BD186DA9A69B91F35D74D145E1AB6321BB2809E77730CFD1F8B0D20D63406221C67D981AF326F266';
wwv_flow_imp.g_varchar2_table(419) := 'F5E6A24E00CD539C22E8F2BAFEDCE0878DE4B4480BB13416C2E02215A04FB61152B064453C0EAA78DFC18C9E6B8FDD82D741998020981458157C8458087E264D4A38961216682FACD3A2DD55593569670551E7E5215DBFEDABFAFA433769CBBE6DAA3A99';
wwv_flow_imp.g_varchar2_table(420) := 'DAAD8E8658FF65A5BC536B90F5D51AF0FEA486D4F6A7F90AB5F3EB52655FBA78C5C57AF99A17EBF2532ED5D2CE92C6046D5AE435CA27147C430384553AD2F90DE23A6CED43A58FAA09CF95F889508026AC7DD42E78D4D50FCB3683842F4455BC87F63EA0';
wwv_flow_imp.g_varchar2_table(421) := '8FDCF551DD7FF03B6A4FB6D41AB45597AD280B5CF50694D68F7C7C82EADAF922BDFACC57E9872E7A87BA6577D4D6377962287B26C8090F4DB3BF66E0C97B8DE99F0080B0C247E719BFC940059402E8AB57CF68EBA1C775C7966FE9962DDFD276ED55D5AE';
wwv_flow_imp.g_varchar2_table(422) := '540C06EAF6E9B8B458151505EB031A42FDB70AB5F2C928B05495031D1CEED7A2D6525DB1EA857AED0BAED485CBD7853B0226278F38824215EE81A672C11C0048D7356B9F72D9B07E66EDCCF6A56BCE7BC740D7FFF6FEF4BA3CBCE60E37DA3AD21EB0D59D';
wwv_flow_imp.g_varchar2_table(423) := '8258EF63C0492A5BBC075219C25E31F077911F527469F283E5EF97AF93CAA7749FF9FD140458863C1530F05EE718CB18983AE4089946EEB7C07D3886C1F2C3C01FD96899EAF9B4ECC4CAF7DF7CE674457FD7A008A083BB8FDE0618544E71F4B82CAF9E8D';
wwv_flow_imp.g_varchar2_table(424) := '0AF9448F6901008C848017871132FFC6E2A7D006D6701A299E6E165BA96C1047F7FB73FBAC521AD04136692D81F41C6C223607012D04AC911DC07752F4EF28E5A75A2C3E3E650D184F1A8FE0EB3ABA76BC842E741D1B978C07FC6C163ADE70E9F57DCF4F';
wwv_flow_imp.g_varchar2_table(425) := '86ACADD0E75BE0F321730B220BC3F1E34DE95A8822004979226D281580F1BCA960970D2387BF090CA35E7C53D16E98F5B461EBBDFAD8237FA207773F1C1664ABD58E76BA8321DFA995A339E9E647EA1BFAAF68FAD6F7063D4D1553BAF4948B74D5692FD7';
wwv_flow_imp.g_varchar2_table(426) := 'FA65EBB4A83335563E6FBE9938F2E7EE11484C000172D13F20C0012973B6AE1B45437F8032931E9E79581FBDFD0F74F7DEBB554F64EA54936A5793EAB5FAAA67FB9A22F0AAA8D5AB28053CADABD6BC523F70D1DB3535A06CE0484962E13BD0CFC48441CA';
wwv_flow_imp.g_varchar2_table(427) := '5104251ECDDD0E865550FC4CE8F6DE0EDDBAE55BBA61D36D9179D1EA54CA4A1A047595E51DB50B5C267DF5EB5203A8FEBC13898305D937755F4B5A4B74D5AA57E8F5EBDEA0659DE54D6D8248572C5467303040BEC30AD9FB8475C37EC05AFD8DDFF88DF0';
wwv_flow_imp.g_varchar2_table(428) := 'BD037EDD3FC27B88FB4965C57CF777B4EB7FBEF31890789C06082903C658092C26CF1FCBDF2D8C39B729F1146C18FCA47147DE3FE3C020050DE9DF9E17FBE5CD64D07C897924CD0F006E43C0FB3796D08821B511E57BB4DC74CC03F7E580407E1B9499EA';
wwv_flow_imp.g_varchar2_table(429) := 'F798398E54C7BFFFF7FFFE5CF746DF07E75E00008757D9F31E00A428DD11B746A854DA2232987C7F949F237A9D92C371A9F5EB4D6E851A42785496365554A61BF90C65CFCB008331F039F41595C65060DE5CB001DEC0F3294A2B7A6F441F6FBFF7B82235';
wwv_flow_imp.g_varchar2_table(430) := 'BB612BC2C200FA8EC62958436C2C36B12DEC710B7C3EE175349FCF775F16628EF4B7A5819060EE984FFCA6AE740615F8CA57BE722E80C82C45B02E256EFCBE2A2AD2E5452872146BD51A6AE3A14DFAEC3D5FD0BD7BEE89D6B76930114D73B81E0060D01F';
wwv_flow_imp.g_varchar2_table(431) := '44001A6980453E50D669A92E27B46EF17ABDF582D7E99C652F089A9A1CF9366972C7FA726A21567E8DFF9A8041FE8BC4C126FC6ED48A175A9DA2451B671FD127EEFA98EEDA7D9706ED32F2E53B9A54BFEE49C352939D4E1403EA938A554FEBCA335EAE77';
wwv_flow_imp.g_varchar2_table(432) := 'AC7FB3160DA6A4CE28906F44EF9B85082C102F2CE92714063EA63B1CF4FBA1988B4EAE1D839DBA79C33774CBA63BF478B55387DAB35185B1434B643A26664DC981617459CC44D664F4604089F7A5E59D53F4EAF35EA9D79E7395A6CA89006800A5868068';
wwv_flow_imp.g_varchar2_table(433) := '4A1CDB5A4FAD576E800875FA05FCA7FFF49FE6F668AA440C00ACC0E6BBE9E3050058E3F8C05D17C0C6806517EF0376C92AB2E5EF3D62179DDD71BEF734603105F7961DE360609C8E1F0743966FB812614F6111ADC439277B13DF3DD742A6F0DBEE008F95';
wwv_flow_imp.g_varchar2_table(434) := '73724F06F44EC1F4779CA5C4F1C802CECBF136E4F8FE7BDFFBDE887D2028F068188CF99EE173F1F3050030CA0B4ED1318BE8E1871F8EC01BA2CD9D676E8BDE14B73788FDD3504F2C4253536C4EE7CD3B559073398FD568D88B933178C1439711B4830223';
wwv_flow_imp.g_varchar2_table(435) := 'A0C58BDB0878BEC568B782059BCF6DAB651C813B1EC1BE34E6C03F140B621EA87B900600A671061622F38D6BBECF8F2428535060CBC70144A60B3D6ECF299FFFDCCFFD5C64553823C1D7F61C070080AA8FA23045F8DFEBE1407BEA9DFAFCC6AFEA8B8FDC';
wwv_flow_imp.g_varchar2_table(436) := 'A45E7570545CA6317329214B7539076331075556282FA8333FAB094DE8D2D52FD295A7BD52EB17AF0DE1D4A7331E42EE282AF8CD373FD0FD50F05169CF6A3F345A532B20AC5ACAFC968D953B53CDEAA1830FEAB3F77D56DF39F080861DD2E372E5651125';
wwv_flow_imp.g_varchar2_table(437) := '89632E724AF00CD51F965A54C300BC4CEFB8F83A2DE92F51DD21F5D021730DE868DC16764FE06818B5E79D77F0F31C308ACE6B5C0C55A4561EACF6EBA6476FD5171EBE491BEB1D6A1543B5860395837EA4F7758B2965554BFD018CC05079A7525135C186';
wwv_flow_imp.g_varchar2_table(438) := '4089D33BABF4FE17BF4B6B27D72ACF269B56C5A45A4676423E67C5A78AC74A1DEB1F0546D53D149495ADD7A8D7A2F7DA53DDDDD100DBA3993ECB1A2BEF00A2791E4171C818D2E07EF2277F32CAFB427F233718A7DD8E36262C075277808D03D738B0D2B6';
wwv_flow_imp.g_varchar2_table(439) := '22B6FC1B8F69B09CB0D2B6F140B60ED50A6152DD5D94631CACC8DFC813CECB3EE1BC2EB6E6FBB2421F9763365438472AEBFC8CA835007BFA0BBFF00B7AC31BDEF067621F8E66AE9F0FC73CEF01000F3965010C04BEF8C52F46E00A55FE28988142F64632';
wwv_flow_imp.g_varchar2_table(440) := '656541E14DC9E2C3FA24EA160A0AEA8D8D09124689926B3CAE986DF93BEE8073B319D824A403E20A20160045C78F8B65CC6751B0E138D67D084CA73982D902C01BC8D6415A2C28CD092602196BE8D39FFE74DC036349DD0C1648CFF4A6492D78D38D0637';
wwv_flow_imp.g_varchar2_table(441) := 'CC1DF74DAA20D5FE28F8B376EDDA271426F2389BF96BE2EA0703AC66A9D5CE74A0DCA3DB1FBF5D9FB9FF7A6DD2364D1494F0CD22223F5E0E1C8BC0C126358906BE14ED996A2DD2BAA973F4C6735EA3B54BD7A91C16E14E6817A38E7187CDE6639BA651A5';
wwv_flow_imp.g_varchar2_table(442) := '388ADA34AE8B86CEC6F26DD633B9F3B5F276A1D9ACA7FBF7DEAFCFDDFD393DB8EF21955D620FF071D06407DF380D74687854C63C2D873A5FF3125D7BE1355A5C2F515D364AB299B7C4D2CFCC39D0C9E038F90030E79545495F74741B6AB8287528DBA31B';
wwv_flow_imp.g_varchar2_table(443) := 'B6DCAE2F3E748BB6F5B7A8CCE8674F17C1221A0BB568650413008C29FA2A6AD2FE0ACDE603B507995EB4EC32FDC025EFD28A6CB53A2DD23371F98093DA91B1E1FD9C5AC4FCCD1E64BD93E2C79AB242B482B4AC381A00706C0FFCF0B7CD7459215AF6B0AF';
wwv_flow_imp.g_varchar2_table(444) := '0942C4E2C5F247F99B05B4D1C09E75B09D818029F134D7DEE7245B80394086A198CD781AF85806317F966328740C21641DD914C84F830C8320CE9B6608A5B288F3C06010BC48613407FD629051748DEF3A8D91CF3C6EAE615780E502EF11FC0B8BEAAA9F';
wwv_flow_imp.g_varchar2_table(445) := 'C70B881DAFE7F9BD3ECF02001859DD3C085BC52CF8DFFDDDDF8D686090A417D9B83FCC0AC0D633963A79F054F7A3E90F1B108B9FF37DED6B5F0B4AF11BDFF846D05E296D65DF9791B4FB0858A139BA98EBA440E1A94000C7124C88054CCB5B0407F7E182';
wwv_flow_imp.g_varchar2_table(446) := '1B696A92378FC150BA282D0C188BEB041013E0B11A3C8D5B05DFCDC24E2D89238D25056B5CCF568D059D9F21C2EF9FFED37F1A51FF4E8B4A8595AD879272CD84CA850FBF56AF35A3FB0F3CA48FDFF9296DD8BF41D544A9165DF36836836F9A3542B31894';
wwv_flow_imp.g_varchar2_table(447) := '61D4E8AF9A8247F58C5AEAEAD2D557E8DAF35EA70BA6CE6A02F08A4C5559470A5BDE8A64F8637EA176AB7A187502F2ACD534C9610D53B0A86ACAE09605258C67355BF7B5ABDCA5BBB7DCAD9B1FB859DB7A3B944F36A0A41A56EA700F14C8010084EBA0D6';
wwv_flow_imp.g_varchar2_table(448) := 'D27C5A97ACBE502F3FFB255ADD5EA5A5DD55C11050E9AF05B3D0A42324017D4797967854374E0D85E890984777414AFDE6835A597BA0FDDAABDB36DCA12F3EF2756DE96F5536D18096B257A9280B758A8EE89904E089804E02238B41D3C06757A6EB2E7C';
wwv_flow_imp.g_varchar2_table(449) := '8BAE3DFB350170A82A1895800076046DB6DB7320C014B8F72425BE610158F3069A669DCC42CD07C69F6C2D1FD59C8C1D34073ACBA6F8123FEC652C7FD8425843648E5D56E9D8E698AFE49CDE3B2983C6F9EEBCF3CEA0EE8903427E21B3C601403A34EF29';
wwv_flow_imp.g_varchar2_table(450) := 'B304CC2BB293EFA600C0E3B192B63B02C54EAD02E427E9941850DC07C7331E0C28E20970CB02C6CCB69A3DF575ED52E073AE8FECFBD99FFDD988051837F4BE9BF97FAE7D670100240C801539FEBF5FFFF55F8FE85516A10BE0F0399B9F97858685012566';
wwv_flow_imp.g_varchar2_table(451) := 'C933A736353E3A5B132C5E5BCAC4121010032AE63D8493DD01EE6467EB1AE1C2DF7C6E9F9AD3678E66113AA00F8B989442E870D8895430A4F45A9A996021932A646F708279C8E78516DDBB776FDCAB2377E71BD7D341DF4F2554EDEF4B7D94DC97630060';
wwv_flow_imp.g_varchar2_table(452) := '4D08000208A4D699019E29CA59D8163AD9D279361FEAD1D947F5B98D5FD14D9B6F5559F4A2FA5E35A4935C5302B62CE92C57A9455C078A7394A79FB7DA5186F6F56B5EAB4B4FB92C7CE2D4C7A7FA2FCE757CF1D1C2EF3884000CAB81FA553F5A0347EDFD';
wwv_flow_imp.g_varchar2_table(453) := '51443E28800E7CFD72A83DFDDD7A74F6116D7C6CA31EDBFF98B61DDCA65D33BB5577A456B7256218A2415119B4874A02224948248E61506B456BA94E5B74BA16174BB476CD055AB97895562F5A1D817513EA2AAF48AB1BB53D000F1C87FB0A25095D4D30';
wwv_flow_imp.g_varchar2_table(454) := '23B115A36C8349DCF694F01D1C5095F575FDA337EBC62D7768EBEC76ED2BF74503A62E417D437A06D42A8959607F0E4B75B252D4599A19165AD15BA11F7BD9BB75E9CA0B54E413F850E8743CE772E3FA006F53CFB6B051285FFEF297834DA24CB0D7F0B8';
wwv_flow_imp.g_varchar2_table(455) := '3B60BEB57FBC18B234B68731229B5096C40BC1146278A4FBCC2E491B1C81DD92B464831A1B049C93BD4D1A24CA1FE6330509FEAEAD7EF6A963A250BABC6FB72756BE8D16030CFE0D5BC1CB2E447EC37612B44883256416CF82EF737E9E01BF49CBA40438';
wwv_flow_imp.g_varchar2_table(456) := 'EE4807257B4FA7F282BF5DB70150811B802C20038005207078B52E0080240DD03E30D02615AB2886C38662D1A2A0599416128EBA65E3B0787FE6677E46D75D775D1C9FFAC60D2ABC3108A6834AA7B8871598537C0C2EBC816D8D182C787C47A3486DC170';
wwv_flow_imp.g_varchar2_table(457) := '7DC604084048E0CE38524EEC38BB61C160ABDAB49F990000D2873FFCE1A0E4A0EA8E8601986FDC46F3E3C71DE9DF66422CD00C66604B50FE945576C022F3EC7BF63823568008FEF09E57DA35DCAD5BB6DCA2CFDEFF05ED6D5164A456DEA79D6CA976B7A3';
wwv_flow_imp.g_varchar2_table(458) := '7654F91B3655FEA8F037A2E109C2BB70D9C5BAFACCAB74C98A0B35914F375502B1A867FBCADB6D954563A91D8F60B9C80220F88F6A8183A18683A18A09D80669FB70B7BEB36383EEDF74BF36EFDEA8DD8776AB9E082E3DBE13BD09A2CF004104B5EA129F';
wwv_flow_imp.g_varchar2_table(459) := '793702E8B2BC8E3439114855527C675259DD56514B67AC3843179E71A12E587D81CE983A5D8B34AD1C9A7D54AF20ACE9E3F0C2FA67DE6135A2B5F0C8EB00E82A8809C8323D36BB4DDFD8FC4DDDB4F1163D7C68A33A8B0A2D6A4F6838338818867AA21359';
wwv_flow_imp.g_varchar2_table(460) := '95F9B00C053F8C32CE99F259E9852B2FD29BD65FA3F3969CAF56D569FA368D5E9CDB94B201A2D7168AFF5FFECB7F1981B08E3CF7DEB49B6CBEDB3F1E00C06BCEEB1AEB1AE54FBA1BBD389CAA6B2ADC40DE60C6CAD24C40AA10CDF4516E989A27543B4DD9';
wwv_flow_imp.g_varchar2_table(461) := '46EF412B74CB05CB41E6CE32327573BAD8990D21AEE9EF1874316EDC161FFAD087A2AC2FAFF19822CB1F58C85FFEE55F8E78A4B48AA0418A818E4109C7FCEDBFFDB743F679FE3CF6F99ED9F3E1F3E73D006051384FD48A96EE6034C781B6C76A66F1B290';
wwv_flow_imp.g_varchar2_table(462) := '1D50E3BF59F42C5E1A51FC937FF24F22E73C5530879504A54F1B2A0BE48A4F1161E2BC58CEC766B6E0B1CFD5E0C199061CEFCA5747A370ED5BE3BA2869E8B51FFDD11F8D0C03FB002D24528ADC422D55BCA9106163DC75D75D6125D04405C6847998EF35';
wwv_flow_imp.g_varchar2_table(463) := '1F00082B3009CA34403213910A21BF671FA6CB8352F1EFEFFDBDBF1740C720C6FE6B1489E7249EB55A11D036DB2E75CFCEFB74FD7D7FAAFB77DDAD6C1AEB9E7E7453D4A95306171D716914E96D1439AD6401054B962FD6DB4F7FBB5EB4EA0AE51D6CF222';
wwv_flow_imp.g_varchar2_table(464) := '6AFBAB8F022B55B5B3285A43739B9626E69BA2793F77473B9AEC61EB32BE191DD203BB37E88E6DF7E8DB7B1ED2EE993D2ACA5207CA032AA647F505CA3C945E41839DBA69D34BD05C56B435A0CC6E56AB4DC31D221A6A12EC9A7CF9826E88FD424BABA53A';
wwv_flow_imp.g_varchar2_table(465) := '67F1D9BAE4B48BB5EED40B75CAA2557147915E9741011C3B08988D24CC5A9D6820083AAB033C0D470590A2B1605669E3FE8DFAEAA6AFEB1BDB6ED5BEC14E4D1685BA3540A688C03F6A3890223953655192B95554EA0D66D4D1945E73D6D5C1D49C36798A';
wwv_flow_imp.g_varchar2_table(466) := '86D950455E68301CA8DD6A6AD013ACD99430A0405303F4D87758C37FEB6FFD2D6DD9B2658ED23E92F579A40768E53AEFC33D8A03B826B282DF2F7EF18BC3BF4DAA9F1BFB58B9593E1C09789892B79245EE708FD75F7F7D94D9A6DCB065A1F7D9B8F2F4BF';
wwv_flow_imp.g_varchar2_table(467) := '6D68708EB4C229EF5B66A48C83ABFD219350D65C175725BE7AF6AE65713AEEF4DA30A29FF9CC67F4CFFED93F8B38839491F0F3E01ACC11E7076C90064C6C845B7F9BBD398AE97ECE1FB20000460BD53E29160FBE2F1800FC6004F2D9276F85E262142C32';
wwv_flow_imp.g_varchar2_table(468) := '00024A15F40A05E6343D2B9A7413182553578000198489DB583ACA3F2CD3916F3955602C746F9A883C1F45A23B3E218DA6F5B9AC50BDE151D2A4C6BCFFFDEF0F10902ADC140038CB217517F81CDED87C172BE1939FFC64B453A53D32A8DB20697C033F99';
wwv_flow_imp.g_varchar2_table(469) := 'F24FA9BB9485B05032183228F1F5531683636022CE3EFB6CFDC37FF80FF5C66BAF25A023EAF047805CF4852777BF52D16A8AC05458F2835C65ABD643E5667DE1C12FE99B8F7C437997B91D685865CADA5DCDD6B3EAAAAD76AF1D4A259FACD42F0E693853';
wwv_flow_imp.g_varchar2_table(470) := 'EAB4D61A5DBDEE357AE5A9576A696BA97AD9B089F6070010574041A060037AA39AFED1C7EE495F8EEA0FBF3E463A417A3563A19C29CAB8A93BD074D8ADA5CE40DBB543B76CBA5DB76FBE53DB0E6D57AF22400EA0D38DA0B83C8A1255713CC17131C7D161';
wwv_flow_imp.g_varchar2_table(471) := 'B0291F40AF81A827C0DC8CB2091A0090A92C0AB53A13CA07A57408F740AE958B57EB82332ED2E56B2ED3DA45676BB1A655D1FD90A0480225A9FF4FBA5DE86F8AFF34ED7CB9CE5C29E3279901DA4E61F4C33A34C58D9A3E0265144A1AD51AAAA5D972469B';
wwv_flow_imp.g_varchar2_table(472) := 'F73FA2AF3F7283BEFAC88D2AA766354D75C53EF10D93C16694555F039E3D018CF871B22A52035F3075B65EBBFE6ABDF8B4CBB578383DAA0B0C50A01A529315124A94FFA8C038AA6E89E2C1F264BDE3FA7256809553AA70D33DCF79B1D8ED434FF7640A6C';
wwv_flow_imp.g_varchar2_table(473) := 'FD9DF9348E038D09928371A4CA2515430D32AC6053A5EBBFADAC2D57FC6F94306E49E4120C806397BCD7BC072D17D27468DE737C11FB9F6B3146CB53CBC354D63816C9EFBDFEF5AF8F1AFEB851EDEEB4BCB36FDFF3CCF9685C865F1FF9E39826DFB70D08';
wwv_flow_imp.g_varchar2_table(474) := 'EEC92E089A945153857E2B3E7EBE797EBE7CFEBC0700E983762A10D43F00808A6020EB34E7D60B9A458F358F52C532C07F656060E5E78D67656D9A0A3F16B100B801B0E8110ECE6BB5AF2C1D97AD74FBB95365EABF7D6ED36BA9856C0A9CF1723FE40813';
wwv_flow_imp.g_varchar2_table(475) := '1C6826C01B3184EC8817F566B7156E4B9B0DC626750C048A1F97093D12D874DC8BAD100B9AF4BCE97DA5CADFEF1B9D3337D40F270AD99422634B29580B1F6F6A02A07EF1177F51AB56AFD610CA9D4A7F23B513C173A1951A5E39FEDF93F6E787F4B5ED37';
wwv_flow_imp.g_varchar2_table(476) := 'EBF30F5EAFAD07B668E9141DFE06EA01183A44D1F735514D6ABA47BA59A541F7A006ED435125EFAA5557EBCD6BDFAE1553CB8E8BBC982BF243301F0004EBB7EE6950D124A51B2C02C0020539CCFA7AACBF59B76DFFA66EDC749B1E3BB455E083C9AC080A';
wwv_flow_imp.g_varchar2_table(477) := '7F10D5EEA0FD93D27DFC3B1BB5C9A5E360F82AAAA6D3E0887989351B31019449A0A53135F66A9128D8AF66355BD59AEC2CD3BAE5EBF5AAD35FAAF5CBCF57B7BB386229B2415F35818F1416AAA456D4FCAFD52F869102391F00389A491C8CDC1F546FBC7B';
wwv_flow_imp.g_varchar2_table(478) := 'EB3DFAC4437FAA87070FA92806CA70F8D7D3A38A08FD08BC04540D87034DB426A4D95AEDBAAB0BCF5BA7D79EFF6A5DD2BE903685CA4149911540F3C77EC477C06EC06904281B05DF9219F4ABBFFAAB51D4C6C0DBAC9D29EAD47DC0DE81D24649BB0AA55D';
wwv_flow_imp.g_varchar2_table(479) := '07BED7742F1F693F8CCF09D705E80200F86DE66D1C8098E13370F77553B9E018233A9CE257A7EAA965606A10588ED90049EF219571965396158E8FB24BC2633483EA7D8BE50F004041A76E078F251D3BE32208104A9FEAAC6910A75DA4DCBB9904C6404C';
wwv_flow_imp.g_varchar2_table(480) := '109555C92E5800004F5C51CF7B00902E745BDEB4C42505109ADB75F0FD99953BFF46E1A1504197E4DE5A79A796B3959F17310B936856D03682C435069C9E9352E0E9A66633B0715C0DCB089B05CDDF8EA63540B160F178BD19610A4E3DF5D4B9CE836C0A';
wwv_flow_imp.g_varchar2_table(481) := '1FE3B9F0BD3ADDC9D49A018E917E5A9380631C70E46BDB856110319FF2F75C711D1AFEFC9FFFF37F22F3C02D976D8DA5A950FCCD9CAC5BB72E68447C8991533C4AF29B4B501B31D461F9125D1ED5676BDDBFE7415DBFE1CBBA6BD7BD9ACD0E8632ECE66D';
wwv_flow_imp.g_varchar2_table(482) := 'CDF47BAA3B452805947137A38B9D34DB3FA089765BE7AD384FD7ADBB4EE74EAED5644650D9D1A8AFA73E26940D8A78648136F9F64DC19AC8FF2725AFC6229ED596FE76DDF8E8ADFAC6865B35A3FD2ABA52AF44490F23EE806C05672A30EE265BA0298213';
wwv_flow_imp.g_varchar2_table(483) := 'D614A7A4DC71C4328C0AE3D3792FDA0D030E1AE5595443D5B333EAE6993A531D01EFF61F1C68A29CD4A5AB2FD4CBCE7EA1D69DF242ADC8A754E083C76AA61A0F4D7882B2978605310B5CFF384CD2680A0145DBFB3B74D7AEBBF585FBAFD7CEFE0E151DB2';
wwv_flow_imp.g_varchar2_table(484) := '5C6AD5434A3C670D00800D2887D17F211BE6AA676B2D5DB44CAF3AE72ABDEECC576BBA58A4BA3F3A16E2A6A2980C00A0E95818F33F0247C402905D42901C8C932DDD54E119C03A40149A9E00423A05A6E0D57B8DDFEC33E7C1CFB78A5C1067DC40F0186D';
wwv_flow_imp.g_varchar2_table(485) := '2907EB55967334BC2D691B0A9C07F9859B936067A2EBCD56F099190BCB15E406F709E3E99464F6A5E590190C2B7BEE89B1A469CEA9356FC682F1109FF437FEC6DF88F469BE63779EBFEB73D90062DCB09830B49EEFD4256A97A959430200010C9C7F0100';
wwv_flow_imp.g_varchar2_table(486) := '2C008027CCC0910000012604B981309D8A6225686ADF1BD751F6449AF2F7380AB57060437A419256444F6CA25ABD805324EDF422A37507B4D8BAF079AC808D9AD3B4382B5F7734C35DE1F420AE4B711C7C63F8100962B4F2E55CB6F0BD915286C07FA780';
wwv_flow_imp.g_varchar2_table(487) := '28052DE9E47A0CB60CE6136E1CCFB5D9E0642DE093E4DFEE3A38CE42A4600C3F28C17FDC0BC17AD1900765D694996F4AF0372EE4F0E543AF1FC8F7EBFA7BBFA4AF6EB8513BB35DCA27335503A2C75B91F70F931F543C2EEECEA874F08CB466E20CBDE9D2';
wwv_flow_imp.g_varchar2_table(488) := '37E8D215176B716B91F208833F76E5D608EF1174C9330DA3D46F43450F7B0DBD9AB52B3D36FBA8BEFAF01DBAF9D16F69576FA7DA45190ABAA6C67A91A91F11FDFDB9EC8518DFA8FF4E98F6A8E228E8534635C30CFF377D0C60168665B4C90D90C46D7707';
wwv_flow_imp.g_varchar2_table(489) := 'CA0783B0870116BD3CD341325B06B596B6A774C6A253F4D64BDEA98B169FADA91AAEA05099170134020000341A03FB38CC5083DE804811DCA781F6F477EA0BDFB95E373CFA0DED2F0E455F03D20223D711AA040050976A93B9A19686B34395834A97ADBA';
wwv_flow_imp.g_varchar2_table(490) := '586FB9E08D3A7BE5B9CA0785DAB81048A1A46B61046C8E023DDDCF70E44A0294A65D41AD9CD22A9DF6ADE336603D425763855A21A62C81416DDA9D6FBE7D6270C1713636C699403EF3FEB0CBD0D1F77C1F4588F2C710E1B7030BCD201A90786F8F07205B';
wwv_flow_imp.g_varchar2_table(491) := '26D93DE0B1D88569C3C4CCC8388B69D9C55EA752277344DA2E2F5BEF29D360F90B388071C4A2C785EA79B33C8AF5366ABE6439495F000000A992E306D27C73FD5CFFFC79CF00F8011B39B3D0F08791EA06E567A5EED2B33ECECA910585F549500AC12C69';
wwv_flow_imp.g_varchar2_table(492) := 'F31E67037853716EFC57FFF81FFFE3F09B1B119B62349A66E13B22D900C40133B600EC9FB3B0E17DAEC7C673994D9719368AF7C6E237081FF60200804B80BFEDDB4B998794964C8386522B3FDD7C470ADE3190399ACD8460C10FF9F33FFFF361FD9B2171';
wwv_flow_imp.g_varchar2_table(493) := '2A10822A9D57842C91FF444213E8C32B503E6D7549DDC3221D299FF02D8FACD23AAF745FEF7EFDC9AD9FD17DDBEF577F62A07CA209E2ABFB55D48C8F863AFD4A59A71BECE678000020004944415456BFCBDC565A55ADD6ABD65CAD375EF03A75CB5C1D7A';
wwv_flow_imp.g_varchar2_table(494) := 'D307DD7E1C8AE184758EAB02EDDB3408C2E24799D2E826CB2AEDD0767DFDF19BF4956FDEA49DC37D9A5E39AD7E6F4683D99EBAED09159DAEFA43BCE9D40A68580E5BFC3C072A1E86E54AB01C561D3E7A9476534A28660A654FAB5D5CEF878AD9F8BB1852';
wwv_flow_imp.g_varchar2_table(495) := '0CA909CACBBAAD886F18929E353BD01BCE7F9BBEEF9C2B755A7755640EE07EE1E26D57F66B70D8F17991C2487C02CF978B543D6D3CF8887EEF5B9FD03D7BEED3F474C3D6F47B55B458A698006E8F3CCF021031B583DE40A7E4ABF4AA33AFD495175DA965';
wwv_flow_imp.g_varchar2_table(496) := '5AA182744D46191D188D189B06462993455D00B30066BD6CF57AED3B68D8378C0B80C05FE289BC17BC7F52B973B413F464803BFDBECF6B20C03D5889B38FA1FD317270B359895A86D8A070C6939947A7FB5A4E59D639E6C856BD8D0917FBF1752D57189B';
wwv_flow_imp.g_varchar2_table(497) := 'D9445C7C28E60F7CE003D1B4CB56BEAD7F0002F36A7F3E817F0030580B1B04663A2C876C4CD95821438B731B00719CDD8A473BE7CFD5E31600C0E8C99AC262F1E07F2606803437A2E759B02C1853DF7C8505CAC24401B1B0A09908043CEDB4D3E6E833DE';
wwv_flow_imp.g_varchar2_table(498) := '67717A03401B022C889C874EE473E7F6A7D66D1A44E3FC5C53DDDE08A6E87C0DBE6F6569BADF2E095FDFAC45CA0A707F8C1D1F1C022AA5D4BC917CFFFC663CBEF771F064C16421970A210B85F43BE39B8AEF116005FDCF0677E5C354481AF898ED404050';
wwv_flow_imp.g_varchar2_table(499) := 'EAD33518E258A2F5B102000004A539B82C72E66B55451D45723EB5F133BAF9811BB5A7BF4775B70A6558649D28FC13B4792EB54B944D5F3379AF29F6B3EC72BDEBF277694D7EAAA2A01C21EB38DF8F130068DA00139F4FC6418B5E458DBB221FEA60B94F';
wwv_flow_imp.g_varchar2_table(500) := '376FBD559F7EE80B9A39B05FC37AA06CA2D080A4030205CB5CDDB2E93990917D80D027DA1FA5662401C02058AFAE3539CA0018E25E80B2CFE9AC974740A028AD5B979AEDD064A750AB8AFF8702ABB25255469DF65EE4E89F39B15E3FF0C2B768DDD20BD4';
wwv_flow_imp.g_varchar2_table(501) := 'AE3B619D63A77702813451F5A338BE6397A315790F140BCA22C6A0282BCDE487F4A79BBEAE2F3CF025CD54BB223B6330A4CD413F1E4B4693A6B0ECD9B7ED184FEB50AEF3A7CED135975FA3F5CBD6AB3DA0D6432B98A1868561CC87419D4100FB83005E7C';
wwv_flow_imp.g_varchar2_table(502) := 'E658A0AECC891C705A9A69765BFAC4DA6020BCE4252F99DB5F6612BD2F2C7FE69B2083DF1468FB3BE3EFD90070F54FDF03CC1AE3BFFDF6DB9F20D39CD5C4F92CD7B807CB1A0C0BDEE7FEECB2B49F3EBD760A98D2BD6BB6C3D5462D4F58532F7BD9CBC2AA';
wwv_flow_imp.g_varchar2_table(503) := '870DF0B92D8B7C7FF8FE6FB8E18648C944461BB8D85599BA3DF91BF9C198610631748E0638CD37FFCFB5CF9FD70020F59779F1F0808D32419A1C633ACC0B9F63BC615357008B8C8016CACFBA108F95213DEC0114F66BDB6F9F6E827423BB37391B8E3804';
wwv_flow_imp.g_varchar2_table(504) := '16B3AD712375A35867009051608ACB4A3FF5C931A6A84DDFEF07C36044CC268142C70FC7DF6626D2D880D462F13853A6C060219DC7A7BB59381F1616F43FC2C98186167A9C2F2DD6C2DC70CFC45FF0837F32AC0024FDB0A4824F638D8E22CB5156755669';
wwv_flow_imp.g_varchar2_table(505) := '56036D9ED9A6DFFBE6EF6BCBFE4DAAF381AAA28AC07ABED62E3A1AF67AEAB40BB571075434199AD5E98BCFD01BD65DAB579C7AA526663B11615FE6D43247311E876A38A3A23E5541716102E73ACAD0A6B934C8FBFAF68EBBF5270F7E5EDFDA739F967726';
wwv_flow_imp.g_varchar2_table(506) := '950D069A29FBEA4FB4C3EF0E5B31D16F9AE5F4B386DEA7010E7EFE61396CF2FE491E206A5FB90E455A2440961285C403500E78187D0D5A1D48884CB3BD5614326A01476AA87DC2F251C183A8D54F1D84BCB7583F72D57B74F9F2CBD5AE3AD15B81AE88ED';
wwv_flow_imp.g_varchar2_table(507) := '516322EA0C8CDA093CDD25F1678FE719E10688C28A790024666B53BD559FBDEF4FF5AD476E552FEBA9D5ED841B07EBBFDD6E052B4217470A0785053BD3D78A6CA9AEBEE06ABDEEBC6BD41D76D5C9DB0100625D33ED0900B035C9FA264D0E25F4B9CF7D6E';
wwv_flow_imp.g_varchar2_table(508) := '2E4B288DFBB1856CEA9D75F9C10F7E3002850D184C6FB3A71DB037AEF08E34599601E93EB31CB36BC00684E5940D16F63DCC23728DB446C71E5806719CE583A3EA53CADCAC24563B86836512FBD4298066461DE9CF67062076833A089079E66F2B708AA8';
wwv_flow_imp.g_varchar2_table(509) := '61A9BFFAD5AF8E71A4F745003355547159B8357B1A6FC11C1A389809C0ED49EC051512299294CAAB635F88CF8D333CAF018037B537A11F298B9E4C002C5147EA9BE6F2C2F4A24D5D012823CA015317800E54EE4A07EDCFE2856E8305F0C267D19A55B010';
wwv_flow_imp.g_varchar2_table(510) := 'F07B8C095A1EAB811FFECDB5507ABC1C55EC1ADD8C8B6B10BFC0463333E08D61DFFE384AF626A36A1EE005454A5A514A559ADA0B0A99E0B2D1EB4800CA02CA964D7AEC536D19CEED7424B22A28E369D7897D79E9B5EDC6606E605EC80048AD34DAC4E113';
wwv_flow_imp.g_varchar2_table(511) := '1F84252DB5A2B84CA5AA1868677940373D7AA73EF39DCFA847005D38FA01078566FB54686C7ACB77082A2730AECCA29BDC15A75FAE375EF246ADAC57368564284097352D66893938E6170080423D2D9C007DB54A82E95AA2D9E0E6C1167D71C3F5BAF9D1';
wwv_flow_imp.g_varchar2_table(512) := '6FE8200AAE22321F031B658F558CCB3B57A76A52F28619162F417F44FA5303A0D0A2624AABA6976BF5A2159A9E5AA47202212B0DFB03ED3DB057DBF76ED3CE433B75A03EA8AA3B54D6C935316C87F90E38A2253299156DFA0FE4B41F2E43C976EB69FDF8';
wwv_flow_imp.g_varchar2_table(513) := '95EFD3654B2F5551B623F5B109FC1B36058B6A00D231CF4E9C20A688FAFD441B44AAA7D49F1DAA9E2AF5ADEDDFD29FDEFDF97009E49410AC49FF6CD2D46039FAFD5E0447A2E4610788F5B878E925BAEEA2EB74CEF4594DA027ECC5086034B112A33E0EA3';
wwv_flow_imp.g_varchar2_table(514) := 'E1B3EE5046BFF99BBF1956B4DD62DE6FAC61AE67771AC7F3EFD7BEF6B5FAA55FFAA5A0BBC7C1744A59CF374B3ED66B9DE3ED87F77BE37B976318C757BEF2959069A4CF59991B88F83B4E55769C808D0494294C06D943AEC5EF7B4FC76F4693E3713350FD';
wwv_flow_imp.g_varchar2_table(515) := 'D473603FBEC181594B64866BA29C7BEEB9514DF5452F7A51042B730C6C29017F6429906D94B2947C377583DA7DC1B5602EDEF7BEF7857B0137ADE5FD02FD7F78953DEF018051B215308B99BFB140F19191F7EB38002BFB94E24A91BC234CA9BC47909D53';
wwv_flow_imp.g_varchar2_table(516) := 'FC2894834243D9B3F84C81D942E0BCFC384A9845CC06BAF2CA2B0311BFE215AF984BCF318AF58635138190A1610FDDB71C3C671700F7E34D97A6F2A4143DE78369C04AE10757466A65F83A29503992B5FF6400605CB0A5C7192CECD8B123A87F841482C7';
wwv_flow_imp.g_varchar2_table(517) := 'EC8A5D0E6602B82EF7C1988806C6F7EF08E239FF5E531ABF2972330700061AB67B7AB8B7431FBBED0BBA77FF3DAAB3D9A880171EF7A2A33ED673596AAA4B0F809E0645ADA2976BFDB20B75CDDAD7E8925517A955B643E993DF5E855FFDF854F943BB45CA';
wwv_flow_imp.g_varchar2_table(518) := '7E0B2FF7307A0860E7F6EAA1BEB1E3767D66E367F5E8DE8DA1C80F0E7B5178A88D5FBB37207C5D59D18A1C7C68FFAC18AAEC576AD55DAD985AAD73579EA3F3969CA333264ED5B2CE62755B9D08FE43D9113439D33FA43DBD5D7AF4E0663DB877A336EC7D';
wwv_flow_imp.g_varchar2_table(519) := '44BB7BBBB5BCC0A75FAB47F39FD1BD86E55DE74D232149CBBA4BF58117FDB0D64F5FA49C0648302305F7D08BC24359D6395E218064ED85FBA21D6C0EF10B3C645C74B97657DBF4D907BEA89B36DFA283F501B50A2C538221DB2A8891190C95B7F25837FD';
wwv_flow_imp.g_varchar2_table(520) := 'A21F119EA7F64ED535E75EA3D7ACBD5A9379276217E2BC23C042DC08EBCD8AC5EB965A21640AD12E7B8E79A231D428F2DE7BDCEE388AD050011403C1CC96658FDD7FF3297F1F6F859BBADCACDC2C1752EA1DA303E54F919F9B6FBE39EE3FB5961D90971A';
wwv_flow_imp.g_varchar2_table(521) := '406634ECC224E59058212C690080E5506A55DBF2E6DADC37D63A194FC83E648BC73B2E23524B9FEF618CA0FC919FBC601CFE3F7BEF016557759D8F7FB7BD32331AF5DE7B07D1114802490821C0C660638821769CD8719C2CDB594E1C2FA73B5EF15A0E59';
wwv_flow_imp.g_varchar2_table(522) := '496C673971623B7662FF6263836D84242410084CAF42BD8F7A2FD35FB9EDFFFFF67D7B74F432D20CE83108F41E684DBBEFDC73CF3B67EF6FB76F53866A43261A3FEAF554D9A140409F853F739DC90B4296C4F224CBCE4228DD59FFF7DB35173D00305D6A';
wwv_flow_imp.g_varchar2_table(523) := '1ABBE326E266A3CB9E19FBDAA2D244DDA685AB56BC5932A35E057EE5FB7800B431900A0055626A312880502B828A9871316D67AB875B0581E9B95065CC03FEE31FFF58CA7A78F035714795289F5143087A0854B9F350F1F0F1A0332FA09C2C48EF61A2EC';
wwv_flow_imp.g_varchar2_table(524) := 'CEBC00DD3D242A10F47A764D248B1F3D256659941E6ACD87A070E25C99B3406F01AD12E50DD735518A7C52F99290C6A10700215AD18C178EBF8115EB9F445BDC222C7F514C3F012DA952C57BC1476D4D0A6198471B7CD447F558387A3E168E9F875E718D';
wwv_flow_imp.g_varchar2_table(525) := '589FB4CA09141C3B259668250C5C72DF24FC37A4F90B25298FCA767FEB21AC6C5883578FBF8C20CA211D6791A36FC323CBAF03BBC886387416D82892F52EF6E579EBAD5E18533F0ED3864CC7B8FE6330383B08B5C8C2297542143FBA6CE444A9C64E80A6';
wwv_flow_imp.g_varchar2_table(526) := 'A8157B9A0F60EBA11DD87E78271A8A3B10B39BA1434E0176E04B122463CB43216678C1C1E2C173B070CCF5189C1D023B4E4A27437A204A1E00719554E8258505AC3048D21B25C9532AF64396F4E7B0B3710F9635ACC28693EB91B508E218DAB185F258CA';
wwv_flow_imp.g_varchar2_table(527) := '1BE92B098BB0EDC46B82BC83A97D27E3EECB3F8461E9E1920C98903725CFEAB06360C9CA544B9BFB9F609BB9003C6B4AFFAD896B66CE8DEE59FE8D1C1577DC71870006DDFB3C7B6668B1AB652A3F337A7DF939D4EB6848F03CD15B4110C0B3A3F334937A';
wwv_flow_imp.g_varchar2_table(528) := 'D5CBC7BFD172363D8CB4CA99494F99402FA77A37CAE76A8EC7BFAD5AB54A729E68B95399AB41A2324865633968E17B29534D0F03D79EB24CC39366E2A1B9EEEAA1A5ECA3E1C4EA2C7A0955C62950AA0280D2D18FCB4DB1AE76E0FBECEF2600E0A3999B98';
wwv_flow_imp.g_varchar2_table(529) := 'E526CCDE5DBD7AB5C4BCB4D3942A50BED754A6A675AEC2C244F96A3DF377E56E2CFE4D5DECB484190763690C338835F14E372FBFAA3B4D51B75ABE143EE42F20FA6613130A001DB7FCC0978F43AB9B689DD68AF28B93C8C43C2CFC5EC31F7C8633DCEE5D';
wwv_flow_imp.g_varchar2_table(530) := 'EC8DCE90BF397F962331994F1B20692CB3B310044112432D5FFEF297C553A2C244D7511AFC810C77745B27EE6026C31D2C1CC4D26D4BF1FAD1D792C436C6875950C6EB983E1739D285CE716961FA52F236B1CF64DC3E7E09660D98CE6C3BC4313902E846';
wwv_flow_imp.g_varchar2_table(531) := '26677E22942A810068DD32FC9C0ED9A23744C189914684570FAEC5233B9FC0A1F6DDA8F15CF8211BF8F842352C4C7E2163EC54CA318A560151184966FBCC21D371CDD0AB30B9DF14A42237E903406061933B82C991A90E7EBED027E531C9876C0110A7DA';
wwv_flow_imp.g_varchar2_table(532) := '9AB1F3E81E2C3DBC02CDF953088256C4ECB467F1F9E90148C3756BD13BD30F7F30FEE318D67B08DC5492182B9F73C972D6F6C99D798BDEBE2829711718C45589B72894D6CDCB0EAEC2B286E5D28B21EDA5900F22F8AE07279542E8B7C38DF3C8C41EC2C8';
wwv_flow_imp.g_varchar2_table(533) := '459393476FAF0E1F9D761BAEEA3F1B19321B4A11431136C18E9374A4D397C6B1A9601E7CF0412106E2B9322B6DCC509969DD52F993979E94E11AD632CFB409F0DFFEDA9C26F3E21C79A6FEFBBFFF5BDCF16AF997031A3DC3FA9CFA19F2F754FE64D2BBF7';
wwv_flow_imp.g_varchar2_table(534) := 'DE7B05E828535FF9FCD4132A78B2C4A0C87263020F5286D38A27A8D0F240F5786A12A17A35F4FC9A61125D435356EBF7FAD5F458A8C1C55C225AFF34144C8F4577722DCE67FDDF4BEFAD7A004AE85EE342E62160AC8FBCD33CE4548C67C34A9A30631EA4';
wwv_flow_imp.g_varchar2_table(535) := 'F2C3AC4A4C33F5352E46C44A60418B965E027E4FB4CC843CED8CA507D61CB3B3F11559F32B5D9374A733278063EAD8FC1B15BD1E3875596A590E7F4FD04010400F04EB97E90930152CE7AEE0470F6A7704BC8EC103A256BDC622794F3224926E55818A0A';
wwv_flow_imp.g_varchar2_table(536) := '1353F8F27BF59C9082F9539FFA940829D37B23A08B608E0C7AC20898B0FFE591C7D6C66D58B6790576E677C2210060A500FFA3B09722C084DF3EB6E4B7C846195C3F6E0EE68D9E8761CE20C4C518B11B20761987F692B12B54E44ED04200900A698DC7C8';
wwv_flow_imp.g_varchar2_table(537) := 'DB011017F0C496A7F1E4FE17D0141F47C67510852E228B8EFE30497894C4454F944A212CA06FBA3766F59E812B275E8EF1F51390451DFC7CC27DE0A4E9BFA0772144C4663F5C1FE50516D2A152573DC468095AB1EDC87AACDBB309DB4EEC467B86550724';
wwv_flow_imp.g_varchar2_table(538) := 'D38990CDBB98D86F342E1D3D1D97F4BF0C75E95E327EB94253005C698B4B95C2FF193706DE685A8B553B5661F7A1DD706A09F0E8E561A8866580F42114E184423A8C9C17A0C64AE3BA7E9761C9E45BD1273530A95A6012A5E40224950FE5CFC5FD462FDB';
wwv_flow_imp.g_varchar2_table(539) := '030F3C2031752DD735BD63A632548BF4AB5FFDAA50DEEA786A1577370CA08AEC5C4A8663122033639E6E7FCE93E79B32805F955DD334084C4231AE2DCF25CF1563E8EC21A2BD06B4B24115B5CEA3DC90D2734A8F244100E510659D5AF21AC633AB1A4C19';
wwv_flow_imp.g_varchar2_table(540) := 'D2993CE1EFF87EEDA0AA09957C0E35B8B44A81608BA5C42ABB74BDB514BAD2FBF1BDA4F4CDB956014089894B15A02E8E1E648D4B73136B8C5E51B026E5693CAD33E1A78A5A51B17ED54DAB074A152A15215D6D641724AF806E58B594CD0FCFB4BE399EBA';
wwv_flow_imp.g_varchar2_table(541) := 'EED43BC06C590A80152B569CD1984395BF3927150C3C547C2E96E3B1BE9E0280160073023467410184BAE13437A2AB43A06E4953582868212B22732E5822C9B998A04A0FBECE97F7651C924955EC1DAE391AA6E54529CE043021042A31BA9D2836E285BD';
wwv_flow_imp.g_varchar2_table(542) := '2FE1A99D6B7032750A76ECC165F21E05BD5C9B2439B24D8ECF582E8029D971583C7931A60D9C012F7025110E6956D917852ED616B6A0CA84B8A99A38BE4B00E05AC8D9451C2F1CC1D2D756E0CD539BE167F248D3DBC038BBCC324A946E1423EDA4E1E703';
wwv_flow_imp.g_varchar2_table(543) := '79D6E943A6E0B6518B30A4EF6064ED1A5831C31949DB5ED20B27EB9F301C252C810C36F021A82893E76687BF64D98A38D07C041B8FED4243D341B4F839D4B9198CED3D0CD3078EC388FA2170ED6CC70294BBA23994EEF5EE80C4AEF690A970743F958F7B';
wwv_flow_imp.g_varchar2_table(544) := '223A86E71A9EC59A2DCFA339D30EA42DC66BE0064ED2FC87402760280308D3801BD8181E0CC0BDD7DE8351BDC70B9110531C2DE63D103894125F5561AAF2A3E2E79E7DE8A1873AB2FBCD5C01CE4FAD4DBE877BF62B5FF90A162D5A24CAD8744B77572175';
wwv_flow_imp.g_varchar2_table(545) := 'C761CB734AB73FF381C869C2B129B334C35FE7A43247AB16746CBE9FE79D009BCA9F214895795C6BADC4D17529F702EAE7C2CF8AC0473BA092D7832FCA29E52BD12A25058AA60C2DFF7C75DDF5FC73AD39BE99E3C4F733019B9E16120B291701E7DD5D39';
wwv_flow_imp.g_varchar2_table(546) := 'D5DD3DF87EB8EEA20600E56E63F303D5B21622FBBD7BF74AC20F2B03B8D91907E3DF3511C54CACEBCC5AD0DF29CAE6CF6A796B4C8E878EBF634D3B5DFF54FE7CE9A63595A70A5415B6E6815664CDDFF1A0317B96AE4ACE5DCB7EF41A7D5EFEACC281D798';
wwv_flow_imp.g_varchar2_table(547) := '19CD44FE6C3AC20A01BAD25822C96B95F98CCFC4575702CC8C75529898EFA1C267FC9F6085FD173429523F1F5310A82785C9542454627C4F8546474E43C8F833696D5533332B3EC2EEE63D58B9F171AC3BB61E853AE93127A56D8EB80B98351F4AE63BBD';
wwv_flow_imp.g_varchar2_table(548) := '01453F82E76671EBF01B71FDC8D9E85F3398B56DA2EC43274631A43226C37D8905B00249001D34C58CE7DB3172761EEB8E6FC0F2371FC3BEC22158D924F66D8574B327B5EAB6C7304C285CFB76C1C6C0DA819833690E6E1C380756404E8410765A6AFAC4';
wwv_flow_imp.g_varchar2_table(549) := 'B52D54C36C0C64D9C27498300426169400C3889E8184D29719F3219312AD08415414DE01260D0A57BEE5C165FE436C0B7740924690900EF1657AA83A03AF95109E9D818D64DC009B8F6DC6235B566153DB7638BDD80E38402AA0C7272D74C64114C023F6';
wwv_flow_imp.g_varchar2_table(550) := '63914311C8B6B8F8D05577E0B2A157A0DEAE4B4023B33D844428A9F0502F935A9BC78E1D93243796042AF854A5AEE7DB4CB0E3BEA7578D152BDA64ECAD828072CF5FF93A724D7896E8F6E759D2CF95675A297C3507C9FC5CD4D0E07874F5D3034970CDEF';
wwv_flow_imp.g_varchar2_table(551) := 'F51C6AC84F41BB7ECEAABC4D4060EE01CA0C264D321F80C97CCC33524BDD7C8F293B3B033AFA79AB814219A42D90D59348E645729A5066F139356F40E58D094E2AB107DFEB635CD400401507379EC6E4CC0DA287937FE361FFA77FFA272C5DBAB40301F3';
wwv_flow_imp.g_varchar2_table(552) := '5A3D4CDA315037B1190ED0CD6C2A7B7ECF0DCCB1696D7323930C83AC552C8151C1A1F138F3D02990504B5F2D0DDD8C7A604514068108849FFEF4A7C241C07134C14E0500C75145AE874C639AFC1B2D6C751F2A62375D96DD714B9A9E1005223A3FDE8B2E';
wwv_flow_imp.g_varchar2_table(553) := 'CB7DFBF6753CB75AFD2A5C4C00C4F7B3AB21F305989D5CAE6064ED43C66F93BA75D6FEB7D9ED58776C0396BDBE0247C2E3086B44CBC225710EDDF86120843F4C589764BC828301F54371FFE43B31ADDF6471F7932C8796B138D0E320517EF43054A8C62D';
wwv_flow_imp.g_varchar2_table(554) := '6943AB74C521DA9C1C56ED7A0ACF343C8B96B819167B1384CCECA7A72051B236F9EFC3022C3F467DDC1B978CBA04F3A6CCC3687B9434F849F498254A9C767E921099DCA703006823A0D2FD4BEF12C15F64373D02516918749A52994B11301FC4025225EE';
wwv_flow_imp.g_varchar2_table(555) := '05F52CE93E34057AA5D6E85C02B7037CC4164EE44FE0C97DBFC18A1D4F20EE15089D713AF00400E4A49F02DB1F27D4CBAC0275720EAE1C7305E64F9887513523243F449224C9A26CB4A836010E152A2B6E4834434FA126A3699E8CE6E5A81CE11E671920';
wwv_flow_imp.g_varchar2_table(556) := '15207FA78C8154CEB464BB63DD77671D3916439634003436CEFB9935F73A37FE9DF3D03C235AFE8C9DB3439F96FBA99236D7BEB3D2DCF2CFC674EFB3691865273908CC2EA8BA665A2D61EE1D733DCC7557D9A4CFC4E725A060CD3F2B82962C592296BF3E';
wwv_flow_imp.g_varchar2_table(557) := 'BBAE19651F9FF3ADD02EBFD7157C57F3BFE801808200CDC02F8FE1E9027233B30695EE3E5AD3F40A28939F99D0537E404DAB48AD6B75652B210F0502372DB3EF69F9ABD257F4DE915855B2ACCCC3605A41A685C2DFABA5C2FBB01EF7273FF989CC9F8745';
wwv_flow_imp.g_varchar2_table(558) := '91B1E95653C56C1E308EA9893A3CACEA59E0E153564205245D09679DB70216B5E6151829A0D1508326012AA05105C3F731A39AD9FF5CBBCE04341BC038D20B978A2EC6D1E0289EDBFB3CD66C7A1A7E4D045FD2E601277090624A7F14C2B70B88BD50EAE6';
wwv_flow_imp.g_varchar2_table(559) := 'B3411DA60EBB041F1AB70443D20385D9CEFEFF33B913529D08AE5B6AAC536ADDDC1DC1DCD5614C887BE989A79B214293DD889F6EFC35DE3CBE0E1113F060CBBDD9B6D70A585EE7001E50887388DA038CCC8EC4FC09F371E5E86BE14419A46DD15FA53600';
wwv_flow_imp.g_varchar2_table(560) := '89C780A04514B924042614B9258C90209F8E1F12C5C7AE882C3524516ECC663F21CB0D6D58CC4560AA5C18082F40673161F373A9CCFA74BD82F2B481053FF6B1AE71037EB6EE619CC20969F19C8207CB7225E133623E041FDDF79396C14861706620964C';
wwv_flow_imp.g_varchar2_table(561) := '5B884BFA4F4736AC4D580C9DA48AC75482E6F963A2304BCDE872D7FDAA96B22A7E3DA30A0CF429745C9E2BE61B116457629D783F3DABFC5EBD111C9BA0801E4CBECC5C1B5EC7BC1F92E6D00B492381CFA1243E6A38E8DCCD8A1CD3F048B64FB2A7CC1C03';
wwv_flow_imp.g_varchar2_table(562) := '3E2BC9D0089828875866CDEB347742138B4D43A1B34F5BBD97DA888889865CD7B973E74A493093A7E9B5642895EBA939161C4BE54B6780A63B3BEBFD78CD450F00544899A53BFA3B75FDF1677591318EC5F216BAB49868C7841A6E4AED1AA8EF3537B239';
wwv_flow_imp.g_varchar2_table(563) := '1EC7D12C771E44B6F5A4F2E7A19B346952475CD0DCA4A67B5DC7520F832978F5777A004D0B4C4100CB96C86DA020800799636AC31D0D45940B3DCE47790C0810F47DE681EFCE0151CB5EC300FA9CA650359FA3B367A75BF25FFEE55F24FB5FCB7E141C28';
wwv_flow_imp.g_varchar2_table(564) := 'F0A11B9B0C762230EC10DB9AB6E3C9EDABB1FEF006D8750EFC52CCDFF22DA4E2B478090A563B222F89150FB186E186A90B70F5C02B506B6524DEEEB874894788181E48A58434C617A0C1863D1520022AA5E731CBDE0E231C0B0EE3BF373E842DCD9B918A';
wwv_flow_imp.g_varchar2_table(565) := '99E1EEA1488BD566D91F6BD61DF8B68FD0F111E7024CEF370DB74C5A82C9FDA72160FC390A937E38364BDB92EE7E746D93CC872112E20C050092154000406BD7286B6478C12148201990500633369E2463317740F22CD8FCA7132F8869C15542B12958EF';
wwv_flow_imp.g_varchar2_table(566) := '72CF31771231F616F6E1B1AD2BB0E1E866E46DD202277C0D244A2243223F40BBE00B9809D31EECBC8D25936FC0DCE1B3D1D71E20402C622F81522CDFDCDFEA75A235FB9DEF7C475CEEAA643AC229A590089F5DAD517A01F8BD925CA9274D0D8FEE9CA1AE';
wwv_flow_imp.g_varchar2_table(567) := 'AE293FBBAAF894E4470102CFBA96309347838439ECCCA7C0BE3C14A79E42FDFCCBC37E6A28E819D4CF5F8110DF474F2AE526E527BB2AF2678EC33531CFB23EA3B96F381EE58ECA28CE8F2E7F922CDD7EFBEDB8ECB2CB3AFAA0A87C516346C0AFC30E8FA7';
wwv_flow_imp.g_varchar2_table(568) := '6579A5F664579FC785FCF78B1A00945BD29D2159DD24A69B99EE356E6296D8B0C695096C44F06A2DEBB82680E0D88AA679C098614B973F112BE3D84CB4D1F7EB81301578B93BD1B42AD442EE2CC9C5B4B2792898B8F4A31FFD48B27239671E101508CA19';
wwv_flow_imp.g_varchar2_table(569) := '60861854F8A9F5C07B2800782BC95DA65540B0A1F913266032DB80AA05A1C2846BA2F79B316386F0339072D9F4D874289C5207C0A040CE0347FAD1BF76E875ACDAFC180EF98724292C0C0097A670D146CACA4A5D7FBBDD86C8F591F15318E78EC39D97DD';
wwv_flow_imp.g_varchar2_table(570) := '8531BDC6241633B3C225D02DBE6F517A42D14B605029222056A9C711FC888C7E110EB5EFC17FEFF825B6346E46368C908EB228308EEFF848B35C2DB0908B73B0B331EC628C6B865D8D5B26DC8211E9E108E831103A01A734D744E18B8F41E2F4710768D1';
wwv_flow_imp.g_varchar2_table(571) := '76C0B4E84B29F04955A3B8BE1385CF872D55F725398F7201998B784D2258CD574F0BD733CE32BD1B88712A3A8ED70FBE82C7D73F85668FA44EACF4E03AB2DF0209931CA48BA1245CB6672C145A7C2C1A7D2D168F9D8FA135A31047044DC9F3ABD74EBF57';
wwv_flow_imp.g_varchar2_table(572) := 'F7362D4DB60FFFDAD7BED661F19A0AD03C237CAF2A491D4FE58A961357425950D1694852CFB7DE575DFE26601E33668C58CF0CAB298111E753EE79343D09BA0EA6A22E4F583665A78609150C50669297808DBFE89D24DB5F7918B27C4F29C0A2FC60A882';
wwv_flow_imp.g_varchar2_table(573) := '7260DEBC79D23F80D9FEAAE04DE0A1EB6F1A1A2AEF2AB1D6EFF5312E6A00A01685B951CB3776F907AC0789BFA702252F38FF51B1320EC87F8C497133AB72E221A4F2A7BB9A6EB62953A608DD25CB81B89155D9E9262D0F4370C36A0E8089A675FEAAE435';
wwv_flow_imp.g_varchar2_table(574) := '9ED69935AD5609C72178615503DD71F404F0BEDAFC4311B266299BAE3EF3609956862AF1AE0E03DFA3CF512E482978D4ABA0D69286021410699C9099C9CCF2E55A9603009D0B8968C21C13F93C3439CD7866CFD37872EB6AE4BC4262CD86B1B8C8838035';
wwv_flow_imp.g_varchar2_table(575) := 'F4696956135879447600CFCFE0BA21B371FBC425E89BEDAB9433120B976C79091924FD7FA8542B5404200A9594B53E297DE3007B9B77E2FFED5A8AAD8D5B910942645083023D00D5D65A00002000494441541A4E880CBD1664B48BC90808A4A334E68C99';
wwv_flow_imp.g_varchar2_table(576) := '8385636FC240BB2F22AB286C7D1603FD64E6918642097E493E4732243A09EDAD343E3A93CB20A90C244860B923FF4B0080F6554E1AFE51CD923FA1040E3A4900EC6A4F54E2EFE59E06A10B8ED908298F86A69DF8C52B4BB12F3A0ADF29C265EC5F001D93';
wwv_flow_imp.g_varchar2_table(577) := '3D2DB88C0439167C3746B1BD8019FD27E3D6498B31B5EF34A90660326667F241DDDBFC4A0A6ED251F3EC9B8055CF25F7AF5610696E8F7AB94C055A6E51BFDDB5A1BC51CE127ECF73C479F18C69D32205F9F43AF23C51F933D747F312786F13C42960D139';
wwv_flow_imp.g_varchar2_table(578) := '9AF17D9D67B991526EBD9B324CBD120CA1B054905F49994E99CA9C2802189D37D78C4A9F044AB4F8293319EF27D1CFB871E33A3A0B9AF2492D7E3534B4AA487FFF76D7F6FDF6BE8B1E0054EA03DDBF7F3F76EFDE8D868606C994E74153E549573F953F37';
wwv_flow_imp.g_varchar2_table(579) := '2F93D68856CDDEDCBA29BBAB48BB3B67F512E86156F0C0AF240BA22780E10C1E3A1E48E50A301365CC38A65A0D6FC7BA5381C783A8BC04A68237058EA27605389ACBA099BEACEF6569224301E6AB0360782E0214E01653A2B876FB0D58B16F395EDEF78A';
wwv_flow_imp.g_varchar2_table(580) := 'B0FD79C848ECBA16167274E3DB6CA013232D19F024DFADC73DD7DC8B2B6A6620E33183BEBB2B7E9ED749AF7B52EE92E3DE4743D30EFC6CDB32EC6ADD058FB17678F06D1745963431F4200D7F48E51BA326EA85B9136EC40DE36E445FAB3EE96D40777F99';
wwv_flow_imp.g_varchar2_table(581) := '20EFC48C3FCF495F786F6792269F9DDD024F148EE3179B57E0B5E3AF23B65A90B26CF8ECF848E0128728B219126CB090310A8AC878BDB168EA12CC1D321B75615A7200BADAEFCC07FAC33FFC4369B0C397D9ED4E5747AD63F34CEA9ED7DC80F23C8AF359';
wwv_flow_imp.g_varchar2_table(582) := '5955B0265037739578C6E88524D708CF1289CE3444608292F399C3D9DE5B2E97B8BE0CA5B2EF0A13811966A5674501006525E747C5CF5005E5A89E7D0522A6F55F2920F54E3CFB853666150054E813510567BAB47568F377A65BDFFCBD5ADE6AC59FEFB4';
wwv_flow_imp.g_varchar2_table(583) := 'F490A9A5CD9F352EA60D3B0802C8D2B57CF9F20E771F63949ACF4081A02180F39D8F29543827AD2630418FCE598596F90C2A2409A49874454E72B396DA746932AEED2B00706D6C6CDC88E5BB9763E3F18DB02D0F9E9511573B19F78A6C0CE358C22D9F62';
wwv_flow_imp.g_varchar2_table(584) := 'E5001CF4AF1B8EBB2EBF1353BCF14839AC13ABD4D377350EEBF04BD4B561803DED0DF87F9B96A2A17D175C921A45EC6E9874F863E99E3431922435C0CDA5B060F2422C9A7413EAFC5AD8CABE5BB2CA3BBC42B4E6E5794AAE8BAEA6F41EFC3B01003D34A4';
wwv_flow_imp.g_varchar2_table(585) := '436E0E9BB06AEF7378A6E16914E24670E97CB8C9BE26DF03172A06322500E0D9B59837793E6E1C3E1703AD3E677800CEB614745F332995DD01F9D22440F50698D67379E29D26C0EAD9ACC472F3BECA6B627AC814CC5369D21021BD2FCB7B79A6CC50C53B';
wwv_flow_imp.g_varchar2_table(586) := 'AD40752F9A9E9BCE9EBB3C84A0F2C02C63343D2E9558BB8B6D8C2A00A8C027AECA555DD71CB243E09692A354A9A930300FE63B75E0CA1305F9330FBF497A44AB85E1009275680842B37FB53CA82B0BA83B4BC83138AE265B52E069FC53D74DE7AB89511C';
wwv_flow_imp.g_varchar2_table(587) := '5763873A075A00A46766F84451FFFFB59CC8F3EEC3095C58AE8DE7F6BD80E50D8FE260FE80647B7B561681B8FA23849C137BCBB3BB9C1F228534A60C9F8925539760843D182E33ED7B1C0038B0C300878B07F1C3371F4243AE011EFBDE4A76BB0597C94C';
wwv_flow_imp.g_varchar2_table(588) := 'EC8867C708C95B4C77766384859316E0D6A98B511FD6C1F292DA7C9DFA196E72FD6D8F3D57777648E5AE61C226AB1C9CC846DECE616DD3163CF2E623682C1E46644508F9990AF5738CC0492116EF4F2495028853B862C4D55834763EC6D68E4C1227BB28';
wwv_flow_imp.g_varchar2_table(589) := 'F364DF10526FB33780EE69931F43C1A99990C673A0392FCC09D22CF84AAC82DECF3CFFE6D963B74F527D33E18FB9472A13F83ECE493D185D3DF7F9CED5DC932A9B384FBD2FBFAA6C349F45E56B79B8B6D21ED4F37DBEF7C2FBAB00A0429F52670A9F439B';
wwv_flow_imp.g_varchar2_table(590) := '89809A455F5E86A2C8BC9240C03C5CE59E061E1C75BF738EDAD884A426DAD8A43C21AF12CBA48758EB91F9B396232A2050EB49D7C80C5B707DC8FF4FE215D653AB2030D74D855F6805704899EB008F6D5B81950DCBD1EAB64BF6BC6BA5257BDE911EBA09';
wwv_flow_imp.g_varchar2_table(591) := '218E45333A1FA3B75D8FEBA6CCC5DC51D7A39FD527A1DAED314529AA0BA190134538111CC30FDEF819B6B7EE80C78CBED8921C018F843D52CB1E21A08BDA76103685B866D895B86DDA628CAC1926ED7BE909E9B44D91E6EBF5D8735562F7747F0CAE2263';
wwv_flow_imp.g_varchar2_table(592) := '39A469665BE203FE11FCF4E59F626FDB2EF87680880D9408A0D8F54F5A3FC7484B86A38F62004CEE370D4BC62FC2CC81D3CE28313DDB0CE83563522D1BCF30BCA5DE2A55606AA5722F2B235F7976BA26ED75FF29CF7EA586D9B4944F5B86F3FE54FEACF3';
wwv_flow_imp.g_varchar2_table(593) := '271BA13619D3F9D128E1F79AA7D0553E5425E66A8E61CAD0CE3C98FABBCEAC7E35142A29432BFD7C17E278550050A14F45955B79E28CF9B32AB3F2E41873F3560A7597BBFED4F22ECF86D5D21EAD0EF8C52F7ED1918DAB9680E9B67CBBCB650A131E601D';
wwv_flow_imp.g_varchar2_table(594) := '536985CD3228B39C4841140527852619BEE801D08E6A3A1F151E9AB9CC2440BACC5BAD1C7EBDF1D758B36735E21AD2BEA6E1C61E0A4E1E76485E030200721D44B0F21686A68660C9A537E3D201972013672AD6E8A77BEB46825FC6AF09006234C7A7F0C3';
wwv_flow_imp.g_varchar2_table(595) := 'B50F61FDC90D702C76B0730500B842DD6B238843C96C0733B6F3C0D8CC68DC347E1EAE1C7919AC9835EF493F7B13000A682A95F39128E9FDF94A121BC9E740AE83C6A809BF7CF361AC3BBE0EED761E96ED0AC0629E043D00444BCC0A80E523EF87189E19';
wwv_flow_imp.g_varchar2_table(596) := '855B26DC84D923AE84159FEE0570B6B5E2DE645D3BF300B42EDD74FF9BD6BD7A0215E82A9DB699715F89CF4441BE9E778214261F7FFEF39FC782050B84E487F754656F5ACFEF8441D29D67EACC823F5798C0F47498DE82EEDCAB7A4DB202550050A19DA0';
wwv_flow_imp.g_varchar2_table(597) := '1BB51C89965BDF8A6265F14BE5453A854A297F8E67CE83F754D724EF61C6FB4CE5CED21C0200D6E75290D19AD1249B4A2C13E761F209283DA9D6466BA3249D9F2988B459127B13B002408183AE99AEAB0A52BA7A9902772877188F6C7E042F1D79116E8D';
wwv_flow_imp.g_varchar2_table(598) := '8754312B6C7879BB5D38F25D5AC14EC2FDEFF8694CAE9F880F5D7A2B46D78E12AEFF52C0BC128FDFE518CCAA9734C0D8917E0079AB053FDBBA022FEE7F1961D80A87FC0B7C2A12D39432F87D2B40ECD970E1A1BE588BAB46CCC2A2E90BD10F033AEE1749';
wwv_flow_imp.g_varchar2_table(599) := '2380C41B25EB25002016429FF7E72B79DE482A20803CDAF1E4AED5786AF7B3388566A12E269B22C101F301980498B622A99C280421FA5A03B070DC0DB871DC1C64E3BA2E3D40DCAF4CFEFDCC673E2364617AAE55F99A8D76382F5AE4BC867B58C387950C';
wwv_flow_imp.g_varchar2_table(600) := '03704C2DFFE3674EAF1EB3E5C937C27A792A7F95072A1BCCDC23AD587837ACE9724F6AF9CFE67E551967CA527DAEF7E7BEAEFC5355014085D6B47C3376366C6768D68C7755682A1DC3A8722F0F3968399DC6D055D1F267129BAC5DBB16A4EE64398E5632';
wwv_flow_imp.g_varchar2_table(601) := '9CEFDC54D0685912EFC57FE4516019906620732E6A2599F3E79CC99F4E2B8B4D4AB44EB9530090F0E949A5DEC6639BB062E7726C6CDE280A341BD40AF56BDE690553BF684DDB4E8842142215D5E3AA4197E3CEE98BD1D7E99794C6F5E04BCBEAC403E003';
wwv_flow_imp.g_varchar2_table(602) := '819BC3CAC3CFE1A9ED6BD0DA761C7049FC9334EF71A384A2B7181711A59817402F808DB1BD4761E1D40598D56B9634BE91163FA4462E3143CA7A75700EBF4F630071208F18C3152E841005AC3BF5267EB171190E85C791B22C7811FB43C4C847163CDB43';
wwv_flow_imp.g_varchar2_table(603) := '9ADE00E4508C63D406BD3077D4355834693EFADA83CE0900F44C93D086A580DCCB66ADBF5AE25AC9C2CF82C09A19F8E40061BB6D66C02B3D7725B69B826CCE8DA57D83070F96FBB1E48F3F9B6050CF5B792542252B12BAFB4C66BE4FF9B9E618E59EAC72';
wwv_flow_imp.g_varchar2_table(604) := 'C3493D8BD5A63FDD5DF1AA07A0FB2BD5C595E5492A9D6D4E45AABA99CD9F2B3611632033A6A7F3D3642015025A2EC46BCDE4402AE44A6726AB07C07CFEEF7EF7BBF8C10F7E20A588A615A4C4280A06E88960F90FADFFDB6EBBAD833DACDCF56F7A5118E2';
wwv_flow_imp.g_varchar2_table(605) := '7FA1E179ACDEFF38761676493BBCFAA85E887DDADD5658A881CB46384E805C14226BF7C30D23E7E083E317221BD620F63463FE9DF8743A1BB3E40108130010A67CBC925F8FC7363C8663270F089B5F417A0FC5707D206339C88779442932DB59B0021B75';
wwv_flow_imp.g_varchar2_table(606) := '761DAE187C39EE18F541643319789E2B373AC3927A9FE70020223D135B3AA724CF230A0B3860EDC7F75EF929F6150F2305C02317BF15A33D889172D2C8D8318A519B00AC74318B6B875E8EC5931762687A549700807B8EFB9739002CAB550E7E3DDF7A0E';
wwv_flow_imp.g_varchar2_table(607) := 'D53B459E1012D8B0690D496C0800D402AF841790679C5E359E1D96202BF52FE7A3A136759FEBFD4CFA6D55FE95984B774F8EE91935C321A69B5FC752CF84FEAD3C7C516EF074770E17E375550FC03BF0A99FCBCDAFB7EB2C69A5B318D8F94CCFF43828D2';
wwv_flow_imp.g_varchar2_table(608) := '375D7D6773AF69CCD2CCC83D9F79E87BCDF96828E21BDFF886644FD3D360B6EEE421370527E744E63FB6009E3D7B76479F0313009C3147BA7E2D1FABB73E89670E3D8D43E1618909D7C575C2E897B7DB60210B87EE7137402E0CD0CF1B82C5A36FC2C251';
wwv_flow_imp.g_varchar2_table(609) := 'B325819014B1DAE3BE12CFDFF518251F4068C1F663C4A9087BEC8358FAC632EC3EB603ED561E4587E43C2EEC622800804440BE1B8A35CB0E7D76E060943B1C1F18B50443070EC3805E03245CC0E641090F7042094CAAE4A4C2C1F40228D3CFE9992A0D50';
wwv_flow_imp.g_varchar2_table(610) := 'C20C58F604C28C589956C85DAF4DF7AF88237A0008003CD8618CC8F7D19A6AC4F75EFB2936B5EE841D934991151531F24184B497816B85288639448E0537EFE1D281D3B178EA224CA89B74CE1BEB99A55BFF1FFEE11FA4F3266BD8CD0A1595071AB62261';
wwv_flow_imp.g_varchar2_table(611) := '1089C0D8F593E5ACDA87A4FB4F78EE2B4D39C2EF393ECFBF36C1D13363E62429D0E6C826C94F4F818072D9D7993740816C673954D51C80B7B77BAA00E0EDADDB45F32E75DD9FCF039B289E825119C1583FCD0E8B0F3FFC70879B5A4187E9FE572146F6AF';
wwv_flow_imp.g_varchar2_table(612) := '071E7840FA7D9FCBCD27C224B2840170C5B6C72486DE12B5C1B13DF93D830321D892D88613A550748BF0E33C26A6C6E3CEB11FC2B4615311DA2152BE078B1D637A281290D00091AF9FFDEA43382E098D423CB1E149BC74F455ECB5F621B042D485F50882';
wwv_flow_imp.g_varchar2_table(613) := '026C76B3736314AC40FAD64B8BDEC8413670313CDD1F574DBA1633065E823E565F38C584BA98CD838A76286592D928550A7330014EB203A51B8158AEA2DBE92667A8C115AF09690F193E293103975A17B1EDF2F9EC8E77E2BD09DD317B2AD00B640BC153';
wwv_flow_imp.g_varchar2_table(614) := '1B7EB975159E38F4028A56236A1D32E4B19C1270531E0A61913C8C120EB05A638C1E3816374FBB0957F6BEAC4B00A0FBF3FBDFFFBEF4056059A0D27E9B56AB7AC068F14F9E3C59BA597EE4231F91BDAFCAB812ABF16EB8EF2B31EFEA183DBF025500D0F3';
wwv_flow_imp.g_varchar2_table(615) := '6B7E51DE51AD208D89528193418D00801C04FA52246F5A00FC9E8080D49FBC9E2580E772F3290038E99CC2F22D2BF0F2FE57D1867638764A62C2B48409002C3870A3B4008042D48EC9D989F8E8A48F62E2807108AC005EE8251E801E0A952704BD49AB3E';
wwv_flow_imp.g_varchar2_table(616) := '89DEC71672611E7BDBF761F5B635587BE24DF8AE8F74C4D2353F69C2E30049C49B94C6ECF4672128FAF0A318E3078CC315A3AFC0CC7E3331D0EB072FB461052C1B84240E92FF20F9CF7889EEE47A3383822561C9DF592AE7B07CAE94174170C04640CC93';
wwv_flow_imp.g_varchar2_table(617) := '702E380490F43460FB66697814D1B3D28647B63D8155079F432E3A891A82AB8094CE161CCF851FF9202C22F153DC0A8CE83B028BA62DC4EC7E57770900B83F6935B3CB1D9B549109540180825F756B73DF1200D09BF5477FF447C2C4D79937F0A21412D5';
wwv_flow_imp.g_varchar2_table(618) := '87EEF115A802801E5FF2EA0DB5F738F907D8D48735D49A7F6026ABA9AB524BA5E6CF9F8F6F7EF39B1D254C675B49795F0C1C8B8F611969600FBF8E768B3CF02E8BE7411D16C605DADA48C5D9040084ED985E371DF74FBF0FC3EB8620B07CB851524AD753';
wwv_flow_imp.g_varchar2_table(619) := '0080CFC376C324F961021F9F21E7E7E07B019ED9F92C9E69781627C313B019F30F99E2E6255DFD58C26897DA9DC61122274254E3C26FF6511FD56172FF49B864E44C4CE83F167DBD3EF0E0083F40D2C7805501C44449C31F79D844F70B10C8476DC8A4B3';
wwv_flow_imp.g_varchar2_table(620) := 'B08934D81258ACD530B954FAE912465D68E584A701001FCB66158C95C363BB7F83C7F63E8396C251645D0741EC200EC8DCE78AF22777043D00515B84C1BD0663D19485B861F09C6E010002543605FAFAD7BF2E1DEEB4B39DE6DC2870E2CFCC0160F2DF67';
wwv_flow_imp.g_varchar2_table(621) := '3FFB594968E5EBDDC8B8AF4AA2EA0A540140750FF4F80A282739590809005876C8F8BF2840D6679B256B805408D06370EBADB7E29FFFF99F052C9C2B36A900E0807F10CB362FC7DAA3EBA423205DD9F400388E85202E08EF7F1A35625517FC76CCEA7B29';
wwv_flow_imp.g_varchar2_table(622) := '3E31EB77D0CFAD1765E044A51AF01EF2009452D7115B49BB5E61B465774027C0B6C61D786EFBF3D8747C2372D936C4114BD95C69F613F9EC6B07589E05F21F045151F4B36BA7E008A780875E5E6F0CEE3504437A0F43DFBA01A8F532E8EBB8F01C0F1937';
wwv_flow_imp.g_varchar2_table(623) := '8B8C9745D6CDC0B352B0A58950727F36109276C201B301981361CBFCE48F0C410823C1851603303C008253E8012860CDC117B1B4E12934B51D42C64DBA0146D21592ED92E9150A8465316A0BD12FDB0F0B27CEC7CD236FEA120068AE0AF7F15FFDD55F49';
wwv_flow_imp.g_varchar2_table(624) := '058DD96553AB6EB8670900982F40129E4F7FFAD3F24F2B5A7AFC20566F78D1AF4015005CF45BA0E7174001004BA608009E7DF6D98EFE039A736066221300D0A54AEA52B20096F327943F81028086F606F1006C38B909811725A42E410CD7A1F0370080ED';
wwv_flow_imp.g_varchar2_table(625) := 'C30F0BB86AE015F8C4AC4FA036CE20B41326C19E0C0128004802F08927802C7F0C03B45AEDD87470339E6DF80D76167722A4DA753CB8B103CB8FC4CAA583237043C461849AA22BCA3BB023C91BA0A54E06C4B4538BB49D154B379B7224B64F90E05969D4';
wwv_flow_imp.g_varchar2_table(626) := 'A66AD1B7A60FFAF7EE8FBEF5FD509FADC3707B90D0235B444B923F510A1A3099907364FF04AF27E992BBDEAF491E0523299638331C012A053C77FC0D3CB27D358E37EF43C6B3E0D36DE2332FD22D85527C38B68D281FA197D70B378E9B870F8EBDFD9C74';
wwv_flow_imp.g_varchar2_table(627) := 'C05A7AC659B1B52D1B5531B4A5043BFCAA1E2C0D6F713FB316FF939FFCA4540228635FD74F56BDA2BA02955D812A00A8EC7A56473BC70A68A293D649B31F3801C04B2FBD24F5C96AFD6B46B0264D6985001B97FCFDDFFFFD69429BB3DC4B4307DB5AB6E1';
wwv_flow_imp.g_varchar2_table(628) := 'D18DCBB0A5691BA23459F1A82C01CFB5E1B37E9E0D81E21A142D260446983DF45ADC37E36348479EB4052653E0BB01003A2C6CBAE685F12F40E8C638D67E0CCFEF7E0EBFD9F72C5A231FBE6BC17399C7100B73208183EFD03AB7511364A44280A18CD865';
wwv_flow_imp.g_varchar2_table(629) := 'AC9ECA1AB0424B12051907C9B1D69086BC24F7251E057A037A65EB5057DB0BBDD3BD30CD1D8F11038663509FC1A8B16A845E97FFA98722664E41AA67C3245D1D32AAFB044C59E2E521DF1101C02B8D1BF1CBAD2B71F4D41EA4BDA40B24FB2B4892A36BA3';
wwv_flow_imp.g_varchar2_table(630) := '1815E010D81463649D2CE68D9E830F4FB833E99B64544B98D5332600A047EB4B5FFA1248A8A50040CB6C4DBE0F02602A7DBAFF5909C0ECFC6AE95A579F6AF5EFEFC40A5401C03BB1AAD5313B5D0155F0FC4A01B97AF56A0100AFBFFEBA58449AF9AF00C0';
wwv_flow_imp.g_varchar2_table(631) := 'E400E0DFEFBAEB2EE904D85596B308682BC6A6539B05006C6FDD096419F8B761F989D2A49B3CB248FE5383425C90DFCD19713D3E32F1C348C71E62860C02378973F76008403C20A0C24E943F7C4B2A11C86C584411DB4E6CC5D33BD7606FCB311C8B9AC1';
wwv_flow_imp.g_varchar2_table(632) := 'E6F6A4B1F5C2C41DCF3A76F10E30DDDF664A217BC1B3183E0913B8F404B02C908C74569248C8E43E9ACACC2BA0AB9FDF53C5336762903B1883EA0762CCC0B1183B702C86D40D41AD55935403845692AB7081A5007005130060271E00C10245BCD1BA150F';
wwv_flow_imp.g_varchar2_table(633) := '6F5A8123271B90F2924E905668C38E5C389E837C9493FC10F65D4AD9295C3FE23ADC33F16EF9FCCD187D3900508E0DF6B4FFF297BF8CCD9B37CBFE3E5B66BFEEEFFBEFBF5F782D18FEAA0280AAD07C3756A00A00DE8D55BF48EFA995005A06B872E54A89';
wwv_flow_imp.g_varchar2_table(634) := 'E9937990DCFE5A7FAC2E7EA550E5F5EC077EF7DD77E32FFEE22FBA1502A015BDF1C44601003BDB77C1AA71110736A9F390F2C8A95F9418B61765900B0AA8C9A671C3C8B9B86DD46DC85A69446E120210D2809E02009204C876C041A2884A0080D9FD4C66';
wwv_flow_imp.g_varchar2_table(635) := '8BED18CDFE496C3BBE09AF1CDA848DA776A2DD6E171A5B8F96389BDFD82E7CD23D93E4D661B21F33F8D91D8F8985AC1448A8A0F9338180B8F4A51A405F49B1BF4421E851B02384F9187D9CDE98387022660C9D8EB17DC6A04FA63752512AA90CB8C02885';
wwv_flow_imp.g_varchar2_table(636) := '1300402F001BFE9600008A589FDF818736ACC0E1930DF0BC10053B1690270020E52017B44928801E11CFF2307BD8B5F8D8C47B25E1B11C009875EB5AC6C77E1A5FF9CA57C036DB26CBA67EAF2BAC95300400BCBE0A002E528178013C7615005C001FC2C5';
wwv_flow_imp.g_varchar2_table(637) := '34050A4E2A7A5A48CB972F97B2A9F5EBD78B07C06C8C4281ABC953BCBE7FFFFEB8E79E7BC4C2EA4E0E406C45587F7C03966E5A8E86DC6ED859D6CB5960F93FD9F1FCA820C2DE8BB2C8FB79D4D66471E3A879B875F8AD48B314CC0960F5741260A9F69E1E';
wwv_flow_imp.g_varchar2_table(638) := '009AB0E26A8F13EB9C2F7A012C2B40AB7F0AAF1CDE80E70FBD8EFDAD7B11846D48C5365C2B850829290BB4AC0242B604E4282C17745DC4020CD86D909D0563B86162BA931A28410024CF29FD633501BD0E6E11693B0D276FC1697730283D08978E9C8159';
wwv_flow_imp.g_varchar2_table(639) := '632EC5A0F44064ACA4BB22C716B780A42F240984A73B29F62C5B50870700250F80700214B1B9B0073F271DF0899D70BD08793B861338706286002CB40739D9134E6CC3B35C5C3BF41A7C6CD2BD0290BAF20010546DDBB64D002A4301AAF4956153BD060A';
wwv_flow_imp.g_varchar2_table(640) := '1CB8D7EFBBEF3EB9BEA6A6A65A05703109C10BE859AB00E002FA30DECF53317900D403B074E9527CFBDBDF168B8974A554F89A28C5AFB4AC14081000B011D09FFEE99F9E5358AAA0A523FCB5A36BB17CDB4AEC29EC8395B6611700DB67DDB78322580618';
wwv_flow_imp.g_varchar2_table(641) := 'C1B16A00DF473A93C19C51F3F0D1D11F925A7CD2030B977C4F9AFFDDD90025577D9B9DC7FA936FE2373BD760C7C91D08BD10E94C0D22DF425088904AD5C08F428464C5635501FB1A31E38F9671440F000185978404A8BB4549D2FB1049F2604CAB9EBC02';
wwv_flow_imp.g_varchar2_table(642) := '79768CB360B991E41484C510BDAC3A4CEA3B1ED78EBA02D3FA4F44361A9050EF929FD88EE0FB36E2C04536C52A0A828B224B144A6586DD79C8F3BCA654A4C09C454229876592A18F1DE101FC6CC323D877620B1CCF46813E903044DAB11182CF1722B613';
wwv_flow_imp.g_varchar2_table(643) := '2E05360CBA76C8D5B86FE26F090030BB6896E703681E0063FF7FFEE77F2E212D93D0CA6C71ADE780A0961C00040004BF02C4CE60653CCF35A8BEBDBA02DD58812A00E8C622552F39FF1550C1A74D47E80178F4D147A5AE9F00804980E5AD5195138059D3';
wwv_flow_imp.g_varchar2_table(644) := '0400F7DE7BAF7800CE55337D1A004478E3E85A2CDBF6181A0A7B61A56C384552EC9603802CE0070200AE1F3917F78CF990B8BE2DF68D2F01801E8C0074B9D0E26E267DB107B4456DD897DB873776AFC5BABDEB71B8FD18EC5EAE2498054DED48653248A7';
wwv_flow_imp.g_varchar2_table(645) := 'D2A258823040E0FBD209D0A562B71D141D66F2D3471089B5CE5043D22C304620F5FE80C716C44101B113C14AB9E28C88F2403DEA3079C0784C1F3A09970DBE06356E1654A341E00B039FEDA4853C2825ED16038869DD5360AA4459CCB976008038C0767F';
wwv_flow_imp.g_varchar2_table(646) := '7F0700704B00C00E03A4590628DC8831627A4B983868D9983DB46B0060E6B56CDFBEFD9C0040F302D40B460040C0C0F057150074B9F5AB17BC032B500500EFC0A25687EC7C05D4FDA9218065CB96490860DDBA751D4980EADE373D0604066C69CA100005';
wwv_flow_imp.g_varchar2_table(647) := '667701C0DA63EBB06CDB4AECCA35488DBCE3DB704226D5D928DA6CAC1BC289B3EC9082543A85D923AFC7C7C6DC85983171B6D9ED462FF89EFEACA9A8A2B800C77211878E94F81D693B8E0DC736E3CDA3EBB1AB75170A713BFAA4B208C25018FD42B661B6';
wwv_flow_imp.g_varchar2_table(648) := '92643FD6F883C97E712874C7A56C4349202CE54E8A052C79FEF4C23024104749EB60C712BF49816587A18D7AAF16836AFB61D1840598DA6F127AA10E76C88C390B314B12E3081E41857466EE41187506008861B3541111B61676E3E71B1FC5BE935BC4AB';
wwv_flow_imp.g_varchar2_table(649) := '5120255218C19592C610121161BE857003D8B86E1843008907A0830191E59686A56E56AE300780FB932100BD5E1359F5AB96B9F2670200960D32BFA50A007AFA2455EF277B2E3E6D325557A4BA023DB2020400748B6A12E01B6FBC2156904902A499D51A';
wwv_flow_imp.g_varchar2_table(650) := '02A090246FFA5FFFF55F770F00C431D69FD88865DB1F4BAA00DC24E69D00004B8881581767C759E18A77D32EAE1E361BF78FB90B168986247BBE1402E841DDD5D507200080097EA2615DC9D4A3223F15356347CB4E6C3CB611BB8EEFC2B1D62388A8A868';
wwv_flow_imp.g_varchar2_table(651) := 'E56B22A3952875A9E68F63A4181E60DD3B7303583247933F8C851B20E118B450B44221CA71E00A9028D03B50220CE4185E0C4CED3301374EB81153EA26A326CE4A2263600712762090783792298544497C0F0400A1E08F4D6D3BF0D096E5D87F6A1B3B2B';
wwv_flow_imp.g_varchar2_table(652) := '731561333992AC88F415F097FCDE8F90B21D5C3762367EAB9403A04ADF4CFEE3676502007AB2E8D2E757A5FED552560D7B69B880E331A4C5B241EEFDAEF25ABADA17D5BF5757E0EDAC401500BC9D55ABBEE7BC5640010099D3C8EDFFEAABAF8A07C0B4FA';
wwv_flow_imp.g_varchar2_table(653) := 'B5848A82941E008608C803F0B5AF7DAD7B00200236376EC1F2ED8F6173F336446E044F00002DD918BE1DC2A2651B6758690FCBB371E590ABF1DB633F0297D4B7745B53C95E607159C6E8F9CFB39C5263A324B4CE92C696B0058DF9461C6A3B828DCDDB71';
wwv_flow_imp.g_varchar2_table(654) := 'B2F9248E361D4763AE054532DE786C1B9C9419C661889A80897E1622B2FB31F6CDAA01898147B00806A8ECC9F1E3034E604B332538F43A240E73AA4DB2EC31B472E5B0ABB160CC228CA91B296106F20F444E006619D801DFD7B3D5140900902248E148E0';
wwv_flow_imp.g_varchar2_table(655) := '5CD7366EC1AF76ACC4C1A61D7085F98F4D8E12C0C3C4483BE525FD030A21B26E0A73465D87BB27DC2DEBDB1500E07E25902513203D019A04A8612CD313A08981AC02F8E217BF287BBB0A00CE4BA454DFFC3657A00A00DEE6C255DFF6F657404300640024';
wwv_flow_imp.g_varchar2_table(656) := '0078E185172409B01C006822159303592A75FBEDB783ED83BB6A0424338B80ED2D3BB07CFB4A6C38B509A1132015B33F3C155E8890E438C2799F0273E3E102B3065E8E8F8FBB1B999AFA04145C80004008F958832F56B844E4258B3F61E74DC88E687D1F';
wwv_flow_imp.g_varchar2_table(657) := 'C5099C683A8183A70EE370F3119CC89F448BDF82F6A00D85302FC9812E959D0442E8EF487C0B020EAC00160112F9076C175621821B58C21EC8DC01B6CD09C3221C2B82EB58680B8AE88F224739890000200049444154C158306111AE1A7905FAA77B976C';
wwv_flow_imp.g_varchar2_table(658) := 'EA0076C498FABB40A824299E0422319C906EFB082F1F5D87471A9EC091D606B8A4078E5D7EEC02747CB6474EA5656DE342885EE92CE68EBE1E1F1A77261150B90740F72C153C9900090076EEDC29791866474B7EAF5E01EE7FEEF78F7FFCE3F8FCE73FDF';
wwv_flow_imp.g_varchar2_table(659) := 'C182594D027CFB32A5FACEB7B7025500F0F6D6ADFAAEB7B9021A03A5127FE5955704009011900A5E05A6560068CB5F020072ABDF72CB2D723D85EBD95E1D11AD1052FE4700B0EEF806F8367BC0A72404409E7F66CD537F46510A36DBE9DA1166F6BB149F';
wwv_flow_imp.g_varchar2_table(660) := '18FF51F4EAD51F362DDCC84B3C0017500840086E386F86F299A7209E0A26F625F5EC52EAC86B5CB2F9C4F0C533D08463ADC771B2E5045AF22D28860589EDE719DF478C6210A025D78293AD2771AAFD14DAA216042E19045932E8206DBB52661805EC3340';
wwv_flow_imp.g_varchar2_table(661) := '804002204B4227080284351EFCD618E3FB4DC2DC897370C9C0A9E88DAC58D301BB0A7A54B43D584F2139000900909404762D4484670FBC8AA5BB9FC2F1FC5EA44A00C0A3F7238A509430505AE2FF2884E85BDB0BF3C6CEC16DA33E70C6E77F3600C0BDFB';
wwv_flow_imp.g_varchar2_table(662) := 'F4D34F4B888A54C0663B60930D504300CC69F99DDFF91DE908C86BCBC77D9BC7ABFAB6EA0ABCA515A80280B7B45CD58BCF77054C00C064292AF4356BD69C6131990080D7B30A8042F4A69B6EC2B7BEF52DB198CE662D9900605F71BF54013019B0681100';
wwv_flow_imp.g_varchar2_table(663) := '787022E6AAFB02006C86BCD9F2D70A10D83EA6F7B9049F9C702F7AF71E083B2EC28E5342997B41BDC4D297D47D51DE240D8A49054C4BDDB211851648CFEB2685F852D24720C09AFE123D9EBC8FB67E9BB002442816F368696FC6B1966338D87210FB5BF7';
wwv_flow_imp.g_varchar2_table(664) := 'E360EB2134169B2533BE269D9644B942318F42E80BA740DACBC00E6284791F764D0AEDC53C3CA471D5E8CBB170CC3C8CF546C10A1CF6D8439002D2AC3CE82924C5F5912793E68F1D00E0C9DD2F62F9DE353859DC8F145912630F292761EC2B8641E20160';
wwv_flow_imp.g_varchar2_table(665) := '0E4421C6805E7D316FDC1C2C1E7E4BB70000C35464B624003878F0A0005A33A745F7A59206B119D0EFFEEEEFE2339FF98C805B2D79BDA0F65A7532EFFB15A80280F7FD47FCD61F508555A55D923AAEC645376DDA2400808293D63EAD288D856ABF000500';
wwv_flow_imp.g_varchar2_table(666) := '7C0AB6032600A0F5D41D007028388C65DB56081F400145642C0F76907800D834C7297900C8FD1A58454CED330DF78FFF2806F5190E8B000029E97E7761BD12B77F420D789A83573C02A59837E7CBCC86522444F082E08152219E840BF8129A4036CD918E';
wwv_flow_imp.g_varchar2_table(667) := '40082D1FCD68C1AE96DD58B76703761ED985E6A01545D6FDB9E40760632132123AB0C821C0FE01912DCA2B6FE5A513E198FA9158346A21AE1F742D9CBC8D380DB43901B2C23BD843AE14921C947A1711003851920DF0F8CE67F1D8BE67702A38241E0086';
wwv_flow_imp.g_varchar2_table(668) := '265CCF95E70F8250923F5962691781A17D064933A0F94316740B00D04BC5B6D65FFDEA5771F8F06101A9E5E7C8E400183A74283EF5A94FC93FF510BC9B2D81AB1E880BEB94F7D46CAA00A0A756FA02BD8F66DB6B5C9D8A57DB9B5229578AA3DCB4FC7529';
wwv_flow_imp.g_varchar2_table(669) := 'E82A6519E0AF7EF5AB0E6B495BA62A00E0574D08BCECB2CBA477C098316344B86A4C5574195DB9712C734F1AB100CD51231EDFFA187E73E8459C442BBCD8452A6FC14B7B68B18BE201485B6949006366FDE83EC371CBE89B7145DF6B92C4308FF5F1A5C6';
wwv_flow_imp.g_varchar2_table(670) := '3717E8E7573E2DD5ED6F45D59ECEBD10361AF8A18FD6B6361C3D75182B762EC5DAE66DB00778483199AE95CA358530E309BF7ECA2F2276EB104745847101AE9DC5AC1157E0B6093761443810B053085C260BF6E03A92CC48981399D028FCCAC8594D7864';
wwv_flow_imp.g_varchar2_table(671) := 'CB4A3C7FF075B4464D48C91E89518C8BE2B9C84419F8A4874AB5232EC4985C3F0DB74C588C5903679CF39357C5D9DADA8A071F7C50A8AD4F9C38216E7DEE49EE4582037D693BE0091326482740D25B9B9E824A6E333307C11CB7BC4781796E78FE345FA1';
wwv_flow_imp.g_varchar2_table(672) := 'D20640259FAD3A566556A00A002AB38EEFD951CC24A6F2263B4C56D232A64A3CA05A3ADA0CA8B1B1110F3CF0007EFCE31FCBF0B49AD4DD6F7A00748E53A74E956E80975C72C9198C813AB7720090B35AB17AEB2A3C7DE0051C45A3B4CECD1649ECEEA0D5';
wwv_flow_imp.g_varchar2_table(673) := '65291D9022EF7F1C0935F0D0BA81B869D402DC306CBED4B98B97A02715572516F92D8C615A7DAA1444E8C70CED332FA0196F36BE8ADF1C7C0D3B9A1B2457A2CECA208A3DE4042BF8C83281CEF260B18E9E9D0723477201968C5B804B7B4D06AC348A7604';
wwv_flow_imp.g_varchar2_table(674) := 'C6DA7B2E04C000079D1B76D2A7288CD06C9DC0CFD72EC5DA139B90B3DAA4B4510000F900A314B2718D7881F25E1B500066F69B855B26DE82697D27760B00B4B7B7E3BBDFFD2E7EF0831FA0A9A9E98C76C09AF5AF0AF5D4A95398316306BEF0852F488B6B';
wwv_flow_imp.g_varchar2_table(675) := 'ED81F1163EBA735ECACF92E788A105B32D31DF647ECEA68742F702E7CA7006DF5B29F05FA9E7AA8E53F915A80280CAAFE97B6AC4D3D6DF699B512D072909ABB00BBC3CD6C910C0BFFDDBBF811614E3A67CA915620A200A495AFE245A59B060815CA35502';
wwv_flow_imp.g_varchar2_table(676) := '260050CF0073CF22BB806776ADC1EA7DBFC17EFF183CC7410DE3D251889C1383FC6F292AB4284621CCA16FBA176E183117B78FFF00DCC845E0D0724DEAE1DF6FAF728F4C47EE4469FD054C45011AC31378F9F85AACDCF0045AFC53A8ADCD22808D1CB91C';
wwv_flow_imp.g_varchar2_table(677) := '620BB596837649424C42047E1063803708370C9F8D45E3E6C0B36A51B4E29E07000C01D8361C76570C7C1C8D0EE327AF3C8CED6DBB11394599BB2440DABE3404CAC435801BA2CD6A86536449E835B865D22D185B3BB2DB00E0EFFEEEEFF0C8238F2097CB';
wwv_flow_imp.g_varchar2_table(678) := 'FD9F3DAC9E362A6402DF79F3E6492B607EADF44B3D0A3AAE9E27FE6C9E19F39C9B73503050F50054FA93B9F0C6AB02800BEF33E9B11999643B622895DCE754C62C65A225632A864A4D4CDDF5148674FF9312B8ADADADC3E230FB00E83D69950C1E3C189F';
wwv_flow_imp.g_varchar2_table(679) := 'FBDCE7841150C149B9D7E2B42543F6591FAF1D7C158FED7C12DBDBF6229D71910EF89C3172ECFA6605C8305B3DB2910B5B91B55DE17FBF67E6BDE212266540C2A173710000FDAC4DD01722C0FEE2012C5BB7025B4F6C46C12D20702C1AD5F02217A9C841';
wwv_flow_imp.g_varchar2_table(680) := 'CE0AE049EB8018C53086E7A77165FF99B8FBF20FA0DEE90B9F3442A41AAED406EA6A1C89F92700C066A26458C0F6D6EDF8DFD77F8D03C523701992905E0880EFF86C7988749465B402AD513332410A7346CEC3CD136FC620AFFF39AB40F40CD103C0BDF9';
wwv_flow_imp.g_varchar2_table(681) := 'DC73CF7558F4269705F734F7304303CDCDCDB8E28A2B84D86AF2E4C9F2FB4ABE782F9E277EEDD7AF1F860D1B26FF4C7642F5C629E036010A7F47C0FD4E1800957CCEEA58E7BF02550070FE6BF89E1DA13C4648C5CF46262CCBDBBD7BB708AA4ABA2735C1';
wwv_flow_imp.g_varchar2_table(682) := '4F850DDD8CFBF6ED93A429BE3A7349EAEF2824FBF6ED8B4F7CE213523AC55240B5F63BB35498D766592176366EC3239B56E2CD935B90AA633F000A36BAB0C98A57403ACEC282877CDC062B0A7069BF19F8D8E5F7A32FFA89F62747FEFB4FFD275BD60C01';
wwv_flow_imp.g_varchar2_table(683) := '989E20AEA7AC3BD730B0904FE5F1EAA157B066D733D8D5B207518AF4B9E45420C98F8DA217C2959C0CD1A588723126D78CC16F5D752746D48C462874403D584D1926E58DD2D088D91D513B5E3AF82A1EDDBE1A47FC13C838163C5683582453F411058017';
wwv_flow_imp.g_varchar2_table(684) := '64E0A62CB4FA4DE86DD563E1D89B307FFC02F462B3A8736C00EE659EA393274FE2F77EEFF7B071E3C68E8C7EDD97BAEF95CF82608189ACF4686913AC4A7ADA08AC799669EDF33E03070EC4B469D370C30D3760ECD8B11DDE09F5A2712F6875822A7D9E37';
wwv_flow_imp.g_varchar2_table(685) := '7E5F0D03BC67C57BB7265E0500DD5AA6F7E745AA5CF995CA9ED6CBF7BEF73D2134312D834AB902D52232F30A38369539058D820D93775D9514FFC61C813BEFBC137FF9977F2982F38CB875D947240D68E308C78A47F0ABF52BF0E2E1D760D54540A180B4';
wwv_flow_imp.g_varchar2_table(686) := '5B833CEBDAD12600C0B13228D83904610EE36B47E3EE4BEEC1D8EC38B824BEB98800807EE60A0E981D6F53A3A7621C0C0F62D9A695A248FD544198F262E653449E902A49AD3D59053DB6710E30D219880FCFBC1533065C0ADB624D420F02290200E21732';
wwv_flow_imp.g_varchar2_table(687) := '25C721725133566C7B02CF1E5D8B13C129D4C6402672E1B33BB45B441CDA70FD141CCF42BBDF8CA1E9C1583CFE165C37EA7A168E9EB34B1FF727F7263D66BFFFFBBF2F1C00CAFAA75D00F59C312EAF612E7EAFAE7ABE5F4B012B2569944343137A09023E';
wwv_flow_imp.g_varchar2_table(688) := 'F0810F48D221F30F4C70C27B9AD4C5266F41A5CE7EA59EAB3A4E6557A00A002ABB9EEFA9D15430312989B4BC8CC56B639E7201518907D3243D0A182A7D5A449A294D414541A8C2C88C5B2A1D30851AE3FF5FFFFAD7C5AAE9B054CB5AA9CA7351718711DA';
wwv_flow_imp.g_varchar2_table(689) := 'AC56ACD8BA1A4FED7D1679AF15088A483BB5F0631781D584745803D7CAA2E8165088DB30D8E98FDB26DC8E2B065F89AC53233900EFE797E975297FCEC40B407641864C7258B9E3293CB5FB1934C72791716D4405C072B3F0AD008E9F30DD05A9A48A60B0';
wwv_flow_imp.g_varchar2_table(690) := 'DD078BC7CCC575A36F40CAAAEB59201511005809ED71ECE354F1A82400AE2B36A0396846AF00C8861E0A568482CB16D41E9C8207DB612E481BC6F71E8B256397E0F2215748FD64574A309FCF83AC966CECC30A0005AD0400EA65A382676E007FA7A4579A';
wwv_flow_imp.g_varchar2_table(691) := '6DAFD4D895DA671C97E74BF80D4A674CCF13E9B43FFDE94F4BE88173D2AA1FCE4BE98B751E5D3D77A5E65B1DE7DD5B812A0078F7D6FE5DBF33050F6385CF3CF38CD4E3AF5FBF1E43860C11A1410B850281425D85D8F94C5815BD2A790503AAC429AC2890';
wwv_flow_imp.g_varchar2_table(692) := '4CE1A3BC0054FC7449F2BD575E79A55402508099DC016649A08C49501092CBBE88A7F73E8FC7763D8963ACFF66AC3AF410D919045623D261164E5C033F55441EADA80F32B861C87CDC34E966D4A7EA7BAE76FD7C16F73CDE7B4E002034C1E4FA0F117B31';
wwv_flow_imp.g_varchar2_table(693) := '9E3FFC3A56EC588D83AD0DA84D59087D560466E0C701D2D22BC042CE09504480414E3DAE1F7839964CF90052E82500A0C76229C42DFC47BEFF288F3D4D3BF1D3371EC12EF72872710EF545201B78C2844800E03A6958457215B2CF421E33064DC52D6397';
wwv_flow_imp.g_varchar2_table(694) := '604ADF29DD62E8A3F7EC7FFFF77FA5A495E746F7B4E6B2A8AB5D33ECD5CD6E525D9B5EB1F3F838E5AD7A96F48CF13E3C2B04203C6377DD759774229C3E7D7A87E781D72A205000539E5F73BEF3AABEFFC25B812A00A8F06762BAD5CD6CDA0B114D532030';
wwv_flow_imp.g_varchar2_table(695) := '6BF93BDFF98EB83099A0D459667025E6AE3166157EB49AD4F54FE5CEBF67321951F4EA1A55572A05134109E73B65CA14215BB9EAAAAB3A2C29CECF745B0A6821F18D10DC4478E5E85A3CBA73251A5A76A036E3498C1A762D02B709693F039B35E0691F39';
wwv_flow_imp.g_varchar2_table(696) := 'BB05E99C8B6BFA5E833B2EBD13FD33FD2F480020E0A6C2FB568733730178930202A47D5AFA36D6366EC3A35B5761FBB10DA8CF920008F05D4F78146A224F5AE836232FAC8B83BDDEB8AA7E26EE98F1E104006847C27768DE670C4B0E07B63C66022072D8';
wwv_flow_imp.g_varchar2_table(697) := '70E84D3CBC6119F6679A8512BABE182700C08E91770A487959D84557D81149017DE5F0595834EA668CAE19839884415D78818E1F3F2ECA9FE5AC1A3757D73BE7C5F773FFB2E98F96E8292830CF45A596864099678BF7D0525EF1CE94BA70722E0C05DC77';
wwv_flow_imp.g_varchar2_table(698) := 'DF7D120EE0B933E596E62C546A3E6F751C5D13F37DEFF69CDEEA33BC57AEAF02806E7C52AAC8F5509B093B66BC5A0F37937C98844385C5BFB3952DFF69BCBBDC5A35C9784C120EBD9FC612DF6A428E99E4C767E0C1D7E439CE6DE9D2A5F8CFFFFC4F9091';
wwv_flow_imp.g_varchar2_table(699) := '8F2D4969BDF0A54ADA8CD96B2DB3C63CD565A8C9435D094915841C5B8951D4C2D0AF3A16AFD567563E005A30040DCC03F8DBBFFD5BDC76DB6D1D02D51C9BF34B4A0D8182255C7E38D4B8078FEE7A0C4F1D7B1199AC85FA7C0A7E90465053405C8CE14569';
wwv_flow_imp.g_varchar2_table(700) := 'D82907052B87A058C0A8D430DC75C98731AD7E063C9784376C1B9C10CA30731C36897649B91BC06157BE1E546EA4D665673F36E8E57FCC7397ECFA12DB5F8722972641B232492943E992D35FE36ED4E5C788C990673BC2A4B8F1C4563CB5EB296C69DC0C';
wwv_flow_imp.g_varchar2_table(701) := '2B1383417496D015DC00BD9C2CE2628036AB88A21BA29F5387EBFACFC207A7DD896C542F8D85DE31D452768659B94004E8441E4EC44D78B461299EDFFD026C3BC50ED0085279B85C9262C2075163B137B08F826BA34FD80B774D5A8CD9A3E6C06182A815';
wwv_flow_imp.g_varchar2_table(702) := '9D51D2A756BDEE39FECC245696F4BDFCF2CB1DD9F3EA4E572F962AE0F258BF96C5AA8CE98638EAF2128268CD3550A5CFF1797E787F7ECFF9F00C918EF8D24B2FED000B3C67A607C304865A1960860A14387495C468CA50931741DFCFFB702D780FCAA696';
wwv_flow_imp.g_varchar2_table(703) := '9616F9CABFF3CC533E2905B8B9B6EAA554D9A1B90FE5E5C6FA1C6A5C7435DF2E17F97D7241150074F14172C3F040694CCD8C8DF37B2AFA5DBB76490F702600F1FBA3478FCA61E38B1B92EF25CA26FB17FFD17D3D7EFC78F4EFDF5FAEA142E47D780D5FBC';
wwv_flow_imp.g_varchar2_table(704) := '9FA960F5C09A1E85AEF61FC7502B4385961E3CBAFD7FF9CB5FE2473FFA11366FDE2C963FE749E0A28D49CCAC60DE8BE040AF33AD1B5340743527D3EA5130C303AF4045513E9F53094C54E85070294910B3AD5909C0AA80728F8B02188BEE5DD8D2AFBE29';
wwv_flow_imp.g_varchar2_table(705) := '77148FED598DE5FBD7C04EF9E85D4C2308D3F05339218B77C2942828860BD8E5AE2FFA60D1F845983B621E6A5335C22ACF383895AC30F04A88C19696B9367FD183004078FCA58D7142AB63D1CBD1C1F54B25AB8AF674D11DDF2302368E65FE4CC7EB7672';
wwv_flow_imp.g_varchar2_table(706) := '235D2924067222AC3BB6014F6C7F1C5B1AB7C0AAB1A542C08B52C8BB016A9182CD9C0BDB47D189D0CFAEC375032EC307A6DE819AB8578FAE5118FB4271CC2CC0BD8503F8E5B687B1F1D84678711A9EE521EFE6C01450B6296EF542D4D08344C5135B1895';
wwv_flow_imp.g_varchar2_table(707) := '1E8E8F4CBE15970C9E8558A896130F80A9C84D65CDFD49004D00402F1A5F66E84C01BD826975B3EBCFDCE79AE3D299E5DBD599EAECEF54FE3C2B7A5E34D4A09E327ED592C49B6FBE594000C301AA14F53A334CA7E751818F592668AE872A58D32030FFAE';
wwv_flow_imp.g_varchar2_table(708) := 'B28D328F63723DF6EFDF8FD75E7B4DD68FDF1F3870406491860B2977D82E9C793F949B2404E37CF9B3AE9D2A7C053026005019D119B0793BEBFB7E7A4F150074F169EA21E086D29833371DE37E54FACF3FFFBC24CEB16C8EA895CA5595AF7908F81E6E62';
wwv_flow_imp.g_varchar2_table(709) := '1ECE41830661E6CC99B8FEFAEBA51E98F5ED2A60CA5DE5E6CFE646EE6A139A19F2A69541C042B7FFFFFCCFFF88F257A0A1DE01CE93C89B2F1E3C45E66AC1A85B5ED745E982F5E09F6D5EE5732FB72654489CB6E0ED24AB3C4A2C30BD3FC7E7BA917295EB';
wwv_flow_imp.g_varchar2_table(710) := '680210F5A4245600DDBF9658EEB9A805CF1C7C1E4B773E8EB6B0117520FB5F0A45B4C1B53C6A3771FF46A950B2C6B3C52C2EEB3F0BB7CEBC1D83326C0CC48A82448952814A95B934B761C174280D83C40BD0132F2AB62069F4233D8085D8BFD4E8A7D408';
wwv_flow_imp.g_varchar2_table(711) := '90C8C08A4BF914A569C9DA94E6C7FE06021EBA33DF808F18204EC5587B741D566D791CDB9B76C0EDE5C00A2DA490468E8D96424BD8F5F24E88421CA2BF5D8FB983AFC4AD936F4526AEED5100C0AE85566C218722DE3CB11ECB763E8AFDF903704217356E';
wwv_flow_imp.g_varchar2_table(712) := '2D98ED417220878C86E90819587002A05004660DBD04B78D5F8071F5139844D0B148BADF5599EA7EE59967022D9B00319956E3EDEA295330ABE056F7A87ED59081ECADD21EEBCEC772AE6BCCB3A5C9B53442782E080A744E9455B4ACD9669B9D09A95815';
wwv_flow_imp.g_varchar2_table(713) := '98ABEC5270AE96B5DEB7DC92563965CA3C55B8E5C046EFC19CA3975E7A096FBCF106B66FDF2EEB47B94AE5AFEBA2F280F7E33390D780FF264E9C886BAEB906D75E7B2D468F1E7D8681A67243018DB9D6DDF1549EEFFABF97DE7FD10300139D9E4B79A982';
wwv_flow_imp.g_varchar2_table(714) := 'E60662ADEFCA952B25F377C78E1DB271D54A5701A0F13713992A2AA7A5CF90C0F0E1C36513DF7AEBADE28653F77CB9AB9F63982EF8EE6E62D38A57D042B73F6395042FBC0F95BCBAFEF9BD1983E7A1D7C3C3B9F13ACE83D7E9F371CDDEAA3B8DD7D343C2';
wwv_flow_imp.g_varchar2_table(715) := 'FBAB4B52D74F9F5595BE291855908C183142CA15E949310182CE3559BF087194B0F885B68F374EAEC3A3DB5661F7A906E96E471E4096FDB1D48F65602142441E3BC445F08A1E46B8C3B1E4CADB30B5F764D4B2A34DC9C54E9D20AAD4B6E0D01AF703580E';
wwv_flow_imp.g_varchar2_table(716) := 'C3003D4373431DC12EBCCAAAC34437B152137892243F4A03C004409900A9E387EE963672300200F64FF47CBCB4FF653CB5FD69EC6FDF0FA7C611ECE1081150048F0440B605DFB35008230C406FDC346A0EE68FBB1169D4F41C40E22AF85C0F0BC7FCE378';
wwv_flow_imp.g_varchar2_table(717) := 'A2E1493C77F839345B2DB0421B755E2F84A18FA0C83A7707452F8287186EE820CEB95838ED46DC30FA7A0C720749254102B04EB3539AE12AAE2FBD7D3FF9C94FF0ED6F7FBBE33A557C2A33D4EA5730AD56BF7AD2BA7B9EBBAB58346CA68A50E7AFEF57B0';
wwv_flow_imp.g_varchar2_table(718) := 'CFEB780E69492F5EBC18BFFDDBBF2D7C017A26F539F4FD2A4F1404E9D933CFA8021D73AE2638E0DF0F1D3A245C23044E6C09CE35D46BCCFE232A13CCF524B8E13FCA50CACF59B3664965108D022630ABBC2DCF6552395FF5029CB98BAA00A084BACF7608';
wwv_flow_imp.g_varchar2_table(719) := '158172D3B3C487D63E2DE855AB56E1C8912362D1532894BBC8F4B09B96B82A4B55803C7C24EA983D7B36589E3377EE5CB04DA8A26B0502AA14F5E7EE285C3DACBC27DF4756BFC71F7F5C62FE5BB66C910367C623397F75B951D9AB6B5EEFA5C040418A8E';
wwv_flow_imp.g_varchar2_table(720) := 'ABD9F9E516C2D98495C627B5E69F0755BD2B1C5BD74DD74A8598E941E0E1FFC637BE81850B1776540E6805C1E9EB18A34E9ADBC46E8486B63D7862D7D37865F7EB706A992418262E7C8B5C716C9BCB6E784923A45494465D5887ABA75C8305C3E76150AA';
wwv_flow_imp.g_varchar2_table(721) := '5F62755317B0C52EBD00E2F98F240F803172FEEB8997B4B82DD9F2495A42A2F2198A10AB9E4E010165A793D7FEAFE728A993EF52F170689F6439114EC4C7B166FB33786DDFEB688A9A80928381D676E0901190E0C347947611F81606C7FD71C7D49B71F9';
wwv_flow_imp.g_varchar2_table(722) := 'D0CB91B2B3DDC837A8E0EA0564018CB1AD653B1E5EF7101AF2BB51707C0145693BC3E68F884965E8D8081DF6BB08910ED3E855ACC7ED57DC8ECB86CE426D5C236BC92440F57A952B3C9E8D868606695045464BC6A8F5DCA8222CCF6F514564E6E770DC4A';
wwv_flow_imp.g_varchar2_table(723) := '9602AA025765C83928D8E019D3B0849E353D93CC0920D11681B526069A0ADD3CABE5E0C254B02620D04F550D06864B962D5B269D13B976948134284CE347C7361318F94CEA055499AC94CB9C2FBD18ECAB3069D2A40E19A26BAA72D3F43276B9F72BB81D';
wwv_flow_imp.g_varchar2_table(724) := '2FE4A1AA00E01C004051290F125DE754A06CF6410F000F030F09372F11B52A4FB55C5571EA665585A6B176BE9F02835FE98AA3FBEDE31FFF38162D5A24B901EA49D084173D408ABEBBDA5466CC922C654F3DF514FEFDDFFF5D943FC75241A0C28DE3695C';
wwv_flow_imp.g_varchar2_table(725) := 'D054C2E6F328D0514F80CE9FCF6F96F075363745DE3CF0A670D143CEE7D26A005368F09EEA7EE518BC8ECFC6B825EB99193EE1181AFBEB98BB6DC1CA87629D876E8C53E149BCBAFF75ACDABC062DA97684510E9EE58A02A5FBDE766D046C8452F49175B3';
wwv_flow_imp.g_varchar2_table(726) := '70430F43FA0DC3DD93EFC4C4FA71C2296051FB3AB6008090E0C1610C9E0438FCA6A73C0009CB9DF4BBA772927C0047949B4D8F07E7C850402A0102BAFF5490EBE7607EEE67DD4B250F40C12B6243E3463CB5650D769DDA8DC8958089245A16996BE26690';
wwv_flow_imp.g_varchar2_table(727) := '42846298439C6648C5C3287B38EEB9FC83185F3716AE9349CA007BEA1501AD711B5E3CFA227EBDF657C8A77C04CCE3A0473FB2C4DAB7C94DE8D0CBEFA31805A88DEA30DE1D835B2FBD0D63FB8D975E01FC44B9D6DC6FEA0D53E5A4E782CC99EC4F4177B6';
wwv_flow_imp.g_varchar2_table(728) := '26D29A8A47C117E504CF39CF0C5F9A086BC6ACDF6A92EFD99693639B213DCD05D03C1ACEC50C97718E9C1B7FCFEA808F7EF4A3521DA0805C95A5EE1DD36B7A36456A86047986391FAE11E5E7F2E5CBCF204BD271F53A3E972A7CBECFCC67E2DF382FFD9D';
wwv_flow_imp.g_varchar2_table(729) := 'CA6686056844B1BDB28604CADFA71E859EDA86EF85FB54010015409970326356FC5EE37CDFFCE63705B5EAA1D543ACE855C751446FBAFF4D0F818996292CA814B9F9A9F8B9817908B9A1F9D238BC0A72B528BADA5C7A0F361E79E28927F0AFFFFAAF9264';
wwv_flow_imp.g_varchar2_table(730) := 'A3735765AA8A5F636C7C1F05069534E7C6DF8F1B374EEAEF15BCA810D4385D676EBFF2F9E9FD54F1F099399ECE876EC1575F7D551AA598DE041300E8FD383F7A4D580D40E0A49F9709BA7CCB825760063BBBFAC5285A05349CD88947373D811D85DD88E2';
wwv_flow_imp.g_varchar2_table(731) := '56610014AB8E7D01486C1346088B21524E2AC9EEB76C7C78F25DB862C865A875327024269C700CF86108CF91000351418F010056220811BF43133E4244AF0593FBE892A0DB9F9E00E627302C5172F59BEE50D9A3E2D54EC892BA7A51D137868D787AF7D3';
wwv_flow_imp.g_varchar2_table(732) := '78BEE1459CF29BE0928699AD816D5AC77CFE9434032A466D083D07A9A80ED36A27E39ECB3E8801767F386E5292D693AFDD6D7BB172F70ABCB0E705A433B540602372430421BB40BA70581120A99C05E4621FBDED7E9837E01ACC1B3F1F7DEB06485A056B';
wwv_flow_imp.g_varchar2_table(733) := '3D04EC95008099A7A35EBC152B560833250D049E195EA32E78B5BCD5C3C5F836437E4C04D69257BD56C36F0A18CE67AD8E1D3B8637DF7CB3E32C69AF01820F7A0255B9F21E0A64D443C0BF5191B2449025B70A161464EB792CB7F875BEE51E4FFE9EEFA5';
wwv_flow_imp.g_varchar2_table(734) := 'F227D1188D283598C8E6C9F14CB0607A2E756E2A5F540672EDB44280A5957C3ECA6802307A51BFF8C52FCA1A6B59B32997BB6B409DCFFABF97DE7BD10380CE3E2C1300302185E53D5FFBDAD73A14A82A1AD355C54DA9AE7A3D1C7A9D0A05D3B25585A8F1';
wwv_flow_imp.g_varchar2_table(735) := '408D6D8D1C3952328AE7CF9F2F74B77ADD5B45AFBC278512953F2D7F1E40CED164E0536B59152BBFF279B53E9F079531B64F7EF293E26E572BC854B4DD51FE7A1FCD6350D0A109887C762602719E6BD6ACE9B03C4C61A2428273D0C640FC4C6EBCF1C633';
wwv_flow_imp.g_varchar2_table(736) := '4A9B4AAA0D79C44807CC76A7EC67222170A2FD2856363C83670EBE00CB6E05C2B4E479C574E5231205CFD2BA88AC769E8D4298C7BC0137E2C6F13760789F21F2775ADAAC020898142A396234B9A5134ECF9CFB52CE5F6487F0914773D88893B946E48AED';
wwv_flow_imp.g_varchar2_table(737) := 'A2D053A90C7A79F518804148A7925C0DF50488C03753FFBAD0C95490F9288F8D273660CDAEA7B1B379177C69ED9B9604C02866FE036312295871119193073BDFD7DA7D71EDE0AB71C7D4C5A80D6B1983EA0ED6A8D8FAE5C2025E39F40A96373C82C3FE11';
wwv_flow_imp.g_varchar2_table(738) := '64C3DEF0C20C0A4E0E452B0F97EC0E317B4944709147BB1D61A03704F74CBA0333075C02DBC90A3E4A593162867CA4AC3471A39B679F553FFFF55FFF85FFF88FFF9050A019223015A22A2E9EAB2F7FF9CBE2AE26D8E77866D8AD520BC0B244E6C8B0D287';
wwv_flow_imp.g_varchar2_table(739) := '809A8A50BD1254F004DF7A6ECD7023CFA31280912CE8DE7BEF956465D3E256AF80E94E5720A19E3A53C9F2BEF498FEF0873FC4430F3D2473A11CA29CE18BD7F21AAD0AE0DF3837FEACC04BBD7EFA8DA6A01B0000200049444154B3860DF87E8EC3BF53F9';
wwv_flow_imp.g_varchar2_table(740) := 'ABFCBDFFFEFBF1B18F7D4C7A2D98069339E7EE84512BF5795CC8E3540140279F8E02006E4466A752D130DB5F3790BABCF5C0E801D383600EA9E8D344F6E6EFF4F7BA21896C2FBFFC72FCD99FFD99B40A55579D22EFEE6E5C1E640A00BADCF80C1A17D426';
wwv_flow_imp.g_varchar2_table(741) := '1F666C524B7334F6CFE72278A0F2FF833FF8034952E4F55A0EA90796CFAD08BE2B0B4F058E5A518AEEF5DE2CFDF9FEF7BF2F82CB4C32E4F87A0FAE9599B7F0A52F7D091FFEF0873BCA01396F11C20432568C6C68C389E2A4AB9FC3462FCD78F6C82B7878';
wwv_flow_imp.g_varchar2_table(742) := 'F3A3F0DC76F8647FF31CA6B82160A7362785AC93415B5B2B9C8C8B429CC7A468326E9EB108D3864F412A22B9BC05DBF1A4853099EFD86F409CED3D64E196C2F2680DF3D8DFBC07DB8F6EC58EA33B70BCED040D71D4D4D7627CEF7158D8EB06F4AEAF4736';
wwv_flow_imp.g_varchar2_table(743) := '9BD019EB3E93B8363D06B47E2559F2EC2FE6491CCD1FC5539B9EC4CB875E466BBA0D56CA93FA7A3B745028E6E0A51C38511A7194839D89D01E06E8ED0EC24DA31760F198797082142286584E27D4BFE3F2F064FE141EDFB10AABF63D06F4B6E035D7A226';
wwv_flow_imp.g_varchar2_table(744) := 'AA479BDD023F9517F60484491283671590778061D951F8FD99F761547634FC528625AF308980CAAD5B26B0B11A85E1357AEC6885AAF7CA94210A1E18AE7AE08107C40BA0EE7EFDAA99FB95581CCE93208065BE4CF8250820E0E099D6F3C4F3A7675181BD';
wwv_flow_imp.g_varchar2_table(745) := '7AFCD400B8E38E3B40654A2F9B7A30CDF3AEAEFB7200A06B4045CD35F9F9CF7F2E1E48FEAC1E0FF33DA691A32141D3B0E8D8BBA5AA205D234D18E49894C97C8F7A15FFE66FFE46121B090CD4C011E3A0C41352A9704B253EAF77738C8B1A0094BB8ECB11';
wwv_flow_imp.g_varchar2_table(746) := '3E6B5289F0A9444D17B6A9C4F8E1E9A1E278AA60F5509963AAB2E3F58AFC5531AB8B4DBD0544E09FF9CC67242B57513AAF31337475E3F0BE66DC91878E689B73272F01CB0FD5EDC66BB9F9CB5D79FCBD66FAF35ABAD21867E7572515D19086198E782B9B';
wwv_flow_imp.g_varchar2_table(747) := 'D714180AA6F87E8E4B244F4AE23FFEE33F3E831740FFAED6820A06565EB09DEA17BEF0057155EAFAC9B874CC8789511E5BE41960077B4714DEEED6FDF8D99B0F62777E9B50E8C46C090782000BA115C349D988A31051A1888C974610E571CDC86B70D3C8';
wwv_flow_imp.g_varchar2_table(748) := '5B302A35523C058117A260E5A595B09B776091558695873DF46A0BF378A36923566F7F02C75A0E90C01601C97A980B11C7E8E7D4602806E1CAC957E1D2E1B3506FF786E533E00DB0B43D742204313D1E163C2632486961A99A909840704180E3EDC7F0F3';
wwv_flow_imp.g_varchar2_table(749) := '7DBFC68E033BD1946F12B224C76365488913419E374EC67602A43236A2F608E3EB26E0B699B76262AF89080B11DC4C422E538917A72A672E66265F408A424421EF6F21A4456F475873E83758B9FB0934B6374A7507690158EEC944CFA46A02707D02200B';
wwv_flow_imp.g_varchar2_table(750) := 'C5AC07141CDC32EA7A2C1A75036A518F88499D5ED24A58FE2FCB13D2F3C88A1A2A1AEE4575E1EB336AEE0ECF33CF1595DF75D75D277D2CD8914FC104C736F30B2AB146AADC09AAA97C090498074439A01E3E95170A4E785F4DF2A3154E0382F3664E124B';
wwv_flow_imp.g_varchar2_table(751) := '0459AEACA09DD752469896BECA13CD3D50EFE82F7EF10B611A65B5143D9A5AFDA30A58C313946B9C137FE6F7FCA7963FC754F9A456BE5610F13DEAB550F9C56BC917C0D00CAB033434C3F7AA01D15D43AA129FC7853CC6450D001411AA70D2CDA8F5B2AB';
wwv_flow_imp.g_varchar2_table(752) := '57AF1684CF7A79DD941A4FD5F72A88E0E6D2989379B8B9D1143D6B0CCE140EAA8C55A8A8A53D74E850E92EC6D21CBD460F076569C87875C925A90785EFA5F27FF8E187A5CE7FEBD6AD1D19B6F42C68AE42799C4D410C0F0A05056B6B49B4C3383B0FED3B';
wwv_flow_imp.g_varchar2_table(753) := 'FD5240C1D244C6EF345741D7A41C38F079F99C04476CC0C2F0840AA30E611D30FB9F3C3F248521610F09571C9CF09BB06AD74A3CBFEF5951E2363562441A585B32C7E1B2143084E5C7C8386934472731BA760C968CBE1D570EBA125EEC085F806F15E021';
wwv_flow_imp.g_varchar2_table(754) := '0DA740E5438DF24EAF52323E2DF7036D87F0E88EC7F1D2C11761BB0538968BD84E27BC07810F8F89816E1A83D3833073E0745C36F2720CCF0E458A99818C51930E8F8C6F514208A40401B47649F8D31434A1E14403B61DD886974EBD847C9087E3326EEE';
wwv_flow_imp.g_varchar2_table(755) := 'C0671996C4C41D38290F611022F463A4B32EFC5C1EF5A8C39C31D7E1C689F3D11B7D101603B8E9CAE54894FC2DB01400B0882F72A42A23B4239C6A3B8265BB1FC38B475F91700ECF4902364F573D30F1D3114F11504CA531D81D8C7BA72FC194BA494881';
wwv_flow_imp.g_varchar2_table(756) := 'CD8D081E63B8E239492C6553D9715F1E3C7850142BE3DAE53175F3FC2B68E65786D23EFBD9CF0A7F85EE6D05E42620AEC44ED2F10902680CD0BBC6443F9EA5D372E4B4AB9DB241418C2A715EC7183BCBEC3877820095916A10A9A2E79CF9BD56F750E6F1';
wwv_flow_imp.g_varchar2_table(757) := '3C7FEB5BDF92A43FFEAC25C7AAFC4D434265A27A2139570D196A9854410AE59C860CD423618613F519095C481AC6A440D393AA73ADC43ABFD7C7B8E801003F403DA46A9573C331BEC743432B5AB9E83531CE7467EB06304184BAA25471717CA5B1D5CDA7';
wwv_flow_imp.g_varchar2_table(758) := 'B12FDED354CCEAAE22526759CB9FFCC99F089A3D9B05655A274C327AF0C107A5310995A8BAF9F5406B16B058404296933CBBC6EEF8FDD5575F2D8786B17502165D9BF3DDE8E5DE16D345AACFB66FDF3EFCE33FFEA300186533D3B55461A16045C1CFE73E';
wwv_flow_imp.g_varchar2_table(759) := 'F73901495A3EA96351B925A57DBE7804E8B6A621D7863C36B56CC48A3797615FE1A024FF491E1F6BDA5D07511C96421DFF1F7BEF1D6BE9759D773F6F3BE796A91C4E25A7B053A24452A4C4A246D196ADFE59B23F408E8D20FFA4208E917F1C04711C2740';
wwv_flow_imp.g_varchar2_table(760) := '10204182180910034EFE4BBE20B01037595DB2AC668992D528F6199253C861190E39F5B673DEF6E1B7DFF35C6E1D0D792F67AE86339C7BA9D12DE79CB7EC77EFBDD67AD6B39E35110CE47C3BA7E9665A776C7BBBDE77D57BB573EACA001037E8016040F9';
wwv_flow_imp.g_varchar2_table(761) := '0F07606502DC258779BE990B823C7FFAE3CFEAB9E639AD5FDB57BBD0AAA412A05F286B4BD5CD4083C95CC9ACB439DDA81B375DAF1B2FBB4EBB375EA94D939769821CBE23FF5006D96A3E99D74BC3133A327B544F9D7A5AFB8E3EAE675E7A460BF56C18A3';
wwv_flow_imp.g_varchar2_table(762) := '8212CDA6D1A01C86CA097E677E0D86034186E8173D0D8ECDE94D5B6ED0076EFA655DBFEE06E5439C2E261BA80C3FACC0208DAA31A9D123379F3423C1A80415C239FDE8A91FEB1B87BEA943F34F0787E565CE03A58F233127F88F0105A9D56BA775E795B7';
wwv_flow_imp.g_varchar2_table(763) := 'EB63D7BE5F9BB2CD0151180AE9E746056393648B1C80F8E1805651FB8F1688153CBD761D497B2EB2C6D1FDF8F7FFFEDF0763CABAB2C11FFFBEE40458E61BE2C0042493489CBD0CC7D928A2914C1BE4388A77D041748D1300120041F9E69B6F5E169AC3BE';
wwv_flow_imp.g_varchar2_table(764) := '41FAE1BFFFF7FF1EA27FD0071B6E1B7BA3764640BC1761FCF99B830F9C0EFE71BD38115C0FE90CEF0D46318C90F259C88E2083BFFBBBBF1BF8547195D03287F09278DB25EF00183E8F99E74C2C842A88FE21A5913F238266E1DA03F666122F262628DE3D';
wwv_flow_imp.g_varchar2_table(765) := 'B5A88854D8A346E802121E0BD170BAA1281B67E700392E139A45407D2B15011865DE67A2618C16C4AC63161A75FEC0FE96EDC5F1E09831EB98FB8BEBF9391EF745E90F903AC63F6E10B212F0EDB803E0C51EC38AE42AE12DD0ED8F2F3B64DE98E2340C7F';
wwv_flow_imp.g_varchar2_table(766) := 'E3FD10AAB866F80ADC4358E8A10E0E527C00C74394CF3FD2F5C3A4D6B1F6457DF9C12FEBBE177FA8613AE8F400200D6644B48C45A53ECF9A6899DC75296DED6DD4BBF7DCA97BAE7AAFA6AAE980A5135D363D2A0347AA80E761CB787170545F3DF4D7FAF2';
wwv_flow_imp.g_varchar2_table(767) := 'A3DF50B9A6D29ABC50B290A8849C58A0C657AAA917349F51AADF535626EA0D0B6D9EB85C7B36EFD1CE4DBBB56162A3720AE1F2CE73A17DEFF1E1713D77EA393D73E2B08ECCBDA0D3D5299549A99E7EBA510C74C938673B000A9ECA55CFD7DAA8F5BAF7FA';
wwv_flow_imp.g_varchar2_table(768) := '7BF4AEABDEADF5CDDA905620A5D204276CF45CCE758C9A516D3ED1393F0F1B689B4AFAB5F6CD1FD05FEDFBA61E79E131B8FD41E3A19BBB9DEE81A10EFE5E6595CABAD295D90E7DFCAD1FD6AD1B6F51415B689C3B848D5A5023CED51DC3EBDDC6E67FFDAF';
wwv_flow_imp.g_varchar2_table(769) := 'FF15A25B18F72EA98DC785F9ED3D85B58B74ED1FFEE11F0662DAA2933A4A8BAC74F4FFB2A3D36918703EAA6C08687004309EDE671C2498908871E6BAE3FD88BD0F038E4E004109CE4CDC37C4414D9C1A65FF02798084CCF9ECF4D87177D0E12A27AB8F72';
wwv_flow_imp.g_varchar2_table(770) := '1EB812EC457C67EC68B6C49EB66FDFBEF0BB039338F8E2B8AC7FF62D2384DCC76FFFF66F071E0388EAEAD7CF8EC0AA03D07675BE31C4C784258A06DEC3781BDAF7C230ECC5E231ACC58241CD0FE30974CE42C753E5D844B65412500243798EDB72C6C731';
wwv_flow_imp.g_varchar2_table(771) := 'C1CEB5AB368CA85B712C1001CEEF6B358CEFEB6661B0C821FFF8B35EFC381B16EC31C4E64DC87931E074E049E07497FE38FA5FA97C59BCD1D921F0E6C1F5700F8CCF3FFB67FF4C870E1D5A7C26260699E063C78071646C700020031AD908E709FCFC2694';
wwv_flow_imp.g_varchar2_table(772) := 'CA05DD7C0C64D389E82C240B7AF8B987F41707BEA823F3CFAB152D615B8AD9A40AF9E150881CFADCC30847394EC305BD69F335FAD84D1FD1F5136F5202730C08B9A88203108865E7E1EB99D9C3FAFC812FE8BB4FDFAF649D942FD42ACA4275526898224A';
wwv_flow_imp.g_varchar2_table(773) := '3450D1D4AA87A9B25E57EB3E2C2B5525ECFD094DF7D769BAB7567D6AF7FBDD7CA201D2C2604EF383192D94330135C9FB6980EEDB7642555905DD83A09700A31F538AF04F5013929AAC5575AAD13B76DDAE5FBCEE1775F59AAB948D2A3002DF2E19D295E1';
wwv_flow_imp.g_varchar2_table(774) := 'A72B10CE76AC5A9E2A32CF9D809386B5540F544ECCEBABFBBFA96F1CFE7E706602B72118FE97D511BBB906A934D17C33509EE4BA7BD36DFAD59B3EAA0DED662579A6B9B60EE4CE1EC61F072FE998EA31B787B909A9ED539FFAD46214EAF5687490EFCE6B';
wwv_flow_imp.g_varchar2_table(775) := '735EF82ABFF77BBF170CA9D7A5D7A08DF1D90EC9F8E7E2D4598C42E0AC5069135707F059E7D8CD658A390986D3790FFB196824C43AD69E49785ED7AE2E20C8C10120E0C149779AC388A3C788DF3DB638143B76ECD0873EF4A110F0B01FD1EB837B816341';
wwv_flow_imp.g_varchar2_table(776) := '1A16B2250119FB1C86DEFBB1F710CEE3C0CA410D880BE94C8897FE5A69876BA59EDBEB719C4BDE018827851722F03FF0DEFFF93FFF2744EC9E3031718F8DD3139BCD016D6AE07A4873F66A3D199D178335FC077FF007A1E4CD249CF8A1B3300C63F1338B';
wwv_flow_imp.g_varchar2_table(777) := '824565436CAFDB6539FCDD65392C50CE8B77EE45CD775EB7718D530D8E6AB8764A7D20DFBDFFFDEF5F8C4E4CF28991919FE70475D482DA22BAEA9FFDEC67179B85702D7144C575784CF9F9939FFC64F0F429A174AA2043B0C70CFDD0C1A7CB51C25FAB92';
wwv_flow_imp.g_varchar2_table(778) := '4A270727F527FB3EAB878F3CA4799D549AD7CA9A54595D284B0B2D3495EA0252D99486D582AA665E9B7AEB74C796B7EBC3D77E44EBAAF54AFBA986D970B133DFCF737C7C6C1C96AF1CFA8ABEB5FF6F554DD5CAAB464555A84E0B556803B4F3CAAB5A6935';
wwv_flow_imp.g_varchar2_table(779) := 'A93AADD5F4DA200A54B59506C35275592B53AE02B403F9E3AA095D0E8B3457AFC843C500F07A084E13C4A13AD268D73F008D81CEF8373502481DEBBA1A34DA3AB14DEFBFE9FDBA65F3CD9AAE26BBFE09F00E8334219D09572805C03573C9680B52E248D3';
wwv_flow_imp.g_varchar2_table(780) := 'A77A4607E79ED4E71EFA8A1E397D406DD6C2CE58D487B081E82EBEE351805C6C9DDEAA8F5FFF8150B2980E7A6AFA89062A43EE3FC761AC41913A44CE11316381EA1FC101AAA046DA3847CC0FB263CEFA253DF5FBBFFFFBC1B8F17EEF335E83CCED9F072B';
wwv_flow_imp.g_varchar2_table(781) := '3D460A39276B9D3421CE0BF74064ED88D9E43CAECF5D4C3D6EBE7FD621EFF358C4C6D66B92EF4E95722C57F4C4469A9F9D2E31F18F40E7139FF84410F702718D2BAD8C2C10DC807092E68C5319E369147307B85F9C0AF6651C303B203EFFF958AF17FA39';
wwv_flow_imp.g_varchar2_table(782) := '2E6907601C96361C0F5C8FA146F297F21E2F5816060BD546D7B929B4B48942E9AC056CE505E30DD269062603C2211C9B1CBD5304260A727E2F0C1B7D8EE1BAD798B11B4377BC9745E7D401E7F146E3E61F5CB37370BC66F121047E80C83EF8C10F2E7EC6';
wwv_flow_imp.g_varchar2_table(783) := '30DD3854F96A93D9067C3913DE0B364E2DF8F3201D68AB23AF4A14E1FCAA5FE7DA303AAEA8E0FDDC030E00F7F0F2331DB1DA0354DC458169700ABA8D907CFFD79FB94FDF3D789F9E9D7F4A837C2E88E814753FD4B9C3B487EC97D713AA219CF52AE575A2';
wwv_flow_imp.g_varchar2_table(784) := '2DDAA25FBEE103BA7DFB6D9A4C2782125F809A5722BFBD8CC19B6B66F483E77EA03FFFF1E7753C3BAEE9899EDA015176A16402D6E382AAC14049BE4E6D8A89EF1A08A749AB22CFD44BB3A021C49CA91AA8FF5D09236A86C8E2A031148485709A78954E98';
wwv_flow_imp.g_varchar2_table(785) := '45E744524DC157466E7C5479C2BD6F4937EBEE1BDEA9DB77DCAE8DDAA8B44E427920713AD13A08C962F38265DCE3ABCE33309CA085C0F1A968A875BC7C419F7FE4F37AE0C8233A99CC053B4F85838D4E37CFBA5440B86F98F96D5F6FDB7A7380FFB724DB';
wwv_flow_imp.g_varchar2_table(786) := '3B025BF05A2A540202B190314052797C2D92CB0721646D395A36A7C7E92AAF35E62B112D6B9EB42046338E808D1C9828BCD4F0C46BE695DEEBF5C53C37C2E7EBE23590000C2908060E37113DD7C9FD9077371CEF75C67980DD1DF5C782427E8FA36FDEEB';
wwv_flow_imp.g_varchar2_table(787) := '7DCCF7E97B34612F760058BF0459187F903F9CA5989B1047EBFC1DF4E53FFC87FF10FA089813C07B9C0AF533E779382882580C7FC1CFC8FBF752637D29BC7E493B003CE0D809302905620FAA7FDFF8C637C2E2B0E7184F464357FC8D5213B4E9E33C930D';
wwv_flow_imp.g_varchar2_table(788) := 'B427912353262ACC75F4B05D776BEFDF84C0F8EF5E345E605ED42ED5E177CB8BB2982C47EA68C4E98040D81AB5F4E57CBC17BD013C6E083EB11362688F05C4D77216CC721D8033C1937E0E7CE7DE71C028E14137DC4E94A32523274E9F708D4085A000BF';
wwv_flow_imp.g_varchar2_table(789) := 'F55BBF1510906E3C43B2B8FB173AF8356A93AE4B5C5BB54A935C8707CFEBDB07FE463F3AF27DBDD8BEA80465C2AAAF1456795A69982D84C640C0DE4D01E9AC55AFECEB9A75D7E823B77E50BB27AE0C1AF2A113E00AF0DB96B7E1B47AE6F461FDC5635FD4';
wwv_flow_imp.g_varchar2_table(790) := '23271F5192952A8795EAB4A704E342BAA22AD5F6BA3C2E91771160FB447555AA29A91A908A5ED18942955520F6D5481A6779A7DA9766AA89F29B36881D018907B67F45BA23533ED25BE0994FF526F5AE6D77E9AEDD7769FBD40EE5255A090A8D95D05740';
wwv_flow_imp.g_varchar2_table(791) := '5131545AAC50192092BE1C3F6F3A27E45472523F7CE9C7FAFC835FD6A9E65497AF0F0E1F917BD235691AE5FFBDD6A982D835BD4BBFB4FB1774E78EB72B2B8B8092C079C803672455D51621FF8F1AA0F7058E7DDF7DF705A22A5DEC2C5A63EE8999E97E8E';
wwv_flow_imp.g_varchar2_table(792) := '38D9CC471C6CA250D6981D80F17D61B969B6E5380046EF4CB6F3DAF45EC2DE401F13487AA09C40EA56E5F31859DADBE937FFEE20883D87FD84EBF15EE835EAE8DDBF7B0FF23E6A6784CF916E85EB44FA91D267238E9DC3D9F50989F752F62D5218FFF13F';
wwv_flow_imp.g_varchar2_table(793) := 'FEC7E0C8E03C18898803173BFA7C96726AF44CD827FC2C97B7D6DEF8EFBAE41D0026983D457B8FD4F742D8211F6DF28A0D2D138BC8D40B820988EA140BDC24412F0A1B367BC25E5C88DD40C8214766428BA17F4F5C9716C506DFA57C7EAF175E3CA91D21';
wwv_flow_imp.g_varchar2_table(794) := '7BB185886D54F7EF7A598E43A91F6C7FB3921907F30B3C0E9EFECBD974CE76A97873F2393CBED457D37009A86F7C73E47E5DDBCBFBB9AF77BFFBDD41658D74462066AA0A1AF976002AC47EDA523D0C659329194A6551EBBEC3DFD1570E7C454F95CF289F';
wwv_flow_imp.g_varchar2_table(795) := 'EC2B1DE66A17A4FE54AAB97646FDB20806A184F51FC87E99D6D4537AD79EBBF44B57DDA3F5ED86AE0CF0FCF4020AC66CAE9AD38F4E3FA82F3FFE15BD78FA9910D136F984CA16E8BAD5644A743FA734E905B26253612C5325198A481DC98D6A0722DC2C4F';
wwv_flow_imp.g_varchar2_table(796) := '835A22DA0784FFC4EAF0192C184477BFD0792040FEA9721AE8D000A8AAB46EED1AEDBE62B7FE9F6D1FD6159357A8D7503941A3A54A553254166AE973A575DE01002BE0242D00FEA3D2D7D0BBA1D4A1D9FDFAD3873FA7BD73FB4567E75E49E4DEA8CD3BE8';
wwv_flow_imp.g_varchar2_table(797) := 'DEEBC00E71303E69AB776C7FBB3E7ECDC7B439BB3C68419405536541454D69684F15E84E92063220CE8B0DD17FF92FFF25184DCA00E3F23F0C97913ACF69C608495A225B9C6CFEFE33E5AA2382E14AAEB14574066E8AC5B102CA33EA193912C3E11E80D3';
wwv_flow_imp.g_varchar2_table(798) := 'A90EC09862206DE0BD9E3D86DE637C6CEEDD69D0787D1AC1F45EE5F1F7751891B0238F41670F42D48BB53BAE2310EF45DEAB4905E0EC1320F01513B163A7C7482CB2C63800A408CFC79E76B67BE1EBF1B94BDE017064EE09CAA4213F0607803A56882FBC';
wwv_flow_imp.g_varchar2_table(799) := '8789E9CE7F5E24FC0D0F9FFC395DB46C68EDF97AC1C78E00C68AE89FF218CBF33ABFBD18A18C606E43563149D1F018D7694F3AF67C6396AD17BC37AF40F8AAAAC0B00532B7F1F7C4F3FB5E6922C60848FC1E8C344447C6C529076F0ABEA7380A883F3BEE';
wwv_flow_imp.g_varchar2_table(800) := '00F835BA85F18F3AE63895E234489C2AE1BCE4107906A462BA8D89BC6A27401372D681104807BF0EAE070548AA4447DAA3FAFCC12FE8FB87BFA7A621629E509964CA2712D5252D64A106124163D42AD539EA7F3D6DED6DD37BAF7887EEDC7EABD6141B43';
wwv_flow_imp.g_varchar2_table(801) := 'C29BC8BA63102EC6776A32D4E6E1C0C3CA5F010B48A7BBAAD5C9FC941E38F688FEF6C0F7B5FFD87ECDA70BCAA802485AA5B4C31D664A7A59A862085C3D4411387FD606D8BCAA079AA82045662A7A93C1E05783790EAEBC48D5D24429B43D4C4397C42643';
wwv_flow_imp.g_varchar2_table(802) := '59A90DDA3BF920D3E6FE66DDBCF3ADBA75F72DDA33B9533D2107DC19DC608043F39D516A6484C22CB5C191730F69FAA4EBCC18D23623726527C79BA92DC3D35355547A66F09CBE7DF05BFA9B7DDF513B09AAD153356895870645D24C2F0B4D1CA7D045A8';
wwv_flow_imp.g_varchar2_table(803) := '87AA8956CBBE76ADDFA55FB8E61EDDB1F5F6E0DC05C4225C7AD721B24B8B70FF215712A252D63A693B2A545005F59A7474CADAB103606780EFA4A768AE432E3A4EA99DC9F15D6A7C1C58D00EDBA946AF5993DECCF9898D73BC161D593B280152C70940AA';
wwv_flow_imp.g_varchar2_table(804) := '170D10F63BA3744626C723F1780FF2F939875304163EB2931E073786EB79BFDFF7B18F7D2C38EF18E8D8D188F71BFF1C509F53A78238111C0C7E771AC64E859D140764281A8230509D155FFB52E37D29BCBEEA00442A5F9E649FFEF4A7035106070068EC';
wwv_flow_imp.g_varchar2_table(805) := '4C51B9B501781D6F941C9349763E4EBC39841C635505A34D040102C086C267EC15BB6B97BDD8D863B727ECC5B9D4E41CFFAC1731621E8EFC972BF263A24E0C7972FF78EF34F0215572F0E0C1F0BB61C138E7187BF1E3D71D473EDEC458B81094D89CD854';
wwv_flow_imp.g_varchar2_table(806) := 'E34DCD8B3D768AD89C390EA918C8561032ED20C5E24E76C40C85A665AAB25FEA27A71ED057F7FDB5F63FB75F3DCAFFA80B6806CAB25A4D5DA89720295CAA6ECBD0EFBE497BEA0DFB7AF3BAAB75CFD5B7EBDACBDEA45E334518DD2143A15F4F1D380725C6';
wwv_flow_imp.g_varchar2_table(807) := '1031288EB1120E009A0535107BABE3CD29ED3BF1B87E72F87E3DFEC23E9D181C570B711128BFEE8596BD7546EAA213CDC3E909B68D74465B6A52890665A2AC98EA72FCE582D494A10F42131C0029AD92500D009B60B030505117DAB56E976EBBE26DBA79';
wwv_flow_imp.g_varchar2_table(808) := 'CB5BB57DCD36152B057F8C7CA7A0DF00DBBFEDB4F71939888AC168A1D293B67AAE7941F71DFE9EEE3BF01D9D2A8F2B0FA80F7AFD898AE0EED59A4B93D0B8A89EA7D31DC844AA35C3B57AEF9E77EB9EABDFA5CB8A8EDFF3B2A1E9488E8BEEDB28B7EC3547';
wwv_flow_imp.g_varchar2_table(809) := 'E91FE81DC89DA37FE7B7CDE73131D7693CF84108D1D8E0C6C1807F5E6A2DC7512B6B8152639C78502FE6BAD7979DFF71E73B3EA7E77E0CADB3CE280FE4DEDC15D039755FB7D7938F650786EFBCF6325F00267ED7ADCFC63C8EFE63079E63B376292F0401';
wwv_flow_imp.g_varchar2_table(810) := 'A0E9980991B1831407467600502925808A9D2A3B370E9C3C6E386020003E7EFC2C963BF66FD4F7AD3A00D106E0C98472150EC0FDF7DFFF5332B89EC8269FD808511B4B673A97FD795178A27993B0B70A8905A5BEB883180B2326013AF76654218E2ABC20';
wwv_flow_imp.g_varchar2_table(811) := '5E6D52F239C39EBC8F0549AD3CF9B07BEEB9675164631C5E3FD331ED0058239CE3E285539243F480136076B0EF9DE370DFF1587851BFD2751B8D8935084C6E646C38AFF9081E1FD760737E50005A2AE390315EDC9BCBB7E26767C25528164C6A9D4E4EE9';
wwv_flow_imp.g_varchar2_table(812) := '6F9EFA9EBEFAF8DF6856B3EA258D4ECD9C52BE6E4A0D06A54902144CE7BB9AB6C1692E0D126DCDD7EBC6CDBBF5EEABDEA32BA7AF54DA0091F7543738099DD67E33A4DC2C558AF0D20AE4C14333C0508B8FE1AA3448E6F5ECE967F4D0338FE89117F6E9F9';
wwv_flow_imp.g_varchar2_table(813) := 'F9173548066AF332B40B26F886EF4079238E4380F789B28371A5852FAA77BDA0F407CA113C854097EB48702002202859936B5D6F9D766FDAADB76CBF49375C768336179B42E5C4CAF541EAEAF547723D8B8639A00081F8D72139A7DAD3FAC99187F4B5BD';
wwv_flow_imp.g_varchar2_table(814) := '5FD7E1D34F6B627D11140AE9EC942605C28EAA9A5239DCCDBCD0A9E18CF2E9BE9261AE37AFBD5E1FB8F65EBD79D39B023FC273CE6B751C8AE775E6160E296D7FE107791E064221E71D91E4F8D9C44097A89947B35CC77D294363E48BB98ED6BD5BF7C691';
wwv_flow_imp.g_varchar2_table(815) := 'F5991C6EAFC31831302AC76B3835EC49107041F41CFD1B75F0F1E3F5CCB13C6EFCDD86D7797C3B13E62BF9FD5E7F8C17638BE30E7247EF139741FB1876CE1873A743290984D847D011A73870C2CC7FE05C466AE139E100E0388D3B604B8DF71BFDF54BDE';
wwv_flow_imp.g_varchar2_table(816) := '01F084883D62AB7C21066404C0133D26C57852A28E85C6375EB923D418B2F22683B122EAFF77FFEEDF05810CC36026CDD840DA61888DB327B717F75239437BDA3E360D3D90168629EFAF3887B9D44437ACC66730FE3849C086F024B896B8BC2936B6DE30';
wwv_flow_imp.g_varchar2_table(817) := '1C792C759EF89EBD4179A3F526133B17BE070B1EBDE31DEF08844CA22E3B01DE7CE308819F4B00F0A0E697E8C9D943FAE2A1AFEBFE677EA87E4EB9D3509A5A1398F2452B1541FA0FF279AA3ACF540E4B15A5B4B13FA5BB76DEA5BB77DDA16D535BD496A9';
wwv_flow_imp.g_varchar2_table(818) := '2ADEDB479E06CDF9AAEBDC4BFE9D7FE7F805096E2058EC29AAC51DA690D53A3A7C497B8F1FD0A32F3CA183270EE958FDBC060BC3006343F883149743E04336B86A428D7B4805A098488C5D644A73CAFB2AB565A3AC21F501FFA156DE16DABA76ABDEB4E3';
wwv_flow_imp.g_varchar2_table(819) := '4DBA71FB9BB463729BA6EA09E581633192415E81EC4688DB312AA832D28E7924E814868CE357AD4EE5A7F5E0D18775DFE3DFD3FEE307D44ED5A1DF433918AAC8FBCAB3BE6643FAA0D1FA61477C5C984CB4D0485B934DFAF075BFA83BB6DD1E3A26DA218B';
wwv_flow_imp.g_varchar2_table(820) := 'A34D3F9EF86F16B581FCE7D2396B721852366A376E14C78F778E8F3F38D546CAC8D9133D63E0E01A186AF77CF75A8A8D742C031CEF37DC071501E8048006B8CCCE9C058EEDBD8F7BE7988ED6B927072F5EE7E3550D1E17A39D7C8673E23091D240CD93FB';
wwv_flow_imp.g_varchar2_table(821) := '30B7C00E483C9EBC9FEBA2370B550CE61938D0F1DE1BEF0FFCFC4FFFE93F0D0E80F95C719072AECFE362FFFCAA03307A828B2A72491234F451F94292160720B0A9134A82BADED57164CFC487794F9D29B01419FADBFF000020004944415479AC382F1643';
wwv_flow_imp.g_varchar2_table(822) := 'D02C30604416181EB76B64315E2E77F3C26001F08FE3C7518527FB520E801D10DE87A806397FCA14F9BC4933CB81C28C3618D2476293121C1A7CD0E693456742E47814E5B403F7E474C8AB2D18CEE588DDE7F358C6AC64CEE3FB0BF66FD4D58E71DAB061';
wwv_flow_imp.g_varchar2_table(823) := '437074E00330BEDE98795FBC41046720A15E3E555AA79ACB06BAFFC483FAD2639FD3333387D49F9C545D661A88081E6198D05820348A51916A484A0046BD1A6DC977E85DBBEFD6DDBB6FD3A67C9354E62AC9B52328C3BD9357C6808D4869E7B26954AA34';
wwv_flow_imp.g_varchar2_table(824) := '6C4B4D886A85B46BE2836F92B73A9DCCE885F9A33A78ECA01E7F699F8E1D3FA19985D980089CAA4E0A4F262FB2A09EC7675BF80CCA02891092026D91EBB2525E65A181D0DA6CADD64FAED7959B77EABA1DD769E79A2BB5365DABAC4E945460048C873A39';
wwv_flow_imp.g_varchar2_table(825) := 'E515700042D122A25C3837A016A001401E102C11146A6B3D3CFB88FEFAB1AFE9B1A7F7295B5FA8984A74FAD48980B2E429A39D0715445CADA961ADB2A9D44C4FAA9995DE77C53BF4CBD7DCABCB27B6877247A64DEC708E3BED3690E882D0A2FB473FFA51';
wwv_flow_imp.g_varchar2_table(826) := '984F9E6F5EAB9E8FAE9E61DE5B5CC77F5B2904C00100E700418483448E1BD40BA737BE365F97EF2386DFE36BB7C3CEDAC3C052B288838FB3E32F8EE57BB18175B46EB491F3B8D52FEB15836BED00821F3E6F22B2910C6B9B209EC61E85036F542FBE463E';
wwv_flow_imp.g_varchar2_table(827) := '8B2386A01AC1162880F556E2E02CDE37DC7A9867472F03BEE2FDEC5CD6E11BE5B397B403104F06E7E7994018393C61FEC51E7C9C0F8B27000B0127001E00C43A16A2BD4D7BEC2862E150503F0C618E45332E071C0BDEC41137EFB31360CF7B391310D531';
wwv_flow_imp.g_varchar2_table(828) := '16147DBD51288C213A0B7F2C55E2E7EBE77C2C40900B98D06C8A8EB01D05C5D7E4CD27DEF896936EF0066767CB0E819D16C6C13F7B43B313C0B9B8169018649C892C78AF2396F8FABA7C69AB964E72350A77D289F698EE3BF21D7DEEB1AF06019D6CB6D6';
wwv_flow_imp.g_varchar2_table(829) := '423E0CD17BDEE69D300CB0789E868E7A753BA437A034A4A1CC16BD6FD71DBAF7EA77067DF97A20A51379E8BE87665D17FBAF80950CEC7DDAFEE481D91FAAE23AB69C948139D45AD0BC8E942774F4C5637AF1D44B3A3CF3B41E3EFAA04E26C795F6132535';
wwv_flow_imp.g_varchar2_table(830) := '8E492F744C0415204A56DEF54EC8DA4CDB26B7E8BACBAED3F689EDDAB3F55AAD9B58AFE974AA53F7A372001D80B423FA95255DE3264385C0B97E951AF56D68B3AE5CB3EEEABBD597E6B5A017675ED2579FFCAA7EF2FC4F344CF93BBC9A056A4735594CA8';
wwv_flow_imp.g_varchar2_table(831) := 'AC7826E4FDFBA16AA11C2C289F44CAB8D07513BBF5C9B77C58BBD7EED1B0E90585821E150594488E1CCAF1E89DF9850A1DEB9696E0BC1E7796B313EEEF363E0E18BCDE98C3B120CEB98C13FB426C20CD1BA26537868E00C4F3DD410B63C835D9609A20E8';
wwv_flow_imp.g_varchar2_table(832) := '48387600B8361C0BD201689610A8B88D2FC735F2E1756D079D63589BC3E590E3694C07344E6B7AFD727C022D520126EB59A0887BE01EE11721058C0013C8ACEFD13C03A7509DB2B013466501155AAEC2582A703A976773317E76D501189158ECD5DAF020';
wwv_flow_imp.g_varchar2_table(833) := '928127CC02C0B83BFF642366F8CB6440E028083F887E20A70B3987AA01B387BFF4A52F05D20AF5B77CD61099237216852582F91C303B4E04061C1D71CE6FCEC152138D85CD67810591274680C45180898ACB89FEE3F3E0C020C5C9981C38706051213146';
wwv_flow_imp.g_varchar2_table(834) := '24B8AF38DAF058D9D15AEABA634FDE0BD5C773E4E5DF3D16FCEE6B70B4CFD88202C0074058C4A9831835083F07AA581AF2FCD8CE24ABF5ECF019FDE5FEAFEAC787EE17FDF5AAA209FDEC83B470DD6901E00300998B72BBF05FA66C21D3EEFE76BDF7AA3B';
wwv_flow_imp.g_varchar2_table(835) := 'F58E5DB7695A6B8291AE02D2B0820D0347CC745C8A8AEBC9BA1C7CE0F8873C39CFA051937768D56C33D4DE137BF5577BBFAC830BFB551755403C26D0BD2F6B40FE00FB436BA01DF274B156375F718BDEB3E79DDA9E6C0DF2C1E4E031C8E1F801BAAD5436';
wwv_flow_imp.g_varchar2_table(836) := '03A5FD0EA6CF93DE8A082121591430091C1BC88E23A19F39CD69FFDC21FDF8F1FBF5C0730F68AE9853D2CB353B3F139CABA9A217908B24CD5543480B6D9E6BCDD7B4AC9D08DDFE3E76E3FB75EBA6B76A2A59A3D019396D55300746A88C8DA2216F479FA8';
wwv_flow_imp.g_varchar2_table(837) := '7652920ADAC57C8E234CDE333EC7ED3033076DF4BD76979AFFCB793DA4AE463D2F3C9F9D0603E103EE461E3B462B6314CC9FB711364AE7FB32528713407A0F34142708E73F5E7B1CC70466FE6E12A0F733F63D0CB5831DEF01BC1EEF7D1E43AF67F64D9A';
wwv_flow_imp.g_varchar2_table(838) := 'F7D03A197483CFB1F710F9533D0561D1E8811D0D7E371A61A490E38160905AA061185A034E7F2C679C2F95F75CD20EC0F8438E73673FFCE10F03CC0D148603E03CB4F3C88E3A6338DA9E3F9137F9390C3913114401F81F4FD6A23DF6CA99E0B1676EC782';
wwv_flow_imp.g_varchar2_table(839) := '0587F1C79051B31F437BCB999CBC9F056A05C0D8A0E268C412A6AF763CAE930D00F213DA0870183896F38DDE281D45C4C78A617F6F1EAF762EA31E36D831C2E08D2A8EBAEC3078733171886B2312226A035AF4B579D373D452A384475D78DD86CE7F28D6';
wwv_flow_imp.g_varchar2_table(840) := '0197EF3DFDA43EF7C0E7F5DCC2E1C07EC73092550EFF510F4F5E3D2B0232500151279D946B5366DA986CD4BDD7DDAD77EF7CBBA69269116B0F491FAD50C76072F75C6F0A940FA419D46D7107122E2310E582867D50E0CB55E7ADF6CD3CA1CF3CF4693D3E';
wwv_flow_imp.g_varchar2_table(841) := 'BB4F65562919A49A4CD7884281BC6ED594C3501E383F1C683A5BAFBBAF7AA73E78DDFBB5A9DD186AE43943500300E9878F37EA20CCF9ABAA566F94135ECEBC7CB5F770D5381A802AE1ACB934A7791D1C1CD2F70EFE403FDAFFE3D0E4A73755685097C1B9';
wwv_flow_imp.g_varchar2_table(842) := '9E9E980C6D8616E6E695F7FB6AF24C2D88068E509A6B8DD6E85D57DEA55FBCEA7D9AACD7A828F25005110C4FD4BF613C6FCEEB181B2A76FEC7FFF81F611D99D91FE7FB99E371A46BE366A3CFEBE3E23F673B4E4E91596A370E1E6C5841206DF0E275C1CF';
wwv_flow_imp.g_varchar2_table(843) := 'AEB1F7F98D26C60189D7972368E7FE3BC4AC234DF265F4C04EBFF7273B2544EC96EDC5809B201DAF59EF9736DA4610D89B5060B54221FB27FF38A6831BF6523ECF7ECAB51921F573E26F1CE79FFFF37F1E1AAAF9FC71FAF36C9FC31BE97397BC03E008D2';
wwv_flow_imp.g_varchar2_table(844) := 'D0960D3B130E14E03FFDA7FFB49897F6E4B5B76ACFD38BC290BEF35C26B430B10D6999153C0E87C7B5B2DE8C501003D623AFED456AE3B59C49C875F9588623FD3947334B1D87C50B7A01E18FB2487315CC7E8E11118F4F0CFBC790DB52F09B372C1BEC71';
wwv_flow_imp.g_varchar2_table(845) := '48368E40E2CE8CDC83CFEDE888EB63E1931BA5FCC7690A6F62FC5E67A9B2B62206560B56DF745AF8339AD50F8E7F5F7FBEEF732AE70621173DCCAAA0314F3E1F28BC40754659809DD3665E6D3FD11C256755AEDDE956FDD2CE3BF4CE9DB7A9976FE8E2DA';
wwv_flow_imp.g_varchar2_table(846) := 'C0C65F6AB4977E3D5401805AE154843EF798FAD01627E8E3A3BA4F4E200B42483DD569A3474FEED55F3CF8E73AB87020C0E69ACDD4D7B44E4F207CD3AAA0C6BE4835B3B0A035E906BDEF9A7BF5A16B7E596BCB5E30C21DD30FB2DD0802A0AA812A01D20F';
wwv_flow_imp.g_varchar2_table(847) := '0DD50E2BA384188EDE953904754574170E9E7A4ADF78E25BFAF10B3FD1CCC45C30F6480DB73426E25EAB3A34FEE1B9CE55C3E00064941136A58A6442375F76833E71FD47B5A5B75343AA04322A3A0661EC94F51707DC86CBCE2DF3832A17647F619B9BBC';
wwv_flow_imp.g_varchar2_table(848) := '1647B0AE3B8F5308767A6364CA8EE9D24FF767DFE139EFB563A8DD51B7237AAECFE5B2542551270FF7C7D716A7FFBCCE6CBC1D517376DFD3F8952CB576ED1478FC381FC1134103D5540E7C7CBD86EA1D50D9E9F7BEE2FB1E772C0CF58FA733BC07842934';
wwv_flow_imp.g_varchar2_table(849) := 'AACE004540840954D67F0F8EDF0A7071CEE6595E889FB9E41D001E8AE13F2F5E7BC6A0000802610089EA63D8D913CE8BC913DA938FD763A8CBD12706CA9B8D616DE7AE793F8B18E8EA6D6F7B5B288DA181480C71DB4B5E6A12C79EFAB861F667637263BC';
wwv_flow_imp.g_varchar2_table(850) := 'B1D9BB270D01EC06711108D49B8C510A6F0A863D83B42CED6147CA8386E56C745FCB26329E4E88110C1C2CA20397067AEC1973D00DB74DC67142A40992143FC70E51D818473D0383121E103FDAEF48E6AAD191C111FDE4F0C3FAC2D35FD17C3DA335ED84';
wwv_flow_imp.g_varchar2_table(851) := '86D550E544A524AFA5855279A8FD9F56D30C95F41BB5939916AAA13453E99A35BBF4EEABEED48D97DFA4CDFD2D41C486B2BC5011D0ED9681131050859026E8508233090A7ABED814BBB32DF077F81A19E62E4E77C44E7A835C7AA5274F3EAE3F79F82FB5';
wwv_flow_imp.g_varchar2_table(852) := '6FEE091545AA1CB5C3B65099974AA8AFA76821493487EE7FBE4EF7EE7A8F7EF5DA0F2847D92F5C50C01A7CB670DD3FC3D05F62770BA58B6CBE317C1024FD6112743D0B8AB2175EAFB34AA7D3191D3AFD947E70E0477AF8D98775B239A5742A53AF4289B0';
wwv_flow_imp.g_varchar2_table(853) := 'D5B080870109B2D6649BAA8FE052536A98B51A940B5A934CE9AD9BDFA2775D79A76EBEFC2DC1199A0F6D0F1AF5DB4A09E993A42B158D8DBF6F036797BA786467BD9663673ADE376C5CBD9EDD152FE6D72C07018BD793F797D8617510E0683C461B383E01';
wwv_flow_imp.g_varchar2_table(854) := '07E766AF8213400A8C14A0D1463B08BE16EF3B9CC34E8A8F1D3BDF1E9333ADDFD841F1F8F83A1116824785D220290523A944F226E87AEFB061F65EE5D263C6749CD3E054A90385181D342283C341A9205D42692E6407C0A8C985688C5F8F6B5A750046A3';
wwv_flow_imp.g_varchar2_table(855) := '6ECFD7468289080A801CAD75A759402C324381F6AE9D6F8B17C3786EF04C1E6DEC3C78C15B3F1CB11E100014BF1CF51BE68AA1F5739934767C7C1F5E7C1C9FC81FE30F1908C52DEE3B96FFF4E2F3E6E9318837A957D2245FEA9AE3CDD2D7E4CF3852F0A6';
wwv_flow_imp.g_varchar2_table(856) := 'ECC56FA7C3A2405C2B8C66F28940A24403460116AF79D408A70B9A47D026E54D08010D4B2D2C0CF42787FF5C0F3EF7A09A855269D6AACC16B4D0CE2B2B7A2A34A56490775177562B49A9BD4730A809C6737B7F876EDD7A8B6EDE7693B6AFDDA13E32C4A3';
wwv_flow_imp.g_varchar2_table(857) := '6E7434110ACF9CFF4275496764F3158A4E30D750EAF2B6D45327F7EB8F1FFD8C1E39BD4FFD2251AFCA550280276D6866040F72AA9516E82258ACD13D57DEAD5FBFF6434A5252182BF3C598767E44F77DD1A123DD0F49ADA9D46F7B413CE9447B428F1C7F';
wwv_flow_imp.g_varchar2_table(858) := '4C3F78EA077AE2C527344887E1EF81F055A741A37F884471912AA91A25F3A52681F6FBB94E570B41F0E8BA757BF4BEDDEFD66D5B6ED364321DDAFA060DA1A4518E3260681531A2668E64725D32CBBA67DE23D68511E38B745EDCC6DBA3E2B5C977F7DA88';
wwv_flow_imp.g_varchar2_table(859) := 'F710DE6782F1522369A3EB35642703038853EB263DCEBDC764C3781DDAD87EF4A31F0D480044389369F94CEC08D868FB79C4C1C2F8DA3BD3F58FAF553BEE4628504D445305B130EF2136FA4633BC963D4E3EAFF747EF8DF13E153B630EBA8C6AF21C21FD';
wwv_flow_imp.g_varchar2_table(860) := '11FD53FE1C3B300EE296138C2CF5BCDE08AFAF3A00A3A7E889C17747D92C3CD8EEFFF37FFECF0081DB4B8D99A72EF38B27591C613B5A76099A0D983DD5B89486F7E200C0DAA72616F29F3D575E732A61A526AF17621C79B048D900610073CF187F2313BE';
wwv_flow_imp.g_varchar2_table(861) := '161BFFF11C9E3B0C7A013BB7E7CD69B951D0F8FBBCF0638789CDD684466FC21E77A701780F1B379B20654088A7F8DA42A4832C70687FDB3900C1288FFE16F8F44DADC3F387F4A5BD5FD3FD471F50532CA857379A9F1B2A5BB75E6991AB999D097C004482';
wwv_flow_imp.g_varchar2_table(862) := 'CA7241593F5731D157396C54CF24DA3EBD5D37EEB84E776DBF5D7BA67705E85A194E43870440580BD97C72FB0C7068DC73EE5FB10370E8E47E7D6ADC01A0370055101006336932380095D262ADDE77E53BF5C96B3FB8A20E80DBF0A2EE0712129E03703E';
wwv_flow_imp.g_varchar2_table(863) := '7584945796ADAA895AC7CA63DA77F409FDE49907F4F8D1C73597CC299DA09910FD086009743D0DC83A6454449455F83B4D8C9A2CD77C5D6BCFDA1DBAEB8A5BF596CD6FD695133B43EF878AF2DD3C096998A4826148096357CBEE48DAAA93905D41FE68F8';
wwv_flow_imp.g_varchar2_table(864) := '134BE33AAFCCBC3762C69CF3DE610366EE8F7FF77EB2D453351CCEFBE2AA17E6A699FF8EF4CD31882377730D780F4E00A81732BB94C4B297D849894B8EE36B8AD7E96B09326CF4636E84C795EB2090000978ECB1C7C27A8C91420721717581113D8F87F7';
wwv_flow_imp.g_varchar2_table(865) := '8371D4D3FB179F756086F187FC4CEE1FC1339080D851F21EB61482BAD4B37AA3BCBEEA008C082D36EA4C3AE7A19858FCBC7FFFFE8002E0C5025F3179E288D8B09221354F8E18BAF704F76434AC15C3D21C970E7DE4FDC95B7963E23DF6DC5772E2D979B1';
wwv_flow_imp.g_varchar2_table(866) := '41E7FC44CD5FF9CA57C2827DE289277E8A7C68D66D2C7B1A97E330768C012CE41B6FBC7111A6B713B49C6B5F8CC4437EFBE5E62536FE9023E9C886717754E38D278E820C65B2A9B321A0D10027C0CCEC00ADD69DA6035681CF86E705143FD215080E9FA4';
wwv_flow_imp.g_varchar2_table(867) := '078F3DAC2F1FF88A1E3BF648309A69D3D760D82AEDC3265F082D76137AE954A0008992A2A761D034A8044E30DD9BD4ED1B6FD6AD9B6FD5E51B37EBB2C9CB55D019A0E1D49DB63D4078C00346AD7663877239E336FE9E0BCE01B0CC2F8D8882504F9702A1';
wwv_flow_imp.g_varchar2_table(868) := '7910044C888D07DB67F4A3C3F7EBE1430FEBA585636A2628691C86A63F799A2B4F320D18DF2C51BF1CAA9D9D559627EAAF5DABB98546E542A28D6B2FD7BB77BF43776FBF5597F52F53AF9D08AC451A41F1B9E0F49521A60CE907AF5DCF171C7ECA5C6905';
wwv_flow_imp.g_varchar2_table(869) := '1EEF0931ECCEDC8B1D07E6CEAE5DBB84209891301B31E6A63FBBD4738CCB7DBD77703C2A87A846B0380FC77184CDF14D88334267C718C4000786EA807FF24FFE495807B1B31F1BD6D8E0B36638D67289C746E1ECF0FB3E3D7E5452A1188ACA209D07AD28';
wwv_flow_imp.g_varchar2_table(870) := 'EA60C8D7E14A02232136D65ED746F962A4C07BB5EF99F407F78A4222F71E7F3990084F7F055439977A9E17C3EB97B40360A3E2683CE600F0F09C3B634252FA46231022628C9023F758E0C20B93E330593DC9388EE1671B4F3EEF858053C1CF34AB20674D';
wwv_flow_imp.g_varchar2_table(871) := '3DACBB047AB22E7731BED649E7748621F3AF7EF5AB01B283EDEFFBB0717404C47D9DA9E90F0B18E3CF02A414D2E549DC73BCA85FED1AC7613FBFD7901F9DC0681C023FC3EA635ED8DC0B9F27C2E135A20D3EC7C6C9989213A4398BA3281ACC6070433BDF';
wwv_flow_imp.g_varchar2_table(872) := 'D1A6DA84D2B02E3A0D468AFF25433DF4C24FF4E503DFD0DED9A743A23E99190438B99ACA82667DD18E88817496235225DAECC12BA01E7D5EC56052576DB856775E739B6EDEF4665D96AF573ECC021A8003422FFAD0C77E14FF7B533CDB8DEA427300501F';
wwv_flow_imp.g_varchar2_table(873) := 'ECD096D15833BA293D1B2BCD54333A7EEA84BE7DE47B7AF8B9477462F684DAA2553649A963D73FA3487A1ACE0F55A158C8B0CDCF29A9072AA626A4FEA4664F57BA2CD9A4DBF7DCAC77EEBC43BBA688FC47E50AA10362196484694D4CBBE7C0BF087D12BA';
wwv_flow_imp.g_varchar2_table(874) := 'D40F73877FD499A33407F44F04ED7C7E7006477C0147FCFCCE3AA0D414896D8C0E9FF15CB2E1F2FB979AF736BCAC238C37E3C53E40291D8CFA3FFEE33F5E54028CCF61EE818DA11131FECE3A603DE004C029627DDA2177146CC7DDE8980DEC72A3640731';
wwv_flow_imp.g_varchar2_table(875) := '7CDE63C4CF263CB3B7D179102E113A28EC778EFC3D46F135C47B67BCFE1D6059608873B1B7B0BE192F4A081164237D8A23E0944E4C247C2DC1C86BDD4B2FC6F75FD20E8027943D5747E75E08362C86B84002A883FFF6B7BFBD58176B089087EF89E6C96D';
wwv_flow_imp.g_varchar2_table(876) := '8782496E87C12D3799B486D6393FE56A886090AF8B6575ED88F81A6D48CFD6308C4F52DF1B4E0DAC676474D970BCC8ECC5C7F7E74DD150A29D1BA220D00B44874CF2F1F878537AB545327E4F7E0E8E04F8CE75A244483F055A98C6CFC8EF33A2C135B041';
wwv_flow_imp.g_varchar2_table(877) := '737DD41493176413E43A7926E1F918703F03EE4E4A60580E425EBEC91A3DFCD23E7DFE89AF6ADF897D9A9CA0C102107A5F0BF416865CA67E500C24CD8D610B4A8349AD1CEE0052FC55AACBB441376F7EB3EEDE7347E81FD04FA7D40CDB109DD23E77A5BE';
wwv_flow_imp.g_varchar2_table(878) := '2E3407603898539616E11FF74B7AA59EAC75B23EA1474E3EA2EF3EF21D3D75F2B900F7330E0BD5BCCA72189CC85EDE0F2D0AE8829820C35C0D95D4A5A6D6F655A6895E3A39A7CDFDADBA67CF9DBA73C75BB57D6287724D74D2CD0C2812C74132910442DE';
wwv_flow_imp.g_varchar2_table(879) := 'A10EA13564C718371246DA0B0129046798DBAEEAB163E94081BFC7D2DC68D853724A8AC9C60B23C7B1DD70CBEBEC959E6FBCE79C893340E40C2781489AB2DCB84DB94B7D591B183ECEED94A34974CC779C729AEE30FFED4038AA8ED30386DE6DD0979A93';
wwv_flow_imp.g_varchar2_table(880) := 'E3293BA7E7EC0C388861BDA2824A59250E16EBD2D55131AA6287CC08419C5AB0838FC1372ACABD22BEF6C94F7E32101F5D0A68C768DC99B6D3B1D47D5D0AAF5FD20E803DD7F15293380A8DBD60262CED69C969D13218A6B03D6CA7050C01C6F07F1CA132';
wwv_flow_imp.g_varchar2_table(881) := '69E3F240EAD53FF1894FE8E31FFF7850AE737DFEB8676CC8D18674251C003B13B0FD51F8FBAFFFF5BF86DA676F7C71D413F6D19194271B26D135BFE30CB0182939FA57FFEA5FE9CE3BEF0C86D5507B7C1FCB59504BDD17C783A3F09FFFF37F0E442DC6DF';
wwv_flow_imp.g_varchar2_table(882) := 'B5C0E3101FD7E12880E74174F61BBFF11BC1D1021E5C34FE26A8E1048C41836D3D088D711099992967F4E8D147F4F5A7BEA1BDF307C206B47E38A5857EA3615E2B2F9340520B4D6668C493D6CA924645D2AACA2A0D394F99ABDF4C69EBF40EDDB2F366DD';
wwv_flow_imp.g_varchar2_table(883) := 'BEE3566D2E36A8A8408C50F4F9594FE46C36AC0BCD01A09322D17682CA5F9A69BE59D0A19943FAEE81FBF4E8894774A23D4E6362D1BF183E052A8D2031A03418FE34C9D42BFAE1F7BA2E3B59E52CD5FCB00E258D775DFD76FDC2AEBBB4A3B75579DBEB5E';
wwv_flow_imp.g_varchar2_table(884) := 'A79751F0D3684D8CE4139508B99AD0D701EA66A7DFC07C662DD3A303F19B38BF6F07C16858CC1562EE83DA4136A3318F8DB81DD038121F3792E36BC1F3DE51B373FB71BD3BA900D039D213E88AB00659ABAE2C3247C8D5005CB3D700E7C330C2094017FF';
wwv_flow_imp.g_varchar2_table(885) := '9A6BAE59749EE3C8DDC63A26F02E67DD727F0E16CC79F0BE6ACE04C761AF40529976E888FBE0B4389D6ADD0F1FCB4EBAF7E038E7EF6080754CC081F1276D6AD4D1DF8D1C3A38389792CCE58CC3C5F69E4BDA01B0177C26A36A74C00B332EF5C100511607';
wwv_flow_imp.g_varchar2_table(886) := '5C4ED44CDE9089ECE330C93CF963CFDF4880A172DA79E29553AA838AE0389A10C3F34602ECB1AFC444E37A30FEDC07A427483A94EAF0773680180A641CDCD5CB1B1D041F7EC6E843B223C2767DBEB901BE6E3B304B5DB737CAA5207036EADFFBBDDF5BEC';
wwv_flow_imp.g_varchar2_table(887) := '4760A72D460DFCB3551C39377DD9492130EE444BE16B0403771075D8025FBECCB60A6CF112DE18D1A2E6B5F7E45E7DE1896FE8D9D9E794D2F6B4DF064D7C18E94D59079D7994EA7ABD426953AB190CD5507A56A0BF5F684857BB32D565C57ADDB8E95ADD';
wwv_flow_imp.g_varchar2_table(888) := 'BCF54DBA7EE31EAD2B36745A04A8FB458EC8526371A631BDD01C80F972A1ABEDCF6A3D3FFFBC1E7BEE31ED3DB24FCFCC3CA3D3EDACEABC563FE9AB5AA01973A3C9096AF45BCDCDCF874DBD3F31A9F985819AAAEC0872881C2D481BF20DBA6DD75B75D7AE';
wwv_flow_imp.g_varchar2_table(889) := 'DB75C5E476F5AA5EE86910588249D79029681550AB113210A9AA5129227F638EBFF0C20BC1A10401207AB6118C03033B009ECF1832A07F7825A8EFE1F03A0FEDCF1BD65E2E941EC3E03139D8FB00C707092082A63C91EB76F46F83C7F53BC0E0782613DA';
wwv_flow_imp.g_varchar2_table(890) := 'B1607D920E40B61CC96CEF818EB2CF2416B4D49AB57175441E3B3BDEFFE2B160ECE00580A4C237C221A0EAC83C295FB739504EA13A20C1F1A2B40F83CF9EC3771000932FEDD0D8617050C6EF4B499F2FE75EDF48EFB9E41D004F5E6FB831C41E4F641B67';
wwv_flow_imp.g_varchar2_table(891) := '6F0A78E678E4E4CA31468F3CF248100C0121F02612230C184F8C3C9E37D132AC5CE4291DF57B63B1D18A170E7F7324EBB4C24A4C42D2109FF9CC6742CE13D8D3F7C6394CB033BB96EBE11E9CA7740D3E8B0F96F1FBDFFFFE45C6B43D77BEC72CDFE56C84';
wwv_flow_imp.g_varchar2_table(892) := 'F198BF52E46BB8929C28B5DA8CBB85411CD1799CFCDCE2E7CBC607148AE3125A0F8768F0E5FC743CB688EE0415BC502540FD5AAAA116B4EFA527F5F5A7BEAE074E3F1CA4742782444DA79247132020FFD0C7A6494327413AEB71AC52340920C2959261AB';
wwv_flow_imp.g_varchar2_table(893) := '897A423BD6ECD09ECD7B74EB965B75E3FA1B423AC02275412760E4A0A481ABB0BC1A81450740A59E3A71E632405A0A93E6A07DEE54D3550124C55ADD1BAA0028039C5AE6D9969E8DDCC2D199A3DA7BFC313D74EC413D79EA491D1B9C0C2D7C7BC9A4F2A6';
wwv_flow_imp.g_varchar2_table(894) := 'AF36C3792AB1D8CAB24E3CA9A26A80F10FAA8B44F2144C346ACB4C9B2736EB1D3B6ED17BAEBC4D5BFB44FEFDAEB42F1D062700AD039A31A43CB620A10CC953AA2179C2B74892104933874093DC06D7D0B5A3C77103E2B9CF9CC799A4D4CCEB733CD2F7BC';
wwv_flow_imp.g_varchar2_table(895) := '5B0EB215E7A76304D181838D17A9482A743EFDE94F2F7627345CEE34661CD498E8C853E21E899A5D1D40F011EF538EE2978BDCC58EB7C72B8EFC6DB43D438C80321EA404089E083C2039B207C1F1E1999838E963B20F91C6C3D093EBE7BA19F7ABAEBA2A';
wwv_flow_imp.g_varchar2_table(896) := 'FCDD8E8CAFFB4C29C7785F5AEA792C3DA3DF18EF587500C69E63EC00BCD2231E8FC810EEC1F0E3913381C9D1E10430D9590CE4018936F15AD1E56712F3F3F8248CC942F1E6136F006703077B71C4E7C3E3FEE217BF183612169FCB7330F0CE1F1AC97004';
wwv_flow_imp.g_varchar2_table(897) := '1D7BE45C1F06F4377FF33743032490039FC711903D70CEBB9224462F6EC61A4E0690A8F39E677220EC0C701D8623115842251067AC8B983A0DFD00110638B3569643F0EBE880C0C7189EBAA1BD6EAE413BD44F9E7F403F7AE1213DF8D2035AA84F693A9B';
wwv_flow_imp.g_varchar2_table(898) := '087035C6BFCC535800CADB44FD1A63D3139A83753D0CF07601D4DFB4AA8640D3997AF984766ED8A51B37DFA02BD66FD3AEF5576853BA312002E4BF473D72D5A450D9865D095DF012F87FBEBFACCF8BF1AF81D01135AA86DA7FEA49FDC5DECFEAB1B9C783';
wwv_flow_imp.g_varchar2_table(899) := 'E67F31C8A5A650DDABD44B723594D135AD866DA35E8174EE1DFAC475BFAC89765A49A704D47D8D6AF847A1F4E29FEB40ABA7C950AA141DFFA0F8D33943F3D5824E0F4EEBD1537B75E0D8013D7DEC908ECC1FD17C32DF75126C33E50DB512C0FB835065D1';
wwv_flow_imp.g_varchar2_table(900) := '64892AEE01C81E4FA985BC473A85B6BE281CE6BA6272876EDD76B3EEB8E236ED9CD8164AFD481DA0B484A384AE42DD24CA339C80910641207DE21374080BEB14230A1C8D21620DF077735A6CDCCCE4F7FA01EDC38964FEFCEAAFFEEA626BDC98007736A8';
wwv_flow_imp.g_varchar2_table(901) := 'CD998CD6CB43FF72550C7FA34207996223016E5214238F71EEDC1C22D637EB192E12690BB446A83C3A53E013A369CBDD0BE37B18DFC33CB6BE2EEF13045320023C038C3FFB29E8224E15E388738F91E79AB76CD912380CECA371D5C1B8E365637FA6EB3E';
wwv_flow_imp.g_varchar2_table(902) := 'DB3DF48D61F27FFA2E561D809FC353658161909C0BC301783DA0A7B89428F6F24961A06E88BE01E88573708ED8C71D061B70D7D7B389B06900FB03A5DBF8FF1C86F28C878C37577A14D0B30138D18E4BEC801875886141EE837B266FC80648C922C78CA3';
wwv_flow_imp.g_varchar2_table(903) := '13DAD2E6E8FB8FC47A30B14D4D273E74F831EE8DE6AA815E3C7E4C5F7BFEAFF5E8B18735581806A30FBB9CFE0118EDB46983716D82C050473E4B3092A3EEC044E1410BAF6D54B69526F209ED59BB536FBAEC7ADDB0FE1349B4C600002000494441545A6D';
wwv_flow_imp.g_varchar2_table(904) := '9EDEA175F93A65186A8C2364B6CE23E89AF4F02F08DA8C9001900A8C67A2D0E8A7AC2A3D31BB5F9F79EC2FF5E8EC5E3545ABDE424FBDBAAFF9DE82D6E0B40C2A550802495A53ACD55D3BDFAE0F5FFF4B5A57AD09ED8F4336622494D455EF7548446720D1';
wwv_flow_imp.g_varchar2_table(905) := 'DCAFC335C0AE47CBBF4A6ACDB6733A3638A6A74E3CADC3C79ED603330FE9F8FC715565A7BF9053FD30AAB401EA0FF96ADA2673AA340B7A09A0065DB960A32C082721BB5CE8CA753BF5F62B6ED52D9BDEAAAD93DBD5565D43A41647847ACC161E018ECB88';
wwv_flow_imp.g_varchar2_table(906) := 'E83932EA368ECC052261782FB0FE692DEBF519236FCE17DB69641DF3398C1165A5CC7F8CD2F98C26E3B90FFA48691D7C248C26AF5924C83C043B3376DE7DADAC6190001C6158F3383446FDBCE856126D7C2D7B03D7CCF5B955300E00A98BF339CEAFE57A';
wwv_flow_imp.g_varchar2_table(907) := '2FE6F7AE3A002BF4F40C59C593D41EF0723CE915BA8C9F3A8C3D6893FAB8461615EA86308A213EB151B84CCF65448E7C1CD1F09D8DC51A08406F081501815ADE7339F0FE4ADDA33735A746FEEFFFFDBF218A83C0C846E156C7F16619C3934E21B0A12312';
wwv_flow_imp.g_varchar2_table(908) := '043190F2286FF44E270487C80E001982A064D704825F676481F46B3D77EA69DD7FF801FDF8F947F57C7354EA97CA9A3240FC6D93AB210A0D46B40A912972B7C121899AAA14BD22341AAA1660B8679ACAD668FBFA1DDAB3E52AED59BF4B9BA72ED39A8929';
wwv_flow_imp.g_varchar2_table(909) := '4DA76B34514F7643B998118083F0B22C30A90A9AF814480CA5AD9E9C3DA03F7FF02FF4C8E9C7D4F6DB60FCF3AAD07CB2A07ED030A0E3A102C4BE365BA777EDBC4B1FB9FE039A2CA755E75D03A045D5E1114D22B82D7C8EC81C621DCA836DA9D97A4E4787';
wwv_flow_imp.g_varchar2_table(910) := '47F5F4CC533A70FC491D3C7E2040FF45C135270145E968165DCF023FA320954CB5057D0C9A56BD208B8C13D0A884470121B0C8F5E675D7EB1DDB6FD5759BAFD1E662B3D23A574D4FA762C4EA27A5819E43A43668FE8E4971E4A0E1EE807E7DFFFBDF0F86';
wwv_flow_imp.g_varchar2_table(911) := '8FB9C0DFB91EE7D33B27AD2392FA3DFC8CD63E443AD0A3E594F8ADD4BCB7636E2705A34EC5CEFFFEDFFF3B380238013827E6EEF0DDDA1D4EE5999BC331AC3AFA918F7C249431824CF277EF171EAF95BCFE573BD67864EE7DC80EFDAA03B0F24F62D50158';
wwv_flow_imp.g_varchar2_table(912) := 'A131B551B221F4648EA1A9F33981E3C5C3A276F44EFDFCBFFC97FF32B4F96463348988CDC01184179CA13A9390D83C68ACF32FFEC5BF081D0ACDBEE7FD2B09F12FF548E2FC20E72515408D31B5D21E63231E714ED011BEDB34033352BA05218A1A6ED232';
wwv_flow_imp.g_varchar2_table(913) := '66801B120DDD0247087C88DB83D1AA43C48E221D3AFEAA5B9DAC4FEBC7471FD4D79FF8A60ECF1D523185B92322464CAAAB5D4FD33A18A700DF538288006045AD5A17A916DD27546589165A9CB552699DE9F2DE065DBB69B7AEDDBA4B3BD7EED1E519F067';
wwv_flow_imp.g_varchar2_table(914) := 'A63EF2CC593E4214BA76BD416A987F81F846D39C56FB4EEED35F3EFC59ED9D7B52C914CD7452691EA87DD45488F6B8942A0E2BADD53ABD6BD73BF5E11B3EA0E98529B5881DBDDCBA4020169C840AFEA6A9C2381C1BCEEBF460462FCE1FD5E1534FEBA913';
wwv_flow_imp.g_varchar2_table(915) := '07F5CCE9C33A313CAEBAA895F55365C3890E21081A0B9D904DB736188B4E0069883EBFE8B4488B6194FF50FA6BD44BFADAB8769336AEBF5CEFDA76976EDA78A326B27EA72218923321E8EFBEC3FFC399A9CA600879D67C790DF033EC73782F905F4D5CB3';
wwv_flow_imp.g_varchar2_table(916) := 'D1330AE6F96CED0B9C03E63F65BA6875C03C7FBD1C7B1304BD4E2006C261E09FD36EFECE7D706F3802E629F09A7901AC7BD631F3FF777FF77717D1C0F3B99EEDD88CC3F8F1F89E4D4A65A97D64F5F5C08D31B6B73A1C2B3102DED8626FF6F5D8284C06F2';
wwv_flow_imp.g_varchar2_table(917) := 'E6C72640DE1F45438CA56B990DB3B12938F2B5C88F0DBB9100A264C873E8EAC36970BEEF7C46FF7E4636D0E659901305CE2512220A32EB99F7B3715B65CC4E00CF874D8E2A08728A4602807479CD9B657000020ADD45AEE15E4397C52AE8CB87B149D210';
wwv_flow_imp.g_varchar2_table(918) := 'D90EDA591D3A7540DF78FCDBFAE19147349C04EE6E3595165D0541DD31DCC98D63F050B70B1DEDD0A5076AE01FDF7AAD9A1E46AD23271665A6DE20573148B57E72BDAED8B6539BD66DD28E8D3BB46D729BD6A6EB34994CA880F0061CDE2642000F5BDD24';
wwv_flow_imp.g_varchar2_table(919) := '951E3FF1843EF7D017B56F66BF8463D248F542AD7EAF1F6AEA052520838F506943BA41EFD9F56E7D302000FD4E0E09C9E0D07590963DA586ED40B3D58C66E64E6B6630A347E70FE9D9E3CFEBF913CFE9C4C2095549A93474E5CB95B79DD8F180FC7E18AF';
wwv_flow_imp.g_varchar2_table(920) := '0E9A77EF836EEE74A24B395592482A678DD21E9FCB95CE499735EB75DB156FD19D57BF43DBA7AF5051F7828A230397F468B2240D51756CA4825444366AB234D27AC0D8D90186EF02FA05FCEF125EA77F1C1DBBAC8E756B4480F9C6BCFA9DDFF91D1131BB';
wwv_flow_imp.g_varchar2_table(921) := 'BDACD7CC4AEC1DAFE518ACD1E03406FE4A1D72E83800A4F51C8C18F50A69AB913819AFF9EFD6F1605FA03A063E0D6B9B639ECF6065FCBE9DBAF4BEF97A5ECB6B792617E37B571D80157A6AAF46E059A153BCA6C38CFB752C2A2A1530E0184B1B506F0626';
wwv_flow_imp.g_varchar2_table(922) := 'FC5990C31B1B1102EF21F261F343498F0D82C8EA7C4709F100D8C17295019B049BFBBFFDB7FF3668B89B77116BA6BBBAC151BEF3A4DC23F0E7DFFDBB7F375434C4E54490D0421FBBB623E62F56E7858A802E34A6BE9FF3E74DABB21EEA687542DF39FC23';
wwv_flow_imp.g_varchar2_table(923) := 'DD77E06F753A39AE3A9D57A64ECD0E921ACCF6AA248F4FF39F22FC43B5AE6A3A7D7A9A0E29456F9E9EE76507E7A77DF5F3E96084CB725613D964C8D76FC837EAF2C94DDAB66E9B766CD8AECD6BB768AA98EAA0DC8C863F890ECC1CD0971FFA9AF6BEF444';
wwv_flow_imp.g_varchar2_table(924) := '700CF21C353C3802B9E6CB41E80580A3D0548D361597E9AE5D77EA7DD7FE82D6B56BA5764E8376A0D3C3199D5838A96373277474E645BD70EAA88E9E7A4933F3333A919F5299946AB34649D1A11BAA1225C32CA42BFAE9A466D393AAA97E084635C47C8B';
wwv_flow_imp.g_varchar2_table(925) := '11741775C3FCAF95F5F2D03E793057A9A87ABA76D3B57AE7D577EAA6F5D76B5DBA6EA4C9D045F938535C37FC05F214454BD925C78797D039678C03D13BF3999C39460EE3CF1C00FDB20810CFCF4E82D53AFD1E3E4FAAEBEFFC9DBF13846620A0C58E684C';
wwv_flow_imp.g_varchar2_table(926) := '467B4D8BF42CDEEC7D663CBD853383338B8C31C44684769C37674D738DAC71502FF737F0FD793D50D2485503F3FFF5C8FF8FA700C6D73BBFAF3A036731695EE523AB0EC00A8CA7614313CD7CC871D8EA7C4FDE9885CB268681440E17C8DCB9BE1071D675';
wwv_flow_imp.g_varchar2_table(927) := '30E67C2742263270EE93D7D13887F044FDB02155FEEE0DD63FAFC0502EEB10E3CE96C799CD0D3220AA6C4444711583214F5702708FDC2B9B3DDC063650445D9012851C78D965978DEE6F0453C7D577C1F8BFFC0798005D069E0A0298F78D669B193D79F2';
wwv_flow_imp.g_varchar2_table(928) := '097DF3E0B7F4E4FC210D0743154DA662220B8672580F35ACE8C997294F3A18BF4EE10B90938743502925CD00DF208574982870EDC95107DF23E9B804F80A6D129C887EAFA75E5E687DB1413B2776ABDFCF35B56622E8EA3F7C78AF9E9F7DB193D8CDF974';
wwv_flow_imp.g_varchar2_table(929) := '13520125C8469187081F2EC094FADABD61B7AEDFFC26A565A1E3F32F68AE9CD5E9C1AC4E0D673553CF695E430D924A65D0F46F345D66AAAB800DA8CD9B4092CC4871208A54061DDE70CF2175E05EC623E8DF885998AB13A9868352F99CB4736A5B104ABA';
wwv_flow_imp.g_varchar2_table(930) := 'F9CA9BB57DEA4A4D015DD489162832C8A45E18FEAE8D30E80184C8ACCD95946D484B28EF4470EC203EFEF8E341E5F2BBDFFD6EE0C1C4103FE7368194F9E17480AB5FF8FD831FFC6080FE41C162C11A47D7CB9AB82BF0263B294E7105576A8466711F5422';
wwv_flow_imp.g_varchar2_table(931) := '8184E104506667B120F3812C916D94C0FC089CA1F7BCE73D4109D16264E7D3C1775A82733AF28FD39836FEE77B0F5D814776411F62D50158A1C7131BFBF134C0EB9102F0C610C3990F3EF86050C1A30A808DC08BC9CE8059C06C9C185316239020A57EE4';
wwv_flow_imp.g_varchar2_table(932) := '3C89829C0E18273D9ECF85196F7E7642BC0952DAF5A94F7D2AC0BC3801187A4B837A1371D7B7388AB313445D310E00F70C8A109C3A5870237B0F490DF87A119EE4200D75E7E4DB29390B65FEA1E3DCB098D7C199A7F5A3238F6AEFB37B75FCF48B011E2F';
wwv_flow_imp.g_varchar2_table(933) := 'D33218CA9672F460C4299FCB02A9906896B400E583F9A84F011037D505200718D31EA581A35C3C9DF542F41E9407E92ED4AAA80A4DCDAD5192D49A9A9A0844C5D9E14015EFC920EEE14AD4215A6E925C596F32201930ED13DAC5B685268B751A0C6A2DA4';
wwv_flow_imp.g_varchar2_table(934) := 'F381E887A987DDCF3506C400247F0489AC3D9D07839FE620188DAA76A8AAE99CA290DF077E4622996A88A0ABD0E5FDE3E7C87BEAA1B42E5FABEB36EED1ADDBDEAC375D7E9DD6F53729AB3A5480F2C090F60FCE4BAD9463E5A460820B1A52000A0D99D290';
wwv_flow_imp.g_varchar2_table(935) := '16B0734BA50BE23910FF78F696DAF6BCB743106B5EF07C799DB9F3B6B7BD2D38CE54BE187277B47A3E8D64B8F3A6595C83DE736243C9F5B883292582689598E41BA37C71B062AE041501FFE6DFFC9B90EAB06373BED6B5EFE14CC6FFF5DA3F57C8345CD0';
wwv_flow_imp.g_varchar2_table(936) := '8759750056E8F1C413F84C873CDF91823787980C845601510CCA5B2C2A8BE670BD6C74DE1C9D3305EEA74C0EB52D8CBFD9C5DE1CE3DCFFF9DA2862A3CDBD99A86807806BE73E7100D8007108C6377CF775E7FAE3CD1F07887B24CAC309F8B55FFB356DDF';
wwv_flow_imp.g_varchar2_table(937) := 'B6BD93940D256A2189DD91D7421E7FD4D806E9DAAEC0AFE30AC00BE4FD791A62D4633327B477669F1E39F6A89E7AFEA05E38FD82D4977A9324FA9300BD2391AB846896523658F585DAB63B5790AC55A33C187B9C017F75E2451DADEE65563D86B7C6EC97';
wwv_flow_imp.g_varchar2_table(938) := '031518C8408C9BE85AE6A2C1DF0E95513500110FBE7DD20BD7D0A3C90E59FEBA0CA8C302A59044F2CC15CE8343D27996A3B2C0EEFE710A780E19A179DD866305883F081A75624309F7D4D5F585F7E200A0B55056DCAF82B6C2D5C5554107E1BA6DD769E7';
wwv_flow_imp.g_varchar2_table(939) := 'DA2BB5369D56530661E550E5805050779F680EB4216D128898D8FDD049B1136D0A1D169324A873427A851702EC6F911B3BC7F15C72BB5D97883A574E79DC6FFFF66F877257970ADA71F11A5AA12D6459873993A174CEDC6B81798D5810D5019408DA09E0';
wwv_flow_imp.g_varchar2_table(940) := 'B33801AEF631CCCF1A80FB426503290ED68B2B00CEF7BA1E7F361E14EF67AF07DF68590FE6227DD3AA03B0420F6E7C61C687F56BE773F2C6F93433A0D928503DFBC33FFCC350CF1C771C345C6A29508C3F39CF7BEFBD376C0EF1A66714C0242947D62B34';
wwv_flow_imp.g_varchar2_table(941) := '94CB3E8C790C8B8678D442986B45AA19A63762477602BCE1C5CE988D02AFF1B32B1EA80EA03CF0FFFDB55F0B04294C4BD814470627DCF3A83A2EA0DAB0EE0351100B4764CD4FC11350D6663A9D9DD63383C3DAFFFC013DFEFC137A76E6884ED7A7032240';
wwv_flow_imp.g_varchar2_table(942) := 'E4CE710B0C351036D2C309A6B813D321E8CD9256F9A8261E29A0EEE4E627744611431F20764AF7E885D30C3BC25DCD31502A84AC88964115CE87D3D1B69DD811A4BA5E46174B20F42AA80362AFE96D104AEA42FA2109DC814E596F845E20CED30BFD753B';
wwv_flow_imp.g_varchar2_table(943) := 'A83F20FD1C2757425AA96D84A6421FF4216954E3232488F4B46A87ADA692496D5DBB45DB366ED5DB37DEA2DD1BF768BABF5645DBEB3A328696C99C0C2702B1264ED4E90D046980515E38282300D48CC6CBE920D020DA785B93C373363628368CAC0FCF7F';
wwv_flow_imp.g_varchar2_table(944) := 'E616E450525F88FD58EBE24C5C9FF36924CFE400F89A62448FB94AA50FDDF73EFFF9CF07A798D74D5E8CF90D38FE54F5FCFEEFFFBE6EBDF5D6453D8CF38D6EC4C63F1ED318E1389F7BE8B237A28BF88DAB0EC045FCF096BA746F722C76BC7C3C7B72A1E8';
wwv_flow_imp.g_varchar2_table(945) := '9E7FEB5BDF0A4E80179473E41C934D00A19358E16FA9735D68AFB32952E34D3E14E897FB739B6093BFD864626E80F3AB6C7C6C8A6CFA10033FFAD18F86F2C798FF607E850DD0620A2854096088BBF6B73E47C8D567D25C3BAFC3A79ED1A3CF3FA6BD2F3C';
wwv_flow_imp.g_varchar2_table(946) := 'AE230B47349BCCA8CC4AE575AE7E5904A81EA83BC0FCEE0B302AEDC39A8308040462D4F066110A1E3D8460E44273028C6EC717E858FC23AD80D01897F714E113C18D08488223FB5050D77D6E24A267C643403A3ACC3D40FADD7FDD3982184F3720DDEBE1';
wwv_flow_imp.g_varchar2_table(947) := 'E72E7DD26B90308225002642CFA3429BF2CB74F5DA3D7AEB969B74CDE5576BF3E46665681720F53B4A1F5870287632638310AE3F541274A9197E86D5CE33472A9A9CBFA17E8F53F0550252D3E5FB5D56C7CF96F1C6F8C307C10160DE98141B1BDBD7C3B1';
wwv_flow_imp.g_varchar2_table(948) := '5FCE3A8B59F4107E7182D0CA801FE02E9F7600B81FE4C81103C2E1B59090790ECB39DFEA7B2EDE115875002EDE67B7E49513CD3ABA59345049120C239B022A7A486F1A2D6073C0F8FFFAAFFFBA6854E4C640E733C259F2A696F906DF13AD834907DC77DF';
wwv_flow_imp.g_varchar2_table(949) := '7D8B395DEEC7E90E7723B37380A3C438F08531E0EF44808C0902486EC3EAB1752E35664DC784A6609C60B9074480E819E336D49C4EEB9913CF6AEF0B4F6AEF8B0774F8F451CD24B3AAFB01CCEED47643E09B08E41B711CBE0FB244277BA0011D4780683C';
wwv_flow_imp.g_varchar2_table(950) := '6B13C1B1E3679407F90A4A8491310EC7A3C26004E5333E86823B63DDC1E721D20F9FC56990AA406818F54D1C7D371AD400F7934628103AA2E20091A33690094143C2F5D0B42F493503A251B59A6C726DEE6DD0D51B77E9FACBAFD19EF57BB47972AB26E8';
wwv_flow_imp.g_varchar2_table(951) := '3B002F60E4A4BCDA9C1B87BCED1C10BD13F9D3DF82C8176D799E27512FAFF12CECFC795DB8E4D5868FF41072B3A05FF040B66FDFBE4818F47DC74852EC982C736A9E97B7C5CD840E1C38A03FFDD33F0DE382701063CBEBDC33290E525D881BB1DEED04FB';
wwv_flow_imp.g_varchar2_table(952) := 'BE5623EEF3F2B85EB793AC3A00AFDBD0FFFC4F6C65BB98B56C08F4D9679F15A440D400291982F50E010E7533A25DD7025FEC1B00638013F0477FF447A142C02A6F7144E7CDCE795FBF07434E6915469F5408111250A97B98DB48D920D9308C1BAFC04407';
wwv_flow_imp.g_varchar2_table(953) := '8027871E5AE242A4ABD524F4162CF5F4E9E7B5FFC8613D70F4013D39FF44687D6B63D8B5D085E53EEA0F94D0C3AEE306048314F2F82FCBF38688989244F406827E41D74C28BC9FAB08BD0D3AE9DC3EEA79380BA363C1E80F1FEABC802EE1004761B15DF2';
wwv_flow_imp.g_varchar2_table(954) := 'CBAF813E74A23E70184A853E4523034E9A81B10305C103081501D5B4B64E6FD18D9BAFD29B365EA5DD533BB4B1D8A42C818038C217287F1CFDF86A0E4077EC2EDAE7BBC79F08177D7CF2DE183A1B7913F78CDAB832A0E322BC5C2D80930001CE12D134EE';
wwv_flow_imp.g_varchar2_table(955) := '8ABFFCF98B819466F2AFE58C4145903CA614D82DBF2967A4BC17C7D6A901BFDF24DF8B7DFDFFFC77D98BFB0CAB0EC0C5FDFC5EF1EA1761E1C05AEF98C331798FD7D9245CE7EFD2278C9D4B02798F37C98B6D986C18CC6D001286FB00248CF107CEB7BA9B';
wwv_flow_imp.g_varchar2_table(956) := '233BC680FB252A74558055D4F81B3D03100CFA955FF99520846423EC313A53AE72D168D44988E683E84ED26AA1A6CD30B5FAE8FFD146B8D44BED8B3AB87040079F794A4F1CDEAF23332F6990D56A2753353D70834ABD4ADA50659D71867388663E2003DF';
wwv_flow_imp.g_varchar2_table(957) := 'A11C8C2268E7E94730C048C6B8230B769D08700CBA662BDD6FB6C31D16D0A500524D6A4D870DD02B806A008CBBE3F48026E02BCC8FAA25280D20B5408962A622EFA9DF9FD4446F426FBBFC26ED597F85B6AFD9A68DBD4D2A9A8950BE88D3404A6090B4EA';
wwv_flow_imp.g_varchar2_table(958) := '8F3AF48DCFB571AE07AF9BD7620E071DE510C141E61ACE07CFD784B798BCEAFBF531990B187ED09E0D1B3604121CD03FC6DFA43A97CC19EDB9D0D7429CEA88F9319606367AC5DC0605E03D2E89E567C623903AE99AB8FAF5861E815507E00DFA780D8187';
wwv_flow_imp.g_varchar2_table(959) := 'CDDD9BFC8824C7DFBCC8EDF17B53F57733EC2FE64D20866C7176480320944259188E0F657EAE84B041F078E13830462EA1B2210729410F01C120DA92DA597254E871B7E361272AE4CDBB1C40200812758773555DC740A2FE46A5CA7641F3ED40C706C775';
wwv_flow_imp.g_varchar2_table(960) := 'F8F4733A780269DDC33A32F7A24E55B3A119502FD4F1C3CCEFF2DFC1EC925AC0385754C64B650F35B7516E9E887F94CB0F73C1B5F844D19D057F59D6D6E4C59157405D3DC84570204398DFCDA711A13F1C6A902E0415C3AC42F8A7D0DA648DB64E5EAE5D';
wwv_flow_imp.g_varchar2_table(961) := '9BAED0AE2DBBB465DD165D96AF533F9B509EF694D08910B06154D3DF26A1C851F404ECEEA6FB8AD356F13275B586351CDCD512D29B1D029E97551FF92C0E1C739DCFC406909F31FE44C0E4FB11C30109B3B3EC263A1C639C9836FEB70B6D2BC1717124EF';
wwv_flow_imp.g_varchar2_table(962) := '751E931899DFE647C4CE8D5B7E5FCC6BFF427B1617EAF5AC3A0017EA935981EB8ADB693AE20F062383FDDD2100FC4E2410470DE351D2C5B811D8103BCFCD0648C48F4A206A70F7DF7F7FB867C3F9BCCFAA70AE978E9D2147F77CC7585025F1894F7C2234';
wwv_flow_imp.g_varchar2_table(963) := '44E2F7F1F18BE1E9E0248C7ADB27A0313515825D979DEE3A15A48482942DF17926556DA539CDEAE4F0B88ECE1FD5F3A79ED74BA75FD2B3B3477568EE053535150BC3C0D84FA922080A82542A04B3A4AAE94AF682D11AC1EA21CA0F1C844E90276001E81C';
wwv_flow_imp.g_varchar2_table(964) := '8494BFDF34EAF247DA00AFC10C7FFC06B4FAAB2EA5109A10A799F234535FD35AD75FABCD6B366BFBBAADDA36BD555BFA5B74596FA3D6F6A7836E7F431740E65D466964576110BA25263449EE7409929676BC5D97C05732FE31C10D981F721BEDA0F9D9A8';
wwv_flow_imp.g_varchar2_table(965) := '8D151EEDC43AE7CD771B74F33458239B376F0EE91D9E2791BFD783D30CE34BF1424F05D8D989AB759CFA8BD194712E452C937D31A43956608BBCE40FB1EA00BC81A780739D5639F3A6EAE8348EF2C7110347400CCFC598078C0DB61FB1E1FDAF7DED6B01';
wwv_flow_imp.g_varchar2_table(966) := '2EC619B032DA225B7FA4FFEEE89FE31842661C5D2AC6CFE44EE9A98E4E02680070AA1D2BF32EBCE10E297D43FA177980BA0D4E006CF7A4C8D4E45927278CBD35F31EC720D4DC810B0C345FCE69309CD7B1C1693DB7704CA787A7F5E2A997F4D2CC319D1C';
wwv_flow_imp.g_varchar2_table(967) := '9C0A5DF816DA814AE2FFBA511E64033B26215AFE5D2383919DEF720021BFDFFDD0290C06A76054DED7A5FD5B2D24730125809D5F248526D2BE268B49AD9D58A335536B34DD9FD6B513BBB56E62BDD64E76FFA67B6BD5D36470128231A75C0FADFE2039CC';
wwv_flow_imp.g_varchar2_table(968) := 'E9DA400CA4FA004643D254F45A569BF68306C262EBC128EAF673C0382364C5B343ED8E123F781A7E36367A7C77FF079E018E9E9F8DA57B89FC690005C1937F10FEFCDC6C30E3287F1C5ABF50C9B1767A6DC4BD7E63EE84EF2F4E11783F1817F97A036F91';
wwv_flow_imp.g_varchar2_table(969) := '97FCADAD3A006FE0296023380E5DDAD89900154705E39FB95037B9A51E5B4CF832BCD9DD4BA73B0F2780E6291003A904201DC0781815713325DFBF5110B3A4393E91167A01544CE008DC71C71D219A3C134B3DF4F909FD046C749B00FF0725BBD0500863';
wwv_flow_imp.g_varchar2_table(970) := '4D711EECF991D88D057E82557EF98E2B559AABE7756AFE944ECC9FD489C1499D1C9ED4C9C149CD0E66355FCE6BB65E50D574A23EC36AA061330CA842831B124A023B431C0C1C39FB505DDF45F47418445A38E3E7765213F984A67B535ADB5FA375BDB55A';
wwv_flow_imp.g_varchar2_table(971) := 'DF5FA77513EBB476625AFDA2AFED939B837310A08B512D01CEC4A84C3F38161D324137C4EEAF880685BE00A3EB408720AEA4F0DDC6444B9E09656D18FD2F7DE94B41DA9AB126DFEFE76DF4C0CFDC70BF499F26C731CF31F844FD187F4AE1C68D626CFCC7';
wwv_flow_imp.g_varchar2_table(972) := '5109BFF7955082A5E6E7CFFB751BFBD8C0FBE7385D65C73F5EE7E63C5C8C8EFFCF7B5CDF68C75F7500DE684F34BA9F718F7FFC776F6AF126600720DEFC2E4627C0B94E977FC528882162CA204102EC04389F8FB1B093E40DDEBFBB7EDA68826153AA2770';
wwv_flow_imp.g_varchar2_table(973) := '02DEFBDEF7061819926008AE838220861F4D7CA2EE4675DA7670F888D90F12105AF7066DFDBA53D4E3FD24C9478E83497A9D20CF4885A893E51BE9FE0DB550CF693098D74C35AFA3CD6C90E31D0C075A182E847F3802655306325F78CE1DF61F1C0E98FA';
wwv_flow_imp.g_varchar2_table(974) := '18FF5E56A847E398AC509116DA986F51BF98D0546F5253C5A426B309F5D37E682434F2A72C42D83913E3EB698424904E80A7D0BDDE9111436D03C4C5AE21A2129407E1238C9AF884711BFD0C731DE3FFD9CF7E36386FE8DC83B8405A7503ABF8197BCEDA';
wwv_flow_imp.g_varchar2_table(975) := 'B9E538B1D013797ECA3B6983BB73E7CEC55C796CD89782C1031762A44679A16E23BE46BEC73C80338D4F7C0FAF9482B950EF73F5BACE6E04561D80B31BB7D54FBD414680DEF008C6D01B1EA382F1B7236038793C4A8A9D24A7532C1C44EF848F7DEC6381';
wwv_flow_imp.g_varchar2_table(976) := '23B075EBD69F928FF5906134BC19C750B38FBB54E4F59A1DB291244038FE48BCC78E85258D43A5BFE58D7FC68A2FFDB0CF8436C5C6D4CEA68DFA992068A32F1E1B0C366255187F227E14ED90B8E55C76D26CE0F96E63ECE7C57334D915D89F63E1345C7B';
wwv_flow_imp.g_varchar2_table(977) := 'EDB521E74FFD3BC7715BDC380DE6EB7DCD63BDF450ADBE6375042E98115875002E9847B17A21AFD708A08E88500AF5E3341072BB638CBA0DBCD9E52688C50232716E18238474328E00112675D608ACD838C5FA03B10CF178F435AE2DC039FCB7B3693F1B';
wwv_flow_imp.g_varchar2_table(978) := '5F636C8C7DDED8D0BD56A3171B4E6B29700C0C70ECE0589782BFC744BB800944AA891C83F7A2614FB44F4F87071E7820A467DCD696CFC4643C93FA5C926906BCCFC36731F4A469E86FF1AE77BD6BB153DE6B89FA5FAF39BA7ADED511F8798CC0AA03F0F3';
wwv_flow_imp.g_varchar2_table(979) := '18D5D5635E142360DD7F8C3CB5E35FF8C21742D7B883070F2ED647DB3039C234946A82194E82DB27C7BDE5791F2583C829535A76D34D37FD8C80D078C419E76DE37CAD0773FCFD17CA205B67FF4CC88589775C6B2C486547C10D7670A8FC7974EBC9F303';
wwv_flow_imp.g_varchar2_table(980) := 'F793E7773F7BCB367BEC89EEF9722D7B3C3E760E2CEAC46B7035FEC13FF807A1BB9F85AE3C866772B8EC985C28E3BC7A1DAB23B0D223B0EA00ACF488AE1EEFA21981382AE667CA048934FFDB7FFB6FFAE637BF19A25297043A17ED1A74B3CCAD251F8BC5';
wwv_flow_imp.g_varchar2_table(981) := '18C2C640E11C202D4BC4494B65100114D8F8727581C9874E0DC46597CEE1C691FA52298238C23F9B683E7E80CBF9BCC7F14C84325F4B4C8C8C518198E40712031F832A0DCA3481EC19CB385D6072A6791CE668701E9E8DC7D0D2BE380F20303861C8FBC2';
wwv_flow_imp.g_varchar2_table(982) := 'CFB07360E72376BC3CB6CB4DC75C34937DF5425747E00C23B0EA00AC4E8B4B76043026CEF73BFFCC7734E4919445550E79598C02C6C290768C0AF81856528C75070C65F3591C012A066EB9E596E00CD05B1EE6B98DFD780E3D36A6E3F0FD728CF2721EEA';
wwv_flow_imp.g_varchar2_table(983) := 'F871CFF499E59E2B3E960DB619F8F1B83995613D0A8C2FEDA981FAE95141BEFFC5175F5C14EEB19A9F6BFC3DDE166832EA62E8DFCF93CA0E8E8DC305E48FF3C5F8C7C24EAE82F1B58FDFEB858AB82CE7D9AEBE677504963302AB0EC0724669F53D6FC811';
wwv_flow_imp.g_varchar2_table(984) := 'C040B8698A097F8E2C5195231AFDB33FFB333DF9E4933F155D5A4CC62904E7F2DD53DE462A8EE49D93B6238086C0EDB7DF1E0C145129F5E8AF14F98FB3D1976B94977A682BE5588C1B7FCECBD87A1CC6CBFB88CA11EE016D4195117D7AD22E385B7CCE1C';
wwv_flow_imp.g_varchar2_table(985) := '07A32A4601EC5CD9A130A7204E2D702DFC9DF4CB7BDEF39ED0E486BC3F1AFF4EE3C4867FD5E82F354B565F7F238FC0AA03F0467EBAABF7F6AA236063E168D4BF1BC247708654001502C8083FF5D453C138517AE692321BEDB80E1A4CCE74000020004944';
wwv_flow_imp.g_varchar2_table(986) := '41547DDC603B92E43D965F2512BDFCF2CB83F10715A08CF0FAEBAF0FA8009A0471C9163711C3E6CB49012CF7D1BF52F4BBDCCFC7EF73BAC2B07C3C0E1873487DB0F881FA1F7EF8E160FC71AEDC93C1CFC1CE9819FE719AC0CE84530A36FE8CAB1D0EC6F1';
wwv_flow_imp.g_varchar2_table(987) := '431FFA903EF2918F0481A6B854CF69977175CB388DC13DADE4189FCD58AE7E667504CEC708AC3A00E7639457CF71418EC0990C8C89663662BC87AE891004C94D538B8EB18915E3DC6D8EBF9BFD3ECE50B713E0E893F318A626FAC7F0830AD09E75F7EEDD';
wwv_flow_imp.g_varchar2_table(988) := 'A123237F474FC0B9EA0B721047B2BD36D28BBA07691AFA2D505A09A9EFB9E79E0BDDE8C8EDE30040BA3479D0C678BCEC3296AC8E9D0A1B6BF333380F630FB702678A5E0D40FE9461F25E5E33AAE0CF8EA312E30EC0B81377A18EFDEA75AD8EC0B98CC0AA';
wwv_flow_imp.g_varchar2_table(989) := '03702EA3B7FAD9D10858CF0D61D74EED2E88D58CEACFA92F0F42302B3D5E6E5DBB78159DB2DCCB1DEF5EEE73DFA9D574AF2DF6E589AE27267D394F6DA899B761B0100EA2541034609CA06603EF14824BD6F83D26AE599ED906C8A883C56C30F8187F1001';
wwv_flow_imp.g_varchar2_table(990) := 'BA0FF23342359416823CA07AB71C87E04CF9FDF19C760C7F8F1B40A30EE3EF79A5F403F78521C6A9E11FED67414C0CF1C3AB706E9F7B770F86F83A5D7269C7CCCF247E0EB1B04F9C66D8B3674F30FC746ABCE1861B16B91D762E6279DB71A5C633DD5338';
wwv_flow_imp.g_varchar2_table(991) := '37FF519E18248B46E245A35E4A6E9DE019B71253DB73B79BA52F7F755732EA2515DA40AD7EAD8EC0CA8CC0AA03B032E378691FA5ADA4B65495161AB6898A24535E49097AF469ABBA68D5A42D9D7057E6CB8A72A38E7A9D8341031D1C101AECA4EA875D94';
wwv_flow_imp.g_varchar2_table(992) := '0DBCEAC46951D56B90DC4D55274DD0A4A7F1CE529BA99D018C040687DC35DDE770048864F97285807FE67B1C758E230DAF340886D05D2247D40A0A409A008700381B4347A48B138033802175A9DB7854CB7962583E86FBB99F98F11EA7187C7D71146C63';
wwv_flow_imp.g_varchar2_table(993) := 'CC6B36BC86DD715E88F421F001E9332E187C1C0074FAF9E27A8D7EC475F7F13559B887F7C7AA7E465BACBDE0123E1C2B18FE77DF7D77D05CB8EBAEBB42AE7FA5BED065A405738E8A5E30BCB9AA36099D0C9136CED24EBAF90CFA87677509483C272A8202';
wwv_flow_imp.g_varchar2_table(994) := '64B6A8FE8C7873AD2A4DC2AB93CA461D16CEEA14AB1F5A1D819F1A8155076075429CFB0804E1F72E5A1A22E79AE6A30E7318FE5A65688393A8DF9CBB0B402454D6958A91C8CC626814B6E124E8DAE38F74FB283B35DDF6BADEF66CACC45235DD69521ADC';
wwv_flow_imp.g_varchar2_table(995) := '2CED00C42C731B2E72D6E4B0490BA04E87781006CE2440E7FA315C18698E6142DBAB0D76CC8CE7FDFE1C9FC1E8F18FCE83B0D977ECD811380338052004F420C018C22DB04382418DA3E7585BC08E41ECB4F8DA6C9463ED031B7EA2FC975E7A69D1D803EF';
wwv_flow_imp.g_varchar2_table(996) := '3FF6D86381C0C7DF4146ACB7CFF95C01E1BFC5C847EC54D8D93042125F3B86DF9AFF5C074D7C382EF5FCA8F9D19111D29FC9992B06DF8F3A20327FD4546AD32CCCF13AA000B89A743264460677F31CBF5AD5C99C9A3653D216A35E09F469A06F32CD148A';
wwv_flow_imp.g_varchar2_table(997) := '70A60475E8A5BCD673BC92D58F5F3A23B0EA005C3ACFFAE777A76E153B6C95E48994272A9352A7DB399D1C9E52D90CD4CB7ACA6B1AC69CEB57AB2A6B83910B8987B296CA567DE55A5B4C6B6D7F6D700242981450FF26A003A1E7FD083EED2272FE34D2DA';
wwv_flow_imp.g_varchar2_table(998) := '7F954B8AA17113FF5C634ED44BA4FB99CF7C2694B191E7E60BA38FB1E6FD182BC3DD3151F04CA774E48F2173D4CBFBFCF7D8206320790FE7E1F81B366C084E008801DF710A7006B8164885A40FF89DF7DBB8C64443AE95881E038FC1E567BE63D831EAC0';
wwv_flow_imp.g_varchar2_table(999) := 'F790F8F84E3A84BFF15E3E67E3CEB5C6863BE63D18761F4F29C469097EF6D8326EDC2FD7CD759A5FC1EB383E187DF2FCA448B8473B322B5521110E0882359034D1AACD1634AB05CDD6430D6A9A1AD50101A07F4255D1BBE15CBF5AA579A9B26AD436898A';
wwv_flow_imp.g_varchar2_table(1000) := 'BCD054D1D774DA17FFA9EC49F3926831B1F4B43DD78B59FDFC253202AB0EC025F2A07F9EB709084AA092952DBD6E35AF593D71F229ED7BE9909E3F79444D3554964A73153BD8397ED138266D55D5B48FA5894DA6BCCD34D116DA3CB551D76CDBAD5D9B77';
wwv_flow_imp.g_varchar2_table(1001) := '6973B255A98A103CD17B1E9FA043021A65FC8277902E1D4AC5397BAE7C9C8C86917CFEF9E7432D3BA981EF7CE73B8BB037C610E3E408F6B532CBCF94C7B71360431B47F296D8E53CB174310E02C6DF0E80C9733171CF869C6BB503608727AEEBC710C739';
wwv_flow_imp.g_varchar2_table(1002) := '748E8523109F9B6B74D92363E6887C29E3EC4E8B462DB80FD016FE0EF241F73EF2FCF7DC734FD0F3C7D1B12AA04B05ED289C8D5CF2CFCC4C82EF469ACF867A6AE1901E3BB257CF9D3CAAF9C1A02B0BAD2AA519E900935DCE7E6E0767B66E437A01E38FA3';
wwv_flow_imp.g_varchar2_table(1003) := 'B36E6A8D766DBA42D75D7EBDB6653BD4AF70AE571180B31FE5D54F8E8FC0AA03B03A27CE790440DC03EADED6AADAD3FAC1C11FEAC72FEED5FED3CF84B6B562B3AC876AA7CF6DA3EC7AD7C13120D55089FD302DF2B04937F39526D5D3959BB6EBDA6D57EB';
wwv_flow_imp.g_varchar2_table(1004) := '9E2DEFD5E6896DCA55844D35D87C5202AA55B434A64F175182571B8098CD1FE7AE6DCC5D7A06F1CDB5ED7FF5577F1510010C695C6EB69401B4A18CF3F6AF643C6328DD4E81BFFB7E6288DD86D89FE3B8678ACAAD8AE7EFB131366FE0951C191B7E47E336';
wwv_flow_imp.g_varchar2_table(1005) := 'CA3ED65213CDA90B13F638376388B1C7F0D360894A0994157D6C73337C7F314970A9F32DF53AF3ED743DAF7D279ED00F9FFF911E7EEE619D2E6754D02D9204405D2921C5A485A50EB5E4EB1CA56D8B302F7BBDA2437DAA5A974F6FD2CDDB6ED6AD9B6FD5';
wwv_flow_imp.g_varchar2_table(1006) := 'D5EB76AB9F64AB1980254773F50DCB1D81550760B923B5FABE571C018C7FA9464D3BAB674E1DD4177EF2253D31F7B44EA4B3EA4FF795D5D260664EF9642F2A0D38BB01251D5BD498F1560D763CEB2A0FEAB2095EC844DAD78689F5FAF0EE7BF5961DB768';
wwv_flow_imp.g_varchar2_table(1007) := '63B14969D3BDA7491BB5AAD46B73A94A97154DD988DA10C711786C446DE867666682F1FF833FF883901BE7CBBD02964A01D888C591BF9D063B05FC6E82DC2B690FC404BFD8A0BFD288C7DC807127C506367684EC00C4257F1CDBA90A9FDF1511769262C7';
wwv_flow_imp.g_varchar2_table(1008) := 'E44CCE507CDC98E1FFC94F7E3268F8E308C48EC99938041EC3B39B5D3FFDA952A50E9D3EA46F3EFE37FAC90B0FEA85C1116545AAA9C9A9E08A566A951599DA9215706ECE6DA84E4913B565AD7EAFA7BAA9353B3FA7A4CAB46BEA4ABD63C7DBF59EEBDEAD';
wwv_flow_imp.g_varchar2_table(1009) := 'CBF28D5D6BE9D5AFD5115881115875005660102FF54304629E2ABD541ED5DFECFFB6BE77E86F75223BA9413AD40479E7365739572A6F7100CEFEAB4300A4AC6A43CF78FAD95798F634519A818D662A87959A61ADDBB6DCA8F7BDF95E5DB3E65A4D34FDAE';
wwv_flow_imp.g_varchar2_table(1010) := 'EF7C0AA3BA54D1164ACA341005970AA7C6C9723688B1D18C235C8C20F5EEFFFA5FFFEB5002C7EF6E56B31C07C0A373A65C79CC981F67F4C7C4B7B87221FEFB998C3BE77BA512401BF5F818F1BDC69A06FED9C71B8FFAC79D061B6AA32A3E97531BFC6E95';
wwv_flow_imp.g_varchar2_table(1011) := 'C67FF80FFFA1FED13FFA47A114721CE2F779CC6788C7E5EC675AF7C993E571FDE0D9EFEA9B8F7C5BCFD52FA89D68D54BD390721A0E4B95700026FA4A06E7CE01A04CB6C986AAE7079A2C269415B98649ADB2AAD51FF475EDF41EBDFF967B75C3FAB7A897';
wwv_flow_imp.g_varchar2_table(1012) := 'AE04E9F05C4767F5F36F8411587500DE084FF1F5BE8746AADB5A078787F5A91FFE990ECE3FA5BA37AFA61C28AD31CB50F23365E952550036F1AF7E43495284D2BEB6A9D404CABF946694F865811BC0A6B9395FA78FDCFE51DDBEE976ADADA7C37B9AAC52';
wwv_flow_imp.g_varchar2_table(1013) := '99542AD4530A02C0BEBD340D6031EA74643B9E9B371260421B12B7BFF33BBF1304706CB06243F74A77376EA0C791001FC31505AFC4A88F8F7F26072066F92F752D18D8D8B8C744448F478C04F81E62C38C718E898C1EA771A7C5E70ACF334D037700F4E0';
wwv_flow_imp.g_varchar2_table(1014) := 'EFFDBDBFA77FFC8FFF7110F6F1D7B8A13F136A72AECBE2D9B967F485273FAF1F1EF88986D38DFA937DA50B8DF2AAE358CCA7A5D44B5530975E71222D6F4E8320D445AD64A1D144D2A76045F544A23A4F55CF965A5F4DE93DD7DFA9F7EFFA80A68B35E77A';
wwv_flow_imp.g_varchar2_table(1015) := '6BAB9F5F1D813002AB0EC0EA4438F711A82130E1003CAD3FBAEFFFD30BC90B4A93817A6D12A2A5A4C95527AD86D9B0832F83C88AF7CC3610F502433F0966FDA7AE07163F7B6B903F197DA814A552ADD2B6A6E02070F91A8E19E0014ADF72B533957EE56D';
wwv_flow_imp.g_varchar2_table(1016) := '1FD7DD5BDEA90DCDDAC052AC737803B50AF595B4DDF9967200CE1451C6CC75E79C63C3F4D0430FE9B77EEBB74279E0B8BEFF38EB3D762A9C938FEBF95F09E68ECF1747DBCED98F47F5E38841187EC6BBA54CF295BDA0589CC786D9D717A743FCB34B19ED';
wwv_flow_imp.g_varchar2_table(1017) := '14990C38CE85F0B9E363712DBC2F2610F2FBDFFFFB7F3F200048270747AE69C23F8E114B31C704CD739FD4D2C1D943FA93FD7FA1079F7A4CCD54574392CDB59ACE2695E6A966351069827E98D2680274F374D11909E3CABF918C0FBF334FC398BF7C855D';
wwv_flow_imp.g_varchar2_table(1018) := '795FAA26C9D56F0BF59AFCFF6FEF4BE0E42AABECCF5BAAAABB93EE2410202C8124248210022A90B028A80C2810141044C05D47C765DC7119F765C6D14144C56D54C08D9981BF0B9B882C828028FB9E7D01420859C8DEB5BCE5FF3BF7D5AD7C29BBBB2AA4';
wwv_flow_imp.g_varchar2_table(1019) := 'D3A9EEBA0FF2ABAEAAB79EEFD5BBE7BBCBB9D8542AA2E847483B03204AD0550E71E494C370F69437A027D733189767FB30048C00D83DB0FD084806731AE1A975F3F1DD077F8935C92A74C63E2A1E63EF24014CC2AB88004F87DF89A4CC87602231F8D88B';
wwv_flow_imp.g_varchar2_table(1020) := '114509FC244421CC49F960881031679E01504E7BE185106D81A498C8EC3D7642A05B2BA639F6DCF370DAB4D938768FA33026D723C72741089868C5F3F16349E41A2C5D3577564D0FC0273EF1092911D464354D70A34780D9F85C58EAC6BF59D74F63A6E5';
wwv_flow_imp.g_varchar2_table(1021) := '754A0A54F0C635AE6A005DA32D259169BA5576BE9E0F8DA9DB4C47CB07558697E7A346D49D99EB715C2543D78DAF86DB252DBA0D5F9588F0DC5D011F962BB2328249936BD6AC9173E37B62E1922197083004400F004B1C877259B46131AE9AF75B2C5CBE';
wwv_flow_imp.g_varchar2_table(1022) := '105E978728ADC04BB3AA13DE372228C524C02040A5581232CAAA9424663E0C108479787E808A54AC5410D24B15979144150481078FE23E698A44F4123A9094520409C92DD52A5321AB4C32E467612587E9FB4DC79BA69E8D3179230043791F8CE4639907';
wwv_flow_imp.g_varchar2_table(1023) := '60248FEE105D5B46002A786ADD027CF7C15F54094080B2C75A7DEAA7711E1F23F15289BFA71167F51EFCBC8F3460495F022FF1117AA128F6056980A8529159568C080CEFF3815BD91C214080381F0F3873971995E761F6B4D978F9EE47C90373A809C005';
wwv_flow_imp.g_varchar2_table(1024) := '175C007614A42173B3E67596AAB35CD6B99F73CE39D22298BA02F7DE7BAF74C6A3A21E85756840B5765F0DB41203BE67091E5F55694FDDF16AB8E9AA26C9201E52BAC67ACD6AC29EF630E0F9B93174251C7A6C37E4A046DE25003A13D77C091E478D3E8D';
wwv_flow_imp.g_varchar2_table(1025) := '365DF7542F64E7C3238E38423404AEBAEA2AB05A82FB619264BD27A29E00D0A342B19FA15C5C02E07779A8F4410052C408E2ACA2220CE97DCAC89868F77881BC32249522D36D10E9E03476421CB1905D2FF011FB11FCD4875F4700C2244050C963FA7E07';
wwv_flow_imp.g_varchar2_table(1026) := 'E34D53CFC298FCE0A91D0E259E76ACD643C00840EB8DC9B03BA3660880B8F2D36CCE4DE32F3354DF43C25994C4A2AA323D740C04392100D92C97A23FD96B14C50803AAB10D9C71DD8A0440DDF46EDC9E069886F2539FFA14DEF086378821E4AC98869F24';
wwv_flow_imp.g_varchar2_table(1027) := '801E04CAEA6AAB5CCAEA6A621CF7A70238FC5B0DB8B628A6015583AC1E00DE58EA39D0EFD433E17A115CD73AB7D15E06BA8E92182512AA95C07323A161BDFEBEFBEE2B4D8DD8CF8052C62400542AA4078024E7C20B2F94E64AACE5572F82120FF5202849';
wwv_flow_imp.g_varchar2_table(1028) := 'A207A0D50980849F789F56C3515988893A02897804A8EE476F80DCFBD94FA0A64399D25D400F4E58310230EC9E7EC3FB848D000CEFF16B89B36F86008852509C099904F910B1289E317720D3526739559C4628269B51E828C8F75E5588851749ED752FE7';
wwv_flow_imp.g_varchar2_table(1029) := '8957C0EB1DB816BA1509800E946BE468C0D934E78B5FFCA27801681CD5E0D2254E37395B1273C64C9541E61430B190A48079065CC7D5CC775DF83C0EBD023AEB778D388FA12102552C7413195DA54037B4A0044089849208763264AF021A7D2A10F29586';
wwv_flow_imp.g_varchar2_table(1030) := '9D8D8DF88FC486C480069DFB2601F8E637BF895B6EB94566F5BC4EF502B81E8C56270024AF0C03A441964D4A89E0B86ACC7DE6274848A02ADC97326195C9B2D9BFEC1EE5F77EC61BE8354852F849601E809678AAB5C7491801688F71DEA157D90C01E0A4';
wwv_flow_imp.g_varchar2_table(1031) := '3D4C7288C248E482CBC50AF2690782288B797A418A725A421925E43B734892145EECC18F9944E8210D5344F93236C79B31CAEB1E3076DF8A04A03EF94F63F334E25FF8C217840068239BBE92F268C04906F8EF81071EC08F7EF4233CFEF8E35B49EFBA19';
wwv_flow_imp.g_varchar2_table(1032) := 'FB5C9FC69D4A7A940256973A0901E3FE19A9F2E573B78D31C305FC8CDBB93371D773A0DB2A89A0F7825DF828CBCB6BA0315792E0261A2A01B8FBEEBB8500DC76DB6D12D7A71744C324BACFE110022001609C3E610E4642EF560E3E3526627AF999191B21';
wwv_flow_imp.g_varchar2_table(1033) := 'A0FA249502D32212BAF69904EB07E2F267196BE2319C15652A9549DE08C00E7D52D9CEEB11300260F7C47623D00C01605C33484294FC92C4FDFD28C4A4715330A173023ABDBC74ED2B2725E4920E24392651C5F2302C241DF250AD8425AC8C5660FEB3F3';
wwv_flow_imp.g_varchar2_table(1034) := '506676F40009FCAD4800D4CDADF17C6DF443A3CD1000C56E381BE67B37294FB3DDDD92B9471E79049FFDEC6771CF3DF7D49A04A9E88E1E470907B767B7BC830F3E58D625E1D030822AEE69AC9FC69F5E037A1B28694C8F83CECCF5265103ADA1037EFED1';
wwv_flow_imp.g_varchar2_table(1035) := '8F7E146F7AD39B6A59FADC2F0948BD36802606B29DF27FFDD77F8960123D055C4802DC6538100049026443A03845DEEBC06EA32760CF9E09E80ABB40BB9E264C34A5F814BD5CAC5A092427C6F343C47E8A75E5B57876DD72ACDEBC1211EF69E68BA4E601';
wwv_flow_imp.g_varchar2_table(1036) := 'D8EE0792EDA069048C00340D95ADD81F02CD10007A0068D08B7E51E2FEDDFE181C7FE0ABF0923D0FC3388F59CD9412AAA0B3D2838A5796995598B22CAA033E0214835E2C5CBF007F7AE8462CAD3CC594C2812BAF5B2C09D0756DD3B82901A091A466C0D9';
wwv_flow_imp.g_varchar2_table(1037) := '679F2DC6D075E3BBA57BAE0166DF0112007624A4D15643CE75341EAF6E7E86083EF0810F48D73CEE9F8656B3ED75E64D62A08D85789E9CA15F74D145F24AD7BD9E5396DC96E55F689221DF73FFE79F7FBEC4FEEB3D1D2402EE36DCEE6F7FFB9BECFFE69B';
wwv_flow_imp.g_varchar2_table(1038) := '6F168F0131D0AE8B7A9DC3850088B2642545B7DF8D43F79E81C3A7BC14BB77ED2112D4CC7791EE934202F2C8B337459C35A72AA28C256B96E09E85F762CE8A39E80D8B92DCCA24584B02B467ED5021600460A8901EC1C769480058B34F095B3F87625042';
wwv_flow_imp.g_varchar2_table(1039) := '392AA33BEAC1A9D36763D69E4762AC374ACA08E3B4825CD29925060689B444F52A59FD7F948F306FED3C5C75F7FFE29960B55414F457BDDE4A1E00B70CD035D0EA0EA7C1FDF4A73F2D1E002ADDF54BB2AA8697C69B21006EC32A031200CEEA6964DD643F';
wwv_flow_imp.g_varchar2_table(1040) := '35BA74EFD3C3A03374D7982B495003CC7D731FDCFF57BFFA5521006E86BE9B38C86D34E190097A6F7FFBDB25DBDFF558E8FE357CA0DE097A002EBEF862F10090002839D2F59560B47A0E807800BC58847947953A71F4BE47E0F8A9AFC0F8C21E40394B5C';
wwv_flow_imp.g_varchar2_table(1041) := '8DC314A538EB4FDDC136D98CBE04405A88B1E0F9C5B865DE6D78F0D947501E5581EFB11CB69107C0CA0047F0A374C82FCD08C090433EF20EB88500A80EC0EAAA0E4090E900480500E3A0BE3CF8CA7105A38BDD38EDA0D7E1A80947A21B5D558D5F160AA4';
wwv_flow_imp.g_varchar2_table(1042) := '287B4580F5CFC8C12B731EE523CE573077DDE3B8E2BE5F6375B259E654AD4400D4F0F1D5D501D03240B70A40E3DDFC8E097E9FF9CC67C440331EAEB36CD7E55F5F414089E10F7FF8C3D26B8049769C3DD7D7E5D390D39DCF9C01BAE8CF3BEF3C71D16BC5';
wwv_flow_imp.g_varchar2_table(1043) := '801A631A71AEC7572EFC9B1E06E62530C4C0FC01D7FB509F67C0FD7CF0831FC4DBDEF63669D2532F66A4C6DD15FEF9FBDFFF5E4B02E43593A4D4974ABA1E008A00BDF7BDEFDDA93A007D95014A0E409820CA05C86F0CF1F289B370E294E3B1477E772100';
wwv_flow_imp.g_varchar2_table(1044) := '54F34B7240E4D10FE021C7DF4099CA8A1E904B3077DD3CFC61C14DB87FD5A3F0BA3D148A3E02E6BCF45906A83A00560638F29EA03BEF8A8C00EC3CEC77FA9133D5BDBE4BEA9A6F6DC2BDF892C1FFF4BA79B8E4812BB0265D8D2E1102CA4AF6426640CB71';
wwv_flow_imp.g_varchar2_table(1045) := 'F208BD18A52041A1DC8533A6BD0647ED3D139D610FE234914EA76C881279AC870EE08B9050595AF9F95E0E73D7CFC7A58FFE0CEB7A37B41C01D0C43A1A2EC6E8697459BEA7C97834804A127476CE1B80DB71364F02C01C80FA7AF8BE6E92071F7C109FFC';
wwv_flow_imp.g_varchar2_table(1046) := 'E427A512809504BA5FAE5B9F33C0FD7FFCE31F9724431AE8FAB042BD47403D0C5FFAD297C4034002A0B3FD7AF1211E8BE4C325004A105CD2A0C69F9FF16F1200E600B00C905E0FAD50E0B9682E83921E128A0F7DE8434230888F4B8C76F40FA8191D0006';
wwv_flow_imp.g_varchar2_table(1047) := 'FBE9B22F25051C3FF1289C32F978EC9ADF0D11135B2912942612EF67180BEC88E987A27911781E16AC9F8F6B96FC010FAD7C1C5D5E4EC25E9A0320D905AE10503923006F9C7626C6E5C7567F4F2F1C81ACE836A3D07D859A5EF89E6DCBE184801180E134';
wwv_flow_imp.g_varchar2_table(1048) := '5A2D7AAED28D2FAD60D9FAF9F81E0940B2069D89870A280494224899B4972249422103A55C8A8E6814CE9C7A128EDA67163A72639090008893202300411A4AD8204649AA007CE4316FE3425CFAE84FF1FCE6F52D450034EEAEB35612001A5D12001A2C9D';
wwv_flow_imp.g_varchar2_table(1049) := '5DBBC97DFAE0E57774D19F7BEEB9620C9B2500DC86C7E98F00A8B1A581A62A21430C7D11807A43CDF70C017CF9CB5F065DF5F504C09DC90F160150AF01C98AE6232801E0F1488E4802540A78A87E064D11000A0125402F3202307BF2F1D825BF3B98FE97';
wwv_flow_imp.g_varchar2_table(1050) := '294D334C40F2EBC38B99009B8347373F80056BE7E1F74BAFC743CF3D81EE34874A98085120A1E88F00BC699A7900866AFCDBE1384600DA6194FBB946D7DDFC8261100D7EEA9857F03409C0FD24000C01789907002942E9D9C73AE7903A7E2885293A23C7';
wwv_flow_imp.g_varchar2_table(1051) := '03901B23ED7D43A985F6500922047188C0F710FB652907A490CADC0D0B8400AC2BB59607C0C591868BC9791FF9C84744CD8FC6CD55EE7367C3DC4E09C0B67A00461201500F807A0F34D780F724731C9820C990C7CE9402EE4F0990357FA110800E1C3F71';
wwv_flow_imp.g_varchar2_table(1052) := '164E250128EC5E4B51250566A8400840A21E804CC762E1BAF9F8FDE2EBF0D0738F6114F288C2CC533010013867EA1B30363FF61F7A666CEBEFB7AF52D36DDD87AD3FFC11300230FCC7F0855F81089049279E3E17696C22D2A5031F2295997A454200DF7D';
wwv_flow_imp.g_varchar2_table(1053) := 'E00A3C5F250011BBFF310420E69DC69D99D191108042D48533A79D948500480098C45625005148795586003C24ECB8463D8034AC7A007E86E78BEB5ACA03E0BA51350780064B3D00F55AFBEA723502B0750840C324C4532B2588E73BDFF94EBCFFFDEF6F';
wwv_flow_imp.g_varchar2_table(1054) := '490F80C7E6528987DEB403C74D9C895326BF12BBE4C60B2916D14BDED37E8294D9FDEC031050D72210CFD0428600165F87079F7B0CA3D33CCAE201081B1080B330363F664BC3A117F8EB671F025B0C012300ED7C0F540D7B9F46DE6BBE4D4EE2652180A7';
wwv_flow_imp.g_varchar2_table(1055) := 'D6CDC3F71EF8359E670820F6B03501605D7458250009F2550FC0D10E01C8655D7A100574AB66ED60E9596008C0230158BF10973EF6533C5F6CAD108012001A74CEF89F78E209F100304B7FF4E8D132CB774BF58C00F49D03401CB5EF0067FE0C5F509088';
wwv_flow_imp.g_varchar2_table(1056) := '65864C04D42A0937617047FE7C9B0901640400D89C1670DC3EF400640420F6FC4CBD32CD1A06B11DB617179106CC01083302B06E1EAE5972BD1080511202A00760600220BD000A631A92F286B898FD6F08513BAC6004A01D46B9BF10406D765F4D07AC96';
wwv_flow_imp.g_varchar2_table(1057) := '9A717549B6EA374570CB0E651D49D6A30760FE561E003704C02324494EC201C55C8A42250B011CBDCF4CC901A08F205FAD14A0280ACBA1A4E39ACF1C001F7E92C31C26013EC610C046F128B4521580BAAD69ECA9D0C7C43EC6E855594FE3DC1602E83F09';
wwv_flow_imp.g_varchar2_table(1058) := '503D004A96D4D0BFF9CD6F9610007B0968A2E050FC6C9B21004C020C9314BD691EC7ED7314664F2101D80D110900F5FE532A05F247C2ECFE221296022A01583B0F572FA107E0718C461E95A0190FC01B30B630567266B667D1F6DBDBB30FDB76F8236004';
wwv_flow_imp.g_varchar2_table(1059) := '60F88FE10BBE0271CBD7FCFB5B445E6487DBE001E0BC858A68CBD62F9024C0CC0300946B498095CC659FE611784C02841080D3A79D941180D0210060F540C52100C52C6B3A2D60CE868C00ACEFDDD8522100B73E9E2D7DAFBBEE3A5C72C925D2DD8F35FA';
wwv_flow_imp.g_varchar2_table(1060) := '4CD4D304412300FD13005541E4AB2A09B22C71D6AC5942A85EF4A217D554125FF04DBF0D1B364D0000F426791C377116664F7A2576298C4785552CD20780E97C34D6F47E9541D50086B318DE6212E0D54BAFC3C32B49003A506EB20A20CB01D83E02906D';
wwv_flow_imp.g_varchar2_table(1061) := 'CE44C5EC5FFDD24C32EA364069ABB6280246005A746086E2B4A445AF3393908880C6FB0790DAFD878705CB009318CFAC9F87EF3DF83F589BB20A80D17E3EFE580550A9363F29C8DFC530453EEAC4E9534F024300855C0F2A69221E0096FE958500F021C9';
wwv_flow_imp.g_varchar2_table(1062) := 'F07F494AA342AF03F3362E1002B076636B25016A1D3B5FEFBCF34E7CEF7BDF934C7ACE58D9E846457FEAF5EE2D0760EB1C002A1352BF40C587F89ED8D1F57FD6596749C7C4A953A74A52E5502CCD120036FDD99C1470DCDE47E2B4C9AFC4D8DCAE283399';
wwv_flow_imp.g_varchar2_table(1063) := '4F3C009178003CE48078335276044C0AC87B1EE6AF7F02572FBD010FAF7A02DD5E072AA4075529E0FEAA00CE9A7A7A9603D02831A71140125663A962DF24C00840230047C6F7460046C63836771522919759F9244DB1A9B209C5A8578C3E675D24031A05';
wwv_flow_imp.g_varchar2_table(1064) := 'C82605D53C8006F142DFCB8BE15EBE613E7EF2E86FB00EEB302AF52507202B032401C83C009E10800461A903A74C79258E9C7038F261374A49841CCF81BE04360CAA70C60424610921FF4B3B316FD302FC6ACE2F51A6BCAC5E4A1F57AE4A80A74D9B8D63';
wwv_flow_imp.g_varchar2_table(1065) := '773F0A63F23D924B4009D620CDC9F5C6BECCC5066C2AD41CA8D95A34FE54B6FBCE77BE83FBEEBB4FCAE718BFE6ECDFF51008FA5590F9CA38B70A01B56B19A05601D04B42A3AFAA869A0F40CC8823B50C2839CCF6C243B1F4450068A08334EBFE27D9FD14';
wwv_flow_imp.g_varchar2_table(1066) := 'FD478ADE3887A3F73A1C27EF7B2CBA8371285527E87E5AC9420014B58A7A91E4980CD88982E763F1A679F8C3B29BF1D89A79E8F60A522E28DE816A1960CC7D53102B091094733868DF17E3A4BD5E8DEE5CF7767B003AC32EE4833C7C3F9016DBB5DF42ED';
wwv_flow_imp.g_varchar2_table(1067) := 'B73ED02F6C28D0B7630C050246008602E59D700CB61C9506242A991BFB4031050A1EA2B01773D7CEC303AB1EC5B3BDABB25EE4518C38618BDEEA93AB9603D0BF58905E160D2B0D7C392EE1F9DE75A8C415D9E7D66482D63C6B81CA59071F64B393A00000';
wwv_flow_imp.g_varchar2_table(1068) := '20004944415438DD1DDDE8CA75C2A7388A781CD84C3D530354A112BA3AA5CC2E014A7119EB4A6BE5B5D1E389422BB3A7CDC631BB1F8D9EDC68A45E19AC56F093BC90A0C88F39476B4800DC999090A42491592A175780E78F7FFC237EFCE31FCBCC9F4BBD';
wwv_flow_imp.g_varchar2_table(1069) := 'BCAE8600D4B54D8240EF0049C257BEF2152975D36E808D6E170A010DC7324062495CB41DF08D37DE28DA042441F58A89C449550A89378901550FE9095012E08E47BD0471230C9BF97EC98645F8DD82DF60EECAA588721150AAA0C3EF40E40728B2FEDF8B';
wwv_flow_imp.g_varchar2_table(1070) := '5160A96AC4A9BE8F51F92EF4144621F01D0F05EFDDEAC1AA9C5A4A02F9E32845456C286F446FA5C86219EA5D6D95D7B2D576A987422E8FF19DBB206075CD762D29BAD3023ABBC660C25E5330639783B05FBC3B50A442A17015A431D5380378EEB56CD731';
wwv_flow_imp.g_varchar2_table(1071) := '6DE35644C008402B8ECA209C931ADF94223C6982C0CF238D536C4A7BF1C4CAC7F1F7A7EFC1E28D4B514449FA90671E00A90BCC62824200F8C8A2016E106FA4AF33F432111BF1266C210DB518233F8FE35ACC5162E1F40A54E38FFA9AB23B2AAF5F0948B5';
wwv_flow_imp.g_varchar2_table(1072) := '010DCF4DF6CFEFE8731DC02B21E42005664F3B152FDFE318F100A47EE60160322117261A06C8120D075A9400A8B1D18E76FC9C4689497ED75E7B2D2EBFFC72316C34E8DA40C7250A6AFCE4D811DBBF66AE57AEFBAD6F7D0B279D7452D3A33E5C09002F90';
wwv_flow_imp.g_varchar2_table(1073) := 'B3FA79F3E6E1B2CB2EC32F7EF10B0993A8E6BF2B98A4B912C49B38F23B25016C6CC4DE03F404E8F89044B8BD109A0673801517AF5F88FF37EF4ACC5DFD24E23CBD56113A832E444188CD69195E1AA18389AA74A76B2C5D7E3A5B14F6D4DBA3877163EEF2';
wwv_flow_imp.g_varchar2_table(1074) := '1DFFE7EF4F7F0B59EB8B3E8980FC36E9B66F5EA6B3CFABE3E6A3BD1C5589D1397A57BC64F7E998B5CB0C4CEA998C38C9C8718E953852C6BBBD64633046C2F6B1A3103002B0A390DDD9FBA567920F1369594AABEAA39CC698BB66216E99FB67CC5D3B1715';
wwv_flow_imp.g_varchar2_table(1075) := 'AF8430C86623EE6C5D1F52D943788BCBBABF4B92390EF5CEEB9208B6EC27CB2DA8791706C4262BFFAB1100AE5B35FE35C19D205359EBFF7CB287E8ECA9B3F18A3D8EC6D8024300590B612A0C4A7321AF82C00B1B12001E433BD5A94157795FBAFD6FBAE9';
wwv_flow_imp.g_varchar2_table(1076) := '265C7AE9A5A29BCFCF19BFE6F9F33B26B0F16F6DBFCBD9AF66B8F395EBBCF6B5AFC505175C80030E38A0962BD0E8D6198E0480D7A4EA7E2449D75F7F3DBEF8C52F4A922471D2CE8419F7F3C423A0248BB8711D62462C192A39F9E493451F60DAB469B584';
wwv_flow_imp.g_varchar2_table(1077) := '41ADB4506F42231C1B7DBF68DD425C39EF2ACC5DB314E88010800EBF80380C514C2320AA204F622BC1AA2D863FBB6533C2DA1F017013EF6AEB34539B4F37C1202C79A4D850298A5AE7C4CEBD3073F71938E1E057219F74497E603EF010883877766DB68C';
wwv_flow_imp.g_varchar2_table(1078) := '4C048C008CCC716577DD8C0088BD2305286355691D6E597827EE58721736E5D723CFD85F5CF74071B3FFE52B128446B3E46AE8A0BADA96B51D432D4E81465317C655FB4F4AD207A53740274079F8F2D28310A74E3D152FDF7D16C6E6BBC5E01310B61816';
wwv_flow_imp.g_varchar2_table(1079) := '32E271169EC5721B2DF552BE6A686EB9E51649F863F31F75579300F0EF62B128464C0D99BAA87536CBEF0F3EF860910C3EE69863C41320683375BCC1321C0980DB1488C66FE9D2A51232B9E28A2B8418A85AA25B0140AC489294581116E2B971E3460997';
wwv_flow_imp.g_varchar2_table(1080) := '9C7EFAE94202F6DD77DF1A62DCB736466A8463A3EF17AD5F84ABE6FD2623009D805F2A2397068883501AFC0431F3565229ED93C571F72B09E8EB1835AF977E5965B359BF8C068BDCB3DBBF784905153F46250072E50093F27BE3F52F3D1553BAA722EF75';
wwv_flow_imp.g_varchar2_table(1081) := '22A0F816CFAB1952B2FDA7637BD849081801D849C0EFF0C34699DD8E83AA1A197AB174E393B8EAA1EB3177FD3C04A318030F257EE99A408D58AA7B929E0346EC075AB83D1DFAB2D45CF7F208DCE215A87907DCC44225085B3407A23A2D023DAE3B93E233';
wwv_flow_imp.g_varchar2_table(1082) := '6920B32DCAEB7E0EA748086026C6E6BAA5B490A718A6B96C5B9F2E125E576302A0023FDC4CE3D17FF9CB5FC4F873E6CF073A67A82A65CBF72409FA9EC6CD3580FC6ECF3DF714819BD7BFFEF5B544C1668C3FCF61B812001D435E27FF9E3F7FBE244D3217';
wwv_flow_imp.g_varchar2_table(1083) := '404324DA5F801831BCA224C02D9F240624066C0EC470007502F6D9671F597F30730116AF5F8C2BE7FD0E73562F82378A04A0023F6202698024C8BAFBE593546AFEB3BBBFAA9AA909B44266E54791DDC64210EA7E134EB26D23029005D61ADFAF4D3D5BE2';
wwv_flow_imp.g_varchar2_table(1084) := '187EC10753624ABD65F45446E184A9C7E3B8C9AFC0187F5CD6869BCF8EC1E11B4D9D92AD34F4081801187ACC87E6888928E88A23C04F58A9DF8BA5EB17E017F7FD162BBCE7904414D3099186F92DD9FEEABA741E5299F11FF8A12313055967CB8C3FB3F7';
wwv_flow_imp.g_varchar2_table(1085) := '5BBB405D239ECD82B2FDAA3B9FDB481E429D3BB51EB02D5BF60DA5A81BA70166BFE834BC7CCF9918231E8038CB851035423EDC9A2300EAC655C342C3C36E76DFF8C63724E14F6BFC394BA57B9AEBD3106912A0700DDF97CFB82D67FEAC6767773B1A2FCD';
wwv_flow_imp.g_varchar2_table(1086) := '1770C32E8D6E90E14800784D6EB63F71221ECB962DC3D7BEF635DC71C71DB59C0A7E479CF8AA21150DC36865808604F8CA56C72401F40428D1D2704D232C07FA7EC9BA25B86ACEEFF0E8CAF9F07B7CE46256A7A4A8B00220607B2AE9EACBCEBF8E81CFEE';
wwv_flow_imp.g_varchar2_table(1087) := '6ABDBFB368969B139025CCAAB740F35D1C9AD0EF29B9BF8FEDB92E21B249C878182A410551126374DA8D97EE3A03A74F9F8D71DE2E926B4002601180ED45BAB5B73702D0DAE3F3C2CF2EA5365F26C613C4D4D92F62C9FAB9F8E97D576143C74660F34669';
wwv_flow_imp.g_varchar2_table(1088) := '599A14B2B2B8BEC440B283ABB9EDCF3D9925FF31BE5F35E735BED068AE521F1F95A3312761A0A54128411300F3491EB30F380DB3261C819EC26829D9E27FCC01C89AB34574283724376A7068C46994D822F7C20B2FAC95FA695C3FE33B5932A526A369C6';
wwv_flow_imp.g_varchar2_table(1089) := 'BF7A03F81D8D1413D8DEFAD6B78ADB9BF1701A315DB46FC040100C4702A0C97AFAAA3910C4804D93D81EF8B6DB6EAB954EF2FA898D7A57882571D576C17CAFA103EEF35DEF7A97740D9C3871E2A085009EDEF0347E3FF71ADCFBF4A3F07A8002DBFAC640';
wwv_flow_imp.g_varchar2_table(1090) := '5112E580429A1180C87193F7794F4BC26B5F21B0817359FABC07E458FCD744B860809B28971498EA8FC82BA1E233C5A11B87F41C88F30E3D13DD1E7B0D5467FF8D23522FFC19655BEE74048C00ECF421D8412790462823EBC89767F95D54C6C2F58FE187';
wwv_flow_imp.g_varchar2_table(1091) := '0F5E897585CDE8893DC4D45A4FD9B8B46AEAB7CAACCB1E4E5B27F66DCBB956B7570AE1CCF8B7F41E70E44CC47B9ACD8C065EAAE225FDAC24B61D1E76EF188F93A79E8C19E30E4157D889C44F107B89680A788CDB526CC8634540A3FC86AC631F0D16DBE3';
wwv_flow_imp.g_varchar2_table(1092) := '7EFBDBDF16B73F63D0FC8CA4C035FA6E473B1A2FCEFC99E0C6643726FABDE31DEF90993F0D1FBF53E2E5CE8E1BA13C1C098096FA692220AF5F8D25BF5BB468112EBEF862B09C9278694E84265C12672500F41C705BDD87920AE603D01B3069D2A4461036';
wwv_flow_imp.g_varchar2_table(1093) := 'F5FDAAD24ADCF2E4ADB875CE5F51EE28A140ADFEC4472FCB6619F6493CD1AE8894B46E154B1BE83EEEA7DEAF8151EF9B44347529FFB0123D64410AF8618A22FB155472387CFC6178CB61AFC7687F2C2A9420083D34E2E32FECE8B655AB206004A0554662';
wwv_flow_imp.g_varchar2_table(1094) := 'B0CF23ADA0C40C762F4481ED742B652CAACCC7250F5E89A72ACF6197344447CA2E7E5BC47FFE7156A1338D064639F379669E803EAEA3365F19C0B86BE953508BA7FE6352958653B35868FF0C80C22607EE3E15274D3A09530A5390430E71404D761200F6';
wwv_flow_imp.g_varchar2_table(1095) := '636F9E00F02834504CF863D2DADFFEF63731449ACCE7CED8355CC0CF7486CAD9FD860D1B70E081078ADB9F31FFB163C7D662DEDCFFB6187FAE3F1C09801A69C593EF898D66FA1333364FFAC94F7E821B6EB84134123477824489DE00F5AC68BE80861118';
wwv_flow_imp.g_varchar2_table(1096) := '865119E137BEF18DE25D190CB1A08DD880FB56DF8B6BEFBF196BB106393F11EF512FCB193D1F85D49724C04AB52ECF75FBD7EECFBACA18E59BF29BD0DF8B5382534F47F57751BBDBFB6FDEB94D4F1086077D265F069E3C27E2288763F63E12671D78227A';
wwv_flow_imp.g_varchar2_table(1097) := 'D08D8A9F1391204B01D8265887DDCA460086DD903577C2D27C87E57F5213CF3AEA0A9EDCBC08173D7C394AC555E20A0F249B3941314EA4A149B7E7238A4B883B73287376108552290F7F601D80AC4820861F4528E77C742639944B092AACE1A6440067DF';
wwv_flow_imp.g_varchar2_table(1098) := '791F490508D912B5D34385EED4622C33F238F4C43DDF4111A0748B3BBCAF2BE575C57E8288FA063E108494560512FA652B1EA870B6DBE8F138F7803330B17B223A820E08A9A87A4EB7A43C567505D8B6D52951AB37E87CA85F73CD35629854E44793CDB4';
wwv_flow_imp.g_varchar2_table(1099) := 'BC8FDB6BBDBA9BC5AE258093274F1617F5EB5EF73A11B3A90FB76CA96E681434C910198E04C01D4B254A9AF4A85E13CEECE7CC99839FFFFCE7F8CD6F7E239E007653E4E7F4B690306802A1265A720C34E782A481E4EA8C33CEC05BDEF216910DE6B1B88E';
wwv_flow_imp.g_varchar2_table(1100) := '5619F03C9AC59BE478457115EE5EF437DCFFCCBD78AAF72994F365F85D39E4FC3CBCB22F912412CE6CE97BFC327E9C62B317810503924CC8E4418A080521F25E013E7F2F5E0585A0005428E045921181FF4955431C208D0378396A670CFC0C883C864758';
wwv_flow_imp.g_varchar2_table(1101) := 'C74F85CE1C136B447C2B89CB32A3A75097E4C1D0C823409A444883002FDB6506DE7CF059E80A7AE4F7227929839574D8DC63CBD61A62048C000C31E04375B86C0642F73E67F821CA718CA7372EC4858F5C0AF4AECE12003D1FB197CA0C20977A18E305A8';
wwv_flow_imp.g_varchar2_table(1102) := '449B512C0428C71E46A55D48D3181B928DFD3E08781C4A9576C6A128A3ADCF553026D7450D5F14C3007E5401E2122A39363ACD232CF5A2948B514A63745642747A9D92445589CA28240936325E31C0C20752679447C22E6B2C07E493525CB1398CEB1A87';
wwv_flow_imp.g_varchar2_table(1103) := '897BEC872913A6E0D83147A233E8C87AB253EFBCEE41A6F17A8DE1F3BD268EF16F8D39FFFEF7BFC7AF7EF52BDC7FFFFD6288B4CC4F4BCDD420F13B92001A29CE56697034E1EFDDEF7EB7D4ADEBCCBFFF7C8BE6EE8EE14E0006BA4A62C66E8A575E79257E';
wwv_flow_imp.g_varchar2_table(1104) := 'F7BBDF09969A44C9BFDD4A0B8E93EA2A68158656079C7AEAA935B120F50EF03B8E71B3D5163CCF525CC193EB9EC423CF3D8C279E9F8B67373F8BDEA8C8F039829852D74031C75F503F3E29E6D2253E4647056CF26204A187B01CA340AD889C874D7E8AD0';
wwv_flow_imp.g_varchar2_table(1105) := 'CF21AC2428876521AC64DF01C9811FA19CF2BE6207C11C82348F4D091B61F5FF1B2137200117954B0A28A509A23846980F9124144BF21055181C0492A020BD079094815C80C3C64CC7DB0F39171D618FE87AD4727A9ABB2D6DAD6188801180613868CD9C';
wwv_flow_imp.g_varchar2_table(1106) := '72F6388AA43CAF6F02C0182C64165D0E7C0409D0051F51544429C7F7054CEAD91B7B8EDA4DFA980DB4A45E20646253690D1E5C3D0F2135CCBD0025DF4718A5F0E20895D047875740582EA118C4F0FC3C2675ED85BDBAF704823CA24A059D14E891ECFC81';
wwv_flow_imp.g_varchar2_table(1107) := '290033986516C9262B124EF551F00BD865D4AE98B0CB9E18DFBD1BC6A63DF210947959DD944967804A02F8AA0A7FDAB887C6E2D65B6FC50F7EF083DACC5F5DCDEA8EA63151E3C2E3A847809F33E6CF192867FEB367CFAE19FFBECEA799F174D719C90480';
wwv_flow_imp.g_varchar2_table(1108) := '78720C180EA052207502B421903656D25A7F256C1C2B7EC6F79A5CB8DB6EBBD5C482180E20A1D33044D35A015595BEDEA417CF97D7E0D9E20A3CBBFE59ACDDBC5EF6472129D6CAB36155A3C58F7D94421F811720574E90F33DAC4E3660E186E5585F5A0F';
wwv_flow_imp.g_varchar2_table(1109) := '3F2EA3145490E38CBD928A5721F12354D28A4865E790474FC7384CEDDE0785203F60AE0C0947E2A7581F6DC4B275CBB172E32A78794FBC02A11748088C7D06A2206704A0D1C08DF0EF8D008CD0016E440012C6C2C9007C0FE5D0471AA5D28D2F6643A05C';
wwv_flow_imp.g_varchar2_table(1110) := '0E3DFE18CCDCF750CCDCE3308CF777ED77D6C1F06725F4D01BB21DF012FCCFC3D7604371B5840D4A9E878E58E6FD2805144E4991A7025EE06154611C8E9DF852CC98301D85C25891436503A17020FB5F0D885698BD4462930906C2F3E85D0891F30AC823';
wwv_flow_imp.g_varchar2_table(1111) := '0F8F2226A1B460EB73715DC06EFC5D13D4F8D95D77DD858B2EBA088F3CF2484DD5CF55A3D3508166FA6B873A95A49D30618288D4B0831DDDFE3A533502D0FF0FAE3E4FE0B1C71EC30F7FF843FCE94F7F12FC34E98F7FABC7869F9100A8F2A2EE83E1037A';
wwv_flow_imp.g_varchar2_table(1112) := '5CD86381BD03F6DA6BAFDAF64D13004A5A47D5A03B5DE77E84DEB88812C36448E4DE2339CED58B693997C8723A56A0F4FA4531B8D4DE082BF45C2558B8E129FCE5C97BB060F502A4692FE280CD8002F276E4A8841824A8507218010A5E07F6D96522CE9D';
wwv_flow_imp.g_varchar2_table(1113) := 'FC7AEC5218BB5517CF7A444B8850F62B786AD353B867E9BD7862C51CC4B96A1F8B94BFC71CCA20E1F032654CF3008C502BD0F8B28C0034C66858AED18800A4ECF8C1C63FBE874A182089531136A1C049CAD9743A16271D703466ED7D38BAD206ED47D3AC';
wwv_flow_imp.g_varchar2_table(1114) := 'EBF9D2DE25B8E46F97615DB4127E2E912A848E72885C1AA23788912645A94860696277380E274F3B1EB3F63E025DB95D90B0D949D679A06189939FA5FA67F243D50E863EDD01A27C0421335E57F3FD8C5D0959BAA069FC29F2C3AC7FBAFC39B3D43A74B7';
wwv_flow_imp.g_varchar2_table(1115) := '17805BD2A695003448E3C78F97843F96A53186AD24435DCF1602E89F9829A69AE0F7E4934F8A5810130339069A38C8BFDD66417CAF611925781C57922F26069E7BEEB92216A4F2CC2ED9E8F7074E0210479263021A66AA346AE5A8C86C5789E88039B2E2';
wwv_flow_imp.g_varchar2_table(1116) := '6C67190E62D08DCF6E805905EABC750B70DDC29BF1E8730F0361113E67E4ACCF8FB29C121200E6BA70F30EAF13D3F67E11CE9FF246EC921F376018C08F7CA46182059B16E29685B7E281671E442C09360C5B04B2AF4ADA8B222FC708C0B07CBE0FD6491B';
wwv_flow_imp.g_varchar2_table(1117) := '01182C245B6C3FCD100076FFE32C3966AC3EF524612FF63D44690E638AA370CAB4633073F2E1C885A3FB35CA920350E1AC26C092CA525C74F74FB13958835C8EB317205F0AA57D6A29CF843D4AA902BD8987AEA41BA74D7D358EDAEB707484E3A40949CE';
wwv_flow_imp.g_varchar2_table(1118) := '4B51F6B34E7FFD2D7CE606E500412ECCE2FF120796168292EC579BF53791BEAC4640A57E693028F2F31FFFF11F78E8A18744E48746453BD3D170EB2C94334E7EA7C965EA7A66091A8D3F5BD76A295BBDC13702D0FFF82A19E31A3A3E940D66C7C4DB6FBF';
wwv_flow_imp.g_varchar2_table(1119) := '5D4880B658662886EBF03D315537BF120025041C236A2F9008B8B2C18D7201B2163DCCA3A1DB9C04B3FA33A886CE4842132F46451437FA5F9870974F432474BF5720FFC876E76D988F6B17FE098FAD79144147055E14C263D74EAA73063E529F478F400E';
wwv_flow_imp.g_varchar2_table(1120) := 'D09176E0E0C907E3CCC9A7614C9E84BCFF3C80FCC602D28287F99B49006EC1032B1E443A9A5A1D2950F6914F0A48BD12A2C093F6C3E60168B187F7109E8E118021047B280FD59800844828C9CA471C2572992697C6220A12FB058C298EC6A9535F816327';
wwv_flow_imp.g_varchar2_table(1121) := 'CF446730B007C06383921478B2FC14BEF5B79F6263BA0AEC834EA99D42C4386988523E451AF7CA04AA1430697034CED8FF041CB3F711E8CCD303E02394936E5071206A81991640B66471815A98BF2A25D084A4FE566D68E932BEF3CE3BA5CE9FA57E9AB0';
wwv_flow_imp.g_varchar2_table(1122) := 'A7B3771D3B9710680C9A9F9110D0B8B0048D19E85AE3AF7906DCDE3C0003FF02D4E0D3C8D3A3A221179202EA04D02B439D00E6027066CF5932C78DC6DFFD5BAB05B48F000902F7C17C0C123325018D08402CE69719F374F4679D233DBD3DD503C016C78D';
wwv_flow_imp.g_varchar2_table(1123) := 'A42BC459C5B87BE6DE67E580974F3167FD5C5CBDE0463CB2F26104850879AF033EB5BBE3AC6A8565AB928C1779C84579CCD87F06CE997C3AC6E459463A402260EC3307170B372DC6CD0B6FC1FDCF3C80B88BDD3E33D9C23061895F0571E01B0118CA8772';
wwv_flow_imp.g_varchar2_table(1124) := '0B1ECB08400B0ECA609C523304200E7312CB4CA2041DB4A05119BD7C9A15BA302E1A8BD35E741C8EDAE74814D2EE8167E53115F04A58505E8C4BEEBB02256F1DBC4A0969E04BBCB392A428177C74D23D9FC42875E4D01175E18C29AFC4D10C01E477414C';
wwv_flow_imp.g_varchar2_table(1125) := 'D7281F5074E5375868DCF930AB5434161C4839603641CB1E8CF468E8D2DF8C5B63C934364CF8FBFEF7BF2F2D7D478D1A259B32918F8645EBD1DDFA73CD4C67C880FF98F047E3AF33FF7A17B3CE4AC51634AAE36A70FD23390950289DD3494F8D344901DB';
wwv_flow_imp.g_varchar2_table(1126) := '08538B819D043936EA09D050805BEEA72101ED25C0B1E6FA1A9A616966A32553EECF82529C3C33D784B3F9AAB0AF84D0923881E7672DA6FB5B24D7068924DB72FB90763D483067FD02DCB0F8563CB6E21199917BBE0F3F09A46C57742BBD143E137499D3';
wwv_flow_imp.g_varchar2_table(1127) := '52F271E8FE87E2EC4967626CBE67409A4C6ECC76D7F3D72DC42DF3FF8C079F7908716716EE63622C130AD3840A80E60168740F8CF4EF8D008CD0116E860094821095349207D218F60488CBD89056907474A1A7D28393271F8B63F79D8951E198860A7D51';
wwv_flow_imp.g_varchar2_table(1128) := '5AC2BCCD0BF083FBAF42295E8BA47733C27C3ED34A4782A890C7E85288282EA3DC594021EEC0E9538EC3517BBD0C9D85716013208F5AFDD27CA8C1C278AC23A4A22283D5562B5962609548F45501E02601D2F87356C93A7F1A7F1A1CEDE0E712084D1054';
wwv_flow_imp.g_varchar2_table(1129) := '911F55F95BBB76ADB4A47DCF7BDE23DDE9481EB492C05505740DFF8E22006A3875FFAA43F0894F7C42DCDFBBEFBE7BBF35F02E61A1DEC197BFFC65C981E0F5A8D743FB152811D2C63D1FFCE007C5B072FF7ACD8A5D53B1F6EACADA6F81F86933206E4F82';
wwv_flow_imp.g_varchar2_table(1130) := 'A5DA0B4C0CBCFCF2CB71DD75D7C9E724679A20A825833A7E3A96F404703D0D1F303193E7DB502C28B3DB59ACBF16F3177F53D6FC2A0BAB4B8D7FA3254D7D31B85C93E24174033CBE76016E5AF417CC7B6E2E52F4220AA2AAB72144CC7C1C2A57E60289DB';
wwv_flow_imp.g_varchar2_table(1131) := '633370D8FE3370F6547A00F87BECDF0340EE5B42198BD62FC69D0BFE8A47963F864AA122FBE3A952CD9042E111BB815A08A0D1D08DE8EF8D008CD0E16D860054D89F3E491120879E7C1E51B4111BFC4D287A01F688F7C069FBFF138E9AC87AFAEE868979';
wwv_flow_imp.g_varchar2_table(1132) := '143199B369012EBBFB0AAC4B57C34F286AC272250F45C6E9C5EDCF386A05A5BC8742D485D3A79E80A3F73A121DF9B188A94C9032B3BAB107A0D69EB88E298861AFE5FEB1EC891A08144EC95AC472D13233CE0CF9DDB5D75E8BCB2EBB4CEAFCD5ED4C83C1';
wwv_flow_imp.g_varchar2_table(1133) := '45CBFEF8B9FE531540BA9E695028EF4BD7F229A79C22F2C06A845DC11A97700CC6EDC6CA840F7DE843E21677750C78BE5C54454F65882FB8E0029C75D659929CE89E9F7B2E3A63A6F15402C0BE07DCA7EE471BED68C2A3963B7EFAD39F96FDBB0443099A';
wwv_flow_imp.g_varchar2_table(1134) := '8B43A36BD7B172C916B79192BB209071E4799204FCFAD7BFC66F7FFB5B09BD90A4900C704CD4FDAFFB5072C0644EAE4B6C582278DA69A749A8868D99EA8FA1D729F78CDAF6DABDE61A7B370C35F0D5A5298D7F59F2006880593E3877DD1C5CBBF8463CB6';
wwv_flow_imp.g_varchar2_table(1135) := '728EA87256C0FA7F1F3EF370E28A6874E47285AC71CFE61487ED7F08CE9E72267A48001AC80697BC1216AE5F883B16DE8147963F82723E92FDD1BBE0D1CB000B0134BA1FDBE17B23002374941B13801C98D74402E0A57974866C67BB01C54211BD29B047';
wwv_flow_imp.g_varchar2_table(1136) := 'BC274E9B7C2266EE73040A14F6E947C65712F2535FBAEDCDDDBC10BFFCEBAFB1325909CFAB48E213D39D239F75C95ED69408118AB914854A27CE98F61A1CBDF74C74E4C630D549BAAB35D2E66F76B8D4E8BA59E5EE8C9C46E5E69B6F16911F1A3ACE1E35';
wwv_flow_imp.g_varchar2_table(1137) := '998CDBE82C5EFFD6EC711A1AFECD5726FC51E4870A7FCC1918AA85AEF07FFFF77FC74D37DD54132F5203A9C64B67CE24255FFFFAD771E289274A52A24B64DCD9BADBF488FBFFEE77BF2BD8ECBAEBAE5BC9F56AB9A33638A29164239F134E38013D3D3D35';
wwv_flow_imp.g_varchar2_table(1138) := '0F03B1E03A83D195AF1E579280871F7E583C01575F7D758DD811034DFC53B2A75E05BEE777AAD4C8B2409236866C4802341CA4E59DBA5DA33C8166C79CDE292F2921F129BC93E9072C583717BF5B721D1E5AF904BAD3BC641B0414E8A3D265CC1C1A8A53';
wwv_flow_imp.g_varchar2_table(1139) := 'E5850078BDC0A1FB4FC7D953DF80B1F981CB0019462807152C5CBF00B72FBC0D0F2D7F18954224BF778FF17F2A0A1A016876E846F47A460046E8F0362600A1C4E819E14CA20079A6E7A5BD4846A5D2ED6CD778379C32E9559839F17074E4A808D8BF9B93';
wwv_flow_imp.g_varchar2_table(1140) := 'B5CBD40F6008E08A7BAFC28AF839C4490921E3FADCAF6434936DB804A00B674C3BA94600E801C822A90D03004D8D98D6DDAB3BDC7DC0F36FCEA299EDCF99BF36AAD11DD3C0BBED7DB5090D31D00435C6FC3983A4F1675FFAA15C56AD5A2565713CFF75EB';
wwv_flow_imp.g_varchar2_table(1141) := 'D6D55A127306CC73E48C9DE74F52F38A57BC029FFDEC6771F0C107D70CA56B0CFBEA65C07D322CC2300067CCEA4AA75154D95DF637E0B166CE9C89CF7FFEF338E8A083C4D8BBB3789D7D0F2636BA7F5E2B3D01940DA61787EFE909D0F151CF838A033167';
wwv_flow_imp.g_varchar2_table(1142) := '800488F703F7416F003D160C8D50AF8163A8F781861034D43118E7DF3F01B81E0FAF7C1CA349003C11E685C7CE95ECD4277F87120208CA1E0E997230DE38F50C8C6B400082288F389762C18605B875C19FF1C0F2871077F11746512E3FF3285808603086';
wwv_flow_imp.g_varchar2_table(1143) := '75D8EFC308C0B01FC2BE2FA05902C0C4A0240DE0539C242E029D3E36C729764DC7E3E469AFC251FB1C8E2E6F74D6A9AF9F85517B9642CDDDB800573D703596C72BE4BDE44E2799E67E2A817ACAA0A80760C712009DC1E9035FA84535F96ECD9A35A2F077';
wwv_flow_imp.g_varchar2_table(1144) := 'E9A59762FDFAF53273D52C720D03F09CB53C90EE632DF32339E0EC914683C683DF6D4B9C7B306E379ECBB265CBA47B1E8D9F6AE56B36BC921F36207AEF7BDF8BE38F3FBED6BD90C71F28C741317AEAA9A7F0A31FFD089442A6B15752A14490C72009FAC0';
wwv_flow_imp.g_varchar2_table(1145) := '073E20DE0566E5BBAE73F59CB8A46030AE9DFB75C776C99225F8E637BF29AD84794E4A82781DAE36C3C68D1BB7F280D0D8F31F89D1E73EF7391C7DF4D1828B92A3EDCDD3A8BFD6E60800352D595590482E6C565CE3C18B2890E563FAA417E34D93CFC2B8';
wwv_flow_imp.g_varchar2_table(1146) := 'DCB801CB00BD24449203166C5C849BE6DF8AFB973D806414A97E0A3F4AD1811C122F42C5B71C80C1B82787F33E8C000CE7D11BE0DC1B13809C241A796CA613E6E05522F8E50A9B9E635325C1F8703C4E3CF01598B5D711E84E077AE0B0042F41C9DF8439';
wwv_flow_imp.g_varchar2_table(1147) := 'EB16E0F70F5C8FA7CB2B108789C88EB2C910D8BB9D1E84809A80434300084DBDD7421BC8D0683086CE19A4D6F66B429B42AA79031A4BA6E1E7C2F8318D3F85659418B86EE71D7D3BA90B9FC68EF5F12C8DA376C1F3CF3F5F73B9F3BC4852D8148762449C';
wwv_flow_imp.g_varchar2_table(1148) := '19BB8446DDF83C570D03682F0335827CBF60C102090350898F5E015EA766DABFF8C52F16A95DEE5F67D66E18C1CD35A8F7C66C2F465AEFAF2A80DA4A983A01242B1A0AD07C0F9E9F5E9F0A3A31DCA36D853FF2918FC8986A55819B44B9BDE7AADB374700';
wwv_flow_imp.g_varchar2_table(1149) := '98BC5A4D86AD7ACDF81BA5EF3E9F0638609FFD71DE94F3312E3F6E408F1C2B649850B868D352FC79C15FF0C0330F23ED4A102715F895041D7E4E1A85190118ACD11DBEFB3102307CC76EC0336F86004414D0093D7879128018619C22C8E5B0294AD0B51E';
wwv_flow_imp.g_varchar2_table(1150) := 'EBA3000020004944415413F660D6BE8760C68419E80EB338707F4BE0A728A79B3177CD7CFC65EE5D585E5A8588D2BF7E20B5FD013396F9BF4FC1DEA12500FA30770DE7E2C58BF1BEF7BD4F92E8F47B5E9F1A0E0D1768829D1287FDF6DB4FDCFE94967567';
wwv_flow_imp.g_varchar2_table(1151) := 'FE833D5B6C744BAA61E3F97266CB1C06AA17D22B40A3C859ED6B5EF31AA977D79930AF4F1BE1B8AE6D4DB073898F62C5EBE7FE39BB66CC7DF9F2E5B21ADDFDAF7EF5AB258BBE2F6F423D1E6E125FA36B6BE67BD70BC1193FBD1324435FFBDAD770C71D77';
wwv_flow_imp.g_varchar2_table(1152) := '48E883E3432C78FE6EDE82E2A0CD9A788D2CDFFCE8473F2A44A65E4D70B0C6B619025066874C86C0A20421E5B9990CC81C1D69D61560DFDDF7C16953B22A80AC38B18F857CBB5442948BB1ACF719DCBBF401CC5FB9106927450D4B482B110A5E0E29058C';
wwv_flow_imp.g_varchar2_table(1153) := 'CC03D0CCED36A2D73102304287B7310160BC369336A5B67E1AC5E84C7C84F902362589240AEDDBB52B7A0ADD2873163FC0C276A6053F8F0DD15A2CDBB00C9BBC12123633A1480A7B8E7356030FF1108600EA4F578D268D3B93DC3EFCE10F63FEFCF9B5EC';
wwv_flow_imp.g_varchar2_table(1154) := '72358A9A28A68693068E3345D68DD35070C64BE3A2DFF3385A1E3754B7929BA4C8636A3C5E8FAF09813468AE8157C3D957A25C5F865CDDEDC48C498F8A91E64410531A52DD9F9B6FC1737113EA062B994E8599DCF1E1B1F839091D7B07B83A01FC9CE7E9';
wwv_flow_imp.g_varchar2_table(1155) := '966FEAB56ABB619605B29241F51F5C32345863DA1401A0338EADAB2B6C34C44E9D6C45C0CA186AF603E3BABAB14B610F046C18340021EF4E472108436C4C37E299F5CBB1BAF83CC2CE00715C91B882B4F8A6C8911180C11ADE61BB1F2300C376E8063EF1';
wwv_flow_imp.g_varchar2_table(1156) := '46042091087D2804A0E84748A2085D890F2FC86113A385718C511420F1A9DC37C0B118A7ACF848A9F99F8F01BF022F1FC20B73A844DC4F22314D1143F186CE03E066FFBB79007401534887333EC6B935BBDF1505E2B6FC9C869F4682B174BA88CF3CF3CC';
wwv_flow_imp.g_varchar2_table(1157) := '5A1CD9EDFC3758C6AD995B91E7A9C2371A735763A8E7519F7DAF8659731ADC3A79359EFC4CF7A7DFBB5502AE2745BD256E2C5ECF5D49834B009AB9AE66D7D1FDBBE7C0B1509D00B6126662E035D75C23C48824481B34695842B7251E24301CD7CF7CE633';
wwv_flow_imp.g_varchar2_table(1158) := 'B52A86C1AE00E0B5354B00F24188B45411131D9100B0343060026D8C5C951488C6D5009C3C2CE740754E2FA008175B0345C815F2E24DA0B010CB68BD34426C04A0D9DB6EC4AE670460840E6DDF0460112E7CE4674071354800BC3810BDF1522E1619E08E';
wwv_flow_imp.g_varchar2_table(1159) := '9846C04391E223390FF9724932F7638F59C3FD2D29223F14519130292388CBF029E61314104997346AF4533185B1CD804581D532C02D498085DC18D10118CC3240B7FCCB4D1CE343FFBEFBEE93073E73015CE3AD82379AED4EE34F63CA443A96FBB1C39F';
wwv_flow_imp.g_varchar2_table(1160) := '6B4CDC99E260B98A1BDD8E7A2D7ADE3A2B57E3A6DB6B16BC1A712541BC1ED738EBE7F5097C3A6BE6F7AE0B5F7322D453524F7EEA932EB59CB2D17535FBBD9EBFE2A02A8DEE71581E79C9259788A433133C398EDAB3413D081A02E0EB79E79D271E215602';
wwv_flow_imp.g_varchar2_table(1161) := '288E83EDD5E997002CBD0E0F3DF78454019482041D611E6931EB2DC09F0FA53372B940BC02295B1A3351B18192241B7A55A2B284DF481AA88011F8218A95047E8EF17F0F7E529692440A0179490569CEC76163A6E3ED879C8B8EB027932096B3189CAA9C';
wwv_flow_imp.g_varchar2_table(1162) := '66C7D7D61B5A048C000C2DDE437AB472CC1EE840210C508E7BB170C35CFCE4A12BB1BEF83C0A698E39C1A8B0E4889AE39C6950AC84FFD81C888D42925808405A55DEEB970250E18CED77E3181EB711F6C17C66260866AA69DC2FC9459C2B210A237447A3';
wwv_flow_imp.g_varchar2_table(1163) := '71FA8B5E8BA3261C8951410F22115967BFF28165559B05500D9FBABD9510D00050E8E6939FFCA4100079C4F11CABFFD4C07116ACC686EE61D5F7D7D9A39E87EE7FA80840FDF5ABA743669955B7B09BD7E0C6FB751D9734B8337BC5408DA02B9EE41A443D';
wwv_flow_imp.g_varchar2_table(1164) := '8E1E5B8D7E5F18B85E8466C76EA0F55C62A724458CA5436CA8E8C89E0E2C65A43E835BE6A909891C5F55186458E7E31FFFB89005BD1F06E35CB7DA076F6FC6DD93A8264CB5E0F985B871E1CD5206E8E71399A1E7021273D6EB675E03950366231FCA0EC3';
wwv_flow_imp.g_varchar2_table(1165) := 'CFD5C488FB3A4791C3A6D440C2264614F9F245FD8FBF42C927A01682B437AA200E5394031103C728746046D78B71DE6167A327DC056C632CB6DFECFFA0DF0AADB4432300AD341A837A2E094A34DE6CC9CB1941BC1173363C8E5F3F78355654D6A1830D47';
wwv_flow_imp.g_varchar2_table(1166) := 'FC149520D333758D876B40F85D33CF80AA386ABF5740AD003F2DA0DC514431DE8C31E52E9C7EF06C1C356116467BDDD2552D0A62E4AB7E80ED8562A010003BFD7DEC631F035BCD72D158B53BFB730D2A8D03E3FF6CEDAB9FEF2C83BFBDB88CE4ED75CCEF';
wwv_flow_imp.g_varchar2_table(1167) := 'B9E71E2100D44AA09011499F7A2C741DBE678887A19EB3CF3E5B3C429A0330E863CBDF178D3AFBFC506A9BFE2E1F58B46609FE3CF7363CB4EA119446954433834980EC63217CB84AE85842CB9240E947D0CCAF31D327AE0E75E60B948F9CC12F2439C441';
wwv_flow_imp.g_varchar2_table(1168) := '8C0D6151C8F7788CC161DD07E18C435E87B1E1AEE27E60C3AD66843947F23D35D2AFCD08C0881D61327BCEE8598B0FE9FF3D7FE313F8C5FDBFC173785E52F2A8BD2FD3037D42FC03167C72357EE434A1842E7DCEF36907D2AE141B7A376054B113671EFA';
wwv_flow_imp.g_varchar2_table(1169) := '7ACCDAFB288C4A4723625E730EC889C372FB97460480469D99E3CD10006AE9D303600460FBC76547EEA13F02A01E00F5EED0C0BB04807A0E6E12E08E200089C4DFB3E0BD949C7A514600E6FF19F7AEBC1795EE0A0A6987586A2FC97266A4E700858B4800';
wwv_flow_imp.g_varchar2_table(1170) := 'A42D415622D80C211F0867FE5E3B2BA32404B03928A21C973136EDC6CC0987E1E4E9AFC5D8601C40B960C169478E98ED7B6723600460678FC00E3A7E2ACD783DA451202EC538AC60C9A605B8FCEFFF8B65DE72A41D1172151F4125FBA1EBE2C692B3CF9B';
wwv_flow_imp.g_varchar2_table(1171) := '78DC902734D02697E90B4BED3A43148B258C8BC7E275879D86C327BC4CFA0230D9C92F502868701623008383E370DA4BAB1200E9295435DC94CDE64FAA92C658BAFE49DCBEF876DCF9CC1D88C654D059EA66144C5AFDD27D2FB9349CF993360877202910';
wwv_flow_imp.g_varchar2_table(1172) := '27FF760F8B5FCEC1CFE710E753947A8BE828E671F4A423F14FD35F855DC25DB3DC0009DFD9329211300230424757090013FDF85049C218CB4BCFE2FFEEBD0A8F6F9A83D2E85E044927FC522173F5552552F99011635E752336F30090C7D1006549FCDAF3';
wwv_flow_imp.g_varchar2_table(1173) := '53045E398B8196034CEADA17274F3F09D3779D8E42549092412FDF4427C026C7CB084093408DA0D55A95001062FAE3A272849C9F933E0034E82B4AAB71C793B7E3A685376273D766849571593B6C86DF2527457E58B59A7FF94C5A666FFFA0C551116C00';
wwv_flow_imp.g_varchar2_table(1174) := '9A2FE491F6A6E8A974E395071C8723F73B123D410FD228152FC95056B86CFF55D91EB615012300DB8AD830599F71C6CC95C81ABE2CDEBF3EDE883B17DD813B97DE892793A791F3F2E844D6414E8CB492801D708D69CE43259F60E3DA4D181B8CC54B26CC';
wwv_flow_imp.g_varchar2_table(1175) := 'C02BA71E8BC9A3F74318875B829403951C6EC3791901D806B046C8AAAD4C00986817536CCB0FB338BE076C4C37E3FE150FE28F8F5F8FE5A565E8F04765DE38FECFA45ACEFE93B8267D2CE5992C0D18040250EA2AA19CF6C22F015D952E4C1E3D0527CD78';
wwv_flow_imp.g_varchar2_table(1176) := '2DA6F64C43270A4039013B137961335380117203B5E165180118A1832E19008C3B32FB5E0445A8C497E2B94DCFE0F6B97FC63D2B1E44AFBF11F99C9FC9F4EA0CDE71FB493840A200033C74AA35C9038500A4A639014A651FF9A48003F63C10474F3E0207';
wwv_flow_imp.g_varchar2_table(1177) := '8DDB1F63FD1E789CF5E843CD08C008BD2377FC65B5320148990528A69FD5321916719060D9E667F0D7C577E2F1671FC506AC46258DE4F7CA1E1DCCCF210188935862F161102261E9AEFC28B76F29E622948A45745472D86FD444BC649FC371D49497A3C7';
wwv_flow_imp.g_varchar2_table(1178) := 'EB415EDA05CBBC21FB67CB8845C008C0081D5AC90060CC5D728E1394E021E78548A30AE6AF78020FAC7A020F6D78022B4A2B45AC870F1949406238A01AF993A4293E87B6F3214072D099E4B117C663EF711371C8BE87E2C0F1D3302ED78D406734BE9F1D';
wwv_flow_imp.g_varchar2_table(1179) := '6BFB9F6D32A2E60118A137F60097D5B20480E49A658AD4F7E7AC3E6601AE2FBFB5224A7866E3323CF6F463B86DD5DD585FDA80525491DF2CBD76F41CA42400F010B2349565BA8330B45D6927C6F85D98D8BD0766EC79105E3C613A762DEC019F39439C38';
wwv_flow_imp.g_varchar2_table(1180) := '5007407A130FD20F7210CED97631F8081801187C4C5B628F32DFA0142F75C0D8AC0701F269885C05E88D37E399680D966C5E82359B57A252891045157102F84E3E80D65667D9CB2F7CE103ABC30FB057C72ED87BCC7E183F6A4F8CF246239078679A753E';
wwv_flow_imp.g_varchar2_table(1181) := '13278037644980DB52066855002F7CEC8772CB7A02401D00B7CDAF5B05A012CF14021A8A3240C434E854CA2439652C9F9E006A65A488820AD6F43E8F459B1663EDC6B5D8B079134A49854D34240C20BA0DACE91725C07EBB006C1BD45E2776E91A87FDBA';
wwv_flow_imp.g_varchar2_table(1182) := 'F7C03EA3F6C098DC587895203B3FF1FA55E04912E220B9E4B6EDEC6CED2142C008C010013DD487D1590215FE2826421D7E8603023203EAFF7B6CE0D38B282A2189333723972C3E294F1DC95C96CF06615A4E17662197C3A8A09BAD4D3237284F920F1C31';
wwv_flow_imp.g_varchar2_table(1183) := 'FE9966C1603E6EEAD500791D2A054C21203605E2D257A293564350F79EDDE25806C896B7EA5D505CFA92C31DEAB1B6E3654652058EA800A842402400BAB80480F7021502D901F09C73CEC105175C20E3EB0A2B0D2AAE1265CB0880FCCA3893977EBFECC8';
wwv_flow_imp.g_varchar2_table(1184) := '9911EC041594CA25142BA5ECF7C875E5B7C7F2BF34EB3F3128F37F4823A07CBE806EBF13ECD129A506D567038F2B39441AB21854206C67AD84801180561A0D3B974145C035CEFA370940BD12607F0440E5655D2120559273D5F086B21DF0A002340C77E6';
wwv_flow_imp.g_varchar2_table(1185) := '0A56B963E00AFCB03DB2128071E3C6C955AA374B091FC74C3B09D20340424825C01D46008621D676CA231F012300237F8CDBFA0ADD5C00FE4D02E02A01AA284C3D485C573B085225EE1DEF7887A8C669231E7EAF0461303C246D3D48DB70F16E2F02F5C6';
wwv_flow_imp.g_varchar2_table(1186) := 'B8FD0E3816ECF570F1C517E30F7FF8832801D2D0EB3A4AD6E8D9D1864EEC06A8CD80F4545CA2B10DA767AB1A02C30A012300C36AB8EC649B45400DBFCEFCF9AA067DCE9C39D20D902100751BF747001823660EC0F9E79F5FEB0428AED86A8B593D8E9180';
wwv_flow_imp.g_varchar2_table(1187) := '664766FBD7D3B1AC276F3A260C017CEB5BDFC28D37DE280D9C4800745D25767C259963B7402A013204E02A3D2AD12051B0C51018A908180118A923DBE6D7A55DFB54DB40DBFD1296471E7904EF7FFFFBF1CC33CF6C257652EF5E56C24002400F000D84F6';
wwv_flow_imp.g_varchar2_table(1188) := '972731E0A232B3DA4FA0CD61DFE197EF8E11C747C783F8D35873BC190220016012E01E7BEC219AFFFC4EF304782F683E88B603FEDCE73E27BD002C9CB3C387D00ED04208180168A1C1B053193C04D450F0E1CF87BA6BB01902F8D4A73E85458B16D53C00';
wwv_flow_imp.g_varchar2_table(1189) := '6A1CB4EB9DCE1469384800DEFCE637CB6C51D7A3E1E7DFDCAF19FFC11BB7467BD2D08B7A6EFA6A47CC10C0F7BEF73D2100246DF400701CD5F06BA747DE1B0C119C75D65992E8C984C0FA0E88A684D76844ECFBE18C801180E13C7A76EEFD22A0B33EAEA0';
wwv_flow_imp.g_varchar2_table(1190) := '469D7F6FDEBC1977DD7517BEF0852F8807800B1FF26AD8DDF71A3E78EF7BDF2B1E80DD76DBAD16F7E7775C340FC00CC5D0DD8CEE58E9D8BA099F7FFEF39FF19DEF7C07EC0AC8BC0D8DFFD35BC0F5D55BC07B84FB9A3D7BB63403DA6BAFBD6A5E1DFEA1A4';
wwv_flow_imp.g_varchar2_table(1191) := '71E8AECC8E64080C2D02460086166F3BDA102140C3ACEE793EC8F9B09F376F1E181F66BFF85B6FBD55FAC1ABCBB79E00F03435D67CF0C107E3B8E38EC3AC59B3C0BF396BA4215183626EE3211AD43A8127ADC850F23577EE5C195B123C1AFF65CB960901';
wwv_flow_imp.g_varchar2_table(1192) := 'E0F86BCC5F43424AFAB88FC99327E395AF7C255EFAD297E288238EC0EEBBEF2E17C46DCCBB3374636B471A7A048C000C3DE676C4214040E3F77CE03FFDF4D3621468F4E9FEDFB061037A7B7B6B8961FAB0D7B081EB0656234057F2A449933073E64C9C70';
wwv_flow_imp.g_varchar2_table(1193) := 'C20938FCF0C3B7CA2C1F824BB243548DB27A5FD488D39343837FCB2DB74805C0EAD5AB859CF19F867F4806B96828C0D588204128140AE20138FAE8A3850CCC98310363C78E35CC0D81118D801180113DBC23FFE2FA2AD75203C1571AFCDFFFFEF7621C96';
wwv_flow_imp.g_varchar2_table(1194) := '2E5D2A869FB17C751DD77B00DC1C00CD03D09A711A118601E80938F3CC33850C5068462B00EADB2A5B65C0B6DD7FF54998DCBA2F0CDDF0CBFCF9F3F1DBDFFE1637DD7413162E5C289E1E75F16B063FC7CF25003AAE6E6868E3C68D72AC3163C68827E094';
wwv_flow_imp.g_varchar2_table(1195) := '534EC1AB5FFD6AECB9E79E35A2E7124577DB6DBB4A5BDB10681D048C00B4CE58D899BC0004D418B886829FF1817FFFFDF7E3B2CB2E13E3C0D8BF5BE6A5B3433DA4FB407715E3682C6848684474BF3432071C7080E4059C78E289E23256D772BDC13212D0';
wwv_flow_imp.g_varchar2_table(1196) := 'FCA0BAB3F27A6F8C965BEA2B13FB58CDF1BFFFFBBFB8E69A6BB066CD1A21769CCDD78FDF4067A0049063CA70010922FF9E366D9A940792E8B19450BD422E79D0CF6C8C9B1F635BB3B5103002D05AE36167F302107033C339FBA37178F0C107A514ECCE3B';
wwv_flow_imp.g_varchar2_table(1197) := 'EF9419214BBC18EF55D73033BE354CA06E7E372EEC6699ABD1D1FA7FBE72C6B8CF3EFBE05FFEE55F64B6C87233D763604981DB3E90F504C04DF0D3F1D031A3F1FFD9CF7E26DE1D1A6ED79093B0F11FC7BAD6CFC2A7AE7D5572B79AC0A9EFB92DD7D35C01';
wwv_flow_imp.g_varchar2_table(1198) := '8688B8ED7EFBED87D34F3F1D4C02A5A747750634FF43AB40B6FD4A6D0B43A035103002D01AE36067B18D08B8337F3E90F900D787FDC30F3F5C33FE7C48D340D023C06D3A3A3A6A75E1AA15A065617C4F63C0F5B99D5B3FAEE4809F913CF058EBD7AF174F';
wwv_flow_imp.g_varchar2_table(1199) := 'C0BBDFFD6EC9246772A026A6D9AC701B07B41ADF77B752AF4ABDD602A59C69FC39F3E778704C69F069B8B5948F069CE3AA497C4A12D53BC0CFD5F02BB1E33ABA2F2688D21BC010C05BDFFA56BCFDED6FAFED5BB753EFD0B65FA96D6108B4060246005A63';
wwv_flow_imp.g_varchar2_table(1200) := '1CEC2CB61181FA0C7C75192F5FBE1C175D7491B88669C86918E8115022A06E7C3EF4D55DECEAC4EB69F0214F2351BF3E3FD7F001F741A3C384C07FFDD77F95700017F518A8B1B12A81E606D775F3730B2500EA9EE77B66F6FFE4273FC115575C21C69FC9';
wwv_flow_imp.g_varchar2_table(1201) := '7B34D41C2B17772DFD5322A6F7879202AD0AE071383EFCA765812401DC8EEF39D69CFD7FFDEB5FC7CB5FFE72399EAEDFDC55D95A8640EB226004A075C7C6CE6C0004DC8431751DAF5DBB5612C24800383BE76C70D3A64DB217C687B91EDFEB2C5167FCAA';
wwv_flow_imp.g_varchar2_table(1202) := '20E7EE53C3054A14B82E3FA371E0DF340EEC1E4772C1CFE901603860FAF4E9356D80BEDCCF36A8CD21A063C1B5698495C8FDCFFFFC8FCCFE972C5922611DE676E858E82C9F6356AFEDE0920B779C75F6AF0983DC979238F512F01834FEFFF66FFF86830E';
wwv_flow_imp.g_varchar2_table(1203) := '3A48CE45EF390BF534379EB6566B226004A035C7C5CE6A00047476C707B91B77675C9892AE2C09E34C8D337C557F5343C2F724001A36D019627DD998CE3ED5CDCBEF35C35C63C59A1848034157F1BBDEF52E8917EBACD2C2012FFC36D6B1558CF9FAC413';
wwv_flow_imp.g_varchar2_table(1204) := '4FE09BDFFCA694737221BE6AB83926CCCBE0D87251054837794FCF46C901DFD3C86B7888FB708FE7E67C90E87DEC631FC379E79D87F1E3C7D734204C27E0858FB16DB9F3113002B0F3C7C0CE601B1150F53DB71EFCF9E79F97D9FF57BFFAD59AEB581FF0';
wwv_flow_imp.g_varchar2_table(1205) := 'AE31E1677C986BA9188D37DF335CC0D93DF7CDCFF8F0677B58D7986835003FE3B1D5354DA3413734EBC73FFBD9CF4A06B91A0FD7D8585E40E3817667FE4AF4B815F1E5ECFFBFFFFBBFA59C93865EF1A72780C69FEB2B21E038AA9093BB4F9DDD732CB82E';
wwv_flow_imp.g_varchar2_table(1206) := '8D3EFFE63DC0B1722583DDE4400DF5B06B20C582745C3551B1F195D91A8640EB216004A0F5C6C4CEA80102EACED5D93D1FC69CFD6B03181A047DF8BB33401A7D8DEDAA11676880023014F961AC97C95F4F3DF59418198614DC6A00F50AB809813420341A';
wwv_flow_imp.g_varchar2_table(1207) := '0C2D306BFC3DEF790FDEF296B76C7505EA2E3602D0F8D676933B5D02F0ECB3CF8A7787B37F3729508D3E3FE358686E08B1E6672475F4CE707C59E3CFF165C920C5A1982FC2ED790FA8178063A9B900EAE971C78D0480A58114097243098DAFCCD630045A';
wwv_flow_imp.g_varchar2_table(1208) := '0F012300AD372676464D20E0BAFEF98066391867FFAB56ADAAB986D578ABBB9FC6810F75CEF6F990677D37257EA9FE4603419D001A82152B56888010DBC9D2EDCCED491EE819E03E685434195089048F454372D24927E12B5FF98AE4072861E03A66FC1B';
wwv_flow_imp.g_varchar2_table(1209) := '0FAA7A6A744DBED70A8DBBEFBE1B34BE0B162C90F08E1A7EAE43EF808675DCD24E8E2FC796499A9470A6EB9E0480F70809E3CD37DF0C561468B2A6DE1F7D91471203E6959C73CE39D249F2452F7A911180C6436A6BB4380246005A7C80ECF4FE11817AE3';
wwv_flow_imp.g_varchar2_table(1210) := 'CF07FAE5975F8EEF7FFFFB62987586E87A08D4F5ABC69833B877BEF39D329B630D7FFD4263C0A6323FF8C10FC458D4570A68C2997A15B40CF1652F7B19BEF4A52F4932A01B06B064B1C67772BD0E80120092B54B2EB944C69832BF5AA6A99E2075C32B81';
wwv_flow_imp.g_varchar2_table(1211) := 'E0F8539CE975AF7B9D94EF51AF41899A9B20A85D03D91F82C4C0ADF3771338792F68B501CB3E3FFFF9CF0B7154A2A06187C657686B1802AD85801180D61A0F3B9B2611D0873D1FE89C153236FCCB5FFE5266E12AEAE212013EAC39FBE7677C9853C58F2D';
wwv_flow_imp.g_varchar2_table(1212) := '7EE9FED778B19B39AE0D846EB8E10621011416D212301E9B5E006D26A4B354BE67FC9FAD865FF5AA57D56AD09524347969B65AB594523D389CE1D3E85E7DF5D532DB57D77CBD0B9E634C634DEFCB19679C213375120135E05C9FE3EF5676502DF26B5FFB';
wwv_flow_imp.g_varchar2_table(1213) := '1A1E7DF451192FDE031C472E6E3740EE9B7902F42AB09324C985924AF3EED82D3B5C113002305C47CECEBB56F7CDAC7FB67FFDC31FFE8071E3C6C9035F8DB2D6F2EBCC9F4680469AF9029CCDE9C35B6BF5DDCA026ECBE42F669E6BDDB95616681881FBD5';
wwv_flow_imp.g_varchar2_table(1214) := '1920F300E84DF8C0073E80F3CF3FBF26216CB3FF1776B3AAA787097ECCAD6018808B8EA97A0094B86962264BF5588DF18637BC41C89D8A05B959FD3AC367F2283D0B24909A1CEA96F8691508BFE37DC571672882D5005A71F0C2AECEB63204763E024600';
wwv_flow_imp.g_varchar2_table(1215) := '76FE18D8196C23026E19201FEAB7DF7E7B4DF98F6A7C2AFCA3AE612DD5E2E79CC5BFFEF5AF979A6E2685B92D65DD6C7115FBE1B634FE3FFCE10FC5D3A07A02AA21A0C481C7628E00430B743B53184833CCF5F26CA6D878A0D5A8EBEC9AEF9F7BEE3949AC';
wwv_flow_imp.g_varchar2_table(1216) := '64BB5FF5A6B863E58600382E9C9D930090E069CDBE9B0FA267C1B1A747E1B1C71EC305175C20DA025C788F2871E0F6AA24C9EF785F7CF8C31F167540DE6BEEF936BE3A5BC310682D048C00B4D678D8D934818012007D6566F885175E88BFFFFDEF92C9AF';
wwv_flow_imp.g_varchar2_table(1217) := 'AD7EF9F0761FD09CA1B342E07DEF7B9FCC28B55AA0AF99A41A15BEFEE94F7F120F0363C52C0D5457B3DB24484BC9E87E6668E1E31FFFB8181FD7E81B01187870DDB1D26A007EF6E4934F8AC60209989239C5D20D0368D91E8D33090093FED45BE026F869';
wwv_flow_imp.g_varchar2_table(1218) := '1E00CF868461F1E2C5F8C8473E2261007E4702A0624FAA0DA0F703BD09BC77DEF6B6B74975818D69133F585BA565113002D0B2436327D61F026A2854218EC97A24007FFDEB5F6BA57C1ACFD56C7D75273376CF87F7873EF42199CD73D164419593D5FD6A';
wwv_flow_imp.g_varchar2_table(1219) := '52D8F5D75F8FEF7EF7BB9231AE95029C156AF6B812111A071204CE56394B54AD013312DB762F6B82A5E2B668D1227CF0831F948A0C95E1D50A0B1D031E418D3DC32F5465A481D6715703CEF5DC6DF99EFB67BEC09C397384B4E97E743D151CD2F322B920';
wwv_flow_imp.g_varchar2_table(1220) := 'C93002B06DE36A6BB71E0246005A6F4CEC8C9A44400DF55D77DD856F7FFBDB52D6C51C004DFED3F8ADDB0B9E0F770AF630539F334457A8C78D25BB8A70975E7A297EFCE31F8B0E3D09044309F41EA80CB0CE28993C46B7309B03F11F8F551F0668F2D2DA';
wwv_flow_imp.g_varchar2_table(1221) := '7A3535EA6A809F79E619216C4CD8E3A29E1DCDD770BD00BC2728CB4C2F0F4BFFEA433CF5C48163C61000F7CFE3B81E0697106AFE008F4545407A7978AF19B96BEB5B75D85FBC1180613F84ED79013AB3E3439A3373CED0A905C087B21B22D0199F1A741A';
wwv_flow_imp.g_varchar2_table(1222) := '84FDF7DF5F340358B2E7CAFA2A926A58B80D0568D85BE037BFF94DADF98C2690A9E88C1A0DE600B0AA80B355F69277DBD4B6E728BDB0ABAECFC560E88633742601BA635B1FD7D74CFD430E3904FFFCCFFF2CB91E3AF3576F8E96EE29696309E9AF7EF52B';
wwv_flow_imp.g_varchar2_table(1223) := 'A9F4D00A81FAFC025E85EBEDF9F297BF2C4980F5219E1776B5B69521B0F3103002B0F3B0B723BF4004D440EBC39DB1613EC059064817BCCEF25C92C043E98C9D717A3EC0398BDB7BEFBD657D752DAB9B97AF74E95F77DD75D27C865A00EAD2E7ABAB35AF';
wwv_flow_imp.g_varchar2_table(1224) := 'E482B90753A74E9532C0134E38A15605608962CD0FB43BB6FC9B248BC6F7139FF884E46268A63E3FE7F73A263C023FA31127F13AF5D4532511931A005AFEA909813AD69CFD530B800A838F3FFEB8940FBA5E20F51EA8C220DF73DFFFF99FFF89D34F3FDD';
wwv_flow_imp.g_varchar2_table(1225) := '84809A1F565BB345113002D0A20363A7D53F02F5B3402AB4D1F8330F80C65C1FF8340EFCA78D7E342F800F72BAF099CC4543B1DB6EBBC9369AFD4D434E03CFA4420AD030394C3D093AFB6728400D94EB5D98356B96D495EFBBEFBE62B8D40B60E3D91C02';
wwv_flow_imp.g_varchar2_table(1226) := '3AD3D6D24935F43FFFF9CF85E4B12280E577FC5C73375418C8CDC5607887AA8C679D7596947D721DDE1B7A3F707CA9EDC07DFEE52F7FA9DD374A2AF59E2169D00E902C47A477819A04C71E7BAC1180E686D4D66A61048C00B4F0E0D8A90D8C001FD25CF8';
wwv_flow_imp.g_varchar2_table(1227) := '90FEE31FFF2812BCF406A8D1E5435EB3BAD5D5EF1A0ECEF828D8C37F8C179308D0F8731FCCF8A7F00C35E3DDB6C19A20C699A8EACFAB47804985743B930070D1F8BF79009ABB93DD58BE7A02D4FD4E23CDBC0DCED449DE7456AE5E1ECDF7D0F1E5989004';
wwv_flow_imp.g_varchar2_table(1228) := '500698AA7D2F7DE94B253CC3EF99F5CFD251568FCC9F3F5FB41E945468B580E61928C9508D01269032BF837D1F5454AAB9ABB3B50C81D643C00840EB8D899D519308B82E7E1A0696EAB123200DBB2AF9B9B15F35E42408DADE97B33B26EEB17C50BB01D2';
wwv_flow_imp.g_varchar2_table(1229) := 'A3B072E54A310C24109AF1CFEDB5839CAA076A1C98DB30B7806E67C6FF554C46C311962CD678505DE9668DD56B7E0513F4187B677F068EBB266372AFAEE893E2CDB15203CDBC108EAFEA3E504E98E3ABE5A24A1849EA5C3960FD9B63CCEFB890DC9D72CA';
wwv_flow_imp.g_varchar2_table(1230) := '294242D4A3D0F8CA6C0D43A035113002D09AE362673500026AF85584870F6A767863BCFEEB5FFF7A4DCAB5DEF8AA81D13A6F3ED8B54280DF2941D050801A7EAD2FD7AA0375236B66B8BAAD5FFBDAD7E2939FFCA4CC34954CA8708D0D686304EA733BF4BD';
wwv_flow_imp.g_varchar2_table(1231) := '265B5E79E5951292A18786248FB8ABECB3866338665CD4EBC27538AE6EA9A7DE17EA3DE2AB8676D46BA3F904EA41622222DDFE54019C316386E93B341E4E5B631820600460180C929DE23F22A0095A6E7916CBB9BEF18D6F4839205DBAEA9AE7D62AE8A2';
wwv_flow_imp.g_varchar2_table(1232) := '065F87CB911300000A7E49444154E3F6FCCE35F0FC5BC305341E9A38C6E369C2991A143536EBD6AD93D93FEBC3CF3DF75C310E6EA99A12151BC7C608B8610035E49AD8C716CD1C5F8666B8A82AA34A3F6B62A67A5BD433A0C9829AE0A9B9023A2EAE3747';
wwv_flow_imp.g_varchar2_table(1233) := '4BFF74F6AFBD0138D65FFCE217F19AD7BC46420B6EA548E3ABB2350C81D644C008406B8E8B9DD50008A87B5D6779FAC0A71B9EFD00A8DDCFF22E37EEAFC9811ACBE577F5FB51A3AD9E00351C3410AE11514F807A106824D87C864985AC0250C3E5CE442D';
wwv_flow_imp.g_varchar2_table(1234) := '04D0FC2D5D4F025CB11F1AFF1FFDE847A2094092476126CECED570BBB37BFEEDE689F0BD8EA526FBE9186965809B4340A3AF9E21E611B00910AB0AEAB5029ABF325BD310682D048C00B4D678D8D93440406771FAC07767F07C58D3F0B32DF0FFFDDFFF89';
wwv_flow_imp.g_varchar2_table(1235) := '6170B5FB69F4F95067BD3E17557DD35233B71BA0BAFF3516ADB17EED00A8DD0039EB3CE6986344798E02437A3EDC4E13CAF4928C040C3CB8AEDB9E7FBB9E134DB8E4F8FEE217BFC04F7FFA53AC58B1A216D7774B0275CCD4CBA30442F7A95DFEB4C240EF';
wwv_flow_imp.g_varchar2_table(1236) := '05BEEABDA0C99E1C5FF61460192249004907F7C745CB476D5CEDB1355C113002305C47AE8DCF5BDDFFAE1B969F69AC98A1808B2FBE58CABBD47DACB37DC6F7950010420D0DF041CFED6934DC2A029D216A191993C1D47BA0ED7FA953CFC430269AE971B8';
wwv_flow_imp.g_varchar2_table(1237) := '1DD7D5EDD460B4F1B035BC74173B3789921BBA8A7E940466073F7A0398FBC1843C8DE1D767EFD77779D4F242CD235172A01E01CDD9D0FB8972BF941666FB68923E572FA2DE03D5F0026D0543A0C5103002D0620362A7D31C02F50963DC4A67DD7C48B3C6';
wwv_flow_imp.g_varchar2_table(1238) := '9B9E00AAC7D1E0AB6B58F302D46868DC583502D430A89B9FC69E865ECBCC341780C76329188D3FE3C2AE04B1CE1E5D99619B25361E57B75CD2FD5B63F64AC6882575FBD9A1F1861B6E90B1D138BEBBAE920857D6D9CD19713D0C1A1AD0CF38FE13274EC4';
wwv_flow_imp.g_varchar2_table(1239) := '9BDEF426A9EA20B973498612076D05DDF8EA6C0D43A0F5103002D07A636267340808F0017ECF3DF748288049812CFBA2FB960F782D0FD3F8B01A677746A744800F785D4FC903D7675D390DC33FFDD33F4919A12D4383801A618E0FAB01D8AAF977BFFB5D';
wwv_flow_imp.g_varchar2_table(1240) := '6D7C7916AE44B3123F970C285954AF8C7A8948F69847C231675227458458F7AFA122376F6068AED68E6208EC58048C00EC587C6DEF3B0901F5062C5CB810D75E7BAD24075200C6AD1E704FCD9DA16B129A1A0825037CCF99FECC993371CE39E7080950F9';
wwv_flow_imp.g_varchar2_table(1241) := 'D89D74996D79589574667885CA80D75C730D58223877EE5C31FE247A34DAEA15E8ABB2402B35F84A02E08688281E44A9E8E38F3F5ED421B9F457C9E17A2ADA7230ECA2873502460086F5F0D9C9F785001FCA74ED73464723C038F1C30F3F8C9B6EBA09B7';
wwv_flow_imp.g_varchar2_table(1242) := 'DD769BF497E7A212B2F509673ACBD47A7F1A081AFE97BCE42538F1C41325E98F3D04B4D69FC64133C36D44762C022E19D344508E2F8D3FDB42532888A4CFED00C9FB40C747C7D6150A528F10099D8EEF94295324B7A09E3CB85737D0773B1605DBBB2130';
wwv_flow_imp.g_varchar2_table(1243) := '38081801181C1C6D2F2D8680CEF47516CF383ED5E4E6CD9B270D609828C8BFE9F225597067FDDC467B0330CE7FD04107E1D0430F151D786AFC930CE86289603B6FE0350F4409DFF2E5CB252C40B2476548EA0650CA59933EDD04407A0868E0274C988003';
wwv_flow_imp.g_varchar2_table(1244) := '0F3C50BC39D3A74FC7E4C99325DEAFEBEEBCABB3231B023B1E0123003B1E633BC24E40404BC1B4544B4F819FB37CECA9A79E12E3C0B2324AC352F657EBFFE942665C9F869EAA7E34FA7C6549615FA56A662C866E80DD123C1ED54D06D5F71C4F8E2D09C1';
wwv_flow_imp.g_varchar2_table(1245) := 'B265CBC403A4448F6345CF0DC796BD1F28EAC3F19D3469928CAF7B9FF06F1BDBA11B5B3BD2D023600460E831B7230E01022A13ABD9FDFABEBE873B3D056BD7AE053BBDB90460ECD8B1124B7617AD1B770586B42CCCB2FC876050AB951EEAD5718FD89F27';
wwv_flow_imp.g_varchar2_table(1246) := '86634AEF0F091EB5FF395E1C57E66ED003E07A72E809D20E924A2C2CB43334E36A47D939081801D839B8DB51870081BE668B6A3CB4CCAF91E1566D80FABE021A32B019E2100CA4730837EEEED6F02B01D057D7DDDF688CDD324212441BD3A11D533BDACE';
wwv_flow_imp.g_varchar2_table(1247) := '43C008C0CEC3DE8EBC0311D064B1FABA701EB2DE0BA0EBBA46BDDE08D05350DF7F40C30B663076E040D6EDDA4DD0D47173552139E357D9E77A0F417DC6BEE56F0CDDB8D9915A13012300AD392E7656DB89407FE57EAECBD77525D797FEF1BB664ABC1A1D';
wwv_flow_imp.g_varchar2_table(1248) := '673B2FC336EF0781FA0C7C4DE4D46E7EEED8D6EF423D434ADCEA5507EBBFEF6F10AC0AC06ECFE18E801180E13E8276FE8680213060B99EC1630818027D236004C0EE0C43C01030040C0143A00D113002D086836E976C08180286802160081801B07BC010';
wwv_flow_imp.g_varchar2_table(1249) := '30040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C';
wwv_flow_imp.g_varchar2_table(1250) := '0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644';
wwv_flow_imp.g_varchar2_table(1251) := 'C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38';
wwv_flow_imp.g_varchar2_table(1252) := 'E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02';
wwv_flow_imp.g_varchar2_table(1253) := '868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D113002D086836E976C081802868021';
wwv_flow_imp.g_varchar2_table(1254) := '60081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0';
wwv_flow_imp.g_varchar2_table(1255) := 'EE0143C01030040C0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143';
wwv_flow_imp.g_varchar2_table(1256) := 'C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C00B4E1A0DB251B02868021600818024600EC1E30040C0143C01030';
wwv_flow_imp.g_varchar2_table(1257) := '04DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D113002D086836E976C08180286802160081801B07BC01030040C0143C0106843048C';
wwv_flow_imp.g_varchar2_table(1258) := '00B4E1A0DB251B02868021600818024600EC1E30040C0143C0103004DA100123006D38E876C98680216008180286801100BB070C0143C01030040C813644C008401B0EBA5DB221600818028680216004C0EE0143C01030040C0143A00D11F8FFC9CDF5FC';
wwv_flow_imp.g_varchar2_table(1259) := 'EAAA57DF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7939834497333969)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7931208446333790)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>44785223878812
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7931534159333795)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>44785223878835
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7931825870333796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>44785223878854
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7932197077333797)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>44785223878866
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7932481057333798)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>44785223878866
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7932748234333799)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>44785223878866
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7933028240333800)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>44785223878866
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7933388626333801)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>44785223878866
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7933637258333802)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>44785223878870
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7933933144333803)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>44785223878870
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7934291185333804)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>44785223878874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7934540130333806)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>44785223878875
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7934825876333807)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>44785223878875
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7935115343333808)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>44785223878875
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7941144562333972)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'ADMIN'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>44791426940610
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/diretoria
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8227730931985274)
,p_name=>'DIRETORIA'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'DIRETORIA'
,p_attribute_02=>'A'
,p_version_scn=>44791355335412
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/ecommerce
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8227966811987081)
,p_name=>'ECOMMERCE'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'ECOMMERCE'
,p_attribute_02=>'A'
,p_version_scn=>44791370706259
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/loja
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8228189862988520)
,p_name=>'LOJA'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'LOJA'
,p_attribute_02=>'A'
,p_version_scn=>44791370720074
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/ecommerce
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8228621339989936)
,p_static_id=>'ECOMMERCE'
,p_name=>'ECOMMERCE'
,p_version_scn=>44791370731235
);
end;
/
prompt --application/shared_components/security/app_access_control/loja
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8228735590990340)
,p_static_id=>'LOJA'
,p_name=>'LOJA'
,p_version_scn=>44791370732983
);
end;
/
prompt --application/shared_components/security/app_access_control/diretoria
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8228811685990756)
,p_static_id=>'DIRETORIA'
,p_name=>'DIRETORIA'
,p_version_scn=>44791370735504
);
end;
/
prompt --application/shared_components/security/app_access_control/admin
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(8241596059111480)
,p_static_id=>'ADMIN'
,p_name=>'ADMIN'
,p_version_scn=>44791426945315
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/download_file
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(7998118339115171)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download_File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_file blob;',
'  l_mime_type varchar2(32767);',
'  l_endpoint varchar2(4000);',
'  l_nomedataset varchar2(200);',
'begin',
'',
'  select oci_endpoint, nome_dataset into l_endpoint, l_nomedataset from datasets where nome_dataset = :APP_OBJECT_NAME;',
'   ',
'  l_file := dbms_cloud.get_object(',
'    credential_name => ''CREDENCIALOS'',',
'    object_uri      => l_endpoint);',
'',
'  l_mime_type := ''text/csv'';',
'',
'  sys.htp.init;',
'  sys.owa_util.mime_header(l_mime_type, false);',
'  sys.htp.p(''content-length: '' || dbms_lob.getlength(l_file));',
'  sys.htp.p(''content-disposition: attachment; filename="'' || :APP_OBJECT_NAME || ''.csv'');',
'  sys.owa_util.http_header_close;',
'  sys.wpg_docload.download_file(l_file);',
'',
'  apex_application.stop_apex_engine;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>44828362372497
);
end;
/
prompt --application/shared_components/logic/application_items/app_object_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(7996555144060218)
,p_name=>'APP_OBJECT_NAME'
,p_protection_level=>'S'
,p_version_scn=>44785588447071
);
end;
/
prompt --application/shared_components/logic/application_items/dataset_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(8054412638226194)
,p_name=>'DATASET_ID'
,p_protection_level=>'B'
,p_version_scn=>44791052144101
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(7941419356333976)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7935916523333821)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7936181185333824)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7936899619333838)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(7959829258598805)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(7959829258598805)
,p_theme_id=>42
,p_name=>'Data Marketplace'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-layout--fixed t-PageBody--scrollTitle rw-pillar--pine rw-mode-header--light rw-mode-nav--light rw-mode-body-header--dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-pillar--pine","rw-mode-header--light","rw-mode-nav--light","rw-mode-body-header--dark"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#7959829258598805.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(7960259865598814)
,p_theme_id=>42
,p_file_name=>'7959829258598805.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7935435995333812)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>44785223878891
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7935638883333817)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44785223878892
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Data Marketplace'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.floatlogoff {',
'  z-index: 100;',
'  position: absolute;',
'  top: 10px;  /* Position from the top */',
'  right: 10px; /* Position from the right */',
'  width: auto; /* Adjust width as needed */',
'  height: auto; /* Adjust height as needed */',
'  padding: 10px 20px; /* Add padding for better spacing */',
'  color: #FFF;',
'  text-align: center;',
'  border-radius: 5px; /* Optional: Slightly rounded corners */',
'  /* background-color: black;  Removed */',
'  /* box-shadow: 2px 2px 3px #999;  Removed */',
'}',
'',
'.my-floatlogoff {',
'  margin-top: 0; /* Remove unnecessary margin */',
'}',
'',
'.float{',
'  z-index:100;',
'  position:fixed;',
'  width:60px;',
'  height:60px;',
'  bottom:40px;',
'  right:40px;',
'  background-color: black;',
'  color:#FFF;',
'  border-radius:50px;',
'  text-align:center;',
'  box-shadow: 2px 2px 3px #999;',
'}',
'.my-float{',
'  margin-top:22px;',
'}',
'',
''))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7948984554334075)
,p_plug_name=>'Data Marketplace'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7952811362585401)
,p_plug_name=>'Datasets'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATASET_ID,',
'       NOME_DATASET,',
'       CLASSIFICACAOAI,',
'       REGISTRO_DATASET',
'  from DATASETS',
'WHERE PERFIL_ACESSO LIKE (GET_APEX_APP_USER);'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_required_role=>'!'||wwv_flow_imp.id(7941144562333972)
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7952973561585402)
,p_region_id=>wwv_flow_imp.id(7952811362585401)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME_DATASET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CLASSIFICACAOAI'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NOME_DATASET'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'DATASET_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(7954385010585416)
,p_card_id=>wwv_flow_imp.id(7952973561585402)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_DATASET_ID,DATASET_ID:&DATASET_ID.,&DATASET_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8231761739048501)
,p_plug_name=>'Datasets (Admin)'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATASET_ID,',
'       NOME_DATASET,',
'       CLASSIFICACAOAI,',
'       REGISTRO_DATASET',
'  from DATASETS'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_required_role=>wwv_flow_imp.id(7941144562333972)
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8231870714048502)
,p_region_id=>wwv_flow_imp.id(8231761739048501)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME_DATASET'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CLASSIFICACAOAI'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NOME_DATASET'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'DATASET_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8231984022048503)
,p_card_id=>wwv_flow_imp.id(8231870714048502)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_DATASET_ID,DATASET_ID:&DATASET_ID.,&DATASET_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8232168357048505)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(7952811362585401)
,p_plug_required_role=>'!'||wwv_flow_imp.id(7941144562333972)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8232451266048508)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(8231761739048501)
,p_plug_required_role=>wwv_flow_imp.id(7941144562333972)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8232065305048504)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7948984554334075)
,p_button_name=>'Logoff'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Logoff'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_button_css_classes=>'floatlogoff my-floatlogoff'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8233903560048523)
,p_button_sequence=>60
,p_button_name=>'AIHELP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Aihelp'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'float my-float'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7955486223585427)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7948984554334075)
,p_button_name=>'Cadastrar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cadastrar Dataset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_imp.id(7941144562333972)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8232238666048506)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8232168357048505)
,p_prompt=>'Procurar'
,p_source=>'NOME_DATASET, CLASSIFICACAOAI,REGISTRO_DATASET'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8232570498048509)
,p_name=>'P1_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8232451266048508)
,p_prompt=>'Procurar'
,p_source=>'NOME_DATASET, CLASSIFICACAOAI,REGISTRO_DATASET'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7955507537585428)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7955486223585427)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7955675428585429)
,p_event_id=>wwv_flow_imp.id(7955507537585428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7952811362585401)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dataset Details'
,p_alias=>'DATASET-DETAILS'
,p_step_title=>'Dataset Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.floatlogoff {',
'  z-index: 100;',
'  position: absolute;',
'  top: 10px;  /* Position from the top */',
'  right: 10px; /* Position from the right */',
'  width: auto; /* Adjust width as needed */',
'  height: auto; /* Adjust height as needed */',
'  padding: 10px 20px; /* Add padding for better spacing */',
'  color: #FFF;',
'  text-align: center;',
'  border-radius: 5px; /* Optional: Slightly rounded corners */',
'  /* background-color: black;  Removed */',
'  /* box-shadow: 2px 2px 3px #999;  Removed */',
'}',
'',
'.my-floatlogoff {',
'  margin-top: 0; /* Remove unnecessary margin */',
'}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7953674148585409)
,p_plug_name=>'Dataset'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATASET_ID,',
'       NOME_DATASET,',
'       REGISTRO_DATASET,',
'       OCI_ENDPOINT',
'       ,',
'       '''' AS TAMANHO_ARQUIVO,',
'       '''' AS ULTIMA_ALTERACAO',
'  from DATASETS'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7954267720585415)
,p_plug_name=>'Detalhes Dataset'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(7935916523333821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8058160704274517)
,p_plug_name=>'Dataset Metadata'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    jt.name AS column_name,',
'    jt.missing_values,',
'    jt.unique_values,',
'    jt.example_values,',
'    jt.most_frequent',
'FROM datasets d,',
'     JSON_TABLE(',
'         d.metadata,',
'         ''$.columns[*]''',
'         COLUMNS (',
'             name            VARCHAR2(100)  PATH ''$.name'',',
'             missing_values  NUMBER         PATH ''$.missing_values'',',
'             unique_values   NUMBER         PATH ''$.unique_values'',',
'             example_values  VARCHAR2(4000) FORMAT JSON PATH ''$.example_values'',',
'             most_frequent   VARCHAR2(4000) PATH ''$.most_frequent''',
'         )',
'     ) jt',
'where dataset_id = :P2_DATASET_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19900130113128305)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO'
,p_internal_uid=>19900130113128305
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19900280599128306)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nome Coluna'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19900310026128307)
,p_db_column_name=>'MISSING_VALUES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Valores Faltantes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19900420876128308)
,p_db_column_name=>'UNIQUE_VALUES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Valores \00DAnicos')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19900522279128309)
,p_db_column_name=>'EXAMPLE_VALUES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Exemplo de Valores'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19900648186128310)
,p_db_column_name=>'MOST_FREQUENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dados mais frequentes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22501356170374287)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'225014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:MISSING_VALUES:UNIQUE_VALUES:EXAMPLE_VALUES:MOST_FREQUENT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8239042228069003)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'Logoff'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Logoff'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_button_css_classes=>'floatlogoff my-floatlogoff'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8058212848274518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'Voltar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7956155549585434)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'Salvar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Salvar Altera\00E7\00F5es')
,p_button_position=>'NEXT'
,p_security_scheme=>wwv_flow_imp.id(7941144562333972)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7955745983585430)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'Deletar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Deletar'
,p_button_position=>'NEXT'
,p_security_scheme=>wwv_flow_imp.id(7941144562333972)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7956207894585435)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'CopiarURL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copiar URL Download'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7953330058585406)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(7954267720585415)
,p_button_name=>'Download'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Dataset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Download_File:&DEBUG.::APP_OBJECT_NAME:&P2_NOME_DATASET.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7955982389585432)
,p_branch_name=>'Return Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_branch_condition=>'Download'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7953868088585411)
,p_name=>'P2_DATASET_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_source=>'DATASET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7953972849585412)
,p_name=>'P2_NOME_DATASET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_prompt=>'Nome Dataset'
,p_source=>'NOME_DATASET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7955254804585425)
,p_name=>'P2_OCI_ENDPOINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_source=>'OCI_ENDPOINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8233340578048517)
,p_name=>'P2_REGISTRO_DATASET'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_prompt=>'Registro Dataset'
,p_source=>'REGISTRO_DATASET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8233439330048518)
,p_name=>'P2_TAMANHO_ARQUIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_prompt=>'Tamanho Arquivo (MB)'
,p_source=>'TAMANHO_ARQUIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8233505398048519)
,p_name=>'P2_ULTIMA_ALTERACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_item_source_plug_id=>wwv_flow_imp.id(7953674148585409)
,p_prompt=>'Ultima Alteracao'
,p_source=>'ULTIMA_ALTERACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8233796100048521)
,p_computation_sequence=>10
,p_computation_item=>'P2_TAMANHO_ARQUIVO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(bytes / 1024 / 1024, ''FM9999999990.00'') AS size_mb',
'FROM TABLE(',
'  DBMS_CLOUD.LIST_OBJECTS(',
'    credential_name => ''CREDENCIALOS'',',
'    location_uri    => :P2_OCI_ENDPOINT',
'  )',
')',
'WHERE object_name = :P2_NOME_DATASET || ''.csv'';',
''))
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8233869850048522)
,p_computation_sequence=>20
,p_computation_item=>'P2_ULTIMA_ALTERACAO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_MODIFIED',
'FROM TABLE(',
'  DBMS_CLOUD.LIST_OBJECTS(',
'    credential_name => ''CREDENCIALOS'',',
'    location_uri    => :P2_OCI_ENDPOINT',
'  )',
')',
'WHERE object_name = :P2_NOME_DATASET || ''.csv'';'))
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7956316339585436)
,p_name=>'Click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7956207894585435)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7956428850585437)
,p_event_id=>wwv_flow_imp.id(7956316339585436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'CopyData'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get both hidden items',
'let endpoint = $("#P2_OCI_ENDPOINT");',
'let dataset = $("#P2_NOME_DATASET");',
'',
'// Get their values',
'let endpointVal = endpoint.val() || '''';',
'let datasetVal = dataset.val() || '''';',
'',
'// Concatenate values',
'let fullText = endpointVal;',
'',
'// Temporarily show both items (in case APEX masks them too)',
'endpoint.attr("type", "text");',
'dataset.attr("type", "text");',
'',
'// Use Clipboard API to copy concatenated text',
'navigator.clipboard.writeText(fullText)',
'    .then(function () {',
'        // Optional success message',
'        apex.message.showPageSuccess(''Copied to Clipboard!'');',
'    })',
'    .catch(function (err) {',
'        console.error(''Copy failed: '', err);',
'    })',
'    .finally(function () {',
'        // Hide items again',
'        endpoint.attr("type", "hidden");',
'        dataset.attr("type", "hidden");',
'    });',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7955898411585431)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7953674148585409)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'DML'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Download'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_internal_uid=>7955898411585431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7953729761585410)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7953674148585409)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dataset Details'
,p_internal_uid=>7953729761585410
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Cadastrar Dataset'
,p_alias=>'CADASTRAR-DATASET'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastrar Dataset'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8027940327723830)
,p_plug_name=>'Cadastrar Dataset'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATASET_ID,',
'       NOME_DATASET,',
'       OCI_ENDPOINT,',
'       PERFIL_ACESSO',
'  from DATASETS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8032489021723864)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8032820154723865)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8032489021723864)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035083378723880)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8032489021723864)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_DATASET_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8028295451723835)
,p_name=>'P3_DATASET_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_item_source_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dataset Id'
,p_source=>'DATASET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8028674361723845)
,p_name=>'P3_NOME_DATASET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_item_source_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_prompt=>unistr('Nome Dataset (Sem Extens\00E3o)')
,p_source=>'NOME_DATASET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8029860172723853)
,p_name=>'P3_OCI_ENDPOINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_item_source_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_prompt=>'Dataset OCI Endpoint (object storage parfile)'
,p_source=>'OCI_ENDPOINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8235071710048534)
,p_name=>'P3_PERFIL_ACESSO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_item_source_plug_id=>wwv_flow_imp.id(8027940327723830)
,p_prompt=>'Perfil Acesso'
,p_source=>'PERFIL_ACESSO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT PERFIL_ACESSO REQUEST, PERFIL_ACESSO DISPLAY FROM DATASETS;'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8235250788048536)
,p_name=>'P3_METADATAOUTPUT'
,p_item_sequence=>20
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8236171884048545)
,p_name=>'P3_GENAIOUTPUT'
,p_item_sequence=>30
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8032922793723865)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8032820154723865)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8033787182723874)
,p_event_id=>wwv_flow_imp.id(8032922793723865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8035866723723884)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8027940327723830)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cadastrar Dataset'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(7935435995333812)
,p_internal_uid=>8035866723723884
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8235100084048535)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'CSV-Metadata'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(18299870103003620)
,p_web_src_operation_id=>wwv_flow_imp.id(18300410349003653)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8235100084048535
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8235326353048537)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(18499103434014829)
,p_page_process_id=>wwv_flow_imp.id(8235100084048535)
,p_value_type=>'ITEM'
,p_value=>'P3_OCI_ENDPOINT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8235476691048538)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(18499529813015997)
,p_page_process_id=>wwv_flow_imp.id(8235100084048535)
,p_value_type=>'ITEM'
,p_value=>'P3_METADATAOUTPUT'
,p_ignore_output=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8236273353048546)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'GENAI-Processing'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(19299837325100536)
,p_web_src_operation_id=>wwv_flow_imp.id(19300456095100564)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8236273353048546
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8236561026048549)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(19499544142110283)
,p_page_process_id=>wwv_flow_imp.id(8236273353048546)
,p_value_type=>'SQL_QUERY'
,p_value=>'SELECT ''o json fornecido contem metadados sobre um dataset, crie um paragrafo com casos de uso e descricao do dataset.''  || :P3_METADATAOUTPUT FROM DUAL;'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(8236694639048550)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(19499913614111416)
,p_page_process_id=>wwv_flow_imp.id(8236273353048546)
,p_value_type=>'ITEM'
,p_value=>'P3_GENAIOUTPUT'
,p_ignore_output=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19899898810128302)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DBDML'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_json      VARCHAR2(32767) := :P3_GENAIOUTPUT;',
'    l_text      VARCHAR2(4000);',
'BEGIN',
'    -- Extract the text from the JSON',
'    SELECT jt.text',
'    INTO l_text',
'    FROM dual,',
'         JSON_TABLE(',
'             l_json,',
'             ''$.chatResponse'' COLUMNS (',
'                 text VARCHAR2(4000) PATH ''$.text''',
'             )',
'         ) jt;',
'',
'    INSERT INTO DATASETS (',
'        NOME_DATASET, ',
'        REGISTRO_DATASET, ',
'        OCI_ENDPOINT,',
'        PERFIL_ACESSO,',
'        METADATA,',
'        CLASSIFICACAOAI',
'        ) VALUES(',
'        :P3_NOME_DATASET,',
'        current_date,',
'        :P3_OCI_ENDPOINT,',
'        :P3_PERFIL_ACESSO,',
'        :P3_METADATAOUTPUT,',
'        l_text',
'    );',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19899898810128302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8036227241723885)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8036227241723885
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8035491889723883)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8027940327723830)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cadastrar Dataset'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8035491889723883
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'AIHelp'
,p_alias=>'AIHELP'
,p_page_mode=>'MODAL'
,p_step_title=>'AIHelp'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8234087686048524)
,p_plug_name=>'Pesquisa'
,p_region_name=>'PESQUISAR'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8234195750048525)
,p_name=>'AIHelp'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8234217820048526)
,p_event_id=>wwv_flow_imp.id(8234195750048525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'INLINE'
,p_attribute_03=>'#PESQUISAR'
,p_ai_config_id=>wwv_flow_imp.id(12899380042601318)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Data Marketplace - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7942083080333996)
,p_plug_name=>'Data Marketplace'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7943621974334029)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7942083080333996)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7942500956334018)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7942083080333996)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7942818330334023)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7942083080333996)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7943253628334026)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7942083080333996)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7945815320334048)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7945815320334048
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7946377671334049)
,p_page_process_id=>wwv_flow_imp.id(7945815320334048)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7946877618334051)
,p_page_process_id=>wwv_flow_imp.id(7945815320334048)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7943923221334033)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7943923221334033
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7944429404334039)
,p_page_process_id=>wwv_flow_imp.id(7943923221334033)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7944979767334045)
,p_page_process_id=>wwv_flow_imp.id(7943923221334033)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7945465246334046)
,p_page_process_id=>wwv_flow_imp.id(7943923221334033)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7947706229334054)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7947706229334054
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7947349790334053)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7947349790334053
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(31698790211552528)
);
end;
/
prompt --application/deployment/install/install_dbinstall
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(32098572033563048)
,p_install_id=>wwv_flow_imp.id(31698790211552528)
,p_name=>'DBInstall'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "DATASETS" ',
'   (	"DATASET_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NOME_DATASET" VARCHAR2(100), ',
'	"REGISTRO_DATASET" DATE DEFAULT current_date, ',
'	"OCI_ENDPOINT" VARCHAR2(4000), ',
'	"PERFIL_ACESSO" VARCHAR2(500), ',
'	"METADATA" JSON, ',
'	"CLASSIFICACAOAI" VARCHAR2(4000), ',
'	 PRIMARY KEY ("DATASET_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'create or replace FUNCTION get_apex_app_user',
'RETURN VARCHAR2',
'IS',
'    v_app_user VARCHAR2(100);',
'BEGIN',
'    v_app_user := SYS_CONTEXT(''APEX$SESSION'', ''APP_USER'');',
'    RETURN v_app_user;',
'END;',
'/',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(32098614793563083)
,p_script_id=>wwv_flow_imp.id(32098572033563048)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_APEX_APP_USER'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(32098877406563089)
,p_script_id=>wwv_flow_imp.id(32098572033563048)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DATASETS'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, true)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
