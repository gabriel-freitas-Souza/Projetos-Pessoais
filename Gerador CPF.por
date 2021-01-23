programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inteiro quantidade =0,cpf[1024][11],cpfV[1024][11],n=0
	cadeia regiao[] ={"10.ª ( RS ).","1.ª ( DF, GO, MT, MS e TO )","2.ª ( AC, AP, AM, PA, RO e RR )","3.ª ( CE, MA e PI )","4.ª ( AL, PB, PE e RN )",
	"5.ª: BA e SE.","6.ª: MG.","7.ª ( ES e RJ )","8.ª ( SP )","9.ª ( PR e SC )"}
	logico aux = falso
	funcao inicio()
	{      
		escreva("Digite a quantidade de cpf: ")
		leia(quantidade) 
		gerar()
		mostrar()
	}
	funcao gerar(){
	    enquanto(aux == falso e n < quantidade){
	    para(inteiro i=0;i<quantidade;i++){
	    	  para(inteiro z=0;z<11;z++){
	    	  	cpf[i][z] = u.sorteia(0,9)  
	    } 
	}
	    validador()
	    }
	}
	funcao validador(){
	   inteiro mult1[]={10,9,8,7,6,5,4,3,2},mult2[]={11,10,9,8,7,6,5,4,3,2},soma = 0,resto
	    para(inteiro i=0;i<quantidade;i++){
	    	  se(cpf[i][0]==cpf[i][1] e cpf[i][1]==cpf[i][2] e cpf[i][2]==cpf[i][3] e cpf[i][3]==cpf[i][4] e cpf[i][4]==cpf[i][5] e cpf[i][5]==cpf[i][6] e cpf[i][6]==cpf[i][7]
		 e cpf[i][7]==cpf[i][8] e cpf[i][8]==cpf[i][9] e cpf[i][9]==cpf[i][10]){
		       aux = falso
		 	}senao{
		 		para(inteiro z = 0; z < 9; z++){
				soma+=(cpf[i][z] * mult1[z])
				}
				resto = (soma*10) % 11
				se(resto == 10){
					resto = 0
					}
				se(resto != cpf[i][9]){
                            gerar()
					}senao{
						soma=0
						para(inteiro c = 0; c < 10; c++){
							soma+=(cpf[i][c] * mult2[c])
						}
						resto = (soma*10) % 11
		
						se(resto == 10){
							resto = -1
						}
						se(resto != cpf[i][10]){
			                  aux = falso
						}senao{
						    
				              para(inteiro hz=0;hz<11;hz++){
	    	  	                        cpfV[n][hz] = cpf[i][hz]
				              }
							se(n == quantidade){
							 aux = verdadeiro 
							}
							 n++
							}
					}
	    	  } 
	    } 
	}
     funcao mostrar(){
     	limpa()
     	 para(inteiro i=0;i<quantidade ;i++){
	    	  escreva("\n-----------| CPF ",i+1," |------------\nCPF: ")
	    	  para(inteiro z=0;z<3;z++){
	    	   escreva(cpfV[i][z])
	    }
	    escreva(".")
	    para(inteiro z2=3;z2<6;z2++){
	    	   escreva(cpfV[i][z2])
	    }
	    escreva(".")
	    para(inteiro z3=6;z3<9;z3++){
	    	   escreva(cpfV[i][z3])
	    }
	    escreva("-")
	    para(inteiro z4=9;z4<=10;z4++){
	    	   escreva(cpfV[i][z4])
	    }
	       escreva("\nRegiao: ",regiao[cpfV[i][8]])
	       escreva("\n--------------------------------")
     }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cpfV, 5, 37, 4}-{n, 5, 52, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */