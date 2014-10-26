class LoremipsumsController < ApplicationController
  def index
  end

  def create
    @number_of_paragraphs = params['paragraphs']
    @text = Generator.generate_text(@number_of_paragraphs)
    respond_to do |format|
      format.html { render :index }
      format.js { render @text }
    end
  end
end
