require 'gits'

def do_this_to_all_the_gits
  outputs = project_dirs.map do |project_dir|
    status = ""
    Dir.chdir(project_dir) do
      status = yield(project_dir).chomp
    end
    "#{project_dir}: #{status}"
  end
  puts outputs.join "\n"
end
