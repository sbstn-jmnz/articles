require 'rails_helper'

RSpec.describe Article, type: :model do
  
  it 'is valid with valid attributes' do
    article = Article.new
    article.ean = 'A1234'
    article.price = 1
    article.name = 'blabla'
    
    expect(article).to be_valid
  end 
  
end
