require "rails_helper"

RSpec.describe "routing to controllers", :type => :routing do
  it "routes flights#index to flights" do
    expect(:get => "/").to route_to(
      :controller => "flights",
      :action => "index"
    )
  end
end
