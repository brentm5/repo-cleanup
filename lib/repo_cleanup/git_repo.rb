# encoding: utf-8

require 'git'
require 'logger'

class RepoCleanup
  class GitRepo
    attr_reader :working_dir

    def initialize(working_dir)
      @working_dir = working_dir
    end

    def git_instance
      @git_instance ||= Git.open(@working_dir, log: Logger.new(STDOUT))
    end

    def branches
      git_instance.branches.local
    end
  end
end
