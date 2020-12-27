programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
	cadeia letras[] = {"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"},
	especiais[] ={"!","-","_","*","+","@","#","$","&","%","(",")","{","}","=","<",">",".",",",":",";","ç"},senha =""
	inteiro tamanho = 0,numero
	tamanho = u.sorteia(12,64)
     enquanto(t.numero_caracteres(senha) != tamanho){
     	numero = u.sorteia(1,4)
     	escolha(numero){
     		caso 1:
     		senha+=letras[u.sorteia(0,25)]
     		pare
     		caso 2:
     		senha+=t.caixa_alta(letras[u.sorteia(0,25)])
     		pare
     		caso 3:
     		senha+=u.sorteia(0,9)
     		pare
     		caso 4:
     		senha+=especiais[u.sorteia(0,21)]
     		pare
     	}
     }
	limpa()
	escreva("\n"," SENHA--> ",senha)
	escreva("\n"," TAMANHO--> ",t.numero_caracteres(senha))
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */