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
						puts "Yüklemek istediğiniz dosyanın adresini giriniz: "
						adres = gets.chomp.to_s
						Navigasyoni.yukle(adres)
					elsif islem == 2
						puts "Silmek istediğiniz dosyanın adını giriniz: "
						dosya_adi = gets.chomp.to_s
						Navigasyoni.sil(dosya_adi)
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
		
		Kisi.kisi_kaydi kullanici,parola,sure,kota
		Dosya_islemleri.dizin
		
	elsif girdi == 3 
		break
	else
		puts "Yanlış deneme lütfen 1, 2, 3 ten birine basın"
	end
end

