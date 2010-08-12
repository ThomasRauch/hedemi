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
end

