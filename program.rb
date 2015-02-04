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
	puts "Menü-1"
	puts "1.Giriş"
	puts "2.Yeni kullanıcı"
	puts "3.Çıkış"
	puts "Lutfen gir"
	girdi=gets.chomp.to_i
	
	if    girdi==1
		loop do
		puts "Lütfen kullanıcı adınızı giriniz: "
		kullanici_adi = gets.chomp.to_s
		puts "Lütfen parolanizi giriniz: "
		parola = gets.chomp.to_s
		nesne = Kimlik.new
		kontrol = nesne.giris(kullanici_adi,parola)
			if kontrol == 3 
				puts "Kullanici adınız veya parolaniz hatalı!!"
				
			elsif kontrol == 2
				puts "Kullanim süreniz doldu!!"
				break
			else
				loop do
					puts "Menü-2"
					puts "1.Dosya yükle"
					puts "2.Dosya sil"
					puts "3.Kullanım istatistiği"
					puts "4.Dosyalarımı listele"
					puts "5.Menü-1'e gitmek için"
					puts "Yapmak istediğiniz işlemin numarasını giriniz: "
					islem = gets.chomp.to_i
					if islem == 1
						puts "Yüklemek istediğiniz dosyanın adresini giriniz"
						adres = gets.chomp.to_s
						
									
				end
				break
			end
		end
	elsif girdi==2
		
	
	elsif girdi==3 
		break
	else
		puts "Yanlış deneme lütfen 1, 2, 3 ten birine basın"
	end
end

