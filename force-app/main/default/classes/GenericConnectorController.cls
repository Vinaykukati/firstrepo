public class GenericConnectorController {
    public String authscope {set; get;}
    public String pageName {get; set;}
    public list<Google_Credentials__mdt> googlecrd {get; set;}
    public String code {get; set;}
    public GenericConnectorController(){
        authscope = 'https://www.googleapis.com/auth/Calendar';
        code = Apexpages.currentPage().getparameters().get('code');
        pageName = 'Calendar';
        if(googlecrd == null){
            googlecrd = new list<Google_Credentials__mdt>();
            googlecrd = [Select id,Access_Type__c,Client_Key__c,Client_Secret__c,Grant_Type__c,Include_Granted_Scopes__c,OAuth_Endpoint__c,Prompt__c,Redirect_URI__c,Token_Endpoint__c from Google_Credentials__mdt];
        }           
    }
    public pageReference dogetauthorizationcode(){
        String requestbody = '';
        if(googlecrd != null & googlecrd.size()>0){
           requestbody =  googlecrd[0].OAuth_Endpoint__c+'?Scope='+authscope+'&';
           requestbody+= 'client_id='+googlecrd[0].Client_Key__c+'&redirect_uri='+googlecrd[0].Redirect_URI__c+'&';
           requestbody+= 'access_type='+googlecrd[0].Access_Type__c+'&stste=64235635373';
           requestbody+= 'Include_Granted_Scopes__c=true';
           requestbody+= 'prompt='+googlecrd[0].Prompt__c+'response_type=code';
        }
        pageReference pageref = New pageReference(requestbody);
        pageref.setRedirect(true);
        return pageref;
    }
    public pageReference doGetAccessToken(){
        HttpRequest httpReq = new HttpRequest();
        HttpResponse httpRes = new HttpResponse();
        string errormessage = '';
        if(googlecrd != null && googlecrd.size()>0 && code != Null){
           // httpreq.setMethod('Post');
            
        }
       return null; 
    }
}