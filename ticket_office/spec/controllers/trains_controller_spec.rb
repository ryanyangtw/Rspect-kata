require 'rails_helper'

RSpec.describe TrainsController, :type => :controller do

  describe "get show" do
    
    #原本是用stub的方式假造
    #before do
      #Train = double("Train")
      #@train = double("train", :id=>"416", :name=>"Train#416")
      #allow(Train).to receive(:find).with(@train.id).and_return(@train)
    #end

    #現在改用真的，資料真的會儘db
    let(:train){ Train.create!(:name => "416") }
    it "should return train's seat data" do

      get :show, {:id => train.id, :format => :json }
      expect(assigns(:train)).to eq(train)
      #要測template 必須把 template (views/show.json.jbuilder)確實實作出來
      expect(response).to render_template(:show)
      expect(response).to have_http_status(200)

    end

  end

end
