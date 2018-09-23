require 'yaml'

TSV_DATA = File.read(ARGV[0]).split("\n")
Output_File = File.new(ARGV[1],"w")
Yml_output = []
Title = TSV_DATA[0].split("\t")

def trans(length)
    for i in 2..length
        data = TSV_DATA[i-1].split("\t")
        Yml_output << {Title[0] => data[0] , Title[1] => data[1] , Title[2] => data[2] , Title[3] => data[3] , Title[4] => data[4] , Title[5] => data[5]}
    end
end

trans(TSV_DATA.length)
Output_File.write Yml_output.to_yaml
Output_File.close
Show = File.read(ARGV[1])
puts Show 
