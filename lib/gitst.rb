require 'color'

def pretty_status
  status = `git status --porcelain`
  status.gsub!(/^([MARCD]) /, Color.yellow("    {stage}      \\1"))
  status.gsub!(/^[MARCD ]([MARCD])/, Color.red(" <working copy>  \\1"))
  status.gsub!(/^\?/, "    **new**      ")
  "\n#{status}"
end
