programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inteiro quantidade =0,cnpj[14],cnpjV[1024][14],n=0
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
	    	  para(inteiro z=0;z<14;z++){
	    	  	cnpj[z] = u.sorteia(0,9)  
	    } 
	    validador()
	    }
	}
	funcao validador(){
	   inteiro mult1[]={6,7,8,9,2,3,4,5,6,7,8,9},mult2[]={5,6,7,8,9,2,3,4,5,6,7,8,9},soma = 0,resto
	    para(inteiro i=0;i<quantidade;i++){
	    	  se(cnpj[0]==cnpj[1] e cnpj[1]==cnpj[2] e cnpj[2]==cnpj[3] e cnpj[3]==cnpj[4] e cnpj[4]==cnpj[5] e cnpj[5]==cnpj[6] e cnpj[6]==cnpj[7]
		    e cnpj[7]==cnpj[8] e cnpj[8]==cnpj[9] e cnpj[9]==cnpj[10] e cnpj[10]== cnpj[11] e cnpj[11]==cnpj[12] e cnpj[12]==cnpj[13]){
		       gerar()
		 	}senao{
		 		para(inteiro z = 0; z < 12; z++){
				soma+=(cnpj[z] * mult1[z])
				}
				resto = soma% 11
				se(resto != cnpj[12]){
                            gerar()
					}senao{
						soma=0
						para(inteiro c = 0; c < 13; c++){
							soma+=(cnpj[c] * mult2[c])
						}
						resto = soma% 11
						se(resto != cnpj[13]){
			                 gerar()
						}senao{
						    
				              para(inteiro hz=0;hz<14;hz++){
	    	  	                        cnpjV[n][hz] = cnpj[hz]
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
 * @POSICAO-CURSOR = 167; 
 * @PONTOS-DE-PARADA = 19;
 * @SIMBOLOS-INSPECIONADOS = {cnpjV, 5, 32, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */