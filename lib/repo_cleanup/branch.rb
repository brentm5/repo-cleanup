# encoding: utf-8

require 'thor'
require 'repo_cleanup/subcommand_base'
require 'repo_cleanup/git_repo'

class RepoCleanup
  class Branch < SubcommandBase
    desc "cleanup", "Cleans up branches for fun"
    def cleanup
      STDOUT.puts "This will cleanup the branch"
    end

    desc "audit", "Audits the branches for fun"
    def audit
      STDOUT.puts "This will audit the branches to find out what needs to be deleted"
      repo = GitRepo.new(current_directory)
      puts repo.working_dir
      puts repo.branches
    end
  end
end
