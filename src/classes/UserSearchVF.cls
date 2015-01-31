public class UserSearchVF {
    public System.SelectOption[]      availableSelectOptions {get; set;}
    public System.SelectOption[]      selectedSelectOptions  {get; set;}
    
    public UserSearchVF() {
        this.availableSelectOptions = new System.SelectOption[]{};
        this.selectedSelectOptions  = new System.SelectOption[]{};
    }
}