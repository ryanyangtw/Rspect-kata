

def is_leap_year?(y)

  #refactor
  y % 400 == 0 || ( y % 4 == 0 && y % 100 !=0 )
  #if y % 4 == 0
  #  if y % 100 == 0
  #    if y % 400 == 0
  #      true
  #    else
  #      false
  #    end
  #  else
  #    true
  #  end
  #end

end