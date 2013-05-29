require 'git_branch'
require 'gitall'

def do_branch
  do_this_to_all_the_gits { "#{apply_status branch}" }
end
