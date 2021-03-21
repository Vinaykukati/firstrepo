({
	calc : function(component, event, helper) {
		var Empsal = component.get("v.Empsal");
        var Empdis = component.get("v.discount");
        var Total = Empsal/Empdis;
        component.set("v.Total",Total);
	}
})