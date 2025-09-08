# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes
    O usuario do sistema
    Deseja pode consultar informacoes dos Funcionarios

    Cenario: Buscar informacoes de Funcionarios
    Dado que o usuario informar do funcionario
    Quando ele realizar a pesquisa
    Entao uma lista de funcionarios deve ser retornada

    @cenario_dois
    Cenario: Cadastrar informacoes do usuario
        Dado que o usuario cadastre um novo funcionario
        Quando ele inserir os dados do funcionario
        Entao retorna que o funcionario foi cadastrado

    @cenario_tres
    Cenario: Alterar informacoes do usuario
        Dado que o usuario altere um funcionario
        Quando ele inserir os novos dados do funcionario
        Entao retorna que os dados do funcionario foram atualizados

    @cenario_quatro
    Cenario: Deletar informacoes do usuario
        Dado que o usuario delete um funcionario
        Quando ele informar o dado do funcionario
        Entao retorna que o usuario foi deletado