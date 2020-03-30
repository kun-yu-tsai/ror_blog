class WelcomeController < ApplicationController
  def index
    a = 10
    c = 20
    d = a + c
    render plain: d
  end
  def abcde
    render plain: "STEVE OK"
  end
end
