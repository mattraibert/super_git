require 'git_branch'
require 'gits'
require 'gitst'

def do_branch
  do_this_to_all_the_gits do |project_dir|
      "#{project_dir}: #{apply_status branch}"
  end
end
