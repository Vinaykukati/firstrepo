public class FieldEncrypt {
    public void method1(list<Account> acc){
        for(Account a : acc){
            if(a.phone != null){
                string phonestr = string.valueOf(a.phone);
                integer len = phonestr.length();
                if(len > 4){
                    phonestr = phonestr.substring(6,10);
                    a.Phone = 'XXXXXX'+phonestr ;
                }
            }
        }
    }
    public void fieldtype(list<Account>a){
   
        for(Account acc : a){
            if(acc.Type == 'None'){
                 acc.adderror('Please enter anyone value in Type Field');
            }
            if(acc.Type == 'Prospect'){
               acc.adderror('Prospect doesnt enter in Accounts');
            
        }
    }
   }       
}