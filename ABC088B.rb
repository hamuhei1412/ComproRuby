N = gets.split.map(&:to_i)
hoge = gets.split.map(&:to_i)
hoge.sort!
hoge.reverse!
s = 0
Alice = 0
Bobs = 0
while s < N.first
  if(s%2==0)
    Alice += hoge[s]
  else
    Bobs += hoge[s]
  end
  s+=1
end
puts Alice - Bobs

