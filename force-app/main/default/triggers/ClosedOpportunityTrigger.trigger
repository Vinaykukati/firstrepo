trigger ClosedOpportunityTrigger on Opportunity (before insert,before update)
{
    list<Task> task = new list<Task>();
    for(Opportunity o: Trigger.new)
    {
     if(o.StageName == 'closedWon')
     {
         Task t= new Task();
         t.id = o.id;
         t.Subject='Follow up Task';
         t.WhatId=o.Id;
         task.add(t);
             
     }
    insert task;
    }
   
}