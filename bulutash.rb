require "date"

class Kisi
	
	def initialize veriler
		@kullanici_adi,@parola,@sure,@kota = *veriler
		@kayit_tarihi = Date.today
	end
	
	def skt_hesapla
		puts @kayit_tarihi.next_day(@sure.to_i)
	end
	
end


ali = Kisi.new("ali 123 60 100")
ali.skt_hesapla

