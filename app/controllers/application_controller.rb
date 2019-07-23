class ApplicationController < ActionController::Base
  def hello
    render html: "Hola, y'all!"
  end
end
