public class VisualForceCustomController {
    
        private final Account account;

        public VisualForceCustomController() {
            account = [SELECT Id, Name FROM Account 
                       WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
        }
    
        

        public Account getAccount() {
            return account;
        }

}