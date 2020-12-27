programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
	cadeia letras[] = {"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"},
	especiais[] ={"!","-","_","*","+","@","#","$","&","%","(",")","{","}","=","<",">",".",",",":",";","ç"},senha =""
	inteiro tamanho = 0,numero,vr[4]
	tamanho = u.sorteia(12,64)
     enquanto(t.numero_caracteres(senha) != tamanho){
     	numero = u.sorteia(1,4)
     	escolha(numero){
     		caso 1:
     		se(vr[0] < u.sorteia(1,3)){
     		senha+=letras[u.sorteia(0,25)]
     		}
     		vr[0]+=1
     		vr[1] = 0
     		vr[2] = 0
     		vr[3] = 0
     		pare
     		caso 2:
     		se(vr[1] < u.sorteia(1,3)){
     		senha+=t.caixa_alta(letras[u.sorteia(0,25)])
     		}
     		vr[1]+=1
     		vr[0] = 0
     		vr[2] = 0
     		vr[3] = 0
     		pare
     		caso 3:
     		se(vr[2] < u.sorteia(1,3)){
     		senha+=u.sorteia(0,9)
     		}
     		vr[2]+=1
     		vr[1] = 0
     		vr[0] = 0
     		vr[3] = 0
     		pare
     		caso 4:
     		se(vr[3] < u.sorteia(1,3)){
     		senha+=especiais[u.sorteia(0,21)]
     		}
     		vr[3]+=1
     		vr[1] = 0
     		vr[2] = 0
     		vr[0] = 0
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
