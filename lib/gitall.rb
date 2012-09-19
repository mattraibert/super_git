require 'gits'

def do_this_to_all_the_gits
  outputs = project_dirs.map do |project_dir|
    Dir.chdir(project_dir) do
      status = yield(project_dir)
    end
  end
  puts outputs.join "\n"
end
