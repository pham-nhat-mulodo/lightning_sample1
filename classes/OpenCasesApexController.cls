public with sharing class OpenCasesApexController {
    /*TODO: Complete the below
        
    //List of field we need to access
    String[] caseFields = new String[]{'Type', 'Status', 'Origin', 'Subject', 'Reason', 'Priority', 'Description'};
    
    // all the fields of Case SObject
    Map<String, Schema.SObjectField> caseFieldMap = Schema.SObjectType.Case.fields.getMap();
    
    //Check to make sure current user has access to all of the fields inside @caseFields.
    for (String field : caseFields) {
        if (!caseFieldMap.get(field).getDescribe().isAccessible()) {
            return null;
        }   
    }
    */
	@AuraEnabled
    public static List<Case> getCases() {
        return [SELECT Id
                FROM Case
                WHERE IsClosed = false AND OwnerID = :UserInfo.getUserId()
               ];
    }
}