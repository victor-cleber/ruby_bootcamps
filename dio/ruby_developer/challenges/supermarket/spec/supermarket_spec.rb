require 'rspec'
require 'supermarket.rb'
require 'product.rb'

describe Supermarket do
  describe do
    it  '1. Supermarket is initialized with a Product' do
        product = Product.new('Forma', 60)
        supermarket = Supermarket.new(product)
        expect(supermarket.product.name).to eq('Forma')
        expect(supermarket.product.price).to eq(60)
    end
  end
end