trigger OrderTrigger on Order (before insert) {
    for (Order ord : Trigger.new) {
        String message = ManufacturingCloudIntegration.checkProductionCapacity(ord.Total_Quantity__c);

        if (message.contains('exceeds')) {
            ord.addError(message);
        }
    }
}
