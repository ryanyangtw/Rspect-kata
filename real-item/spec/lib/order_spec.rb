require_relative "../../lib/order"


describe Order do 
  before do
    @order = Order.new
  end


  describe '#<<' do 
    it "should push item into order.items" do
      #take mocks away
      #Item = double("Item")
      #item = double("item", :name => "foobar")
      #allow(Item).to receive(:new).and_return(item)


      @order << "foobar"
      expect(@order.items.last.name).to eq "foobar"
    end

  end

end