trigger AddMRtoName on Account (before insert,before update) {
    for(Account a : trigger.new){
        a.name = 'MR.'+a.name;
        
    }
}