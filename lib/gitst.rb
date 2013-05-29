def pretty_status
  status = `git status --porcelain`
  status.gsub!(/^([MARCD]) /, "    {stage}      \\1")
  status.gsub!(/^[MARCD ]([MARCD])/, " <working copy>  \\1")
  status.gsub!(/^\?/, "    **new**      ")
  "\n#{status}"
end
