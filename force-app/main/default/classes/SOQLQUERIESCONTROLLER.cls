public with sharing class SOQLQUERIESCONTROLLER {

    public PageReference relatedRecords() {
        acc=[SELECT Account.Name,id, (SELECT Contact.NAME FROM Account.Contacts) FROM Account];
        return null;
    }

    public PageReference getRecords() {
        acc=[SELECT NAME FROM ACCOUNT WHERE ISDELETED = TRUE ALL ROWS ];
        return null;
    }


    public PageReference offsetrecord() {
        acc=[SELECT NAME FROM ACCOUNT ORDER BY NAME limit 50 OFFSET 3];
        return null;
    }


    public PageReference Records() {
        acc=[SELECT NAME FROM ACCOUNT ORDER BY NAME LIMIT 10];
        return null;
    }


    public LIST<Account> acc { get; set; }
    PUBLIC SOQLQUERIESCONTROLLER (){
        acc=[SELECT NAME FROM ACCOUNT];
    }
}