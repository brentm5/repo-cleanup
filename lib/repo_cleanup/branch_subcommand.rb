# encoding: utf-8

require 'thor'
require 'repo_cleanup/base_subcommand'
require 'repo_cleanup/git_repo'

class RepoCleanup
  class BranchSubcommand < BaseSubcommand
    desc "cleanup", "Cleans up branches for fun"
    def cleanup
      STDOUT.puts "This will cleanup the branch"
    end

    desc "audit", "Audits the branches for fun"
    def audit
      STDOUT.puts "This will audit the branches to find out what needs to be deleted"
      repo = GitRepo.new(current_directory)
      puts repo.branches
    end
  end
end
