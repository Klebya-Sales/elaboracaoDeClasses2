public class Pessoa {
	public String nome;
    public String rg;
    public String cpf;
    public String endereco;
    public String telefone;
    
    public void exibirDados(){
        System.debug('Nome: ' + nome);
        System.debug('Rg: ' + rg);
        System.debug('CPF: ' + cpf);
        System.debug('Endereco: ' + endereco);
        System.debug('Telefone: ' + telefone);
    }
    {
        rg = '1111111111-1';
        cpf = '111.111.111-11';
        telefone = '11-1111-111';
        
    }
}