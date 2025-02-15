require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse

  end

  get '/square/:number' do
    @num = (params[:number].to_i ** 2).to_s

  end

  get '/say/:number/:phrase' do
    # @num = params[:number]
    # @phrase = params[:phrase]
    # num = @num.to_i
    #   num.times do
    #     "#{@phrase}" add end
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
      end
      answer
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  #   # @word1 = params[:word1]
  #   # @word2 = params[:word2]
  #   # @word3 = params[:word3]
  #   # @word4 = params[:word4]
  #   # @word5 = params[:word5]
  #   # "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      answer = num1 + num2
    elsif params[:operation] == "subtract"
      answer = num1 - num2
    elsif params[:operation] == "multiply"
      answer = num1 * num2
    elsif params[:operation] == "divide"
      answer = num1 / num2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end
