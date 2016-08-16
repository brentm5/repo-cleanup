# encoding: utf-8

require 'thor'
require 'repo_cleanup/branch_subcommand'

class RepoCleanup
  class RepoCleanupCLI < Thor
    desc "branch SUBCOMMAND ...ARGS", "manage branches in a repositories"
    subcommand "branch", BranchSubcommand
  end
end
