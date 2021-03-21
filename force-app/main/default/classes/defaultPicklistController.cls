public class defaultPicklistController {
    public list<lead> acc{set; get;}
    public list<lead> getAcc() {
        list<Account> acc = new list<Account>();
        return null;
    }


    public void searchrecords() {
        
        
    }


    public String getDosearch() {
        return null;
    }

 
public Lead lead {get;set;}
public List < SelectOption > statusOptions {get;set;}
public defaultPicklistController () {
lead = new Lead();
statusOptions = new List < SelectOption > ();
 

Schema.DescribeFieldResult statusFieldDescription = Schema.Lead.Status.getDescribe();

for (Schema.Picklistentry picklistEntry: statusFieldDescription.getPicklistValues()) {
statusOptions.add(new SelectOption(pickListEntry.getValue(), pickListEntry.getLabel()));

if (picklistEntry.isDefaultValue()) {
lead.Status = picklistEntry.getValue();
}
}
}
}