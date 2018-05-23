data = nil
file = File.open('peliculas.txt', 'r')
data = file.readlines
file.close

puts "#1"

def cantidad (x)
suma = 0
x.each do |y|
palabras = y.split(" ")
suma += palabras.count
suma -= 1
end
puts suma
end
cantidad(data)

puts "#2"
suma = 0
data.each do |z|
palabras = z.split(" ")
suma += palabras.count("Guerra")
end
puts suma


