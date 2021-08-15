#PRECONDICION: el usuario debe ingresar correctamente el nombre del producto que quiere comprar y contestar "si" o "no" cuando se le pregunta si quiere agregar otro producto.

catalogo = {
  "pan" => 200,
  "harina" => 150,
  "arroz" => 100,
  "aceite" => 120,
  "vinagre" => 80
}
carrito = Hash.new
producto = ""
total = 0
mas_productos = ""

puts "*Bienvenido a “Supermercado en consola”"

until mas_productos == "no"
    puts "*Lista de Productos:"
    catalogo.each do |producto, valor|
      puts "#{producto}: $#{valor}"
    end
    puts "*Que producto desea agregar a su carrito?"
    producto = gets.chomp 
    carrito[producto]= catalogo[producto]
    puts "*Queres agregar otro producto? (si / no)"
    mas_productos = gets.chomp.downcase
end

puts "*Lista de Productos de su carrito:"
  carrito.each do |producto, precio|
  puts "#{producto}: $#{precio}"
  total = total + precio
  end

puts "-------------------"
puts "Precio total: $#{total}"