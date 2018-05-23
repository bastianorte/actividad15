opcion = 0
file = File.open('productos.txt', 'r')
data = file.readlines
file.close
lineas = []
sumas = []
sum = 0

while opcion !=6

puts "1 permite conocer la cantidad de productos existentes."
puts "2 cantidad de stock total por producto"
puts "3 muestra los productos no registrados en cada bodega"
puts "4 permite conocer los productos con una existencia total menor a un
valor ingresado por el usuario"
puts "5 permite registrar un nuevo producto con su respectivo stock en cada
bodega"
puts "6 si desea salir"

opcion = gets.chomp.to_i
case opcion

when 1
  while opcion !="d"
puts "a muestra la existencia por productos"
puts "b muestra la existencia total por tienda"
puts "c muestra la existencia total en todas las tiendas"
puts "d si desea volver al menu principal"

  opcion = gets.chomp.to_s
  case opcion
  when "a"
    puts data
  when "b"
    sum1 = 0
    sum2 = 0
    sum3 = 0
    data.each do |x|
    lineas = x.split(", ").map(&:chomp)
    sum1 += lineas[1].to_i
    sum2 += lineas[2].to_i
    sum3 += lineas[3].to_i
    end
    puts "Tienda1 #{sum1}"
    puts "Tienda2 #{sum2}"
    puts "Tienda3 #{sum3}"
  when "c"
puts "hola"
end
end
when 2
  puts "elige un producto"
  productos = gets.chomp
  data.each do |x|
  lineas = []
  lineas = x.split(", ").map(&:chomp)
  sumas = lineas.map{|x| x.to_i}.sum
  puts "#{lineas[0]} suma #{sumas}" if lineas[0] == productos
  end
when 3
  data.each do |x|
  linea = x.split(", ").map(&:chomp)
  linea.each do |y|
  puts "#{linea[0]} tiene #{linea.count("NR")} inasistencia" if y == "NR"
  end
  end

when 4
puts "hola"
when 5
  opcion = 0
  file = File.open('productos.txt', 'a')
  producto = get.chomp
  file.puts "#{producto} #{tienda1}"
  file.close
else
puts "Opcion invalida"
end
end
# lineas.map{|x| x.map{|x| x.to_i}.sum}
