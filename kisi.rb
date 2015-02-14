#!/usr/bin/env ruby
require "date"

class Kisi
	
	def self.kisi_kontrol kullanici_adi
		@kontrol = 0
		File.open("veritabani.txt","r").readlines.each do |satir|
			parca = satir.split(",")
			if parca[0] == kullanici_adi
				puts "Girdiğiniz kullanıcı adı kullanılıyor!!!"
				sleep(2.0)
				@kontrol = 1
				break
			end
		end
		@kontrol
	end	
	def self.skt_hesapla(sure)
		Date.today.next_day(sure.to_i)
	end
	def self.kisi_kaydi (girdiler)
		@kullanici_adi, @parola, @sure, @kota = *girdiler
		bilgiler = "#{@kullanici_adi},#{@parola},#{Kisi.skt_hesapla(@sure)},#{@kota}"
		File.open("veritabani.txt","a") do |dosya|
		dosya.puts bilgiler
		end
		
	end

end

