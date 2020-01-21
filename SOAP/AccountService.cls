global class AccountService{

    webservice static string CreateAccount(String AccName, String AccType, String AccRating){
    
    Account Acc = New Account();
    Acc.Name = AccName;
    Acc.Type = AccType;
    Acc.Rating = AccRating;
    insert Acc;
    return 'Success';
    
    }
}