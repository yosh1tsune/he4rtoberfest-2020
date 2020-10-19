puts "\n========================== Desafio Fibonacci =========================="

begin
  puts "\nInsira o tamanho da sequência que deseja visualizar:"
  sequencia = gets.chomp.to_i
  puts "\nEntrada inválida. Insira um valor numérico maior que 0 e menor que 46." if sequencia <= 0 || sequencia >= 46
end while sequencia <= 0 || sequencia >= 46

fibonacci = Array.new
for elemento in 0..(sequencia - 1)
  if elemento == 0
    fibonacci[elemento] = 0
  elsif elemento == 1
    fibonacci[elemento] = 1
  else
    fibonacci[elemento] = fibonacci[elemento - 1] + fibonacci[elemento - 2]
  end
end

puts "\n#{sequencia} primeiros números da sequência de Fibonacci: #{fibonacci.join(' ')}"