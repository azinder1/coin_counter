require('sinatra')
require('sinatra/reloader')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')
require('rspec')
require('capybara')
require('pry')

get('/') do
  erb(:index)
end

get('/coin_combination') do
  @coin_change = params.fetch('money').to_i.coin_counter()
  erb(:coin_combination_output)
end
