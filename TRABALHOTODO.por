programa
{

	inclua biblioteca Texto
	inclua biblioteca Tipos
	inclua biblioteca Util
	inclua biblioteca Matematica --> mat

	const inteiro LINHA=2, COLUNA=2
	
	funcao inicio()
	{
		

		inteiro opcao
		
		faca
		{
			
			escreva("\n========= BEM VINDO AO GRUPO I ====\n\n")
			escreva("============ INTEGRANTES ===============\n")
			escreva("Carlos Eduardo de Carvalho\n")
			escreva("Richard Lopes Neves Okubo\n")
			escreva("Thalita Villa Nova\n")
			escreva("Victória de Souza Cruz\n")
			escreva("Vinicius Calmon\n\n")
			
			escreva("Digite o número da questão desejada: \n")
			escreva("Questão 1\n")
			escreva("Questão 2\n")
			escreva("Questão 3\n")
			escreva("Questão 4\n")
			escreva("Questão 5\n")
			escreva("Questão 6\n")
			escreva("Questão 7\n")
			escreva("Questão 8\n")
			escreva("Questão 9\n")
			escreva("Questão 10\n")
			escreva("Sair    11\n\n")
			escreva("-> ")
			leia(opcao)

			escolha(opcao)
			{
				caso 1: 
					questao1()
					pare
				caso 2:
					questao2()
					pare
				caso 3:
					questao3()
					pare
				caso 4:
					questao4()
					pare
				caso 5:
					questao5()
					pare
				caso 6:
					questao6()
					pare
				caso 7:
					questao7()
					pare
				caso 8:
					questao8()
					pare
				caso 9:
					questao9()
					pare
				caso 10:
					questao10()
					pare
				caso contrario:
					pare
			}
			
		}
		enquanto(opcao!=11)	
	}

	funcao questao1()
	{
		cadeia resposta
		real x, y

		limpa()

		escreva("Questão 1 - Leia dois valores e efetue a divisão do primeiro pelo segundo. O segundo valor não pode ser ZERO\n")
		escreva("ou negativo, caso isso ocorra você deve informar ao usuário que o segundo número deve ser maior\n")
		escreva("do que ZERO e solicitar um novo valor. Deverá imprimir o resultado. Ao final deve perguntar se\n")
		escreva("deseja calcular outra divisão e caso sua resposta seja positiva limpe a tela e solicite novos valores.\n")

		faca
		{			
			escreva("\nDigite o 1º valor: ")
			leia(x)

			faca
			{
				escreva("Digite o 2º valor: ")
				leia(y)

				se(y <= 0.0)
				{
					escreva("O segundo número deve ser maior do que ZERO. \n")
				}
			} 
			enquanto(y <= 0.0)

			escreva("\nA divisão de ", x, " por ", y, " é ", x/y, "\n")
			
			faca
			{
				escreva("Deseja calcular outra divisão? [s/n]: ")
				leia(resposta)
			}
			enquanto(Texto.caixa_baixa(resposta) !="s" e Texto.caixa_baixa(resposta) != "n")
			
			se(Texto.caixa_baixa(resposta) == "s") { limpa() }
	
		} 
		enquanto(Texto.caixa_baixa(resposta) != "n")
	}

	funcao questao2()
	{
		inteiro opcao, num1, num2
		cadeia resposta="s"

		limpa()

		escreva("Questão 2 - Programar uma calculadora com as operações: soma, subtração, multiplicação e divisão. Deverá ter\n")
		escreva("um menu com as opções de operação. Após a escolha da operação deverá permitir a inserção de\n")
		escreva("dois valores e executar a conta. Deverá apresentar o resultado ao usuário e perguntar se ele deseja\n")
		escreva("fazer novo cálculo ou se deseja encerrar o programa. Deverá permitir voltar ao menu caso a escolha\n")
		escreva("seja fazer novo cálculo ou sair caso a escolha seja encerrar o programa.\n")
		
		faca
		{
			escreva("\nEscolha uma das seguintes operações:")
			escreva("\n[ 0 ]\tSair")
			escreva("\n[ 1 ]\tSoma (+)")
			escreva("\n[ 2 ]\tSubtração (-)")
			escreva("\n[ 3 ]\tMultiplicação (*)")
			escreva("\n[ 4 ]\tDivisão (/)")
			escreva("\n>  ")
			leia(opcao)

			se(opcao < 0 ou opcao > 4)
			{
				escreva("\nOpção '", opcao, "' indisponível.\n")
			}
			senao se(opcao != 0)
			{
				escreva("\nDigite um número inteiro: ")
				leia(num1)
		
				escreva("Digite outro número interio: ")
				leia(num2)
		
				escolha(opcao)
				{
					caso 1:
						escreva("\n", num1, " + " , num2, " = ", num1 + num2, "\n")
						pare
					caso 2:
						escreva("\n", num1, " - " , num2, " = ", num1 - num2, "\n")
						pare
					caso 3:
						escreva("\n", num1, " * " , num2, " = ", num1 * num2, "\n")
						pare
					caso 4:
						escreva("\n", num1, " / " , num2, " = ", Tipos.inteiro_para_real(num1) / Tipos.inteiro_para_real(num2), "\n")
						pare
					caso contrario:
						pare
				}
				
				faca
				{
					escreva("Deseja efetuar outro cálculo? [s/n] ")
					leia(resposta)
				} 
				enquanto(Texto.caixa_baixa(resposta) != "n" e Texto.caixa_baixa(resposta) != "s")
			}
			
			senao // opção '0'
			{
				resposta = "n"
			}
		} 
		enquanto(Texto.caixa_baixa(resposta) != "n")
	}

	funcao questao3()
	{
		const inteiro N = 10
		
		cadeia vetorAlunos[N]
		real nota1 = 0.0, nota2 = 0.0, resultadoMedia

		limpa()

		escreva("Questão 3 - Escreva um programa que leia 10 nomes de alunos e duas notas de avaliações para cada aluno.\n")
		escreva("Calcule e escreva a média de cada aluno, seguido da informação se foi aprovado ou reprovado.\n")
		escreva("Considere como média para aprovação 6. Dica: Utilize quantos vetores precisar. Ex. Saída: Fulano\n")
		escreva("de tal P1= 8.0, P2=6.0, Media=7.0, aprovado!\n\n")
		
		para (inteiro i = 0; i < N; i++)
		{
			escreva ("Digite o nome do aluno: ")
			leia (vetorAlunos[i])

			faca
			{
				escreva ("Digite a primeira nota do aluno ", vetorAlunos[i], ": ")
				leia (nota1)
				se (nota1 < 0.0 ou nota1 > 10.0)
				{
					escreva ("Digite uma nota válida!\n")
				}
			}
			enquanto (nota1 < 0.0 ou nota1 > 10.0)

			faca
			{
				escreva ("Digite a segunda nota do aluno ", vetorAlunos[i], ": ")
				leia (nota2)
				se (nota2 < 0.0 ou nota2 > 10.0)
				{
					escreva ("Digite uma nota válida!\n")
				}
			}
			enquanto (nota2 < 0.0 ou nota2 > 10.0)
			
			resultadoMedia = ((nota1+nota2)/2)
				
			se (resultadoMedia >= 6)
			{
				escreva ("O aluno ", vetorAlunos[i], ", P1 = ", nota1, ", P2 = ", nota2, ", Média = ", resultadoMedia, ", foi aprovado! ")
				escreva ("\n")
			}
			senao
			{
				escreva ("O aluno ", vetorAlunos[i], ", P1 = ", nota1, ", P2 = ", nota2, ", Média = ", resultadoMedia, ", foi reprovado! ")
				escreva ("\n")
			}
		}
	}

	funcao questao4()
	{
		inteiro opcao, fn=0, ft=0

		limpa()

		escreva("Questão 4 - Faça um programa que mostre um menu contendo 2 opções: 1. Fibonacci 2. Fatorial. Ao escolher o\n")
		escreva("numero 1 solicite que o usuário escolha a quantidade de números da série de Fibonacci ele quer\n")
		escreva("imprimir e execute a função recursivamente. Ao escolher a opção 2 solicite ao usuário que escolha\n")
		escreva("o número que deseja para o cálculo do Fatorial e execute a função recursivamente.\n")
				
		faca
		{
			escreva("\nEscolha uma opção: \n")
			escreva("\n1- Fibonacci")
			escreva("\n2- Fatorial")
			escreva("\n3- Sair\n")
			escreva("Opção:  ")
			leia(opcao)

			escolha(opcao)
			{
			caso 1:
				escreva("\nEscolha a quantidade de números da série Fibonacci: ")
				leia(fn)
				para(inteiro i=1; i<=fn; i++)
				{
					escreva(fib(i), " ")
				}
				escreva("\n")		        
				pare
			caso 2:
				escreva("\nEscolha o número que deseja para o cálculo do Fatorial: ")
				leia(ft)		        
				escreva(fat(ft), " ")
				escreva("\n")		       
				pare
			caso contrario:
				se(opcao!=3)
				{
					escreva("\nOpção inválida.")
				}
				pare
			}
		    
			escreva("\n")
		}		
		enquanto(opcao !=3)				
	}

	funcao inteiro fib(inteiro fn)
	{	
		se(fn==1)
		{
			retorne 0
		}
		senao se (fn==2)
		{
			retorne 1
		}
		senao
		{            	
			retorne fib(fn-1) + fib(fn-2)
		}            
	}

	funcao inteiro fat(inteiro ft)
	{
		se(ft==0)
		{			
			retorne 1
		}
		senao
		{									
			retorne ft*fat(ft-1)			
		}	
	}

	funcao questao5()
	{
		inteiro vetorNumero [10], min, max

		limpa()

		escreva("Questão 5 - Desenvolva um programa no qual o usuário informa 10 números e programa responde qual é o\n")
		escreva("menor, o maior e a média dos valores.\n\n")
						
		para (inteiro i = 0; i < 10; i++)
		{			
			escreva("Digite a posição ", i, " do vetor: ")
			leia(vetorNumero[i])
		}
		
		escreva("\n")
		
		min = vetorNumero[0]
		max = vetorNumero[0]
				
		para(inteiro i = 0; i < 10; i ++)
		{
			se(vetorNumero[i]<min)
			{
				min = vetorNumero [i]
			}
				
			se(vetorNumero[i]>max)
			{			
				max = vetorNumero[i]
			}

			escreva("A posição ", i, " do vetor é: ", vetorNumero[i])
			escreva("\n")
		}

		escreva("\nO menor número é: ", min)
		escreva("\n")
		escreva("O maior número é: ", max)
		escreva("\n")
		escreva ("A média é: ", Tipos.inteiro_para_real(min+max)/2.0)
		
		retorno()
	}

	funcao questao6()
	{
		inteiro n1, n2, soma=0

		limpa()

		escreva("Questão 6 - Elabore um programa em que o usuário informa dois números (n1 e n2). O primeiro número (n1)\n")
		escreva("indica o início do laço de repetição e o segundo número (n2) o fim do laço de repetição. O\n")
		escreva("programa deverá imprimir a soma de todos os números pares no intervalo entre n1 e n2.\n\n")
				
		escreva("Informe o 1º número da série: ")
		leia(n1)

		escreva("Informe o 2º número da série: ")
		leia(n2)

		para(inteiro i=n1; i <= n2; i++)  // de 'n1' até 'n2' (incluso)
		{
			se(i % 2 == 0) { soma += i }
		}

		escreva("A soma de todos os números pares de ", n1, " até ", n2," é ", soma)
		
		retorno()
	}

	funcao questao7()
	{
		inteiro q, contador = 0, n = 2

		limpa()

		escreva("Questão 7 - Elabora um programa que solicita ao usuário a quantidade de números primos que ele quer que\n")
		escreva("seja impresso. Após imprima na tela a quantidade de números primos escolhida. Ex. Entrada 4\n")
		escreva("Saída 1 2 3 5\n\n")
		
		escreva("Digite a quantidade de números primos desejada: ")
		leia(q)
		
		enquanto(contador < q)
		{
			se(primo(n))
			{
				escreva(n, " ")
				contador++
			}
			n++
		}
		retorno()
	}

	funcao logico primo(inteiro num)
	{
		se(num < 2) { retorne falso }

		para(inteiro i=2; i < num; i++)
		{
			se(num % i == 0) { retorne falso }
		}

		retorne verdadeiro
	}

	funcao questao8()
	{
		const inteiro N = 10
		
		inteiro v[N], aux, opcao

		limpa()

		escreva("Questão 8 - Elabore um programa que peça ao usuário que entre com 10 números. Após solicite que o usuário\n")
		escreva("escolha se quer que sejam impressos os números em ordem crescente ou decrescente e conforme\n")
		escreva("a escolha do usuário e faça a impressão da série.\n\n")
		
		para(inteiro i=0; i < N; i++)
		{
			escreva("Digite o ", i+1,"º elemento do vetor: ")
			leia(aux)
			v[i] = aux
		}

		faca
		{
			escreva("\nDeseja imprimir o vetor em ordem")
			escreva("\n[ 1 ] Crescente\n[ 2 ] Decrescente\n> ")
			leia(opcao)
		}
		enquanto(opcao < 1 ou opcao > 2)			

		escolha(opcao)
		{
			caso 1:
				crescente(v)
				pare
			caso 2:
				decrescente(v)
				pare
			caso contrario:
				pare
		}

		escreva("\n[ ")
		
		para(inteiro i=0; i < N; i++) 
		{ 
			escreva(v[i], " ") 
		}
		
		escreva("]\n\n")

		retorno()
		
	}

	funcao crescente(inteiro v[]) // Bubble sort
	{
		inteiro aux, n=Util.numero_elementos(v)

		para(inteiro i=1; i < n; i++)
		{
			para(inteiro j=0; j < n-i; j++)
			{
				se(v[j] > v[j+1]) // >
				{
					aux = v[j]
					v[j] = v[j+1]
					v[j+1] = aux
				}
			}
		}
	}

	funcao decrescente(inteiro v[]) // Bubble sort
	{
		inteiro aux, n=Util.numero_elementos(v)

		para(inteiro i=1; i < n; i++)
		{
			para(inteiro j=0; j < n-i; j++)
			{
				se(v[j] < v[j+1]) // <
				{
					aux = v[j]
					v[j] = v[j+1]
					v[j+1] = aux

				}
			}
		}
		
	}

	funcao questao9()
	{
		const inteiro N = 3
		
		real a, b, c, x1, x2, delta=0.0, v[N]

		limpa()

		escreva("Questão 9 - Elabore um programa que calcule uma equação do 2° Grau modelo ax2+bx+c. Solicite a entrada das\n")
		escreva("variáveis a, b, c e calcule as raízes. Apresente no final do cálculo a equação composta pelas\n")
		escreva("variáveis lidas e o resultado. Ex. Entrada a=1, b=-5, c=6. Saída 1x2- 5x – 6 =0 -> X1=3 X2=2.\n\n")
		
		escreva("Digite a: ")
		leia(a)
		escreva("Digite b: ")
		leia(b)
		escreva("Digite c: ")
		leia(c)
		escreva("\n")

		v[0] = a
		v[1] = b
		v[2] = c

		delta = (b*b) - (4.0 * a * c)

		se(delta < 0.0 ou a == 0.0)
		{	
			se(v[0]==0.0)
			{
				escreva("A equação não é de segundo grau :(")
			}
			senao
			{
				escreva("Raiz complexa :(")
			}
		
		}
		senao
		{
			para(inteiro i=0; i<N; i++)
			{
				se(v[i] >= 0) { escreva("+", v[i]) }
				senao { escreva(v[i]) }
	
				se(i == 0) { escreva("x^2 ") }
				se(i == 1) { escreva("x ") }
				
			}

			x1 = (-b + (mat.raiz(delta, 2.0))) / (2.0*a)
			x2 = (-b - (mat.raiz(delta, 2.0))) / (2.0*a)
	
			escreva(" -> ")
			escreva("X1=", x1)
			escreva(" X2=", x2)
			escreva("\n")
		}
		retorno()
	}

	funcao questao10()
	{
		
		inteiro matriz1[LINHA][COLUNA], matriz2[LINHA][COLUNA], total[LINHA][COLUNA]

		limpa()

		escreva("Questão 10 - Desenvolva um programa que some duas matrizes modelo Amxn + Amxn = Amxn. Solicite que o\n")
		escreva("usuário escolha os números de entrada de ambas as matrizes e apresente como resultado as duas\n")
		escreva("matrizes de entrada e a matriz resultado, pode ser uma em baixo da outra. Identifique cada matriz\n")
		escreva("ao apresentar o resultado.\n\n")
		
		preencher("Matriz 1:\n", matriz1)
		preencher("Matriz 2:\n", matriz2)

		para(inteiro i=0; i < LINHA; i++)
		{
			para(inteiro j=0; j < COLUNA; j++)
			{
				total[i][j] = matriz1[i][j] + matriz2[i][j]
			}
		}

		imprimir("\nMatriz 1\n", matriz1)
		imprimir("\nMatriz 2\n", matriz2)
		imprimir("\nSoma das matrizes\n", total)

		retorno()
	}

	funcao imprimir(cadeia nome, inteiro matriz[][])
	{
		escreva(nome)
		
		para(inteiro i=0; i < LINHA; i++)
		{
			escreva("| ")
			para(inteiro j=0; j < COLUNA; j++)
			{
				escreva(matriz[i][j], " ")
			}
			escreva(" |\n")
		}
	}
	
	funcao preencher(cadeia nome, inteiro matriz[][])
	{
		inteiro aux

		escreva(nome)
		
		para(inteiro i=0; i < LINHA; i++)
		{
			para(inteiro j=0; j < COLUNA; j++)
			{
				escreva("Linha [", i+1, "] Coluna [", j+1, "] : ")
				leia(aux)
				matriz[i][j] = aux
			}
		}
			
	}

	funcao retorno()
	{
		escreva("\n\nPressione [ENTER] para sair.")
		cadeia enter
		leia(enter)
	}		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9807; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */