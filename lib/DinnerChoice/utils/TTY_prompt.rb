require "tty-prompt"
prompt = TTY::Prompt.new
prompt.ask('What is your name?', default:ENV['USER'])# => What is your name? (name)
prompt.yes?('Do you like Ruby?')# => Do you like Ruby? (Y/n)
prompt.mask("What is your secret?")# => What is your secret? ••••
prompt.select("Choose your color?", %w(Blue Green Red))# =># Choose your color? (Use arrow keys, press Enter to select)