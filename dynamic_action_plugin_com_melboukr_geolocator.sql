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
--   Date and Time:   14:46 Friday April 5, 2024
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
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_standard_attributes=>'REGION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
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