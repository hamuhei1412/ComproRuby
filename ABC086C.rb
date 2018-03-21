N = gets.to_i
x = []
y = []
t = []
N.times do
  line = gets.split.map(&:to_i)
  t << line[0]
  x << line[1]
  y << line[2]
end
s = 0
while s < N
  if s == 0
    if x[s]+y[s] > t[s]
      puts "No"
      exit
    end
    if (x[s]+y[s])%2 != t[s]%2
      puts "No"
      exit
    end
  else
    if((x[s]-x[s-1]).abs+(y[s]-y[s-1]).abs) > t[s]-t[s-1]
      puts "No"
      exit
    end
    if(((x[s]-x[s-1]).abs+(y[s]-y[s-1]).abs)%2 != (t[s]-t[s-1])%2)
      puts "No"
      exit
    end
  end
  s+=1
end
puts "Yes"

