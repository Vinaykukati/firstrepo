public class Accountcontroller {
    list<Account> acc {set; get;}
    public void dosearch() {
    List<SelectOption> options = new List<SelectOption>();
    List<Schema.PicklistEntry> picklistValues = Schema.getGlobalDescribe().get('Account').getDescribe().fields.getMap().get('Industry').getDescribe().getPicklistValues();
        
    for(Schema.PicklistEntry picklistEntry : picklistValues) {
    options.add(new SelectOption(picklistEntry.getValue(), picklistEntry.getLabel()));
}
    }


    public Account getA() {
        return null;
    }


}