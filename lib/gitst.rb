def do_this_to_all_the_gits
  project_dirs = Dir["**/.git"].map {|git_dir| File.dirname(git_dir) }
  outputs = project_dirs.map do |project_dir|
    status = ""
    Dir.chdir(project_dir) do
      status = yield
      "#{'#'*16} #{project_dir} #{'#'*16}\n#{status}"
    end
  end
  puts outputs.join "\n"
end

def do_status
  do_this_to_all_the_gits do
    status = `git status --porcelain`
    status.gsub!(/^([MARCD]) /, " <working copy>  \\1")
    status.gsub!(/^ ([MARCD])/, "    {stage}      \\1")
    status.gsub!(/^\?/,         "    **new**      ")
    "#{' '*16} #{branch}#{status}"
  end
end

def branch
  `git branch`.lines.select {|line| /^\*/ =~ line }.first.sub(/^\* /,"")
end
