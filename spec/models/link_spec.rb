require 'rails_helper'

RSpec.describe Link, type: :model do

  
  it "always has an original URL and a short code" do
    link = Link.new(
      original_url: "https://www.favoritewebsite.com/articles/how-to-boogie"
      short_code: "1234567"
    )
    link.save
  end

end
