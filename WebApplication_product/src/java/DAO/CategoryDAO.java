/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entites.Category;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Phong_learning
 */
public class CategoryDAO {
    String databaseUrl = "jdbc:mysql://localhost:3306/productdb";
    String user = "root";
    String pass = "";
    
    public List<Category> list() throws SQLException{
             List<Category> listCategory = new ArrayList<>();
             try(Connection con = DriverManager.getConnection(databaseUrl, user, pass)){
                 String sql = "SELECT * from category Order by Name";
                 Statement statement = con.createStatement();
                 ResultSet rs = statement.executeQuery(sql);
                 while(rs.next()){
                     int id = rs.getInt("category_ID");
                     String name = rs.getString("Name");
                     String desc = rs.getString("Description");
                     Category category = new Category(id, name, desc);
                     
                     listCategory.add(category);
                 }
                 
             }catch(SQLException ex){
              ex.printStackTrace();
              throw ex;
             }
                     
             return listCategory;     
    }
}
