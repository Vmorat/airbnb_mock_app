class PagesController < ApplicationController
  # Create the method to show all flats
  def home
    @flats = Flat.all
  end
end
