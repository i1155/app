require 'spec_helper'

describe "Static Pages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end

	describe "Home page" do
		it "should have the content 'The best app ever'" do
			visit '/static_pages/home'
			expect(page).to have_content('The best app ever')
		end

		it "should have the litle 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('Home')
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the litle 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('Help')
		end
	end

	describe "About us" do
		it "should have the content 'About us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About us')
		end

		it "should have the title 'About us'" do
			visit '/static_pages/about'
			expect(page).to have_title('About us')
		end
	end
end