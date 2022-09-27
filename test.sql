declare
    l_workspace_id number;
BEGIN
   select workspace_id into l_workspace_id
      from apex_workspaces
    where workspace = 'TEST';
    apex_application_install.set_workspace_id(l_workspace_id);
   --  APEX_INSTANCE_ADMIN.REMOVE_APPLICATION(100001);
END;
/
