module Status
  class << self
    def unstaged?
      status = `git status --porcelain`
      /^ ([MARCD])/ =~ status
    end

    def staged?
      status = `git status --porcelain`
      /^([MARCD]) / =~ status
    end

    def clean?
      status = `git status --porcelain`
      /.*/ =~ status
    end
  end
end