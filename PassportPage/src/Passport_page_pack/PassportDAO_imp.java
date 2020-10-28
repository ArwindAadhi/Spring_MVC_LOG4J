package Passport_page_pack;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class PassportDAO_imp implements PassportDAO{
		
	private static final Logger LOGGER = Logger.getLogger(Passport_Controller.class);
	
	 	@SuppressWarnings("unused")
		private DataSource dataSource;
	    private JdbcTemplate jdbcTemplate;
	    
	    @Autowired
	    public void setDataSource(DataSource dataSource)
	    {
	        this.dataSource = dataSource;
	        LOGGER.info("----------CONNECTING TO DATABASE------------");
	        this.jdbcTemplate = new JdbcTemplate(dataSource);
	    }

		@Override
		public void insertPassport(Passport pp) {
			// TODO Auto-generated method stub
			LOGGER.info("----------INSERTING DATA IN TO DATABASE------------");
			String sql = "insert into passport_data (name,Gender,dob,age,user_email,user_password,father_name,mother_name,pan_number,aadhar_number,martial_status,address,door_no,street,district,Pincode,states,Phone_Number,resident,disability) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	        jdbcTemplate.update(sql,pp.getName(),
	        		pp.getGender(),
	        		pp.getDob(),
	        		pp.getAge(),
	        		pp.getUser_email(),
	        		pp.getUser_password(),
	        		pp.getFather_name(),
	        		pp.getMother_name(),
	        		pp.getPan_number(),
	        		pp.getAadhar_number(),
	        		pp.getMartial_status(),
	        		pp.getAddress(),
	        		pp.getDoor_no(),
	        		pp.getStreet(),
	        		pp.getDistrict(),
	        		pp.getPincode(),
	        		pp.getStates(),
	        		pp.getPhone_Number(),
	        		pp.getResident(),
	        		pp.getDisability());
	        
	        LOGGER.info("----------INSERTED SUCCESSFULLY---------");
			}
		} 

	


