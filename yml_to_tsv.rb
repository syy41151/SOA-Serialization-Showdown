require 'yaml'

@YML_DATA = YAML.safe_load(File.read(ARGV[0]))
TSV = File.new(ARGV[1],"w")

Test = []
Title = ""
DATA = ""

@YML_DATA[0].each {|x| Test << x}
for i in 0..(Test.length-1)
    Title << Test[i][0]+"\t"
end
TSV.write Title 
TSV.write "\n"

for i in 0..(@YML_DATA.length-1)
    DATA.clear
    Test.clear
    @YML_DATA[i].each {|x| Test << x}
        for j in 0..(Test.length-1)
            DATA << Test[j][1]+"\t"
        end
    TSV.write DATA 
    TSV.write "\n"
end

TSV.close
Show = File.read(ARGV[1])
puts Show 

