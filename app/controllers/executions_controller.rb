class ExecutionsController < ApplicationController
  layout 'bootlayout'

  def index
    @executions = Execution.all.order("date ASC")
    @sum = @executions.sum(:amount)
  end

  def show
    @execution = Execution.find(params[:id])
  end
  
  def new
    @execution = Execution.new
  end
  
  def create
    # Check Date
    unless params[:execution].nil?
      begin
        params[:execution][:date] = DateTime.parse(params[:execution][:date])
      rescue ArgumentError
        params[:execution][:date] = nil
      end
    end
    
    @execution = execution.new(execution_params)
    
    if @execution.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end
  
  def edit
    @execution = Execution.find(params[:id])
  end
  
  def update
    # Check Date
    unless params[:execution].nil?
      begin
        params[:execution][:date] = DateTime.parse(params[:execution][:date])
      rescue ArgumentError
        params[:execution][:date] = nil
      end
    end
    @execution = Execution.find(params[:id])
    
    if @execution.update_attributes(execution_params)
      redirect_to execution_url(@execution)
    else
      render 'edit'
    end
  end
  
  private
  
    def execution_params
      params.require(:execution).permit(:sae_code, :amount, :date)
    end
  
end