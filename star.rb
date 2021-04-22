=begin
class CelestialBody
    attr_accessor :type, :name
end

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'
vega = CelestialBody.new
vega.name = 'Vega'
vega.type = 'star'

p altair, polaris, vega
=end

class CelestialBody
    attr_accessor :type, :name
end

bodies = Hash.new do |hash, key|
    body = CelestialBody.new
    body.type = "planet"
    hash[key] = body
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

p bodies