global class LeadProcessor implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(
        'SELECT Id, LeadSource FROM Lead');
    }
    global void execute(Database.BatchableContext bc, List<Lead> lead){
        List<Lead> leadList = new List<Lead>();
        for(Lead leads: lead){
            leads.LeadSource = 'Dreamforce';
        }
    }
    
    global void finish(Database.BatchableContext bc){
        Id batchId = bc.getJobId();
        System.debug(batchId + ' batchId!');
    }

}