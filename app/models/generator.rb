class Generator 

  SIZE_OF_PARAGRAPHS = 10

  def self.generate_text(number_of_paragraphs)
    
    @text = ""
    number_of_paragraphs.to_i.times do
      @text += "<p>" + Forgery(:lorem_ipsum).paragraphs(SIZE_OF_PARAGRAPHS) + "</p>"
    end
    @text
  end
end
