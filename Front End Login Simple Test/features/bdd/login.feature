#language: pt

Funcionalidade: Sistema de login
Para ter acesso ao Sistema
O usuario do LinkedIn
Deseja logar no site


Cenario: Login com sucesso
Dado que o usuario queira se logar
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso

Cenario: Login sem digitar senha
Dado que usuario tente logar sem senha
Quando ele digitar as credenciais invalidas
Entao uma mensagem informando o erro deve aparecer 

