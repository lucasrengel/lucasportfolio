import java.util.ArrayList;

public class Espia{
  private int codEspia;
  private String nome;
  private int idade;
  private int compowder;
  private String formacao;
  private String premios;
  private String conclusao;
  private ArrayList<String> aparelhos;

public Espia(int codEspia, String nome, int idade, int compowder, String formacao, String premios, String conclusao){
  this.codEspia = codEspia;
  this.nome = nome;
  this.idade = idade;
  this.compowder = compowder;
  this.formacao = formacao;
  this.premios = premios;
  this.conclusao = conclusao;
  }

public boolean treinar(int codEspia, int idade){
  return true;
  }

public void disfarce(String nome, int codEspia, int Compowder){
  }

public boolean irMissao(int codEspia, String nome, int compowder, String formacao, String conclusao){
  return true;
  }

public boolean verificarAparelhos(){
  return true;
  }

public boolean verificarCompowder(){
  return true;
  }
}
