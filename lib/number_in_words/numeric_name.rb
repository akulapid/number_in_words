module NumberInWords

  class NumericName

    def initialize n, system
      @n = n.to_i   # wut?
      @scale = NumberInWords::config['scales'][system]
    end

    def in_words
      get_words(@n).join ' '
    end

    private
    def get_words n
      words = []
      words << @scale[0]['name'] if n == 0

      named_numbers = @scale.keys.sort.reverse
      named_numbers.delete 0

      while n > 0
        named_numbers.each do |named|
          if n / named > 0
            words << get_words(n / named) unless @scale[named]['unqualified']
            words << @scale[named]['name']
            n = n % named
          end
        end
      end
      words
    end
  end
end
