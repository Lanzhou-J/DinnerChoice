require 'colorize'
def heading_ascii()
  puts" _____  _                              _           _     ".colorize(:light_red)
  puts"|  __ \\(_)                            | |         (_)      ".colorize(:light_red)
  puts"| |  | |_ _ __  _ __   ___ _ __    ___| |__   ___  _  ___ ___ ".colorize(:light_yellow)
  puts"| |  | | | '_ \\| '_ \\ / _ \\ '__|  / __| '_ \\ / _ \\| |/ __/ _ \\".colorize(:green)
  puts"| |__| | | | | | | | |  __/ |    | (__| | | | (_) | | (_|  __/".colorize(:aqua)
  puts"|_____/|_|_| |_|_| |_|\\___|_|     \\___|_| |_|\\___/|_|\\___\\___|".colorize(:light_blue)
  puts
end