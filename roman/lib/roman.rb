class Converter
  
  #refactor
  CONVERT_TABLE = [
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"]
  ]
  
  def convert(n)
    
    result = ""

    CONVERT_TABLE.each do |i, r|
      while n >= i
        result += r 
        n -= i
      end
    end

    result




    #result = ""
#
    #while n>=10
    #  result += "X"
    #  n -= 10
    #end
#
    #if n>= 9
    #  result += "IX"
    #  n -= 9
    #end
#
    #if n >= 5
    #  result += "V"
    #  n -= 5
    #end
#
    #if n>= 4
    #  result += "IV"
    #  n-=4
    #end
#
    #result += "I" * n
    #result

  end
end