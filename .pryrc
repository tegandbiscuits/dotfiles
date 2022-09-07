# extend Hirb::Console
# Hirb.enable(pager: true)

Pry.config.prompt = Pry::Prompt[:simple]
Pry.config.editor = proc { |file, line| "rubymine --wait --line #{line} #{file}" }
