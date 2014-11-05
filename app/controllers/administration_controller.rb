class AdministrationController < ApplicationController
  
  before_action :set_subsystem 
  
  def index
  end
  
  private
  
  def set_subsystem
    @subsystem = 'administracion'
  end
  
end
