require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Herrscher des Mittelalters"
  end



  describe "GET 'impressum'" do
    it "should be successful" do
      get 'impressum'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'impressum'
      response.should have_selector("title",
                        :content => "Impressum | " + @base_title)
    end
  end

  describe "GET 'haftungsausschluss'" do
    it "should be successful" do
      get 'haftungsausschluss'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'haftungsausschluss'
      response.should have_selector("title",
                        :content => "Haftungsausschluss | " + @base_title)
    end
  end

  describe "GET 'kontakt'" do
    it "should be successful" do
      get 'kontakt'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'kontakt'
      response.should have_selector("title",
                        :content => "Kontakt | " + @base_title)
    end
  end

  describe "GET 'vision'" do
    it "should be successful" do
      get 'vision'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'vision'
      response.should have_selector("title",
                        :content => "Vision | " + @base_title)
    end
  end

  describe "GET 'mitwirken'" do
    it "should be successful" do
      get 'mitwirken'
      response.should be_success
    end
   
    it "should have the right title" do
      get 'mitwirken'
      response.should have_selector("title",
                        :content => "Mitwirken | " + @base_title)
    end
  end

  describe "GET 'agb'" do
    it "should be successful" do
      get 'agb'
      response.should be_success
    end
   
    it "should have the right title" do
      get 'agb'
      response.should have_selector("title",
                        :content => "Allgemeine Geschaeftsbedingungen | " + @base_title)
    end
  end

end
