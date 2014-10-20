require_relative "../../lib/item"

describe Item do
  
  it "should be created by name" do 

    item = Item.new("bar")
    expect(item.name).to eq "bar"
  end

end