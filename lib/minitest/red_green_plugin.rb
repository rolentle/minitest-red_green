module Minitest
  def self.plugin_red_green_init options
    return if RedGreen.disabled
    reporters = self.reporter.reporters.grep Minitest::Reporter
    reporters.each do |reporter|
      reporter.io = RedGreen::Plugin.new options[:io]
    end
  end
end
