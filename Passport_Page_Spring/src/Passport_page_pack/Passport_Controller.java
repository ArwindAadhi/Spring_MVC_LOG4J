package Passport_page_pack;

import java.util.Map;

 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/main")


public class Passport_Controller {

	    @Autowired
	    private PassportDAO passportDAO;
	    
	    //method for initializing values
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String loginMethod(Map<String,Object> model)
	    {
	        Passport_ pp = new Passport_();
	        model.put("pp", pp);
	        return "Passport_Home";
	    }
	    
	    
	    //method for inserting books into the table
	    
	    @RequestMapping(value="/insert", method = RequestMethod.POST)
	    public String insertMethod(@ModelAttribute("pp")Passport_ pp)
	    {
	        passportDAO.insertPassport(pp);
	        return "Registered";
	        
	    }
	    
	   
	}


