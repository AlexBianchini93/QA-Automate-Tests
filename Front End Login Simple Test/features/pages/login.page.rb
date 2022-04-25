class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "//button[@class='sign-in-form__submit-button']"
    element :emptyPassword, :xpath, "//p[@class='alert-content']"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end

    def checkInvalidUser
        expect(emptyPassword.text).to eql "Insira sua senha." 
    end 

end
