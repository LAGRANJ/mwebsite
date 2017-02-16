class MainController < ApplicationController
  def index
    @currencies = Redis.current.lrange('currencies',0,-1)
    @market_rates_cash = Hash.new()
    @market_rates_noncash = Hash.new()
    @currency_rates = Hash.new()
    @currencies.each do |currencyid|
    	@currency_rates[currencyid] = JSON.parse(Redis.current.get("currencyid:#{currencyid}_3"))
    	@market_rates_noncash[currencyid] = JSON.parse(Redis.current.get("currencyid:#{currencyid}_2"))
    	@market_rates_cash[currencyid] = JSON.parse(Redis.current.get("currencyid:#{currencyid}_1"))
    end
  end
end
