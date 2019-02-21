s = "my.song.mp3 11b
greatSong.flac 1000b
not3.txt 5b
video.mp4 200b
game.exe 100b
mov!e.mkv 10000b"







def solution(s)
  files = s.scan(/.+$/)
  music = 0
  images = 0
  movies = 0
  other = 0

  files.each do |file|

      # Strip out the number of bytes
      puts file.inspect
      size = file.scan(/[0-9]+b/).to_s.tr('[\"]b', '').to_i
      puts size.inspect   

      # Figure out what kind of file it is and ass size to the total
      if file.include?(".mp3") || file.include?(".aac") || file.include?(".flac")
        music += size
      elsif file.include?(".jpg") || file.include?(".bmp") || file.include?(".gif")
        images += size
      elsif file.include?(".mp4") || file.include?(".avi") || file.include?(".mkv")
        movies += size
      else
        other += size
      end
  end   
  return "music #{music}b\nimages #{images}b\nmovies #{movies}b\nother #{other}b"

end

puts solution s
