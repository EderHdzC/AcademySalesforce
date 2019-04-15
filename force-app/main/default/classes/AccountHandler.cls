public class AccountHandler {

    public static Account insertNewAccount (String name){
        try {
            Account newAccount = new Account(Name = name);
            insert newAccount;
            Account record = [SELECT Name FROM Account WHERE id = :newAccount.id];
            return record;
        } catch (DMLException e){
            System.debug('A DML exception has occurred: '+ e.getMessage());
            return null;
        }
    }
}