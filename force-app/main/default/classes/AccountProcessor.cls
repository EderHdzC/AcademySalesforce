public class AccountProcessor {
    
    @future
    public static void countContacts(Set<id> accId){
        List<Account> acc = [SELECT Id, Name FROM Account where Id = :accId];
        List<Account> result = new List<Account>();
        for(Account a:acc){
            a.Number_of_Contacts__c = [SELECT Count() FROM Contact WHERE AccountId = :a.Id];
            result.add(a);
        }
        update result;
    }
    

}