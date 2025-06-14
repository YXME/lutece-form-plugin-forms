
--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'FORMS_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('FORMS_MANAGEMENT','forms.adminFeature.manageForms.name',1,'jsp/admin/plugins/forms/ManageForms.jsp','forms.adminFeature.manageForms.description',0,'forms',NULL,NULL,NULL,4);
DELETE FROM core_admin_right WHERE id_right = 'FORMS_MULTIVIEW';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('FORMS_MULTIVIEW','forms.adminFeature.multiviewForms.name',2,'jsp/admin/plugins/forms/MultiviewForms.jsp','forms.adminFeature.multiviewForms.description',0,'forms',NULL,NULL,NULL,5);
DELETE FROM core_admin_right WHERE id_right = 'FORMS_CATEGORIES';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('FORMS_CATEGORIES','forms.adminFeature.categoriesForms.name',1,'jsp/admin/plugins/forms/ManageFormsCategories.jsp','forms.adminFeature.categoriesForms.description',0,'forms',NULL,NULL,NULL,6);



--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'FORMS_MANAGEMENT';
DELETE FROM core_user_right WHERE id_right = 'FORMS_MULTIVIEW';

--
-- Dumping data for table core_admin_role
--
DELETE FROM core_admin_role WHERE role_key = 'forms_manager';
INSERT INTO core_admin_role (role_key,role_description) VALUES ('forms_manager','FORMS - Gestion des formulaires');
INSERT INTO core_admin_role (role_key,role_description) VALUES ('forms_multiview','FORMS - Visualisation des résultats des formulaires');

--
-- Dumping data for table core_user_role
--
INSERT INTO core_user_role (role_key,id_user) VALUES ('forms_manager',1);
INSERT INTO core_user_role (role_key,id_user) VALUES ('forms_multiview',1);
INSERT INTO core_user_role (role_key,id_user) VALUES ('forms_manager',2);

--
-- Dumping data for table core_admin_role_resource
--
DELETE FROM core_admin_role_resource WHERE role_key = 'forms_manager';
INSERT INTO core_admin_role_resource (rbac_id,role_key,resource_type,resource_id,permission) VALUES (1907,'forms_manager','FORMS_FORM','*','*');
INSERT INTO core_admin_role_resource (rbac_id,role_key,resource_type,resource_id,permission) VALUES (1908,'forms_multiview','FORM_PANEL_CONF','*','*');
INSERT INTO core_admin_role_resource (rbac_id,role_key,resource_type,resource_id,permission) VALUES (1909,'forms_manager','GLOBAL_FORMS_ACTION','','');
--
-- Init  table core_dashboard
--
INSERT INTO core_dashboard(dashboard_name, dashboard_column, dashboard_order) VALUES('FORMS', 3, 2);

--
-- Dumping data for table core_portlet_type
--
DELETE FROM core_portlet_type where id_portlet_type = 'FORMS_LIST_PORTLET';
INSERT INTO core_portlet_type (id_portlet_type,name,url_creation,url_update,home_class,plugin_name,url_docreate,create_script,create_specific,create_specific_form,url_domodify,modify_script,modify_specific,modify_specific_form,icon_name) VALUES ('FORMS_LIST_PORTLET','forms.portlet.formsList.name','plugins/forms/CreateFormsListPortlet.jsp','plugins/forms/ModifyFormsListPortlet.jsp','fr.paris.lutece.plugins.forms.business.portlet.FormsListPortletHome','forms','plugins/forms/DoCreateFormsListPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/forms/portlet/create_portlet_formslist.html','','plugins/forms/DoModifyFormsListPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/forms/portlet/modify_portlet_formslist.html','','list-details');
