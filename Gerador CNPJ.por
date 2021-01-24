programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inteiro quantidade =0,cnpj[1024][14],cnpjV[1024][14],n=0
	logico aux = falso
	funcao inicio()
	{      
		escreva("Digite a quantidade de cnpj: ")
		leia(quantidade) 
		gerar()
		mostrar()
	}
	funcao gerar(){
	    enquanto(aux == falso e n < quantidade){
	    para(inteiro i=0;i<quantidade;i++){
	    	  para(inteiro z=0;z<14;z++){
	    	  	cnpj[i][z] = u.sorteia(0,9)  
	    } 
	}
	    validador()
	    }
	}
	funcao validador(){
	   inteiro mult1[]={6,7,8,9,2,3,4,5,6,7,8,9},mult2[]={5,6,7,8,9,2,3,4,5,6,7,8,9},soma = 0,resto
	    para(inteiro i=0;i<quantidade;i++){
	    	  se(cnpj[i][0]==cnpj[i][1] e cnpj[i][1]==cnpj[i][2] e cnpj[i][2]==cnpj[i][3] e cnpj[i][3]==cnpj[i][4] e cnpj[i][4]==cnpj[i][5] e cnpj[i][5]==cnpj[i][6] e cnpj[i][6]==cnpj[i][7]
		 e cnpj[i][7]==cnpj[i][8] e cnpj[i][8]==cnpj[i][9] e cnpj[i][9]==cnpj[i][10] e cnpj[i][10]== cnpj[i][11] e cnpj[i][11]==cnpj[i][12] e cnpj[i][12]==cnpj[i][13]){
		       gerar()
		 	}senao{
		 		para(inteiro z = 0; z < 12; z++){
				soma+=(cnpj[i][z] * mult1[z])
				}
				resto = soma% 11
				se(resto != cnpj[i][12]){
                            gerar()
					}senao{
						soma=0
						para(inteiro c = 0; c < 13; c++){
							soma+=(cnpj[i][c] * mult2[c])
						}
						resto = soma% 11
						se(resto != cnpj[i][13]){
			                 gerar()
						}senao{
						    
				              para(inteiro hz=0;hz<14;hz++){
	    	  	                        cnpjV[n][hz] = cnpj[i][hz]
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
	    	  escreva("\n-----------| cnpj ",i+1," |------------\ncnpj: ")
	    	  para(inteiro z=0;z<2;z++){
	    	   escreva(cnpjV[i][z])
	    }
	    escreva(".")
	    para(inteiro z2=2;z2<5;z2++){
	    	   escreva(cnpjV[i][z2])
	    }
	    escreva(".")
	    para(inteiro z3=5;z3<8;z3++){
	    	   escreva(cnpjV[i][z3])
	    }
	    escreva("/")
	    para(inteiro z4=8;z4<=11;z4++){
	    	   escreva(cnpjV[i][z4])
	    }
	    escreva("-")
	     para(inteiro z4=12;z4<=13;z4++){
	    	   escreva(cnpjV[i][z4])
	    }
	       escreva("\n--------------------------------")
     }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cnpjV, 5, 38, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */