module Color
  RED="\033[0;31m"
  YELLOW="\033[0;33m"
  GREEN="\033[0;32m"
  NO_COLOR="\033[0m"

  class << self
    def red (s)
      "#{RED}#{s}#{NO_COLOR}"
    end

    def green (s)
      "#{GREEN}#{s}#{NO_COLOR}"
    end

    def yellow (s)
      "#{YELLOW}#{s}#{NO_COLOR}"
    end
  end
end

