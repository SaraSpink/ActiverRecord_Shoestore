require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end

post ("/") do
  name = params["name"]
  store = Store.create({:name => name})
  if store.save()
  redirect("/")
  else
  erb(:errors, :locals => {:messages => store.errors.messages})
  end
end

patch ("/") do
  brand = params["brand_name"]
  price = params["price"]
  allbrands = Brand.create({:name => brand, :price => price})
  if allbrands.save()
  redirect("/")
  else
  erb(:errors, :locals => {:messages => allbrands.errors.messages})
  end
end

get ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  erb(:store)
end

post ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  brand = Brand.find_or_create_by({:name => params["name"], :price => params["price"]})
  if brand.save()
    @store.brands.push(brand)
    redirect("/store/#{@store.id}")
  else
    erb(:errors, :locals => {:messages => brand.errors.messages})
  end
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
