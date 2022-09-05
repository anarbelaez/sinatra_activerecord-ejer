product_name = "food";
id = 0;

filenames = Dir.glob("*.jpg")

filenames.each do |filename|
    File.rename(filename, product_name + id.to_s + ".jpg")
    id += 1
    puts filename
end
