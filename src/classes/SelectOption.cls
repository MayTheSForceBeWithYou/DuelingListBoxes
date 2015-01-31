global class SelectOption {
    @AuraEnabled
    global String  text      {get; set;}
    @AuraEnabled
    global String  label     {get; set;}
    @AuraEnabled
    global Boolean value     {get; set;}
    @AuraEnabled
    global Boolean isDisabled{get; set;}
    
    
}