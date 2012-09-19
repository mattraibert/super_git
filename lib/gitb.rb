
RED="\033[0;31m"
YELLOW="\033[0;33m"
GREEN="\033[0;32m"
NO_COLOR="\033[0m"

def red s
  "#{RED}#{s}#{NO_COLOR}"
end

def green s
  "#{GREEN}#{s}#{NO_COLOR}"
end

def yellow s
  "#{YELLOW}#{s}#{NO_COLOR}"
end

def project_dirs
  Dir["**/.git"].map {|git_dir| File.dirname(git_dir) }
end

def do_branch
  outputs = project_dirs.map do |project_dir|
    status = ""
    Dir.chdir(project_dir) do
      "#{project_dir}: #{apply_status branch}"
    end
  end
  puts outputs.join "\n"
end

def apply_status branch
  status = `git status --porcelain`
  return red "<#{branch}>" if /^ ([MARCD])/ =~ status
  return yellow "{#{branch}}" if /^([MARCD]) / =~ status
  return green "(#{branch})"
end

def branch
  `git branch`.lines.select {|line| /^\*/ =~ line }.first.sub(/^\* /,"").chomp
end
