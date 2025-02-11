void criarUsuario(int? idade,{required String nome}){
  print("Nome: $nome Idade: $idade");
}

void main(){
  criarUsuario(29, nome: "Victor");
}