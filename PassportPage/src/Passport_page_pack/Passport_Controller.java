package Passport_page_pack;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller

public class Passport_Controller {
	
	private static final Logger LOGGER = Logger.getLogger(Passport_Controller.class);
	
		
	    @Autowired
	    private PassportDAO passportDAO;
	    
	    //method for initializing values
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    
	    
	    
	    public String loginMethod(Map<String,Object> model)
	    {
	       LOGGER.info("----------REACHED LOGIN METHOD------------");
	       Passport p = new Passport();
	       model.put("pp", p);
	          
	       LOGGER.info("-----------REDIRECTED TO HOME PAGE------------");
	       return "Passport_Home";
	       
	        
	    
	    }
	    
	    
	    //method for inserting DATA into the table
	    
	    @RequestMapping(value="/insert", method = RequestMethod.POST)
	    public String insertMethod(@ModelAttribute("pp")Passport p)
	    {
	    	LOGGER.info("----------REACHED INSERT METHOD------------");
	    	passportDAO.insertPassport(p);
	        LOGGER.info("----------DATA HAS BEEN  INSERTED SUCESSFULLY------------");
	        return "Registered";
	    	
	    }
	    
}


	        
	    
	    
	   
	


