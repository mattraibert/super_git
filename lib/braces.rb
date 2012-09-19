module Braces
  class << self
    def angle(s)
      "<#{s}>"
    end

    def curly(s)
      "{#{s}}"
    end

    def parens(s)
      "(#{branch})"
    end
  end
end