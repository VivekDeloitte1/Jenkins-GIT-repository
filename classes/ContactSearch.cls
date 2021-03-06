public class ContactSearch 
{
    public List<Contact> contacts { get; set; }
    public String name { get; set; }
    public String mailingState { get; set; }

    public ContactSearch()
    {
        contacts = new List<Contact>();
    }

    public PageReference searchContacts()
    {
	system.debug('--------->');
        contacts = [select Id
                          ,Name
                          ,MailingState 
                     from Contact 
                    where Name = :name
                    and MailingState = :mailingState];
        return null;
    }
	
}