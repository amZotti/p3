class Generator

  SIZE_OF_PARAGRAPHS = 10

  def self.generate_text(number_of_paragraphs)
    @text = ""
    number_of_paragraphs.to_i.times do
      @text += "<p>" + Forgery(:lorem_ipsum).paragraphs(SIZE_OF_PARAGRAPHS) + "</p>"
    end
    @text
  end

  def self.generate_users(user_data)
    @users = []
    user_data[:users].to_i.times do
      @user = generate_user_content(user_data)
      @users << @user
    end
    @users
  end

  private

  def self.generate_birthdate()
    (1 + rand(12)).to_s + "/" + (1 + rand(29)).to_s + "/" + (1 + rand(1900..2014)).to_s
  end

  def self.generate_user_content(user_data)
    @user = {name: Forgery(:name).full_name}
    if (user_data[:money])
      @user[:money] = Forgery(:monetary).formatted_money :min => 1, :max => 10000
    end

    if (user_data[:shirt_size])
      @user[:shirt_size] = Forgery(:personal).shirt_size
    end

    if (user_data[:email_address])
      @user[:email_address] = Forgery(:internet).email_address
    end

    if (user_data[:password])
      @user[:password] = Forgery(:basic).password
    end

    if (user_data[:profile])
      @user[:profile] = Forgery(:lorem_ipsum).words(10)
    end

    if (user_data[:birthdate])
      @user[:birthdate] = generate_birthdate()
    end
    @user
  end
end
