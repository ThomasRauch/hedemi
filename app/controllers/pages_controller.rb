class PagesController < ApplicationController
  def impressum
    @title = "Impressum"
  end

  def haftungsausschluss
    @title = "Haftungsausschluss"
  end

  def kontakt
    @title = "Kontakt"
  end

  def vision
    @title = "Vision"
  end

  def mitwirken
    @title = "Mitwirken"
  end

  def agb
    @title = "Allgemeine Geschaeftsbedingungen"
  end
  
end
