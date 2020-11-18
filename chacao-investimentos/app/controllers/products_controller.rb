class ProductsController < ApplicationController
    def index
        @direct_treasures = DirectTreasure.all
        @fixed_incomes = FixedIncome.all
        @investment_funds = InvestmentFund.all
    end
end
