package bdUtil;


import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class InstructorDAO {
	JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
	
	public int addWaterAnalysisData(String month, int numberOfDays, double waterConsumption, double waterConsumptionRM, double prorateFactor) {
        String sql = "INSERT INTO wateranalysis (month, number_of_days, water_consumption, water_consumption_rm, prorate_factor) VALUES (?, ?, ?, ?, ?)";
        return jdbct.update(sql, month, numberOfDays, waterConsumption, waterConsumptionRM, prorateFactor);
    }
	
	public DataSource getDataSource() {
		DataSource ds = null;
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String username = "root";
		String password = "";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} 
		catch (ClassNotFoundException ex) {
		ex.printStackTrace();
		}
		ds = new DriverManagerDataSource(dbURL, username, password);
		return ds;
	}
}
