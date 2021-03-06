package controller;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import model.Instituicao;
import persistence.InstituicaoDAO;

@ManagedBean(name = "cadastroInstituicaoBean")
@ViewScoped
public class CadastroInstituicaoBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2653017008497678961L;
	
	private Instituicao instituicao = new Instituicao();
	private InstituicaoDAO objInstituicaoDAO = new InstituicaoDAO();

	public Instituicao getInstituicao() {
		return instituicao;
	}

	public void setInstituicao(Instituicao instituicao) {
		this.instituicao = instituicao;
	}
	
	public String inserir() throws Exception{
		//Tem que entrar algum tipo de valida��o aki se o js n�o funcionar
		if(!objInstituicaoDAO.consulta(instituicao.getAbreviacao())){
			objInstituicaoDAO.inserirInstituicao(instituicao);
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Sucesso", "Instituicao Cadastrada !."));
			return "sucesso";
			
		}
		else
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, "Erro!", "Institui��o Ja Cadastrada!"));
		
		return "erro";
	}
	
	public String cancelar(){
		return "cancelar";
	}
	
	
}
