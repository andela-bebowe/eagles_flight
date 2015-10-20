require "rails_helper"

RSpec.describe "routing to controllers", :type => :routing do
  it "routes static_pages#home to home page" do
    expect(:get => "/").to route_to(
      :controller => "static_pages",
      :action => "home"
    )
  end
end
