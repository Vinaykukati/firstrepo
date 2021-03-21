({
	call : function(component, event, helper) {
		var evt = event.getsource();
        var name = evt.get("v.name");
        var A = component.get("v.Aval");
        var B = component.get("v.Bval");
        var C;
        if(Name == 'Add'){
            C = parseInt(A)+parseInt(B);
            component.set("v.Cval",C);
        }
	}
})