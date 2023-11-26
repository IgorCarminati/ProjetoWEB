package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Local;
import utils.Conexao;

public class LocalController {
	/*static List<Local> locais = new ArrayList<Contato>();*/
	
	public LocalController() {
		/*contatos.add(new Local(1, "maria", "Francisco Carminatti","894", "São Pedro", "Guabiruba", "SC", "88360000"));
		contatos.add(new Local(2, "jose", "Rod Antonio Heil", "200", "Centro 2", "Brusque", "SC", "88353100"));
		 */
		}
	
	public Local consultarByID(int id) {
		Connection con = Conexao.conectar();
		Local local = null;
    	try {
			PreparedStatement stm = con.prepareStatement("select * from tb_locais where id = ?");
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if(rs.next()) {
				local = new Local(rs.getInt("id"),rs.getString("nome"),rs.getString("rua"),rs.getString("numero"),rs.getString("bairro"),rs.getString("cidade"),rs.getString("uf"),rs.getString("cep"));				
			}
		} catch (SQLException e) {
		   e.printStackTrace();
		}
    	return local;
	}
	
	public boolean alterar(Local lc) {
    	Connection con = Conexao.conectar();
    	String sql = "update tb_contatos set nome = ?, rua = ?, numero = ?, bairro = ?, cidade = ?, uf = ?, cep = ?, where id = ?";
    	try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, lc.getNome());
			stm.setString(2, lc.getRua());
			stm.setString(3, lc.getNumero());
			stm.setString(4, lc.getBairro());
			stm.setString(5, lc.getCidade());
			stm.setString(6, lc.getUf());
			stm.setString(7, lc.getCep());
			stm.setInt(8, lc.getId());
			stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;			
		}
    	finally {
			Conexao.fechar();
		}
    	return true;
    }
	
    public boolean salvar(Local lc) {
    	Connection con = Conexao.conectar();
    	String sql = "insert into tb_locais(nome, rua, numero, bairro, cidade, uf, cep)values(?,?,?,?,?,?,?)";
    	try {
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, lc.getNome());
			stm.setString(2, lc.getRua());
			stm.setString(3, lc.getNumero());
			stm.setString(4, lc.getBairro());
			stm.setString(5, lc.getCidade());
			stm.setString(6, lc.getUf());
			stm.setString(7, lc.getCep());
			stm.setInt(8, lc.getId());
			stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;			
		}
    	finally {
			Conexao.fechar();
		}
    	return true;
    }
    
    public List<Local> getLocais(){
    	List<Local> locais = new ArrayList<>();
    	Connection con = Conexao.conectar();
    	try {
			PreparedStatement stm = con.prepareStatement("select * from tb_locais");
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				locais.add(new Local(rs.getInt("id"),rs.getString("nome"),rs.getString("rua"),rs.getString("numero"),rs.getString("bairro"),rs.getString("cidade"),rs.getString("uf"),rs.getString("cep")));				
			}
		} catch (SQLException e) {
		   e.printStackTrace();
		}
    	finally {
			Conexao.fechar();
		}
    	
    	return locais;
    }
}
