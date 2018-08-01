package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dados.Corrida;
import dados.Motorista;
import dados.Passageiro;

public class DadosDAO {
	private Connection con;
	
	public DadosDAO() {
		try {
			this.con = new dao.ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException (e);
		}
	}
	
	public void addMoto(Motorista m) {
		try {
		String sql = "INSERT INTO motoristas (nm_motorista, dt_motorista, cpf_motorista, sx_motorista, stat_motorista, modelo_carro)\r\n" + 
				"VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1, m.getNmMot());
		stmt.setString(2, m.getNascMot());
		stmt.setLong(3, m.getCpfMot());
		stmt.setString(4, m.getSexo());
		stmt.setString(5, m.getStatus());
		stmt.setString(6, m.getModelo());
		
		stmt.execute();
		stmt.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void altMoto(Motorista m) {
		try {
		String sql = "UPDATE motoristas SET nm_motorista = ?, dt_motorista = ?, cpf_motorista = ?, sx_motorista = ?, stat_motorista = ?, modelo_carro = ?\r\n" + 
				"WHERE id_motorista = ?";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1, m.getNmMot());
		stmt.setString(2, m.getNascMot());
		stmt.setLong(3, m.getCpfMot());
		stmt.setString(4, m.getSexo());
		stmt.setString(5, m.getStatus());
		stmt.setString(6, m.getModelo());
		stmt.setInt(7, m.getIdMot());
		
		stmt.execute();
		stmt.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void addPass(Passageiro p) {
		try {
		String sql = "INSERT INTO passageiros (nm_passageiro, dt_passageiro, cpf_passageiro, sx_passageiro) VALUES"
				+ "(?, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1, p.getNmPass());
		stmt.setString(2, p.getNascPass());
		stmt.setLong(3, p.getCpfPass());
		stmt.setString(4, p.getSxPass());
		
		stmt.execute();
		stmt.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void addCorrida(Corrida c) {
		try {
		String sql = "INSERT INTO corridas (nm_motorista, nm_passageiro, valor) VALUES"
				+ "(?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1, c.getNmMotorista());
		stmt.setString(2, c.getNmPassageiro());
		stmt.setDouble(3, c.getValor());
		
		stmt.execute();
		stmt.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String validarPass(Corrida c) {
		String n = "";
		try {
			String sql = "SELECT id_passageiro FROM passageiros WHERE nm_passageiro = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, c.getNmPassageiro());
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				n = "true";
			}
			
			stmt.close();
			rs.close();	
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return n;
		}
	
	public String validarMot(Corrida c) {
		String nn = "";
		try {
			String sql = "SELECT id_motorista FROM motoristas WHERE nm_motorista = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, c.getNmMotorista());
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				nn = "true";
			}
			
			stmt.close();
			rs.close();	
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return nn;
		}
	
	
	public String motStatus(Corrida c) {
		String st = "Ativo";
		try {
			String sql = "SELECT stat_motorista FROM motoristas WHERE nm_motorista = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, c.getNmMotorista());
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()){
			st = rs.getString("stat_motorista");
			}
			
			stmt.close();
			rs.close();	
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return st;
		}
	
	
	}

