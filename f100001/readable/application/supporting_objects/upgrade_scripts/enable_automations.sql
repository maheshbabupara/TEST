declare 
    l_app_id number := 100001;
begin
    apex_automation.enable(
        p_application_id => l_app_id,
        p_static_id      => 'job');
end;