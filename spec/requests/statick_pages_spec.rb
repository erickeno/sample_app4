

require 'spec_helper'

describe "StatickPages" do

	#let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	subject { page }

	#shared examples for all the pages
	shared_examples_for "all statick pages" do 
		it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
	end

	#This is testing form the home page

	describe "Home page" do
		before {visit root_path}
		let (:heading) { 'Sample App' }
		let (:page_title) { '' }

		it_should_behave_like "all statick pages"
		it { should_not have_title(' | Home') }
	end

	#This testing for the help page.

	describe "Help page" do
		before {visit help_path}
		let (:heading) { 'Help' }
		let (:page_title) { 'Help' }

		it_should_behave_like "all statick pages"
	end

	#This is testing for the About us page.

	describe "About page" do
		before { visit about_path}
		let (:heading) {'About Us' }
		let (:page_title) { 'About Us' }

		it_should_behave_like "all statick pages"
	end

	#creating and testing the contact page
	describe "Contact page" do
		before { visit contact_path}
		let (:heading) { 'Contact Us' }
		let (:page_title) { 'Contact Us' }

		it_should_behave_like "all statick pages"
	end

	#testing  that we have the right links on the layout
	it "should have the right links in the layout" do
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))

		click_link "Help"
		expect(page).to have_title(full_title('Help'))

		click_link "Contact" 
		expect(page).to have_title(full_title('Contact Us'))

		click_link "Home"
		click_link "Sign up now!"
		expect(page).to have_title(full_title('Sign Up'))

		click_link "sample app"
		expect(page).not_to have_title(full_title(' | Home'))
	end
end


















