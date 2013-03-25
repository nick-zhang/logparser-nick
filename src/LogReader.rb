class LogReader
  def initialize(path)
    @path = path
  end
  
  def read
    File.open(@path, "r") do |file|
      file.each_line do |line|
        puts line
      end
    end
  end
  
end

logFile = LogReader.new("../log-files/log1.csv")
logFile.read
