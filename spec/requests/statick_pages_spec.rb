

require 'spec_helper'

describe "StatickPages" do
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	describe "Home page" do

		#This is testing form the home page

		it "should have the content 'Sample App'" do
			visit '/statick_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "should have title home" do
			visit '/statick_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
			visit '/statick_pages/home'
			expect(page).not_to have_title(' | Home')
		end
	end

	#This testing for the help page.

	describe "Help page" do
		it "should have the content 'Help' " do 
			visit '/statick_pages/help'
			expect(page).to have_content('Help')
		end

		it "It should have title help" do
			visit '/statick_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	#This is testing for the About us page.

	describe "About page" do
		it "should have the content 'About Us' " do 
			visit '/statick_pages/about'
			expect(page).to have_content('About Us')
		end

		it "should have title About Us" do
			visit '/statick_pages/about'
			expect(page).to have_title("#{base_title} | About Us")
		end

	end

	#creating and testing the contact page
	describe "Contact page" do
		it "should have the content 'Contact Us'" do
			visit '/statick_pages/contact'
			expect(page).to have_content('Contact Us ')
		end

		it "should have title Contact as" do
			visit '/statick_pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end
	end

	
end









