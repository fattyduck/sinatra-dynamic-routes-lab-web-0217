require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name].reverse
    "#{name}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    "#{num*num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    results = []
    num.times {results << phrase}
    results.join("\n")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      return "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
        return "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
        return "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
        return "#{params[:number1].to_i / params[:number2].to_i}"
    end

  end

end
