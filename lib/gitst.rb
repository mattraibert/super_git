require 'gits'
require 'gitall'

def do_status
  do_this_to_all_the_gits do |project_dir|
    status = `git status --porcelain`
    status.gsub!(/^([MARCD]) /, "    {stage}      \\1")
    status.gsub!(/^[MARCD ]([MARCD])/, " <working copy>  \\1")
    status.gsub!(/^\?/,         "    **new**      ")
    "\n#{status}"
  end
end
