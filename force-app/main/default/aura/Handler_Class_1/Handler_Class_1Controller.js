({
	doit : function(component, event, helper) {
        var a = component.get("v.AVal");
        var b = component.get("v.BVal");
        var c = (a/b);
        component.set("v.CVal",c);
	}
})