N = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i)

ans = 1000000000
for moke in ar do
  s = 0
  while moke%2==0 do
    moke /= 2
    s += 1
  end
  ans = (ans<s ? ans : s)
end
puts ans

