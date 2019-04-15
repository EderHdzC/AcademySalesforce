public class ContactSearch {
    
    public static List<Contact> searchForContacts(String firstP,String secondP){
        List<Contact> buscar = [SELECT id, Name FROM Contact WHERE LastName=:firstP AND MailingPostalCode =:secondP];
        return buscar;
    }

}