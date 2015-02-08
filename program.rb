#!/usr/bin/env ruby
require 'turkish_support'
require_relative 'navigasyon'
require_relative 'Kimlik'
require_relative 'kisi'
require_relative 'dosya_islemleri'

using TurkishSupport


loop do
	puts "Menü-1"
	puts "1.Giriş"
	puts "2.Yeni kullanıcı"
	puts "3.Çıkış"
	puts "Lutfen gir"
	girdi=gets.chomp.to_i
	puts `clear`
	if    girdi==1
		loop do
		puts "Lütfen kullanıcı adınızı giriniz: "
		kullanici_adi = gets.chomp.to_s
		puts "Lütfen parolanizi giriniz: "
		parola = gets.chomp.to_s
		puts `clear`
		nesne = Kimlik.new
		kontrol = nesne.giris(kullanici_adi,parola).to_i
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
					puts `clear`
					if islem == 1
						puts "Yüklemek istediğiniz dosyanın adresini giriniz: "
						adres = gets.chomp.to_s
						Navigasyoni.yukle(adres)
						puts "Dosyanız yüklendi..."
					elsif islem == 2
						puts "Silmek istediğiniz dosyanın adını giriniz: "
						dosya_adi = gets.chomp.to_s
						Navigasyoni.sil(dosya_adi)
						puts "Dosyanız silindi..."
					elsif islem == 3
						puts "İstatistiginizi görmek için kullanıcı adınızı giriniz: "
						kullanici_adi = gets.chomp.to_s
						Navigasyoni.istatistik(kullanici_adi)
					elsif islem == 4
						Navigasyoni.listele
					elsif islem == 5
						break
					else
						puts "Lütfen doğru bir tuşlama yapınız: "
					end
					puts `clear`
			
									
				end
				break
			end
		end
	elsif girdi == 2
	
			puts "Kullanıcı adı giriniz: "
			kullanici = gets.chomp.to_s
			puts "Parolanızı belirleyin: "
			parola = gets.chomp.to_s
			puts "Kullanım sürenizi belirleyiniz: "
			sure = gets.chomp.to_s
			puts "Kullanım kotanızı belirleyiniz: "
			kota = gets.chomp.to_s
			`clear`
			Kisi.kisi_kaydi([kullanici,parola,sure,kota])
			#Dosya_islemleri.dizin
		
	elsif girdi == 3 
		break
	else
		puts "Yanlış deneme lütfen 1, 2, 3 ten birine basın"
	end
	
end

