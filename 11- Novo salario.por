programa
{
	inclua biblioteca Matematica -->mat
	
	funcao inicio()
	{    real salario,poncentual[]={(20.0/100.0),(15.0/100.0),(10.0/100.0),(5.0/100.0)}
		escreva("Qual é seu salario: ")
		leia(salario)
		limpa()
		se(salario <= 280.99){
			escreva("Seu salario antes do reajuste ",salario)
			escreva("\nVocê teve um aumento de 20%,sendo assim vai ser somando R$ ",mat.arredondar((salario*poncentual[0]),2)," reais em relação seu salario anterior ")
			escreva("\nSeu salario novo é de R$ ",mat.arredondar((salario+salario*poncentual[0]),2))
		}senao se(salario >= 281.0 e salario <= 700.99){
			escreva("Seu salario antes do reajuste ",salario)
			escreva("\nVocê teve um aumento de 15%,sendo assim vai ser somando R$ ",mat.arredondar((salario*poncentual[1]),2)," reais em relação seu salario anterior ")
			escreva("\nSeu salario novo é de R$ ",mat.arredondar((salario+salario*poncentual[1]),2))
		}senao se(salario >= 701.0 e salario <= 1500.99){
			escreva("Seu salario antes do reajuste ",salario)
			escreva("\nVocê teve um aumento de 10%,sendo assim vai ser somando R$ ",mat.arredondar((salario*poncentual[2]),2)," reais em relação seu salario anterior ")
			escreva("\nSeu salario novo é de R$ ",mat.arredondar((salario+salario*poncentual[2]),2))
		}senao se(salario >= 1501.0){
			escreva("Seu salario antes do reajuste ",salario)
			escreva("\nVocê teve um aumento de 5%,sendo assim vai ser somando R$ ",mat.arredondar((salario*poncentual[3]),2)," reais em relação seu salario anterior ")
			escreva("\nSeu salario novo é de R$ ",mat.arredondar((salario+salario*poncentual[3]),2))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */