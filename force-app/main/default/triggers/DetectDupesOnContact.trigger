trigger DetectDupesOnContact on Lead (before insert) {
    for(Lead l : trigger.new){
        if(l.Email!=null){
            list<contact> con = [Select id,name From Contact Where Email=:l.Email];
            if(con != null && con.size()>0){
               l.adderror('Duplicate Email');
            }
        }
    }
}