require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Vision page at '/vision'" do
    get '/vision'
    response.should have_selector('title', :content => "Vision")
  end

  it "should have a Kontakt page at '/kontakt'" do
    get '/kontakt'
    response.should have_selector('title', :content => "Kontakt")
  end

  it "should have an mitwirken page at '/mitwirken'" do
    get '/mitwirken'
    response.should have_selector('title', :content => "Mitwirken")
  end

  it "should have a impressum page at '/impressum'" do
    get '/impressum'
    response.should have_selector('title', :content => "Impressum")
  end

  it "should have a agb page at '/agb'" do
    get '/agb'
    response.should have_selector('title', :content => "Allgemeine Geschaeftsbedingungen")
  end

  it "should have a haftungsausschluss page at '/haftungsausschluss'" do
    get '/haftungsausschluss'
    response.should have_selector('title', :content => "Haftungsausschluss")
  end

  it "should have a registrieren page at '/registrieren'" do
    get '/registrieren'
    response.should have_selector('title', :content => "Registrieren")
  end
  
  
  # checks if the links on the pages exists. Needs an algorithm to do that foreach existing page
  it "agb page should have the right links on the layout" do
    visit agb_path
    click_link "Vision"
    response.should have_selector('title', :content => "Vision")
    #click_link "Registrieren"
    #response.should have_selector('title', :content => "Registrieren")
    click_link "Haftungsausschluss"
    response.should have_selector('title', :content => "Haftungsausschluss")
    #click_link "AGB"
    #response.should have_selector('title', :content => "Allgemeine Geschaeftsbedingungen")
    click_link "Impressum"
    response.should have_selector('title', :content => "Impressum")
    click_link "Mitwirken"
    response.should have_selector('title', :content => "Mitwirken")
    click_link "Kontakt"
    response.should have_selector('title', :content => "Kontakt")
  end

end

