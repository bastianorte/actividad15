file = File.open('peliculas.txt', 'r')
data = file.readlines
file.close

def contador(x)
puts "El archivo tiene #{x.count} lineas"
end

contador(data)
