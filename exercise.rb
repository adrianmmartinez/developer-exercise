class Exercise

  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)

    x = str.split(' ')
    str_a = ''
    last = '' 
    temp = ''

    x.each do | i |

      last = '?' if i.end_with?('?')
      last = '.' if i.end_with?('.')

      if i.length <= 4
        temp = i
      elsif i =~ /[A-Z]./
        temp = 'Marklar'
      else
        temp = 'marklar'
      end
      
      temp << last + ' '
      str_a << temp
      last = ''
      temp = ''

    end

    str_a.chomp(' ')

  end

  # sums the even values up to the nth value of the fibonacci sequence
  def self.even_fibonacci(nth)

    idx = 1
    sum = 0

    while idx < nth

      sum += fibonacci(idx) if fibonacci(idx).even?
      idx += 1

    end

    sum

  end

  # gets fibonacci value of given index
  def self.fibonacci(n)

    if n == 1 or n == 2
      1
    else 
      fibonacci(n - 1) + fibonacci(n - 2)
    end
    
  end
end
