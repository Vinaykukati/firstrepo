public class NewCaseList {
    list<case> getNewCases(){
    list<case> lst = [select casenumber from case where status = 'new'];
    return lst;
    }
}