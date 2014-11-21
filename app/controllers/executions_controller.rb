class ExecutionsController < ApplicationController
  layout 'bootlayout'

  def index
    @executions = Execution.all
    @sum = @executions.sum(:check_amount)
  end

  def show
    @execution = Execution.find(params[:id])
  end
  
  def new
    @execution = Execution.new
    if params[:cid]
      @commitment = Commitment.find(params[:cid])
    end
  end
  
  def create
    params[:execution][:check_elaboration_date] = purge_date(params[:check_elaboration_date])
    params[:execution][:check_sign_date] = purge_date(params[:check_sign_date])
    params[:execution][:check_delivery_date] = purge_date(params[:check_delivery_date])
    
    @execution = Execution.new(execution_params)
    
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
      params.require(:execution).permit(:code, :commitment_id, :check_amount, :check_number, :check_elaboration_date, :check_sign_date, :check_delivery_date)
    end
    
    def purge_date(date)
      return date if date.blank?
      begin
        date = DateTime.parse(date)
      rescue ArgumentError
        return nil
      end
      return date
    end
  
end