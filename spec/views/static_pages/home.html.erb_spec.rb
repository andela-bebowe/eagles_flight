require "rails_helper"

RSpec.describe "static_pages/home.html.erb", type: :view do
  describe "home page" do
    it "displays the Home title" do
      render
      view.content_for(:title) { "Home | Eagles Flight" }
    end

    it "should have a h1 Header" do
      render
      view.content_for(:h1) { "Eagles Flight" }
    end

     it "should have header and footer partials" do
      render
      within "body" do
        view.should render_template(:partial => "layouts/footer")
        view.should render_template(:partial => "layouts/header")
      end
    end
    it "should have a nav at the top" do
      render
      within "nav" do
        expect(rendered).to contain("Home")
        expect(rendered).to contain("Sign-in")
      end
    end
  end
end
