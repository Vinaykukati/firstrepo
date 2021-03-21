@isTest
    public class testmethod2{
    public static testmethod void testcode(){
        Account acc = new Account();
        acc.name = 'Ram';
        insert acc;
        Contact c = new Contact();
        c.lastname = acc.name;
        c.phone=Acc.phone;
        c.mailingcity=acc.Billingcity;
        insert c;
        system.assertEquals('Ram',c.lastname);
        
        Opportunity o = new Opportunity();
        o.name = 'Bhagi';
        if(o.StageName == 'Closedwon'){
            Task t = new Task();
              t.id = o.id;
         t.Subject='Follow up Task';
         t.WhatId=o.Id;
       
             
     
    insert t;

        }
    }
}