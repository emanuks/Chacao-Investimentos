class ProductsController < ApplicationController
  def index
    if params[:filtered] == "true"
      filter
    else
      @direct_treasures = DirectTreasure.all
      @fixed_incomes = FixedIncome.all
      @investment_funds = InvestmentFund.all
    end
  end

  private

  def filter
    @direct_treasures = []
    @fixed_incomes = []
    @investment_funds = []

    unless params[:direct_treasure] == "0"
      @direct_treasures = DirectTreasure.all
    end
    unless params[:fixed_income] == "0"
      @fixed_incomes = FixedIncome.all
    end
    unless params[:investment_fund] == "0"
      @investment_funds = InvestmentFund.all
    end
  end
end
