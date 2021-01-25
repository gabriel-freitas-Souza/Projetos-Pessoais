programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inteiro quantidade =0,cpf[11],cpfV[1024][11],n=0
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
	    	  para(inteiro z=0;z<11;z++){
	    	  	cpf[z] = u.sorteia(0,9)  
	    } 
	    validador()
	    }
	}
	funcao validador(){
	   inteiro mult1[]={10,9,8,7,6,5,4,3,2},mult2[]={11,10,9,8,7,6,5,4,3,2},soma = 0,resto
	    	  se(cpf[0]==cpf[1] e cpf[1]==cpf[2] e cpf[2]==cpf[3] e cpf[3]==cpf[4] e cpf[4]==cpf[5] e cpf[5]==cpf[6] e cpf[6]==cpf[7]
		 e cpf[7]==cpf[8] e cpf[8]==cpf[9] e cpf[9]==cpf[10]){
		       gerar()
		 	}senao{
		 		para(inteiro z = 0; z < 9; z++){
				soma+=(cpf[z] * mult1[z])
				}
				resto = (soma*10) % 11
				se(resto == 10){
					resto = 0
					}
				se(resto != cpf[9]){
                            gerar()
					}senao{
						soma=0
						para(inteiro c = 0; c < 10; c++){
							soma+=(cpf[c] * mult2[c])
						}
						resto = (soma*10) % 11
		
						se(resto == 10){
							resto = -1
						}
						se(resto != cpf[10]){
			                  gerar()
						}senao{
						    
				              para(inteiro hz=0;hz<11;hz++){
	    	  	                        cpfV[n][hz] = cpf[hz]
				              }
							se(n == quantidade){
							 aux = verdadeiro 
							}
							 n++
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
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */