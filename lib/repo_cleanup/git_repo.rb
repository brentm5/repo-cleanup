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
      @git_instance ||= Git.open(@working_dir)
    end

    def branches
      git_instance.branches
    end
  end
end
