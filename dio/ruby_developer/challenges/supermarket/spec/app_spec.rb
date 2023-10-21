require 'rspec'
require 'supermarket'
require 'product'
require 'app'

describe Supermarket do
  describe do
    it  '1. A app object bought a product using the a supermarket object' do
        product = Product.new('Forma', 60)
        supermarket = Supermarket.new(product)
        app = App.new(product, supermarket)
        expect(app.comprar).to eq("You bought a Forma costing R$60.00")
      end
  end
end