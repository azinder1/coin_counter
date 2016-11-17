require('rspec')
require('pry')
require('./lib/coin_counter')

describe('Fixnum#coin_counter') do
  it('can convert a user inputted number and convert it to its coin value') do
    expect((25).coin_counter()).to(eq("1 Quarters, 0 Dimes, 0 Nickles, 0 Pennies"))
  end
  it('it can return a key for any coin value') do
    expect((10).coin_counter()).to(eq("0 Quarters, 1 Dimes, 0 Nickles, 0 Pennies"))
  end
  it('it can take any value and return it as the number of coins equal to it') do
    expect((84).coin_counter()).to(eq("3 Quarters, 0 Dimes, 1 Nickles, 4 Pennies"))
  end
end
