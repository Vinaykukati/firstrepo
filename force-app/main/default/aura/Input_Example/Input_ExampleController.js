({
	addval : function(component, event, helper) {
		var aval=component.get("v.Aval");
        var bval=component.get("v.Bval");
        var result= (aval)*(bval);
        component.set("v.Cval",result);
	}
})