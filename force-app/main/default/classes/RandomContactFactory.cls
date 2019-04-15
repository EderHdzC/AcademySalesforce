public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer noContacts, String lastName){
        List<Contact> newContacts = new List<Contact>();
        for(Integer i=0;i<noContacts;i++){
            newContacts.add(new Contact(FirstName = 'Test '+i,LastName = lastName));
        }
        return newContacts;
    }
}