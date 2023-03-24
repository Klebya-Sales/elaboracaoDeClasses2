public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    public Decimal comissao;
    public Decimal bonus;
    
    {
        comissao = 0;
        bonus = 0;
        cpf = '111.111.111-11';
        telefone = '11-1111-1111';
    }
    
    //construtor vazio
    public Funcionario(){}
    
    //Definindo construtor para resolver a questão
    public Funcionario(Integer matricula, String nome, String cpf){
        this.nome = nome;
        this.matricula = matricula;
        this.cpf = cpf;
    }
    //Contatos do funcionario
    public Funcionario(String email, String telefone){
        this.email = email;
        this.telefone = telefone;
    }
	
    
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.getPlaca() + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        //veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        
        
        if(veiculo.tipo.equalsIgnoreCase('carro')){
            comissao = comissao + veiculo.valorVenda*0.15;
        }else{
            comissao = comissao + veiculo.valorVenda*0.10;
        }
        if(veiculo.novo == true){
            bonus = bonus + 300;
        }else{
            bonus = bonus + 200;
        }
        System.debug('Comissao do funcionário: ' + comissao);
        System.debug('Bônus do funcionário: ' + bonus);
        
    }
}