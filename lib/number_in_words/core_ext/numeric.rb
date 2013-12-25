require 'number_in_words/numeric_name'

class Numeric

  def in_words system='short_scale'
    NumberInWords::NumericName.new(self, system).in_words
  end

end
