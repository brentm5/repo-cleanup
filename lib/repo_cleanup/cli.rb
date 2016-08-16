# encoding: utf-8

require 'thor'
require 'repo_cleanup/branch'

class RepoCleanup
  class RepoCleanupCLI < Thor
    desc "branch SUBCOMMAND ...ARGS", "manage branches in a repositories"
    subcommand "branch", Branch
  end
end
