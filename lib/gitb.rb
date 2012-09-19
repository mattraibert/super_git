require 'git_branch'

def project_dirs
  Dir["**/.git"].map {|git_dir| File.dirname(git_dir) }
end

def do_branch
  outputs = project_dirs.map do |project_dir|
    Dir.chdir(project_dir) do
      "#{project_dir}: #{apply_status branch}"
    end
  end
  puts outputs.join "\n"
end
