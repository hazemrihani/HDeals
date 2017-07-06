import classes.*;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import java.util.HashMap;
import java.util.Map;
import static spark.Spark.*;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

// Main Class
public class Main {
    
	//Constructor
  public static void main(String[] args) {
  
    port(Integer.valueOf(System.getenv("PORT")));
    staticFileLocation("/public");
    
    post("/", (request, response) -> {
        try
        {       
            Map<String, String> body = new HashMap<>();
            String city = request.queryParams("destinationCity");
            city = city.replaceAll(" ","%20");
            body.put("destinationCity",city);
            body.put("minTripStartDate",request.queryParams("minTripStartDate"));
            body.put("maxTripStartDate",request.queryParams("maxTripStartDate"));         
            URLbuilder builder = new URLbuilder(body);       
            requester req = new requester(builder.getURL());
            req.execute();
            
            Map<String, Object> attributes = new HashMap<>();
           
            if(req.hasError()) {
                attributes.put("message","An error has occured, Sorry For that :(");
                return new ModelAndView(attributes, "error.ftl");
            }
            else {
               
                Gson gson = new GsonBuilder().create();
                Mapper mapper = gson.fromJson(req.getResponse(), Mapper.class);
               
                if(mapper.offers.Hotel != null){
                    attributes.put("city",request.queryParams("destinationCity"));
                    attributes.put("from",request.queryParams("minTripStartDate"));
                    attributes.put("to",request.queryParams("maxTripStartDate"));
                    attributes.put("hotels",mapper.offers.Hotel);
                    return new ModelAndView(attributes, "tour.ftl");
                }
                else {
                    attributes.put("message","Selected Date and city have no entries in our database.");
                    return new ModelAndView(attributes, "error.ftl");
                }
            }
        }
        catch (Exception ex)
        {
            Map<String, Object> attributes = new HashMap<>();
            System.err.println(ex.getMessage());
            attributes.put("message","internal server error");
            return new ModelAndView(attributes, "error.ftl");
        }

    }, new FreeMarkerEngine());

  
    get("/", (request, response) -> {
        Map<String, Object> attributes = new HashMap<>();
        return new ModelAndView(attributes, "index.ftl");
    }, new FreeMarkerEngine());

  }
}
