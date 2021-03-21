({
	call : function(component, event, helper) {
		var evt = event.getSource();
        var myid = evt.getLocalId();
        var A = component.find("aid").get("v.value");
        var B = component.find("bid").get("v.value");
        //var c;
        if(myid=='one'){
           var c = parseInt(A)+parseInt(B);
            component.find("cid").set("v.value",c);
        }
        else if(myid=='two'){
              var c = A*B;
                component.find("cid").set("v.value",c);
            } 
        else{
            component.find("cid").set("v.value",null);
        }
	}
})