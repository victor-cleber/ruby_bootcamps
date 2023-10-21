class App

def initialize(product, supermarket)
    @product = product
    @supermarket = supermarket
  end
  def comprar
    "You bought a #{@product.name} costing R$#{"%.2f" % @product.price}"
  end
end