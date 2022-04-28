public class FERRAMENTAS extends Compowder{
  private String laser;
  private String antena;
  private String secador;
  private int leitorMusica;

public FERRAMENTAS(String laser, String antena, String secador, int leitorMusica, int serial, String nomeEspia, float versao){
  super(serial, nomeEspia, versao);
  this.laser = laser;
  this.antena = antena;
  this.secador = secador;
  this.leitorMusica = leitorMusica;  
  }
}
