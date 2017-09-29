require("spec_helper")


describe(Store) do
  it { should have_and_belong_to_many(:brands)}

  it("validates presence of name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end
end
