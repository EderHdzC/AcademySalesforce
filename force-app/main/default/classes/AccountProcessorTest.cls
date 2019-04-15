@isTest
public class AccountProcessorTest {
    @isTest
    public static void testNumberOfContacts(){
        Account acc = new Account();
        acc.Name = 'Test Account';
        Insert acc;
        
        Contact contact = new Contact();
        contact.FirstName = 'Prueba1';
        contact.LastName =  'Prueba1';
        contact.AccountId = acc.Id;
        
        Contact contact2 = new Contact();
        contact2.FirstName = 'Prueba2';
        contact2.LastName = 'Prueba2';
        contact2.AccountId = acc.Id;
        
        Set<Id> accIds = new Set<Id>();
        accIds.add(acc.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(accIds);
        Test.stopTest();
    }

}