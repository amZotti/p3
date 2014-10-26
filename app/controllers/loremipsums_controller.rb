class LoremipsumsController < ApplicationController
  def index
  end

  def create
    @number_of_paragraphs = params['paragraphs']
    @text = Generator.generate_text(@number_of_paragraphs)
    render :index
  end
end
