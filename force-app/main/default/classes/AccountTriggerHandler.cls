public class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> accounts){
        List<Account> acc = new List<Account>();
        for(Account ac: accounts){
            if(ac.ShippingState != ac.BillingState){
				ac.ShippingState = ac.BillingState; 
                acc.add(ac);
            }
        }
    }
}