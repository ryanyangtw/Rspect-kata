require_relative "../../lib/mocks_item"


describe Order do 
  before do
    @order = Order.new
  end


  describe '#<<' do 
    it "should push item into order.items" do
      Item = double("Item")
      item = double("item", :name => "foobar")

      allow(Item).to receive(:new).and_return(item)
      @order << "foobar"
      expect(@order.items.last.name).to eq "foobar"
    end

  end

end