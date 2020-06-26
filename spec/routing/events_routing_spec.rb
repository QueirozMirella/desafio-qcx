require "rails_helper"

RSpec.describe EventsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/issues/:id/events").to route_to("events#index", "issue_id"=>":id")
    end

    it "routes to #post" do
      expect(:post => "/events").to route_to("events#create")
    end

  end
end