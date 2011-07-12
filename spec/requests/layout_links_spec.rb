require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "A Propos"
    response.should have_selector('title', :content => "About")
    click_link "Aide"
    response.should have_selector('title', :content => "Help")# fill in
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")# fill in
    click_link "Accueil"
    response.should have_selector('title', :content => "Home")# fill in
    click_link "S'inscrire!"
    response.should have_selector('title', :content => "Sign up")# fill in
  end
end
