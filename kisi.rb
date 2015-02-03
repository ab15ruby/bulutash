#!/usr/bin/env ruby
require "date"

class Kisi
	
	def initialize veriler
		@kullanici_adi,@parola,@sure,@kota = *veriler
	end
	#attr_accessor :@kota	

	def skt_hesapla
		puts @sure
		Date.today.next_day(@sure.to_i)
	end
	
end


ali = Kisi.new("ali","123","60","100")
#puts ali.skt_hesapla
#puts ali.kota
