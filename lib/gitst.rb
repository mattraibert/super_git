require 'gits'
require 'gitall'

def pretty_status
  status = `git status --porcelain`
  status.gsub!(/^([MARCD]) /, "    {stage}      \\1")
  status.gsub!(/^[MARCD ]([MARCD])/, " <working copy>  \\1")
  status.gsub!(/^\?/, "    **new**      ")
  "\n#{status}"
end

def do_status
  do_this_to_all_the_gits { pretty_status }
end
