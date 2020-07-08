#language: pt

@opencart
Funcionalidade: Acessar Demo Open Cart
 
  
    Contexto: Login de Usuário
    COMO um usuario EU QUERO me cadastrar no site Opencart A FIM me tornar um usuário ativo que possa logar no site.


    Dado que eu acesso o site Opencart

    Esquema do Cenário: Fazer cadastro
    E clico em My Account > Register
    E preencho o formulário com dados aleatórios para não ocorrer duplicação
    Quando eu clicar em Continue
    Então o Cadastro é realizado com sucesso
    E clico em continue
    E faço o logout
    
    
    Esquema do Cenário: Fazer login com usuario Imdb com sucesso
    Dado que eu clico em My Account > Login
    Quando eu preencho Login e Senha e clico em Login
    Então o Login é realizado com sucesso
 