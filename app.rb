require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i 
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do 
    @multiply_phrase = params[:phrase] * params[:number].to_i 
    "#{@multiply_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @adding_words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @adding_words
  end

  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number1+@number2}"
    elsif params[:operation] == "subtract"
      "#{@number1-@number2}"
    elsif params[:operation] == "multiply"
      "#{@number1*@number2}"
    elsif params[:operation] == "divide"
      "#{@number1/@number2}"
    end
  end 







end