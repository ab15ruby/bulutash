#!/usr/bin/env ruby
require 'date'
module Kimlik
	def Giris(kullanici,parola)
		dosya=File.open("veritabani.txt","r").readlines().each do |satir|
			parca=satir.split(",")
			if (parca[0]==kullanici && parca[1]==parola)
				if (Date.parse(parca[2])-Date.today >0)
					return 1
				else
					return 2
				end
			end
		end
		return 3
	end
end
class Test
	include Kimlik
end
