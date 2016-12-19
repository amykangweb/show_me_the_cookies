class HomeController < ApplicationController
	def index
		@cookies = Cookie.all
	end
end