trigger Fee on Candidate__c (before insert,before update) {
    for(Candidate__c can : trigger.new){
        if(can.Country1__c == 'india'){
            can.Fee__c =can.Fee__c - (can.Fee__c*0.10);
        }
    }
    for(Candidate__c can : trigger.new){
        if(can.Country1__c == 'us'){
            can.Fee__c = can.Fee__c - (can.Fee__c * 0.2);
        }
    }
    for(Candidate__c can : trigger.new){
        if(can.Country1__c == 'Aus'){
            can.Fee__c = can.Fee__c -(can.Fee__c * 0.50);
        }
    }
    
    //for validate the field
    for(Candidate__c can : trigger.new){
        if(can.Country__c == null){
           can.adderror('Country is mandatory');
        }
    }
    
    //Duplicate names are not allowed
    for(Candidate__c c : trigger.new){
        list<Candidate__c> can = [select id,name from Candidate__c where name =: c.first_name__c];
            if(can.size()>0){
                c.adderror('Duplicate names are not allowed');
            }
    }
    }