#!/usr/bin/env ruby
require 'date'
require 'time'
class Dosya_islemleri  
	
	def self.dizin (dizin)
		dosya = File.new(dizin)
                kullanici = dosya.readlines.last
                dosya.close
		`mkdir #{kullanici.split(',')[0]}`
	end

	def self.sure
		dosya = File.new('veritabani.txt')
		kullanici = dosya.readlines.last
		dosya.close
		p today = Date.today.to_s
		p zaman = Time.parse("#{kullanici.split(',')[2]} 01:37:23 +0200").strftime('%Y/%m/%d')
		if today.eql? zaman
			`cd ..`
			`rm -rf #{kullanici.split(',')[0]}`	
		end
		
	end

end

