# require './appium_specs/features/android/objetosAndroid.rb'

class LoginScreen
  # Declare todos os elementos da tela

  attr_accessor :driver
  def initialize(driver)
    @driver = driver
    @agencia =  'txt_agency'
    @conta = 'txt_account'
    @botão_ok = 'btn_login'
    @botão_acessar = 'button_electronic_password_access'
    @lembrar_senha = 'chk_remember_account'
  end

  def preencher_agencia(agency)
    agencia = @driver.find_element(id: "#{@agencia}")
    agencia.send_keys agency
  end

  def preencher_conta(account)
    conta = @driver.find_element(id: "#{@conta}")
    conta.send_keys account
  end

  def botao_ok
     @driver.find_element(id: "#{@botão_ok}").click
  end

  def digitar_senha(password)
    cont = 1
    password.split('').each do |number|
      num = driver.find_element(id: 'text_view_electronic_password_button' + "#{cont}").text
      while num.include?(number) == false
        cont = cont + 1
        num = driver.find_element(id: 'text_view_electronic_password_button' + "#{cont}").text
      end
      driver.find_element(id: 'text_view_electronic_password_button' + "#{cont}").click
      cont = 1
    end
  end
  def botao_acessar
    @driver.find_element(id: "#{@botão_acessar}").click
  end
  def Lembrar_agencia_conta
    @driver.find_element(id: "#{@lembrar_senha}").click
  end

end