

require 'spec_helper'

describe "StatickPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	subject { page }

	#This is testing form the home page

	describe "Home page" do
		before {visit root_path}

		it { should have_content('Sample App') }
		it { should have_title(full_title('')) }
		it { should_not have_title(' | Home') }
	end

	#This testing for the help page.

	describe "Help page" do
		before {visit help_path}

		it { should have_content('Help') }
		it { should have_title(full_title('Help')) }
	end

	#This is testing for the About us page.

	describe "About page" do
		before { visit about_path}

		it { should have_content('About Us') }
		it { should have_title(full_title('About Us')) }
	end

	#creating and testing the contact page
	describe "Contact page" do
		before { visit contact_path}

		it { should have_content('Contact Us') }
		it { should have_title(full_title('Contact Us')) }
	end

	
end









