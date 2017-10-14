# Welcome
class WelcomeController < ApplicationController
  def index
    render layout: 'application'
  end

	def about
		render layout: 'application'
	end
end
