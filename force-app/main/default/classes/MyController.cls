public class MyController {

    public String getName() {
        return 'MyController' ;
    }


    public PageReference save() {
        update acc;
        return null;
    }


    private final Account acc;

    public MyController() {
        acc = [SELECT Id, Name, Type, BillingCountry FROM Account Where id='0017F00000X400z'];
    }

    public Account getAccount() {
        return acc;
    }

   
}