public class UserSearchAura {
    public User[]                     availableUsers         {get; set;}
    public User[]                     selectedUsers          {get; set;}
    @AuraEnabled
    public pepspring15.SelectOption[] availableAuraOptions   {get; set;}
    @AuraEnabled
    public pepspring15.SelectOption[] selectedAuraOptions    {get; set;}
    
    public UserSearchAura() {
        this.availableUsers         = [SELECT Id, Name FROM User];
        this.selectedUsers          = new User[]{};
        this.availableAuraOptions   = new pepspring15.SelectOption[]{};
        this.selectedAuraOptions    = new pepspring15.SelectOption[]{};
        for(User usrAvail : this.availableUsers) {
            pepspring15.SelectOption auraOpt = new pepspring15.SelectOption();
            auraOpt.text       = usrAvail.Id;   // "Value" of the option
            auraOpt.label      = usrAvail.Name; // "Label" of the option
            auraOpt.value      = false;         // Is selected?
            auraOpt.isDisabled = false;         // No brainer
            this.availableAuraOptions.add(auraOpt);
        }
    }
}