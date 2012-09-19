require 'gits'
require 'gitall'

def do_status
  do_this_to_all_the_gits do |project_dir|
    status = `git status --porcelain`
    status.gsub!(/^([MARCD]) /, "    {stage}      \\1")
    status.gsub!(/^ ([MARCD])/, " <working copy>  \\1")
    status.gsub!(/^\?/,         "    **new**      ")
    "#{' '*16} #{branch_local}#{status}"
    "#{'#'*16} #{project_dir} #{'#'*16}\n#{status}"
  end
end

def branch_local
  `git branch`.lines.select {|line| /^\*/ =~ line }.first.sub(/^\* /,"")
end
