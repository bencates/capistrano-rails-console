class SSHKit::Backend::TTYBackend < SSHKit::Backend::Printer
  def execute(*args)
    options = args.last.is_a?(Hash) ? args.pop : {}

    command(*args).tap do |cmd|
      output << cmd

      cmd.started = Time.now

      system %Q{ssh -l #{@host.user} #{@host.hostname} -t "#{cmd.to_command}"}

      cmd.exit_status = options[:ignore_exit_status] ? 0 : $?.to_i

      output << cmd
    end
  end
end
