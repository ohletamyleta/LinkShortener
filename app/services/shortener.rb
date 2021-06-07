require 'digest/sha2'

class Shortener

  attr_reader :url 

  def initialize(url)
    @url = url
  end 

  def generate_short_link
    link_model.create(original_url: url, lookup_code: lookup_code)

  def lookup_code
    loop do
      code = get_fresh_code
      break code unless link_model.exists?(lookup_code: code)
    end
  end

  private

  def get_fresh_code
    SecureRandom.uuid[0..6]
  end

end

