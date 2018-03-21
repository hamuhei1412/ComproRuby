 a = gets.to_i
 AR = Array.new
 a.times{AR << gets.to_i}

 AR.uniq!
 puts AR.size

