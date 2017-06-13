class WhatsnewScreen

  attr_accessor :driver
  def initialize(driver)
    @driver = driver
    @layout_whatsnew = 'redesign_whats_new_frame_layout'
    @Botão_não_obrigado =  'skip_button'

  end

	def tela_Whats_New
		if @driver.find_elements(id: "#{@layout_whatsnew}").size != 0
		   @driver.find_element(id: "#{@Botão_não_obrigado}").click
		end
	end
end