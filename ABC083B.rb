N,A,B = gets.split.map(&:to_i)
ans = 0
def calu(n)
  a = n
  @i = 0
  while a >= 10
    @i += a%10
    a /= 10
  end
  @i += a%10
  @i
end
w = 1
while w != N+1
  if calu(w) >= A&&calu(w) <= B
    ans += w
  end
  w += 1
end
puts ans

