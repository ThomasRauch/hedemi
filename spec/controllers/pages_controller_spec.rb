require 'spec_helper'

describe PagesController do

  describe "GET 'impressum'" do
    it "should be successful" do
      get 'impressum'
      response.should be_success
    end
  end

  describe "GET 'haftungsausschluss'" do
    it "should be successful" do
      get 'haftungsausschluss'
      response.should be_success
    end
  end

  describe "GET 'kontakt'" do
    it "should be successful" do
      get 'kontakt'
      response.should be_success
    end
  end

  describe "GET 'vision'" do
    it "should be successful" do
      get 'vision'
      response.should be_success
    end
  end

  describe "GET 'mitwirken'" do
    it "should be successful" do
      get 'mitwirken'
      response.should be_success
    end
  end

end
