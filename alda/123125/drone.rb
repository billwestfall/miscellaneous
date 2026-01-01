
#!/usr/bin/ruby

print "midi-pad-warm: (tempo! 5) (vol 100) o2 "
  $i = 0
    while $i < 160 do
      print [ :a, :b, :c, :d, :e, :f, :g, ].sample
      print [ :-, :+, :"", :"" ].sample
      print "/"
      print [ :a, :b, :c, :d, :e, :f, :g, ].sample
      print [ :-, :+, :"", :"" ].sample
      print "/"
      print [ :a, :b, :c, :d, :e, :f, :g, ].sample
      print [ :-, :+, :"", :"" ].sample
      print " "
      $i +=1
    end
