public with sharing class NewCaseListController {

    public String caseid { get; set; }
    public list<case> getNewCases (){
    list<case> lst = [Select CaseNumber from case where status = 'new'];
    return lst;
}
}