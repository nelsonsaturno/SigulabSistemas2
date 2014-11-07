# encoding: utf-8
class ReporteServices < Prawn::Document

  def initialize(services) 
    super()
    @services = services
    header
    titulo
    table_content
	 pie_de_pagina
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
    image "#{Rails.root}/app/assets/images/cebolla.png", width: 70, height: 45, :position => 55
    move_up 40
    image "#{Rails.root}/app/assets/images/logo_ulab.png", width: 100, height: 80, :position => 430
    font("#{Prawn::DATADIR}/fonts/DejaVuSans.ttf") do 
    	draw_text "UNIVERSIDAD SIMÓN BOLÍVAR", :at =>[0,657]
      font_size 10
    	draw_text "Vicerectorado Académico", :at => [25,645]
      font_size 8
      draw_text "Unidad de laboratorios", :at =>  [40, 634]
    end

  end

  def titulo
   move_down 50
   table tittle do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD','DDDDDD']
      self.column_widths = [455,85]
    end
  end

   def tittle 
      [[{:content => "      ESPECIFICACIONES TÉCNICAS DE SERVICIOS", :rowspan => 2, :size => 20, :background_color => "DDDDDD",
 																																				:align => :center },
        {:content => "Registro No.", :background_color => "DDDDDD"}],
        [{:content => "00001", :background_color => "FFFFFF", :align => :center}]]
   end


  def table_content 
    move_down 30
    # Then I set the table column widths
    table items_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [60,120,80,200,80]
    end

  move_down 45
  text "______________________\n\nFirma de Autorizacion\ \ \ \ \n", :align => :right 
  end


 
  def items_rows
    [['Número', 'Nombre','Tipo', 'Descripción', 'Ubicacion']] +
      @services.map do |service|
      [service.numeroBien, service.nombre, service.tipo, service.descripcion, service.ubicacion]
    end
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