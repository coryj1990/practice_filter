require 'pry'

class HomeController < ApplicationController

	def index
		@albums = Album.all
		binding.pry
		artist_array = Artist.all
		@needed_array = Array.new

		artist_array.each_with_index do |stuff, index|
			if @needed_array.include? stuff.city
			else
				@needed_array.push(stuff.city)
			end
		end
	end
end
