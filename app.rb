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
