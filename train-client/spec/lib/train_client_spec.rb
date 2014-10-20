require_relative '../../lib/train_client'


describe TrainClient do

  let(:client){ TrainClient.new}

  describe "Quert train's seats data" do
    it "should teturn seats data" do


      data = [
        {"id" => "1A", "reservation_id" => 1 },
        {"id" => "1B", "reservation_id" => 2 }, 
        {"id" => "1C", "reservation_id" => nil }
      ]

      train_id = "Train-123"
      expect(RestClient).to receive(:get).with("http://localhost:3000/trains/#{train_id}").and_return(JSON.generate(data))
      #allow

      expect( client.query(train_id)).to eq(data)
    end
  end

  describe ".reserve" do
    it "should reserve a seat" do

      response_data = {
        "reservation_id" => 123,
        "train_id" => "Train-123"
      }

      post_data = {
        "seat_id" => "2B"
      }

      train_id = "Train-123"
      
      expect(RestClient).to receive(:post).with("http://localhost:3000/trains/#{train_id}/reservation", post_data).and_return(JSON.generate(response_data))
  
      expect(client.reserve("Train-123", "2B")).to eq(response_data)

    end
  end

end


