# encoding: utf-8
class SolicitudPrestamo < Prawn::Document

	def initialize(equipos)
		super()
		@equipos = equipos
		repeat :all do
			header
			pie_de_pagina
		end

	end

	def header
	    #This inserts an image in the pdf file and sets the size of the image
	    image "#{Rails.root}/app/assets/images/coord.jpg", width: 180, height: 100, :position => 0
	    move_up 50
	    image "#{Rails.root}/app/assets/images/Logo_ULab.jpg", width: 50, height: 55, :position => 490  

	end

	def pie_de_pagina
	    font("#{Prawn::DATADIR}/fonts/DejaVuSans.ttf") do 
	      font_size 8
	      text_box "Universidad Simón Bolívar, Edif. Energética, Planta Baja. Valle de Sartenejas, Baruta, " +
	                "Caracas, Edo. Miranda, Venezuela, 89000", :at => [20,11], :height => 8
	      font_size 7
	      text_box "Telef.: +58 212 906-3708 / 3709 / 3710 / 3711  Fax: +58 212 906-3712", :at => [150,0], :height => 7
	    end
	    
	end

	

	 
end