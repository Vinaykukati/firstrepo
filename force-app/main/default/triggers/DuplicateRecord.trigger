trigger DuplicateRecord on Account (before insert,before update)

{  

  List<Account > StaActiList = [Select Name,Email__c from Account];  

for (Account staActnew : Trigger.new)

  {      

    for(Account sa: StaActiList)

        {         

               if(sa.Email__c == staActnew.Email__c)         

                  {              

                    staActnew.Email__c.addError('Duplicate record on this User Name');        

                  }     

       } 

  }

}