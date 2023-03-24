public class Cliente {
    public String nome;
    public String rg;
    public String cpf;
    public String nascimento;
    public Integer telefone;
    public String email;
    public String endereco;
    
    //construtor vazio
    public Cliente(){}
    // recebe nome e contato do cliente
    public Cliente(String nome, Integer telefone){
        this.nome = nome;
        this.telefone = telefone;
    }
    // recebe dados para verificar score
    public Cliente(String cpf, String nascimento){
        this.cpf = cpf;
        this.nascimento = nascimento;
    }
}