trigger CheckDuplicateInsert on Contact(before insert,before update){

    Map <String, Contact> FirstName = new Map<String,Contact>();
    Map <String, Contact> LastName = new Map<String,Contact>();


    for (Contact newCustomer : System.Trigger.new)
    {
        if ((newCustomer.FirstName != null && newCustomer.LastName!= null ) && System.Trigger.isInsert )
        {
            if (FirstName.containsKey(newCustomer.FirstName) && LastName.containsKey(newCustomer.LastName))
            {
                FirstName.put(newCustomer.FirstName , newCustomer);
                LastName.put(newCustomer.LastName, newCustomer);
               
                Contact customerToDelete = new Contact(id=newCustomer.id);
delete customerToDelete;
            }
 }
 }
 }