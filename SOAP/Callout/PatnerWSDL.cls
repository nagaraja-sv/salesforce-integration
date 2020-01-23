// Calling this from a Excute Anonymus window 
partnerSoapSforceCom.LoginResult sessioninfo = new partnerSoapSforceCom.LoginResult();

partnerSoapSforceCom.soap soapObj = new partnerSoapSforceCom.soap();
sessioninfo = soapObj.login('**********','*******SercurityTocken');

system.debug('SessionId'+sessioninfo.sessionId);
soapSforceAccountService.SessionHeader_element  sessionElementObj = new soapSforceAccountService.SessionHeader_element();
sessionElementObj.sessionId = sessioninfo.sessionId;


soapSforceAccountService.AccountService Accs= New  soapSforceAccountService.AccountService();
Accs.SessionHeader = sessionElementObj;
String result= Accs.CreateAccount('Debisis','Other','Hot');
System.debug('result'+result);