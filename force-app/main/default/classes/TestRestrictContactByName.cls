@isTest
private class TestRestrictContactByName {
	@isTest 
    private static void insertInvalidName(){
   		Contact newContact = new Contact(LastName='INVALIDNAME');
        Test.startTest();
        Database.insert(newContact);
        Test.stopTest();
    }
}