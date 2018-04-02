({
	
    goToCaseDetails: function(cmp, event, helper) {
        const navigateEvent = $A.get('e.force:navigateToSObject');
        navigateEvent.setParams({
            'recordId': cmp.get('v.case.Id'),
            'slideDevName': "detail"
        });
        navigateEvent.fire();
        
    }            
})