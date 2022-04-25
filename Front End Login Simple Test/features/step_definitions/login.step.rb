Dado('que o usuario queira se logar') do
    login.load
end
  
Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end
  
Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
end

Dado('que usuario tente logar sem senha') do
    login.load
end
  
Quando('ele digitar as credenciais invalidas') do
    login.userLogin(CREDENTIAL[:invalid_user][:email], CREDENTIAL[:invalid_user][:password])
end
  
Entao('uma mensagem informando o erro deve aparecer') do
    login.checkInvalidUser
end