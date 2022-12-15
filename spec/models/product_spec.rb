# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'A valid instance' do
    before(:each) do
      @product = Product.new
      @product.ean = 'A1234'
      @product.price = 1
      @product.name = 'blabla'
    end
    it 'is valid with valid attributes' do
      expect(@product).to be_a_new(Product)
      expect(@product).to be_valid
    end
  end

  describe 'An invalid instance' do
    before(:each) do
      @product = Product.new
      @product.validate
    end
    it 'is invalid without name' do
      expect(@product.errors.messages).to include(:name)
    end
    it 'is invalid without price' do
      expect(@product.errors.messages).to include(:price)
    end
    it 'is invalid without ean' do
      expect(@product.errors.messages).to include(:ean)
    end
  end
end
