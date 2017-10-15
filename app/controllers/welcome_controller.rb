require 'place'

# Welcome
class WelcomeController < ApplicationController
  def index
    render layout: 'application'
  end

  def about
    render layout: 'application'
  end

  def map
    @places = Place.all
    render layout: 'application'
  end
end
