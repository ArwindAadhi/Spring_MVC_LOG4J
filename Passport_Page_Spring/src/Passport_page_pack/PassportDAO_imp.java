package Passport_page_pack;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class PassportDAO_imp implements PassportDAO{
	
	 	@SuppressWarnings("unused")
		private DataSource dataSource;
	    private JdbcTemplate jdbcTemplate;
	    
	    @Autowired
	    public void setDataSource(DataSource dataSource)
	    {
	        this.dataSource = dataSource;
	        this.jdbcTemplate = new JdbcTemplate(dataSource);
	    }

		@Override
		public void insertPassport(Passport_ pp) {
			// TODO Auto-generated method stub
			
			String sql = "insert into passport values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	        jdbcTemplate.update(sql,pp.getName(),
	        		pp.getGender(),
	        		pp.getDob(),
	        		pp.getAge(),
	        		pp.getUser_email(),
	        		pp.getUser_passoword(),
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
	        		pp.getDisability(),
	        		pp.getPhoto());
	        
	        System.out.println("Inserted successfully");
			}
		} 

	


