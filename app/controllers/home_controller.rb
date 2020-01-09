class HomeController < ApplicationController
  def index
    if params[:text]
      @braille = BrailleTransformer.new(params[:text])
    end
  end

  def about
  end
end
