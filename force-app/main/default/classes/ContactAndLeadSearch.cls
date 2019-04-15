public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String param){
        param = 'Smith';
        List<List<SObject>> searchList = [FIND :param IN ALL FIELDS 
                                         Returning Contact(Name WHERE LastName =:param OR FirstName =:param), Lead(Name WHERE LastName =:param OR FirstName=:param)];
        return searchList;
    }
}