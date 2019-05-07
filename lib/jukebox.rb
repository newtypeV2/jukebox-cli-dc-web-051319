require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  number = 0
 #binding.pry
  songs.each{|title| puts "#{number+=1} #{title}"}
end

def play(songs)
  puts "Please enter a song name or number"
  track = gets.chomp
  if track.to_i>=1 && track.to_i<=9
    puts "Playing #{songs[track.to_i-1]}"
  elsif songs.include?(track)
    puts "Playing #{songs[songs.index(track)]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
  puts "Please enter a command:"
  input = gets.chomp
   case input
    when "help"
         help
    when "list"
        list(songs)
    when "play"
         play(songs)
   when "exit"
         exit_jukebox
         break
    end
  end
end