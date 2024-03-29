require 'spec_helper'

describe "StaticPages" do
  	describe "Home Page" do
    	it "should not have home in title" do
    		visit '/static_pages/home'
    		expect(page).not_to have_title('| Home')
    	end

    	describe "Help Page" do
    		it "should have the right title for about" do
    			visit '/static_pages/help'
    			expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    		end
    	end

    	describe "About page" do
    		it "should have the right content title" do
    			visit '/static_pages/about'
    			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    		end
    	end

    	describe "Contact Page" do
    		it "should have the right content title" do
    			visit '/static_pages/contact'
    			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    		end
    	end



  end
end
