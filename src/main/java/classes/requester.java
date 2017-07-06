package classes;

import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import java.io.IOException;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

public class requester {
    private static String url;
	private static String error = null;
    private static String res = null;
    
    
    public requester (String httpURL){
        url = httpURL;
    }
	
    // getting api response return string
    public String getResponse() {
        return res;
    }
	
    // getting error return string
    public String getError(){
        return error;
    }
	
    // check errors return true or false
    public boolean hasError(){
        if(error == null)
            return false;
        else
            return true;
    }

    public static void execute() {

            HttpClient client = HttpClientBuilder.create().build();
            HttpGet request = new HttpGet(url);
			
        try {
            HttpResponse response = client.execute(request);
            HttpEntity entity = response.getEntity();
            String content = EntityUtils.toString(entity);
            res = content;
        } catch (IOException e) {
            error = e.getMessage();
        }
    }
}
