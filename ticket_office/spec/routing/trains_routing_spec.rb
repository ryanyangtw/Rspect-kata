require "rails_helper"

RSpec.describe EventsController, :type => :routing do
  describe "routing" do
    it "should route to trains" do     
      expect(:get => "/trains/123").to route_to("trains#show", :id => "123")
    end
  end
end
