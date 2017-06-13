# language: pt
Funcionalidade: Login

	Cenário: Posso logar no aplicativo utilizando vários tipos de conta de pessoa física
		Dado que vejo a tela de boas vindas
		E clico no link ja tenho uma conta
		E vejo a Home de login
		E digitei a credencial "varejo"
		E toquei no botão OK
		E digitei a senha no teclado virtual
		Quando toquei no botão acessar
		Então vejo a nova home

	Cenário: Posso salvar um perfil no aplicativo utilizando o interruptor 'lembrar agência e conta' e ao reiniciá-lo não precisarei mais informar agência, conta e titular
		Dado que vejo a tela de boas vindas
		E clico no link ja tenho uma conta
		E vejo a Home de login
		E digitei a credencial "varejo"
		E seleciono a opção lembrar agencia e conta
		E toquei no botão OK
		E digitei a senha no teclado virtual
		E toquei no botão acessar
		E vejo a nova home
		Quando clico no item "sair da sua conta" do menu perfil do usuario
		E devo ir para tela de senha eletrolica
		Então acesso a conta salva no perfil novamente.



