require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'yahoofinance'
require 'pry-byebug'

get '/' do
  @stockcode = params[:stockcode]
 # binding.pry
  @result = YahooFinance::get_standard_quotes("#{@stockcode}")["#{@stockcode}"]

  erb :result
end