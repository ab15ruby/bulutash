#!/usr/bin/env ruby
require "date"

class Kisi
	attr_accessor :kullanici_adi,:parola
	def initialize veriler
		@kullanici_adi, @parola, @sure = *veriler
	end

	def skt_hesapla
		Date.today.next_day(@sure.to_i)
	end
	def self.kisi_kaydi girdiler
		nesne = Kisi.new girdiler
		bilgiler = "#{nesne.kullanici_adi},#{nesne.parola},#{nesne.skt_hesapla}"
		File.open("veritabani.txt","a") do |dosya|
		dosya.puts bilgiler
		end
		
	end
	
end



Kisi.kisi_kaydi ["ali","123","60"]
