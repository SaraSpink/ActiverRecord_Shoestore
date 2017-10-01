require("spec_helper")


describe(Store) do
  it { should have_many(:brands_stores)}
  it { should have_many(:brands)}

  it("validates presence of name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  it("capitalizes the name") do
    store = Store.create({:name => "imelda's"})
    expect(store.name()).to(eq("Imelda's"))
  end

end
