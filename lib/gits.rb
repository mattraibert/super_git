def project_dirs
  Dir["**/.git"].map {|git_dir| File.dirname(git_dir) }
end
