public class AddPrimaryContact implements Queueable {
	
    private Contact contact;
    private String abbreviation;
    public AddPrimaryContact(Contact records,String stateAbb){
        this.contact = records;
        this.abbreviation = stateAbb;
    }
    public void execute(QueueableContext context){
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE BillingState = :abbreviation LIMIT 200];
        List<Contact> conts = new List<Contact>();
        
        for(Account acc:accounts){
            Contact newContact = this.contact.clone(false,false,false,false);
            newContact.AccountId = acc.Id;
            conts.add(newContact);
        }
        if(conts.size() > 0){
            insert conts;
        }
    }
}