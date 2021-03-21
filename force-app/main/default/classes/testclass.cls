public class testclass {

    public String getSearchpickrec() {
        return null;
    }

public Account job{get;set;}
public List<SelectOption> options{get;set;}
public testclass(){
options = new List<SelectOption>();
Schema.DescribeFieldResult fieldResult = Account.Industry.getDescribe();
List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
for( Schema.PicklistEntry f : ple){

options.add(new SelectOption(f.getLabel(), f.getValue()));
}
}

}