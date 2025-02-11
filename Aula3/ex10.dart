void criarUsuario({required String nome, int? idade}){
  print("Usuario: $nome, Idade: $idade");
}

void main(){
  criarUsuario(nome: "Victor", idade: 18);
}