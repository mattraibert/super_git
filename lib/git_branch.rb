require 'status'
require 'braces'
require 'color'

def branch
  current_branch = `git branch`.lines.select { |line| /^\*/ =~ line }.first || ""
  current_branch.sub(/^\* /, "").chomp
end

def apply_status(branch)
  return Color.red Braces.angle branch if Status.unstaged?
  return Color.yellow Braces.curly branch if Status.staged?
  Color.green Braces.parens branch
end
