
# coding: utf-8
class BoasVindasScreen

  # Declare todos os elementos da tela

  attr_accessor :driver
  def initialize(driver)
    @driver = driver
    @layout_name =  'activity_redesign_welcome'
    @link_ja_tenho_conta = 'relativelayout_already_have_account'
    @alerta_msg = 'Allow'

  end

  def tela_boas_vindas
    @driver.find_element(id:"#{@alerta_msg}").click
    @driver.find_element(id: "#{@layout_name}")
  end

  def link_ja_tenho_conta
      @driver.find_element(id: "#{@link_ja_tenho_conta}").click
  end
end
