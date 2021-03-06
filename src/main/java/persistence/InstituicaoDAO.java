package persistence;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Instituicao;




public class InstituicaoDAO extends DAO {
	
	public ArrayList<Instituicao> consulta() throws Exception {
		
		ArrayList<Instituicao> instituicoes = new ArrayList<Instituicao>();
		Instituicao instituicao;
		String sql = "SELECT * from instituicao";
		
		open();
		st = con.createStatement();
		rs = st.executeQuery(sql);
		
		while(rs.next()){
			
			instituicao = new Instituicao();
			
			instituicao.setId_instituicao(rs.getInt("id_instituicao"));
			instituicao.setNome(rs.getString("nome"));
			instituicao.setAbreviacao(rs.getString("abreviacao"));
			instituicao.setEstado(rs.getString("estado"));
			instituicao.setTelefone(rs.getString("telefone"));
			instituicao.setSite(rs.getString("site"));
			instituicoes.add(instituicao);
		}
		close();
		return instituicoes;
		
		
	}
	
	public boolean consulta(String abreviacao) throws Exception {
		
		Instituicao instituicao = null;
		String sql = "SELECT * from instituicao where instituicao.abreviacao = '" + abreviacao + "';";
		open();
		st = con.createStatement();
		rs = st.executeQuery(sql);
		
		while(rs.next()){
			
			instituicao = new Instituicao();
			
			instituicao.setId_instituicao(rs.getInt("id_instituicao"));
			instituicao.setNome(rs.getString("nome"));
			instituicao.setAbreviacao(rs.getString("abreviacao"));
			instituicao.setEstado(rs.getString("estado"));
			instituicao.setTelefone(rs.getString("telefone"));
			instituicao.setSite(rs.getString("site"));
		
		}
		close();
		
		if(instituicao == null){
			return false;
		}
		else
			return true;
	}
	
public Instituicao consulta(int id) throws Exception {
		
		Instituicao instituicao = null;
		String sql = "SELECT * from instituicao where instituicao.id_instituicao = '" + id + "';";
		open();
		st = con.createStatement();
		rs = st.executeQuery(sql);
		
		while(rs.next()){
			
			instituicao = new Instituicao();
			
			instituicao.setId_instituicao(rs.getInt("id_instituicao"));
			instituicao.setNome(rs.getString("nome"));
			instituicao.setAbreviacao(rs.getString("abreviacao"));
			instituicao.setEstado(rs.getString("estado"));
			instituicao.setTelefone(rs.getString("telefone"));
			instituicao.setSite(rs.getString("site"));
		
		}
		close();
		
		return instituicao;
	}
	
	
	
	public void inserirInstituicao(Instituicao instituicao) throws Exception{
		
		open();
		stmt = con.prepareStatement("INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES (?,?,?,?,?);");
		
		stmt.setString(1, instituicao.getNome());
		stmt.setString(2, instituicao.getAbreviacao());
		stmt.setString(3, instituicao.getEstado());
		stmt.setString(4, instituicao.getTelefone());
		stmt.setString(5, instituicao.getSite());
		stmt.execute();
		close();
	}

}
