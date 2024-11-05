package modelo.dao;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Cliente;


public class AuthDAO {
    
    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public Cliente Login(String usuario, String contrasena){
        
        Cliente obj = null;
        
        try {
            cn = Conexion.getConnection();
            String sql = "select * from usuario where usuario = ? and contrasena = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            
            if(rs.next()){
                obj = new Cliente();
                obj.setId_cliente(rs.getInt("ingresar id tabla"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
            try {
                if (cn != null) {
                    cn.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
                
            }
        }
        return obj;
    }
}
