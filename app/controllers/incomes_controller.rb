class IncomesController < ApplicationController

  def index
    @incomes = Income.all
    @sum = @incomes.sum(:amount)
  end

  def show
    @income = Income.find(params[:id])
  end
  
end
