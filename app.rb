require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end

post ("/create_store") do
  name = params["name"]
  store = Store.new({:name => name})
  if store.save()
  redirect("/")
  else
  erb(:errors, :locals => {:messages => store.errors.messages})
  end
end

patch ("/create_brand") do
  brand = params["brand_name"]
  price = params["price"]
  allbrands = Brand.new({:name => brand, :price => price})
  if allbrands.save()
  redirect("/")
  else
  erb(:errors, :locals => {:messages => allbrands.errors.messages})
  end
end

get ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  @brands = Brand.all()
  erb(:store)
end

post ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  brand = Brand.create()
  @brands = @store.brands.push(brand)

  # brand = Brand.find_or_create_by({:name => params["name"], :price => params["price"]})
  # if brand.save()
  #   @store.brands.push(brand)
  #   redirect("/store/#{@store.id}")
  # else
  #   erb(:errors, :locals => {:messages => brand.errors.messages})
  # end
  erb(:store)
end

patch ("/store/:id") do
  @brands = Brand.all()

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
