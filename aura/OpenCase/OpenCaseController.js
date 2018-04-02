({
    doInit: function(cmp, event, helper) {
        //create an instance of getCases action in the server-side controller
        const action = cmp.get('c.getCases');

        //set the call back of what to do when the server side action returns
        action.setCallback(this, (response) => {
            console.log(response);
            console.log(response.getState());
            console.log(response.getReturnValue());
            const state = response.getState();
            if (state === 'SUCCESS') {
                cmp.set('v.cases', response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }

})