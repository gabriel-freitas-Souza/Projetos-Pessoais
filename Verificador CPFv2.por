programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inteiro cpf[11]
	cadeia texto,regiao[] ={"10.ª ( RS ).","1.ª ( DF, GO, MT, MS e TO )","2.ª ( AC, AP, AM, PA, RO e RR )","3.ª ( CE, MA e PI )","4.ª ( AL, PB, PE e RN )",
	"5.ª: BA e SE.","6.ª: MG.","7.ª ( ES e RJ )","8.ª ( SP )","9.ª ( PR e SC )"}
	funcao inicio()
	{    escreva("Digite um cpf com formatacao(xxx.xxx.xxx-xx)\n--> ")
	     leia(texto)
		verificador()
	}
     funcao validador()
	{
		inteiro mult1[]={10,9,8,7,6,5,4,3,2}
		inteiro mult2[]={11,10,9,8,7,6,5,4,3,2}
		inteiro soma = 0
		inteiro resto

		se(cpf[0]==cpf[1] e cpf[1]==cpf[2] e cpf[2]==cpf[3] e cpf[3]==cpf[4] e cpf[4]==cpf[5] e cpf[5]==cpf[6] e cpf[6]==cpf[7]
		 e cpf[7]==cpf[8] e cpf[8]==cpf[9] e cpf[9]==cpf[10]){
		 	escreva("CPF inválido!")
		 	
		 	}senao{
		 		para(inteiro i = 0; i < 9; i++){
				soma+=(cpf[i] * mult1[i])
				}
				resto = (soma*10) % 11
				se(resto == 10){
					resto = 0
					}
				se(resto != cpf[9]){
					escreva("CPF inválido!")
					}senao{
						soma=0
						para(inteiro i = 0; i < 10; i++){
							soma+=(cpf[i] * mult2[i])
						}
						resto = (soma*10) % 11
		
						se(resto == 10){
							resto = 0
						}
						se(resto != cpf[10]){
						escreva("CPF inválido!")
						} senao{
							escreva("CPF válido")
							escreva("\nRegiao do CPF: ",regiao[cpf[8]])
							}
					}
		 }
	}
	funcao verificador()
	{
     inteiro contador= 0,tamanho
	cadeia extrair,extrair2
	logico vr = verdadeiro,vr2 = falso
	tamanho= tx.numero_caracteres(texto)
	se(tamanho < 14){
	     escreva("Formatacao invalida digite denovo\n--> ")
	   	leia(texto)
	   	verificador()	
	}senao{
		para(inteiro i = 0;i <3 e vr == verdadeiro;i++){
	
	    extrair2=""
	    vr2 = falso
	    extrair2 =tx.extrair_subtexto(texto,i, i+1)
	    para(inteiro v =0;v <= 9 e vr2 == falso;v++){
	    	 extrair =""
	    	 extrair = t.inteiro_para_cadeia(v, 10)
	    	 se(extrair == extrair2 ){
	    	 	 vr2 = verdadeiro
	    	 	 contador++
	    	 }
	    } 
	}
	}
	se(contador < 3){
		escreva("Formatacao invalida digite denovo\n--> ")
		leia(texto)
		verificador()
	}senao{
	    contador = 0
	    para(inteiro i = 4;i <7 e vr == verdadeiro;i++){
	    extrair2=""
	    vr2 = falso
	    extrair2 = tx.extrair_subtexto(texto,i, i+1)
	    para(inteiro v =0;v <= 9 e vr2 == falso;v++){
	    	 extrair =""
	    	 extrair = t.inteiro_para_cadeia(v, 10)
	    	 se(extrair == extrair2 ){
	    	 	 vr2 = verdadeiro
	    	 	 contador++
	    	 }
	    } 
	}
	     se(contador < 3){
	   	escreva("Formatacao invalida digite denovo\n--> ")
	   	leia(texto)
	   	verificador()
	      }senao{
	   	 contador = 0
	       para(inteiro i = 8;i <11 e vr == verdadeiro;i++){
	       extrair2=""
	       vr2 = falso
	       extrair2 = tx.extrair_subtexto(texto,i, i+1)
	       para(inteiro v =0;v <= 9 e vr2 == falso;v++){
	    	  extrair =""
	    	  extrair = t.inteiro_para_cadeia(v, 10)
	    	  se(extrair == extrair2 ){
	    	 	 vr2 = verdadeiro
	    	 	 contador++
	    	 }
	    }      
	}
	     se(contador < 3){
	   	escreva("Formatacao invalida digite denovo\n--> ")
	   	leia(texto)
	   	verificador()
	      }senao{
	       contador = 0
	       para(inteiro i = 12;i <=14 e vr == verdadeiro;i++){
	       extrair2=""
	       vr2 = falso
	       se(i < 14){
	       extrair2 = tx.extrair_subtexto(texto,i, i+1)
	       }senao{
	       	extrair2 = tx.extrair_subtexto(texto,i, i)
	       }
	       para(inteiro v =0;v <= 9 e vr2 == falso;v++){
	    	  extrair =""
	    	  extrair = t.inteiro_para_cadeia(v, 10)
	    	  se(extrair == extrair2 ){
	    	 	 vr2 = verdadeiro
	    	 	 contador++
	    	 }
	    }      
	}
	     se(contador < 2){
	   	escreva("Formatacao invalida digite denovo\n--> ")
	   	leia(texto)
	   	verificador()
	      }
	      }
	   }
	}
	extrair = tx.extrair_subtexto(texto, 3, 4)
	se(extrair != "."){
		escreva("Formatacao invalida digite denovo\n--> ")
		leia(texto)
		verificador()
	}
	extrair = tx.extrair_subtexto(texto, 7, 8)
	se(extrair != "."){
		escreva("Formatacao invalida digite denovo\n--> ")
		leia(texto)
		verificador()
	}
	extrair = tx.extrair_subtexto(texto, 11, 12)
	se(extrair != "-"){
		escreva("Formatacao invalida digite denovo\n--> ")
		leia(texto)
		verificador()
	}
	extrairCPF()
	}
	funcao extrairCPF()
	{
	cadeia extrair
	inteiro numero
     
	para(inteiro i = 0;i <3;i++){
	    extrair = tx.extrair_subtexto(texto, i,1+i)
	    cpf[i] = t.cadeia_para_inteiro(extrair, 10)
	    extrair = ""
	}
	para(inteiro i = 4;i <7;i++){
	    extrair = tx.extrair_subtexto(texto, i,i+1)
	    cpf[i-1] = t.cadeia_para_inteiro(extrair, 10)
	    extrair = ""
	}
     para(inteiro i = 8;i <11;i++){
	    extrair = tx.extrair_subtexto(texto, i,i+1)
	    cpf[i-2] = t.cadeia_para_inteiro(extrair, 10)
	    extrair = ""
	}
	para(inteiro i = 12;i <14;i++){
	    extrair = tx.extrair_subtexto(texto, i,i+1)
	    cpf[i-3] = t.cadeia_para_inteiro(extrair, 10)
	    extrair = ""
	}	
	validador()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @DOBRAMENTO-CODIGO = [58, 71, 68, 63, 62, 91, 88, 84, 97, 110, 107, 103, 116, 125, 127, 133, 130, 122, 139, 120, 101, 82, 52, 172, 177, 182, 167];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cpf, 5, 9, 3}-{extrair, 56, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */