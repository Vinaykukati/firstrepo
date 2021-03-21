public with sharing class ext1 {
    public list<Account> Accountlist {set; get;}
    public ext1(ApexPages.StandardSetController stdcontroller) {
        Accountlist = [Select id,name,type,BillingAddress from Account];
    }

}