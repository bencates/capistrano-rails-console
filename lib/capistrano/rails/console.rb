require 'sshkit/backend/tty_backend'

module SSHKit
  module DSL
    def run_interactively_on(host, &block)
      SSHKit::Backend::TTYBackend.new(host, &block).run
    end
  end
end

load File.expand_path('../../tasks/rails.rake', __FILE__)
