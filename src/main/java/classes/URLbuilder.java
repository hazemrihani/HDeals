package classes;
import java.util.Map;
/**
 * URLBuilder class will concatinate the URL on construction
 * the method getURL will return the URL
 */
public class URLbuilder {
	private String scenario = "";
    private String url="https://offersvc.expedia.com/offers/v2/getOffers?";   
    private String uid = "";
	private String page = "";   
	private String minStarRating = "";
    private String maxStarRating = "";
	private String minGuestRating = "";
    private String maxGuestRating = "";
	private String minTotalRate = "";
    private String maxTotalRate = "";
    private String productType = "";
    private String destinationCity = "";   
    private String minTripStartDate = "";
    private String maxTripStartDate = "";
    private String lengthOfStay = "";
	
	// get url return string
    public String getURL(){
        return url;
    }
    

    public URLbuilder(Map<String,String> parameters){
		productType = "Hotel";   
        scenario = "deal-finder";    
        uid = "foo";
		page = "foo";        
        destinationCity = parameters.get("destinationCity");       
		minGuestRating = parameters.get("minGuestRating");
        maxGuestRating = parameters.get("maxGuestRating");
		minStarRating = parameters.get("minStarRating");
        maxStarRating = parameters.get("maxStarRating");
        lengthOfStay = parameters.get("lengthOfStay");       
        minTotalRate = parameters.get("minTotalRate");
        maxTotalRate = parameters.get("maxTotalRate");
        minTripStartDate = parameters.get("minTripStartDate");
        maxTripStartDate = parameters.get("maxTripStartDate");

		
		if(page != null) {
            url = url + "page=" + page + "&";
        }
		
		if(productType != null) {
            url = url + "productType=" + productType + "&";
        }
		
        if(scenario != null) {
            url = url + "scenario=" + scenario + "&";
        }

        if(uid != null) {
            url = url + "uid=" + uid + "&";
        }
        
		
		if(minGuestRating != null) {
            url = url + "minGuestRating=" + minGuestRating + "&";
        }
		
        if(maxGuestRating != null) {
            url = url + "maxGuestRating=" + maxGuestRating + "&";
        }
		
		if(minStarRating != null) {
            url = url + "minStarRating=" + minStarRating + "&";
        }
		
        if(maxStarRating != null) {
            url = url + "maxStarRating=" + maxStarRating + "&";
        }
		
        if(destinationCity != null) {
            url = url + "destinationCity=" + destinationCity + "&";
        }
		
        if(minTripStartDate != null) {
            url = url + "minTripStartDate=" + minTripStartDate + "&";
        }
		
        if(maxTripStartDate != null) {
            url = url + "maxTripStartDate=" + maxTripStartDate + "&";
        }

        if(minTotalRate != null) {
            url = url + "minTotalRate=" + minTotalRate + "&";
        }
		
        if(maxTotalRate != null) {
            url = url + "maxTotalRate=" + maxTotalRate + "&";
        }

    }



}
