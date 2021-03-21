public class WrapCheckbox_Class
{
    List<Candidatewrapper1> CandidateList = new List<Candidatewrapper1>();
    List<Candidate__c> selectedCandidates = new List<Candidate__c>();
    
       public List<Candidatewrapper1> getAccounts()
    {
        for(Candidate__c a : [select Id, Name,Phone__c from Candidate__c limit 50])
        CandidateList.add(new Candidatewrapper1(a));
        system.debug('CandidateList------>>>>'+CandidateList);
        return CandidateList;
        
    }

    public PageReference getSelected()
    {
        selectedCandidates.clear();
        for(Candidatewrapper1 accwrapper : CandidateList)
        if(accwrapper.selected == true)
        selectedCandidates.add(accwrapper.acc);
        system.debug('selectedCandidates------>>>>'+selectedCandidates);
        return null;
    }

    public List<Candidate__c> GetSelectedAccounts()
    {
        if(selectedCandidates.size()>0)
        
        return selectedCandidates;
        else
        return null;
    }    

    public class Candidatewrapper1
    {
        public Candidate__c acc{get; set;}
        public Boolean selected {get; set;}
        
        public Candidatewrapper1(Candidate__c a)
        {
            acc = a;
            selected = false;
        }
    }
}