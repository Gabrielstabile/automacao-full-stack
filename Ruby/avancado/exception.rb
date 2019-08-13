# begin
#   # Devo tentar fazer alguma coisa (try)
#   file = File.open("./hello.txt")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   # Obter um possível erro (catch)

#   puts e.message
#   #puts e.backtrace
# end

def soma(n1, n2)
  puts n1 + n2
rescue Exception => e
  puts e.message
end

soma(10, "10")
