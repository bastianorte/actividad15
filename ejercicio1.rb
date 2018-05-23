for i in [1,2,3]
puts i
end
def palabras (x, y)
file = File.open('index.html', 'w')
file.puts x
file.puts y
file.close
end

 palabra1 = "Hola"
 palabra2 = "como estas"
 palabras(palabra1, palabra2)
