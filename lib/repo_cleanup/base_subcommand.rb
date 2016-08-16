# encoding: utf-8

require 'thor'

class RepoCleanup
  class BaseSubcommand < Thor
    # Just some helper functions for all subcommands
    no_commands do
    def current_directory
      Dir.pwd
    end
    end
  end
end
