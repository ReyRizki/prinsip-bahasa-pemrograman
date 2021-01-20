class ParkirKendaraan
  def initialize(nama, waktu, biaya)
    @nama = nama
    @waktu = waktu
    @biaya = biaya
  end

  def nama
    @nama
  end

  def totalBiaya
    return @waktu * 60 * @biaya
  end
end

class ParkirMotor < ParkirKendaraan
  def totalBiaya
    return 100 + super()
  end
end

class ParkirMobil < ParkirKendaraan
  def totalBiaya
    return 200 + super()
  end
end

parkirKendaraan= [
  ParkirMobil.new("Ferrari", 7, 10),
  ParkirMobil.new("Lamborghini", 1, 10),
  ParkirMobil.new("Avanza", 20, 0.1),
  ParkirMotor.new("Harley Davidson", 21, 8),
  ParkirMotor.new("Ducati Panigale V4", 2, 8),
  ParkirMotor.new("Vario", 10, 0.05)
]

parkirKendaraan.each { |parkir|
  puts "#{parkir.nama}: #{parkir.totalBiaya}"
}
