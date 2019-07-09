class Overruler
  def [] (input) # * overwrite standart [] method
        if input.instance_of?(String)
          puts "string"
        else
          puts "not string"
        end
   end
end

foo = Overruler.new
foo["bar"].inspect # * => string
foo[1].inspect # * => not string