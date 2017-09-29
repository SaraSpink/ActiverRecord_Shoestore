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
  @store_validation = Store.new({:name => name, :done => false})
  if @task.save()
  erb(:index)
  else
  erb(:errors)
  end
  redirect("/")
end

get ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  erb(:store)
end

post ("/store/:id") do
  @store = Store.find(params[:id].to_i)
  brand = Brand.create({:name => params["name"]})
  @store.brands.push(brand)
  redirect("/store/#{@store.id}")
end
