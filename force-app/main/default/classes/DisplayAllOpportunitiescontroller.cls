public class DisplayAllOpportunitiescontroller {
    public list<Account> acclist {set; get;}
    public String searchstr { get; set; }
   
    

 list<Opportunity> opp = [Select Name,Amount,StageName,ExpectedRevenue From Opportunity];
   
   

}