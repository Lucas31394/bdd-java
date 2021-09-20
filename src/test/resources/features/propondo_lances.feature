# language: pt

Funcionalidade: Propondo lances ao leilao

Cenario: Propondo um unico lance valido
	Dado um lance valido
	Quando propoe ao leilao
	Entao o lance eh aceito
	
Cenario: Propondo varios lances validos
	Dado um lance no valor de 10.0 reais do usuario "fulano"
	E um lance no valor de 15.0 reais do usuario "beltrano"
	Quando propoe varios lances ao leilao
	Entao os lances sao aceitos
	
Esquema do Cenario: Propondo um lance invalido
	Dado um lance no valor de <valor> reais
	Quando propoe ao leilao
	Entao o lance nao eh aceito

	Exemplos:
		| valor |
		|			0 |
		|			-1 |
		
Cenario: Propondo uma sequencia de lances
	Dado dois lances
		| valor | nomeUsuario |
		|		10.0 | beltrano |
		|		15.0 | beltrano |
	Quando propoe varios lances ao leilao
	Entao o segundo lance nao eh aceito