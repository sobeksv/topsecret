package datos;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import properties.Property;

public class DAO {

    public static Connection cnx() throws ClassNotFoundException, SQLException {
        Properties prop = Property.getProp();
        String url = "jdbc:mysql://" + prop.getProperty("dbHost")
                + ":" + prop.getProperty("dbPort") + "/" + prop.getProperty("dbName");
        String driver = "com.mysql.jdbc.Driver";
        String user = prop.getProperty("dbUser");
        String pass = prop.getProperty("dbPass");
        Class.forName(driver);
        Connection cnx = DriverManager.getConnection(url, user, pass);
        return cnx;
    }


    public static Integer getUser(Usuario user) throws ClassNotFoundException, SQLException {

        Connection cnx = cnx();

        String querySelect = "SELECT * FROM Login WHERE user=? AND pass=?";
        PreparedStatement ps = cnx.prepareStatement(querySelect);
        ps.setString(1, user.getUser());
        ps.setString(2, user.getPass());
        ResultSet rs = ps.executeQuery();
        
        int flag = 0;
        String change = "";
        
        if (!rs.next() ) {
            flag = 0;
        }
        else{
            change = rs.getString("rol");
            if(change.equals("doctor"))
                flag = 1;

            
            if(change.equals("asistente"))
                flag = 2;
        }

        cnx.close();
        return flag;
    }
    
    
    public static ArrayList getCarnet(Paciente carnet) throws ClassNotFoundException, SQLException {
        ArrayList row;
        ArrayList reg = new ArrayList();

        Connection cnx = cnx();

        String queryBuscar = "SELECT * FROM Paciente where carnet=?";
        PreparedStatement ps = cnx.prepareStatement(queryBuscar);
        ps.setString(1, String.valueOf(carnet.getCarnet()));
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            row = new ArrayList();
            row.add(rs.getString("carnet"));
            row.add(rs.getString("nombres"));
            row.add(rs.getString("apellidos"));
            row.add(rs.getString("fechaNacimiento"));
            row.add(rs.getString("sexo"));
            row.add(rs.getString("direccion"));
            row.add(rs.getString("dui"));
             
            
            reg.add(row);
        }

        cnx.close();
        return reg;
    }
 //---------------------------------actualizar paciente-----------------------

     
       public static void update(Paciente paciente) throws ClassNotFoundException, SQLException {
        Connection cnx = cnx();

        String queryUpdate = "UPDATE Paciente set nombres=?, apellidos=?, fechaNacimiento=?, sexo=?, direccion=?, dui=? WHERE carnet=?";
        String queryUpdate2 = "UPDATE Expediente set peso=?, altura=? where carnet=?";
        PreparedStatement ps = cnx.prepareStatement(queryUpdate);
        PreparedStatement ps2 = cnx.prepareStatement(queryUpdate2);
         
         ps.setString(1, paciente.getNombre());
        ps.setString(2, paciente.getApellido());
        ps.setString(3, paciente.getFechaNacimiento());
        ps.setString(4, paciente.getSexo());
        ps.setString(5, paciente.getDireccion());
        ps.setString(6, paciente.getDui());
        ps.setInt(7,paciente.getCarnet());
        ps2.setDouble(1, paciente.getPeso());
        ps2.setDouble(2, paciente.getAltura());
        ps2.setInt(3,paciente.getCarnet());
        
          ps.executeUpdate();
          ps2.executeUpdate();

        cnx.close();
    }
       
// -------------------------- Crear Paciente
       
    public static void insertPaciente(Paciente paciente) throws ParseException, ClassNotFoundException, SQLException {

        Connection cnx = cnx();

        String queryInsert = "INSERT INTO Paciente(nombres,apellidos,fechaNacimiento,sexo,direccion,dui) VALUES(?,?,?,?,?,?)";
        PreparedStatement ps = cnx.prepareStatement(queryInsert);
        ps.setString(1, paciente.getNombre());
        ps.setString(2, paciente.getApellido());
        ps.setString(3, paciente.getFechaNacimiento());
        ps.setString(4, paciente.getSexo());
        ps.setString(5, paciente.getDireccion());
        ps.setString(6, paciente.getDui());
        
        ps.executeUpdate();

        cnx.close();
    }   
    
       //------------------- verificar si existre paciente---------------------------------------
    
       public static Integer Paciente(Paciente carnet) throws ClassNotFoundException, SQLException {

        Connection cnx = cnx();

        String querySelect = "SELECT * FROM Paciente WHERE carnet=?";
        PreparedStatement ps = cnx.prepareStatement(querySelect);
        ps.setInt(1, carnet.getCarnet());
       
        ResultSet rs = ps.executeQuery();
        
        int flag = 0;
        String change = "";
        
        if (!rs.next() ) {
            flag = 0;
        }
        else{
                flag = 1;
        }
        cnx.close();
        return flag;
    }
       
       
       
    ///-------------mostra expediente medico------------------------------------------
       
     public static ArrayList getCarnet2(Paciente carnet) throws ClassNotFoundException, SQLException {
        ArrayList row;
        ArrayList reg = new ArrayList();

        Connection cnx = cnx();

        String queryBuscar = "select * from Paciente inner join Expediente on Paciente.carnet = Expediente.carnet where Paciente.carnet = ?";
        PreparedStatement ps = cnx.prepareStatement(queryBuscar);
        ps.setString(1, String.valueOf(carnet.getCarnet()));
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            row = new ArrayList();
            row.add(rs.getString("carnet"));
            row.add(rs.getString("nombres"));
            row.add(rs.getString("apellidos"));
            row.add(rs.getString("fechaNacimiento"));
            row.add(rs.getString("sexo"));
            row.add(rs.getString("direccion"));
            row.add(rs.getString("dui"));
            row.add(rs.getDouble("peso"));
            row.add(rs.getDouble("altura"));
             
            
            reg.add(row);
        }

        cnx.close();
        return reg;
    }  
 
    
    public static void insertReceta(int x, Receta receta, Paciente paciente, Enfermedad enfermedad) throws ParseException, ClassNotFoundException, SQLException {
        Connection cnx = cnx();
        
        //idenfermedad
        String queryInsert2 = "INSERT INTO Receta(idexpediente, idenfermedad, medicamento,dosis,fechaInicio,fechaFin) VALUES(?,?,?,?,?,?)";
        PreparedStatement ps2 = cnx.prepareStatement(queryInsert2);
        
        ps2.setInt(1, paciente.getCarnet());
        ps2.setInt(2, x);
        ps2.setString(3, receta.getMedicamento());
        ps2.setString(4, receta.getDosis());
        ps2.setString(5, receta.getFechaInicio());
        ps2.setString(6, receta.getFechaFin());
        
        ps2.executeUpdate();

        cnx.close();
        
    }
    
    
    public static void insertEnfermedad(Enfermedad enfermedad, Paciente paciente) throws ParseException, ClassNotFoundException, SQLException {
        Connection cnx = cnx();
        
        
        String queryInsert1 = "INSERT INTO Enfermedad(idExpediente,descripcion) VALUES(?,?)";
        PreparedStatement ps1 = cnx.prepareStatement(queryInsert1);
        
        ps1.setInt(1, paciente.getCarnet()); 
        ps1.setString(2, enfermedad.getDescripcion());
      
        ps1.executeUpdate();

        
        cnx.close();
//        return g;
    }
    
    public static Integer getIdEnfermedad(Enfermedad enfermedad, Paciente paciente) throws ParseException, ClassNotFoundException, SQLException {
        Connection cnx = cnx();
        
        String queryID = "select idEnfermedad from Enfermedad where Enfermedad.idExpediente = ? AND Enfermedad.descripcion = ? ;";
        PreparedStatement ps2 = cnx.prepareStatement(queryID);
        ps2.setInt(1, paciente.getCarnet());
        ps2.setString(2, enfermedad.getDescripcion());
//        ps2.executeUpdate();
        ResultSet rs = ps2.executeQuery();
        
        int g = 0;
        while (rs.next()){
            String str = rs.getString("idEnfermedad");
            g = Integer.parseInt(str);
        }
        
        cnx.close();
        return g;
    }

    
    
    
    
    public static ArrayList getIdEnfermedad(Paciente pac) throws ClassNotFoundException, SQLException {
        ArrayList row;
        ArrayList reg = new ArrayList();

        Connection cnx = cnx();

        String queryBuscar = "select Enfermedad.idEnfermedad from Enfermedad where Enfermedad.idExpediente = ?";
        PreparedStatement ps = cnx.prepareStatement(queryBuscar);
        ps.setInt(1, (pac.getCarnet()));
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            row = new ArrayList();
             
            
            reg.add(row);
        }

        cnx.close();
        return reg;
    }

}
