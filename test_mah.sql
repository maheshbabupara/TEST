SET DEFINE OFF;
SET SQLBLANKLINES ON;
Insert into EMAIL_TEMPLATES (EMAIL_TEMPLATE_ID,TEMPLATE_NAME,TEMPLATE_SUBJECT,TEMPLATE_BODY,TEMPLATE_TEXT,TEMPLATE_SETTINGS) values (EMAIL_TEMPLATE_SEQ.NEXTVAL,'Delegate Assignment Notification','Research Administration Portal Delegate Assignment',TO_CLOB(q'[<p>#DELEGATE.FIRST_NAME# #DELEGATE.LAST_NAME#,<br><br>You have been assigned as a delegate in the Research Administration Portal for <strong>#ASSIGNOR.FIRST_NAME# #ASSIGNOR.LAST_NAME#</strong>.</p><p>As a delegate, you can view the protocol/project information for the assignor in the Portal.</p><p><strong>Note:</strong> Being a delegate in the Portal does not give you permission to act on the assignor's behalf in other research administration applications.</p><p>This is a system notice from http]')
|| TO_CLOB(q'[s://adminportal.research.harvard.edu. If you need assistance or have a question, please contact the help desk at <a href="mailto:research_adminportal_help@harvard.edu">research_adminportal_help@harvard.edu</a>.</p>]'),'#DELEGATE.FIRST_NAME# #DELEGATE.LAST_NAME#,

You have been assigned as a delegate in the Research Administration Portal for #ASSIGNOR.FIRST_NAME# #ASSIGNOR.LAST_NAME#.

As a delegate, you can view the protocol/project information for the assignor in the Portal.

Note: Being a delegate in the Portal does not give you permission to act on the assignor''s behalf in other research administration applications.

This is a system notice from https://adminportal.research.harvard.edu. If you need assistance or have a question, please contact the help desk at research_adminportal_help@harvard.edu.

','{
   "tables" : [
      {
         "name":"DELEGATES",
	      "condition":" AND DELEGATES.DELEGATE_ID = :ID AND STATUS=''ACTIVE'' ",
         "join": "DELEGATES",
         "columns_from":"DELEGATES"
      },
      {
         "name":"ASSIGNOR",
	      "condition":" AND DELEGATES.ASSIGNOR_HUID = MV_HUR_PERSONS.HUID AND DELEGATES.DELEGATE_ID = :ID ",
         "join": "DELEGATES,MV_HUR_PERSONS",
         "columns_from":"MV_HUR_PERSONS"
      },
      {
         "name":"DELEGATE",
         "condition":" AND DELEGATES.DELEGATE_HUID = MV_HUR_PERSONS.HUID AND DELEGATES.DELEGATE_ID = :ID AND STATUS=''ACTIVE'' ",
         "join": "DELEGATES,MV_HUR_PERSONS",
         "columns_from":"MV_HUR_PERSONS"
      }
   ],
   "preview_query" : "SELECT DELEGATE_ID FROM DELEGATES WHERE STATUS=''ACTIVE'' ORDER BY DBMS_RANDOM.value FETCH NEXT 1 ROWS ONLY"
}');
COMMIT;