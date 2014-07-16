require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
  it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)
      expect(pizza.toppings).to eq(toppings)
    end
end

describe Topping do    
  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do
    it "sets the name of the topping" do
      # The first line we added is essentially the same code we would run in irb
      topping = Topping.new('olives')
      # The second line is our expectation
      expect(topping.name).to eq('olives')
    end
    # let's go ahead and use a keyword argument to store a topping's vegetarian status
    it 'sets whether or not the topping is vegetarian' do
      topping = Topping.new 'bell peppers', vegetarian: true
      expect(topping.vegetarian).to eq(true)
    end
  end

end