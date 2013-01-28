# A sample Guardfile
# More info at https://github.com/guard/guard#readme
notification :tmux,
  :display_message => true,
  :timeout => 5,
  :default_message_format => '%s >> %s',
  :line_separator => ' > ',
  :color_location => 'status-left-bg'

group :specs do
  guard :rspec do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1].gsub('/', '_')}_spec.rb" }
    watch('spec/spec_helper.rb')  { "spec" }
  end
end
