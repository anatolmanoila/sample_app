require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'      #visit,page - capibara method
      page.should have_content('Sample App') 
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Sample App | Home")
    end
  end

  describe "Home Page" do
  	it "should have the content 'Help'" do
  	visit '/static_pages/help'
  	page.should have_content('Help')
  	end
  	it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Sample App | Help")
    end
  end

  describe "About page" do 
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		page.should have_content('About us')
  	end
  	it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
    		:text => "Ruby on Rails Sample App | About")
    end
  end
end
