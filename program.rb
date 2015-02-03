#!/usr/bin/env ruby
require 'turkish_support'
using TurkishSupport
def giris
puts "girilecek"
end

def yeni_kullanici
puts "yeni"
end

loop do
	puts "MENÜ"
	puts "1.Giriş"
	puts "2.Yeni kullanıcı"
	puts "3.Çıkış"
	puts "Lutfen gir"
	girdi=gets.chomp.to_i
	
	if    girdi==1 
		loop do
                        puts "Cok Yakinda"
                        sleep(1.0)
                        system("clear")
                        sleep(1.0)
		end
	elsif girdi==2
		loop do
        	puts "Cok Yakinda"
        	sleep(1.0)
        	system("clear")
        	sleep(1.0)
		end
	
	elsif girdi==3 
		break
	else
		puts "Yanlış deneme lütfen 1, 2, 3 ten birine basın"
	end
end

