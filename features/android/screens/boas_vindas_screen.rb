
# coding: utf-8
class BoasVindasScreen

  # Declare todos os elementos da tela

  attr_accessor :driver
  def initialize(driver)
    @driver = driver
    @layout_name =  'activity_redesign_welcome'
    @link_ja_tenho_conta = 'relativelayout_already_have_account'

  end

  def tela_boas_vindas
    sleep(1)
    @driver.find_element(id: "#{@layout_name}")
  end

  def link_ja_tenho_conta
      @driver.find_element(id: "#{@link_ja_tenho_conta}").click
  end
end
