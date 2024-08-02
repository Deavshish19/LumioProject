public class ManufacturingCloudIntegration {

    private static final String API_ENDPOINT = 'https://your-manufacturing-cloud-endpoint/api/v1/productionCapacity'; 
    private static final String API_KEY = 'api-key'; 

    // Method to check production capacity
    public static String checkProductionCapacity(Integer orderQuantity) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(API_ENDPOINT);
        req.setMethod('GET');
        req.setHeader('Authorization', 'Bearer ' + API_KEY);
        req.setHeader('Content-Type', 'application/json');

        Http http = new Http();
        HttpResponse res = http.send(req);

        if (res.getStatusCode() == 200) {
            // Parse response to check production capacity
            Map<String, Object> responseBody = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
            Integer availableCapacity = (Integer) responseBody.get('availableCapacity');

            if (orderQuantity > availableCapacity) {
                return 'Order quantity exceeds available production capacity. Please adjust your order.';
            } else {
                return 'Order quantity is within the available production capacity.';
            }
        } else {
            return 'Failed to retrieve production capacity. Please try again later.';
        }
    }
}
