#!/usr/bin/ruby
#<Encoding:UTF-8>

ka = "./extracted_letter_images"
ile = 2000
znaki = ["2", "3", "4", "5", "6", "7", "8", "9", "b", "d", "f", "g", "h", "i", "j", "k", "m", "n", "p", "q", "r", "t", "v", "w", "y" ]
znaki.each{|z|
 system "mkdir -p #{ka}/#{z}"
 puts "#{ka}/#{z}"
 ile.times{|i|
  s = "php -f ./my.php '#{z}' > ./tt.jpg"
  system s
  system "convert tt.jpg -trim #{ka}/#{z}/#{(i+2501).to_s}.png"
  }
 }
#system "php -f ./my.php '  to' > #{wynik}"