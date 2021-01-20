class BangunDatar
  def Luas
    puts("Luas Bangun")
  end

  def Keliling
    puts("Keliling Bangun")
  end
end

class PersegiPanjang < BangunDatar
  def initialize(p, l)
    @p = p
    @l = l
  end

  def Luas 
    super()

    return @p * @l
  end

  def Keliling
    super()

    return 2 * @p + 2 * @l
  end
end

class Persegi < PersegiPanjang
  def initialize(s)
    super(s, s)
  end
end

class Lingkaran < BangunDatar
  def initialize(r)
    @r = r
  end

  def Luas
    super()

    return Math::PI * @r * @r
  end

  def Keliling
    super()

    return 2 * Math::PI * @r
  end
end

persegiPanjang = PersegiPanjang.new(2, 5)
puts(persegiPanjang.Luas)
puts(persegiPanjang.Keliling)
puts()

persegi = Persegi.new(10)
puts(persegi.Luas)
puts(persegi.Keliling)
puts()

lingkaran = Lingkaran.new(10)
puts(lingkaran.Luas)
puts(lingkaran.Keliling)
