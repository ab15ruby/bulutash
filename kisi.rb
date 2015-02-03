#!/usr/bin/env ruby
require "date"

class Kisi
	
	def initialize veriler
		@kullanici_adi, @parola, @sure, @kota = *veriler
	end

	def skt_hesapla
		Date.today.next_day(@sure.to_i)
	end
	def kisi_kaydi
		bilgiler = "#{@kullanici_adi},#{@parola},#{skt_hesapla},#{@kota}"
		File.open("veritabani.txt","a") do |dosya|
		dosya.puts bilgiler
		end
		
	end
	
end


ali = Kisi.new(["ali","123","60","100"])
puts ali.skt_hesapla
ali.kisi_kaydi
