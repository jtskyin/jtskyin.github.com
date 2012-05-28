dir = "中文"
print dir.gsub(/\s/, "-").gsub(/[^\w-]/, "").downcase
