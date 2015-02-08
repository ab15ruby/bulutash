#!/usr/bin/env ruby
require "date"

class Kisi

	def self.skt_hesapla(sure)
		Date.today.next_day(sure.to_i)
	end
	def self.kisi_kaydi (girdiler)
		@kullanici_adi, @parola, @sure, @kota = *girdiler
		bilgiler = "#{@kullanici_adi},#{@parola},#{Kisi.skt_hesapla(@sure)}"
		File.open("veritabani.txt","a") do |dosya|
		dosya.puts bilgiler
		end
		
	end
	
end

Kisi.kisi_kaydi(["ozgur","1234","2","2"])
