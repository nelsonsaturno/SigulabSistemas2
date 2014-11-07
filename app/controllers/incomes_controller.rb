class IncomesController < ApplicationController
  layout 'bootlayout'

  def index
    @incomes = Income.all
    
    @sum = @incomes.sum(:amount)
  end

  def show
    @income = Income.find(params[:id])
  end
  
  def new
    @income = Income.new
    @labs = Lab.all
  end
  
  def create
    # Check Date
    unless params[:income].nil?
      begin
        params[:income][:date] = DateTime.parse(params[:income][:date])
      rescue ArgumentError
        params[:income][:date] = nil
      end
    end
    
    @income = Income.new(income_params)
    
    if @income.save
      redirect_to action: 'index'
    else
      @labs = Lab.all
      render 'new'
    end
  end
  
  private
  
    def income_params
      params.require(:income).permit(:lab_id, :origin, :amount, :description, :date,:organism,:document,:financing)
    end
  
end