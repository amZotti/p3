class LoremipsumsController < ApplicationController
  def index
    @text = Generator.generate_text(5)
  end
end
