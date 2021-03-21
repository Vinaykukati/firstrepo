public with sharing class Student {
    String Name;
    Integer No;
    public Student(){
        Name = 'RAJA';
        No = 100;
    }
    public void show(){
        
        system.debug('Student Name is @@@' +Name);
       	system.debug('Student Number is ' +No); 
        
    }
    
}