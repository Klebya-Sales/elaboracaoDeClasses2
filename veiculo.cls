public class Veiculo {
	private String placa;
    private String marca;
    public String tipo;
    public String modelo{
        get{
            return modelo;
        }
        set{
            this.modelo = value;
        }
    }
    public Integer anoFabricacao;
    public Pessoa proprietarioAtual = new Pessoa();
    public Pessoa proprietarioAnterior = new Pessoa();
    public Boolean novo;
    public Decimal valorCompra;
    // Outra forma de Encapsular
    public Decimal valorVenda{
        get{
            return valorVenda;
        }
        set{
            if(value > 0){
            	this.valorVenda = value;    
            }
        }
    }    
    public String getPlaca(){
        return placa;
    }
    public void setPlaca(String placa){
        if(placa.length() >= 8){
            this.placa = placa;
        }else{
            System.debug('Placa inválida.');
        }
        
    }
    public void setPlaca(String letras,String numeros){
       if(letras.length() == 3 && numeros.length() == 4){
           this.placa = letras + '-' + numeros;
       }
    }
    /*
     public String getProprietarioAtual(){
        return proprietarioAtual;
    }
    public void setProprietarioAtual(String proprietarioAtual){
        this.proprietarioAtual = proprietarioAtual;
    }
     public String getProprietarioAnterior(){
        return proprietarioAnterior;
    }
    public void setProprietarioAnterior(String proprietarioAnterior){
        this.proprietarioAnterior = proprietarioAnterior;
    }
	*/
   
    public String getMarca(){
        return marca;
    }
    public void setMarca(String marca){
        this.marca = marca;
    }
    {
    	valorVenda = 0;
       // placa = 'hvx-3435';
        
    }
    //construtor vazio
    public Veiculo(){}
    //informações do veículo
    public Veiculo(String placa, String modelo, String marca){
        this.setPlaca(placa);
        this.setMarca(marca);
        this.modelo = modelo;
    }
    //dados do veículo
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        this.setPlaca(placa);
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
//        	this.proprietarioAtual = 'A loja';
//            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
    public void exibirDadosProprietarios(){
        System.debug('Dados do propreitário atual:');
        proprietarioAtual.exibirDados();
        System.debug('Dados do proprietário anterior: ');
        proprietarioAnterior.exibirDados();
    }
}