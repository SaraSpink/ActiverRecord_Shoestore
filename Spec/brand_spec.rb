require("spec_helper")


describe(Brand) do
  it { should have_many(:brands_stores)}
  it { should have_many(:stores)}

  it("validates presence of name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end
end
