package model;

import java.io.Serializable;

public class Tarefa  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4185941214039254370L;
	
	private Integer id_tarefa;
	private String nome;
	private Integer pontuacao_max;
	private Integer pontuacao_min;
	private String descricao;
	private Nivel objNivel;
	
	public Integer getPontuacao_min() {
		return pontuacao_min;
	}
	public void setPontuacao_min(Integer pontuacao_min) {
		this.pontuacao_min = pontuacao_min;
	}
	
	public Integer getId_tarefa() {
		return id_tarefa;
	}
	public void setId_tarefa(Integer id_tarefa) {
		this.id_tarefa = id_tarefa;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getPontuacao_max() {
		return pontuacao_max;
	}
	public void setPontuacao_max(Integer pontuacao_max) {
		this.pontuacao_max = pontuacao_max;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Nivel getNivel() {
		return objNivel;
	}
	public void setNivel(Nivel nivel) {
		this.objNivel = nivel;
	}
	
	
	

}
