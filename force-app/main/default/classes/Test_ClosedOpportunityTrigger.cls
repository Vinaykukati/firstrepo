@isTest(seeAllData=true)
public class Test_ClosedOpportunityTrigger {
   
    static testmethod void Testopp(){
       /*User user = New User();
        user.Username = 'test@samp.com';
       user.Email = 'test@samp.com';
       user.Alias = 'tsamp';
       user.UserRoleId = '00E7F000000eCQz';
       user.ProfileId = '00e7F000000q62g';
       user.IsActive = false;
        
        insert user; */
        Opportunity opp = new opportunity();
        opp.Name = 'Raja';
        opp.StageName = 'ClosedWon';
        opp.CloseDate = Date.today();
        Insert opp;
                
        Task t = New Task();
        t.OwnerId = UserInfo.getUserId();
        t.Subject = 'Call';
        t.Status = 'In Progress';
        t.Priority = 'High';
        t.WhatId = opp.Id;
        Insert t;
    }
}