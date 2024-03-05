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
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>55346232078420739274
,p_default_application_id=>204237
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MEDTEST'
);
end;
/
 
prompt APPLICATION 204237 - PluginsHub
--
-- Application Export:
--   Application:     204237
--   Name:            PluginsHub
--   Date and Time:   15:25 Friday April 5, 2024
--   Exported By:     MOHAMMEDELBOUKRI00@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 89200000575028953182
--   Manifest End
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_melboukr_geolocator
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(89200000575028953182)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM_MELBOUKR_GEOLOCATOR'
,p_display_name=>'Oracle Apex GeoLocator'
,p_category=>'INIT'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION RENDER (',
'    p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'    p_plugin         IN APEX_PLUGIN.T_PLUGIN',
'     )',
'    RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT',
'    AS',
'    VR_RESULT   APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'    BEGIN',
'    -- INCLUDE THE JS FILE',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'    P_NAME        => ''js/Current_Position'',',
'    P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'    P_VERSION     => NULL );',
'    -- INCLUDE THE CSS FILE',
'    APEX_CSS.ADD_FILE(',
'    P_NAME        => ''css/Current_Position'',',
'    P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'    P_VERSION     => NULL );',
'    -- Call the javascript',
'    VR_RESULT.JAVASCRIPT_FUNCTION   := ''Geolocator.init'';',
'    RETURN VR_RESULT;',
'    END RENDER;'))
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'RENDER'
,p_standard_attributes=>'REGION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>9
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722047656F6C6F6361746F72203D207B0D0A202020202F2A20496E69742046756E6374696F6E2A2F0D0A20202020696E69743A2066756E6374696F6E202829207B0D0A2020202020202020766172206461203D20746869733B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(2) := '20636F6E736F6C652E6C6F67286461290D0A2020202020202020747279207B0D0A2020202020202020202020202F2F20496E697469616C697A65207661726961626C65730D0A0D0A2020202020202020202020202F2F204D617020636C69636B20657665';
wwv_flow_imp.g_varchar2_table(3) := '6E74206C697374656E65720D0A0D0A2020202020202020202020202F2F204D6170626F7820636C69636B206576656E74206C697374656E65720D0A0D0A2020202020202020202020202F2F204173796E6368726F6E6F75732066756E6374696F6E20746F';
wwv_flow_imp.g_varchar2_table(4) := '20666574636820706F70756C6174696F6E20646174610D0A2020202020202020202020206173796E632066756E6374696F6E206665746368506F70756C6174696F6E286C6E672C206C617429207B0D0A202020202020202020202020202020202F2F2046';
wwv_flow_imp.g_varchar2_table(5) := '6574636820706F70756C6174696F6E20646174610D0A2020202020202020202020207D0D0A0D0A2020202020202020202020202F2F204173796E6368726F6E6F75732066756E6374696F6E20746F206665746368206C616E642075736520646174610D0A';
wwv_flow_imp.g_varchar2_table(6) := '2020202020202020202020206173796E632066756E6374696F6E2066657463684C616E6455736544617461286C61742C206C6E6729207B0D0A202020202020202020202020202020202F2F204665746368206C616E642075736520646174610D0A202020';
wwv_flow_imp.g_varchar2_table(7) := '2020202020202020207D0D0A0D0A2020202020202020202020202F2F205570646174652055492066756E6374696F6E0D0A20202020202020202020202066756E6374696F6E2075706461746555492829207B0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(8) := '2F2F205570646174652055492077697468206665746368656420646174610D0A2020202020202020202020207D0D0A20202020202020207D20636174636820286529207B0D0A2020202020202020202020202F2F2048616E646C65206572726F72730D0A';
wwv_flow_imp.g_varchar2_table(9) := '20202020202020207D0D0A202020207D0D0A7D3B0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(89213608112048148148)
,p_plugin_id=>wwv_flow_imp.id(89200000575028953182)
,p_file_name=>'js/Current_Position.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(89213631522973149652)
,p_plugin_id=>wwv_flow_imp.id(89200000575028953182)
,p_file_name=>'css/Current_Position.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(89213634208388150262)
,p_plugin_id=>wwv_flow_imp.id(89200000575028953182)
,p_file_name=>'css/Current_Position.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722047656F6C6F6361746F723D7B696E69743A66756E6374696F6E28297B636F6E736F6C652E6C6F672874686973293B7472797B7D6361746368286F297B7D7D7D3B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(89218931168524254296)
,p_plugin_id=>wwv_flow_imp.id(89200000575028953182)
,p_file_name=>'js/Current_Position.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
