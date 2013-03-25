class LogReader
  def initialize(path)
    @path = path
  end
  
  def readAsLines
    # File.open(@path, "r") do |file|
    #       file.each_line do |line|
    #         puts line
    #       end
    #     end
        # 
        # IO.foreach(@path) do |line|
        #     puts line
        # end 
    IO.readlines(@path)
  end
end

logFile = LogReader.new("../log-files/log1.csv")
puts logFile.readAsLines
