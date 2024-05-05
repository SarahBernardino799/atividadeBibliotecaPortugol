programa
{
	//Criando vetores para armazenar as informações
	cadeia livros[5] = {
"Título: "+ "administração" +"\nAutor: " + "Roberto Cunha Neto" + "\nAno da publicação: "+ "2021"+ "\nGênero: "+"Literatura "+"\nPaginas:"+"250"+"\nEditora: "+"Senac São Paulo"+"\nDescrição:"+"Explicação das teorias administrativas."+"\n",
	"", "" , "" , ""
	}
	cadeia membros[5] = {
	"Nome: "+ "Morgana Evellyn" +"\nEndereço: " + "Rua Joquei Club 2020" + "\nTelefone "+ "85996777707"+"\nEmail:" + "morgana@email.com"+"\n",
	"" , "" , "" , ""
	}
	cadeia emprestimos[5] = {
	"",	"",	"",	"",	""
	}
	cadeia livrosEmprestados[5] = {
	"",	"",	"",	"",	""
	}  
	//Função menu principal para consultar informações sobre livros, membros e empréstimos
	funcao consulta(){
		inteiro opcao = 0
    escreva("------------------------------ \n")
    escreva("Livraria Minerva:             |\n")
    escreva("Escolha a opção que deseja:   |\n")
		escreva("------------------------------ \n")
		escreva("1 -> Livros disponíveis       |\n")
		escreva("2 -> Usuarios                 |\n")
		escreva("3 -> Empréstimos              |\n")
		escreva("4 -> Livros alugados          |\n")
    escreva("------------------------------ \n")
		leia(opcao)
		limpa()


		se(opcao ==1){
			para(inteiro i=0; i<5 ; i++){

				se(livros[i]!= ""){
				escreva("\n===============\n")
				escreva(livros[i])
				escreva("\n===============\n")
				}
			}
		}

			se(opcao ==2){
				para(inteiro i=0; i<5 ; i++){

				se(membros[i]!= ""){
				escreva("\n===============\n")
				escreva(membros[i])
				escreva("\n===============\n")
				}
			}
			}
			se(opcao ==3){
				para(inteiro i=0; i<5 ; i++){

				se(emprestimos[i]!= ""){
				escreva("===============\n")
				escreva(emprestimos[i])
				escreva("\n===============\n")
				}
			}
			}

			se(opcao ==4){
				para(inteiro i=0; i<5 ; i++){

				se(livrosEmprestados[i]!= ""){
				escreva("\n===============\n")
				escreva(livrosEmprestados[i])
				escreva("\n===============\n")
				}
			}
			}
	}

	//Função que cadastra os livros
	funcao cadastraLivro(){
		cadeia titulo =""
		cadeia autor =""
		cadeia anoPublicacao=""
		cadeia genero=""
    cadeia paginas=""
    cadeia editora=""
    cadeia descricao=""

    escreva("----------------------------------- \n")
		escreva("Digite o Titulo do livro: \n")
		leia(titulo)
		escreva("Digite o(a) Autor(a) do livro: \n")
		leia(autor)
		escreva("Digite o Ano da Publicação do livro: ex.AAAA \n")
		leia(anoPublicacao)
		escreva("Digite o Gênero do livro: \n")
		leia(genero)
    escreva("Digite a quantidade de páginas do livro: \n")
    leia(paginas)
    escreva("Digite a Editora do livro: \n")
    leia(editora)
    escreva("Digite uma breve descrição do livro: \n")
    leia(descricao)
    escreva("----------------------------------- \n")

		para(inteiro i=0; i<5 ; i++){
			se(livros[i] == ""){
				livros[i] = "Título: "+ titulo +"\nAutor: " + autor + "\nAno da publicação: "+ anoPublicacao + "\nGenero: " + genero +"\nPaginas: "+ paginas + "\nEditora: " + editora + "\nDescrição: " + descricao + "\n"
				pare
			}
		}
		limpa()
		para(inteiro i=0; i<5 ; i++){
			//Se a posição do vetor é vazia, direciona ao vetor do livro indicado
			se(livros[i]!= ""){
			escreva("\n===============\n")
			escreva("Livro Cadastrado!\n"+ livros[i])
      escreva("\n Sucesso!! \n")
			escreva("\n===============\n")
			}
			
		}
	}

	//Função principal para cadastro de usuario
	funcao cadastraMembro(){
		cadeia nome =""
		cadeia endereco =""
		cadeia telefone=""
    cadeia email=""

		escreva("-------------------------------\n")
		escreva("Digite o nome do usuario: \n")
		leia(nome)
		escreva("Digite o endereco: \n")
		leia(endereco)
		escreva("Digite o telefone: \n")
		leia(telefone)
    escreva("Digite o email: \n")
		leia(email)
    escreva("\n-------------------------------\n")

		para(inteiro i=0; i<5 ; i++){
			se(membros[i] == ""){
				membros[i] = "Nome: "+ nome +"\nEndereço: "+ endereco +"\nTelefone: "+ telefone +"\nEmail: "+ email +"\n"
				pare
			}
		}
		limpa()
		para(inteiro i=0; i<5 ; i++){
			//Se a posição do vetor for vazia, imprime no vetor o membro indicado
			se(membros[i]!= ""){
				
			escreva("\n===============\n")
			escreva(membros[i])
			escreva("\n===============\n")
			}
			
			
		}
	}
	//Função para cadastro de empréestimo de livros
	funcao cadastraEmprestimo(){
		inteiro opcao = 0
		inteiro opcao2 = 0
		escreva("Escolha um usuario:\n\n")
		//Escolha o membro para fazer o empréstimo do livro
		para(inteiro i=0; i<5 ; i++){

			se(membros[i]!= ""){
				
			escreva("\n===============\n")
			escreva("Usuario "+ i + ":\n",membros[i])
			escreva("\n===============\n")
			}
		}

		leia(opcao)
		limpa()

		//Escolhe entre os livros diponiveis, um livro para empréstimo.
		escreva("Escolha um livro:\n\n")
		para(inteiro i=0; i<5 ; i++){

			se(livros[i]!= ""){
				
			escreva("\n===============\n")
			escreva("id: "+ i + "\n",livros[i])
			escreva("\n===============\n")
			}
		}
		leia(opcao2)
		//função que faz o emprestimo do livro.
		emprestaLivro(membros[opcao],livros[opcao2])

		//direciona no vetor os livros emprestados ao livro escolhido.
		para(inteiro i=0; i<5 ; i++){
			se(livrosEmprestados[i] == ""){
				livrosEmprestados[i]=livros[opcao2]
				pare
			}
		}
		
		//Retira do vetor livros(Disponiveis) e o livro que foi emprestado.
		livros[opcao2] = ""
		
	}
	//Função que recebe parametro de um membro e um livro. E realiza o cadastro do empréstimo.
	funcao emprestaLivro(cadeia membro, cadeia livro){
		
		para(inteiro i=0; i<5 ; i++){
			se(emprestimos[i] == ""){
				emprestimos[i] = "livro emprestado!\n "+ livro+ "\n" +membro+ "\n"
        escreva("Sucesso!!")
				pare
			}
		}
		limpa()
		para(inteiro i=0; i<5 ; i++){

			se(emprestimos[i]!= ""){
				
			escreva("\n===============\n")
			escreva(emprestimos[i])
			escreva("\n===============\n")
			}			
		}	
	}
	//Função que realiza a devolução do livro.
	funcao devolveLivro(){
		inteiro opcao = 0
		escreva("Escolha um livro para devolver\n\n")
		para(inteiro i=0; i<5 ; i++){

				se(livrosEmprestados[i]!= ""){
				escreva("\n===============\n")
				escreva("id: "+i+"\n"+livrosEmprestados[i])
				escreva("\n===============\n")
				}
			}
		leia(opcao)
		se (livrosEmprestados[opcao]!=""){
			para(inteiro i=0; i<5 ; i++){

				se(livros[i]== ""){
				livros[i] = livrosEmprestados[opcao]
				livrosEmprestados[opcao]=""
				escreva("\n===============\n")
				escreva("Livro Devolvido!\n")
        escreva("Sucesso!! \n")
				escreva("\n===============\n")
				}
			}
		}

		
	}
	
	
	funcao inicio() {
	
		inteiro opcao =1
		//menu principal
		enquanto(opcao!=0){
      escreva("------------------------------------- \n")
			escreva("Bem Vindo(a) a Livraria Minerva:     |\n")
      escreva("Escolha a opção que deseja:          |\n")
      escreva("------------------------------------- \n")
			escreva("1 -> Cadastro de livro               |\n")
			escreva("2 -> Cadastro de usuario             |\n")
			escreva("3 -> Cadastro de empréstimo          |\n")
			escreva("4 -> Devolução de livro              |\n")
			escreva("5 -> Consulta                        |\n")
			escreva("0 -> Encerrar                        |\n")
      escreva("------------------------------------\n")
			leia(opcao)
			limpa()
			//Opções e funções
			se(opcao ==1){
				cadastraLivro()
			}
			se(opcao ==2){
				cadastraMembro()
			}
			se(opcao ==3){
				cadastraEmprestimo()
			}
			se(opcao ==4){
				devolveLivro()
			}
			se(opcao ==5){
				consulta()
			}
		}
	}
}
