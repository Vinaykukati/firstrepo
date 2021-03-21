trigger accIn on Account (before insert,before update) {
    for(Account ac: trigger.new){
   
            contact c= [select id from contact where name=:ac.Name ];
             delete c;
      
    }
}