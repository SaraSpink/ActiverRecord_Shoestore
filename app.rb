require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  @stores = Store.all()
  erb(:index)
end

post ("/") do
  name = params["name"]
  store = Store.create({:name => name})
  redirect("/")
end

get ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  erb(:store)
end

post ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  brand = Brand.create({:name => params["name"], :price => params["price"]})
  @store.brands.push(brand)
  redirect("/store/#{@store.id}")
end

patch ("/store/:id") do
  store = Store.find(params[:id].to_i)
  name = params['name']
  store.update({:name => name})
  redirect("/store/#{store.id}")
end

delete ("/store/:id") do
  store = Store.find(params[:id].to_i)
  name = params['name']
  store.delete
  redirect("/")
end
