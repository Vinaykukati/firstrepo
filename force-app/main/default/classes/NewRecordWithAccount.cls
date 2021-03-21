@isTest
public class NewRecordWithAccount {
   public  static testMethod void testfunctionlity(){
       Account acc = New Account();
       acc.name = 'RAJA';
       acc.Phone = '9966757608';
       insert acc;
        Contact con = new contact();
        con.LastName = acc.name;
        con.Phone = acc.phone ;
        con.AccountId = acc.Id;
        Test.StartTest();
        Insert con;
        Test.stopTest();
   System.assertEquals('9966757608',con.Phone);
   }
}