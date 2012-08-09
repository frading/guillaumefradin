# require 'jammit/command_line'

# namespace :assets do
	
# 	#def js_files
# 	#	config = YAML.load_file("#{Rails.root}/config/assets.yml")
# 	#	globs = config['javascripts']['all']
# 	#	files = globs.collect do |glob|
# 	#		Dir.glob(glob)
# 	#	end
# 	#	files.flatten!
# 	#	files = files.collect {|f| "#{Rails.root}/#{f}"}
# 	#end
# 	#
# 	#def coffee_compiled_js_files
# 	#	Dir.glob("#{Rails.root}/app/javascripts/compiled/*.js")
# 	#end
# 	#
# 	#def remove_first_line(filename)
# 	#	lines = []
# 	#	File.open(filename, "r") {|f| lines = f.readlines}
# 	#	
# 	#	if Regexp.new("^var .*;$").match lines[0]
# 	#		puts "removing: #{lines[0]}"
# 	#		lines = lines[1..-1]
# 	#		File.open(filename, "w") {|f| lines.each {|l| f.write l}}
# 	#	end
# 	#end
#   #
# 	#task :closure => :environment do
# 	#	
# 	#	
# 	#	all = "#{Rails.root}/public/assets/all.js"
# 	#	File.open(all, 'w+') do |dest_file|
# 	#		js_files.each do |file|
# 	#			comment = "\n\n//----------------------#{file}---------------------------\n\n"
# 	#			dest_file.write comment
# 	#			puts comment
# 	#			File.open(file, "r") do |src_file|
# 	#				src_file.readlines.each do |line|
# 	#					dest_file.write line
# 	#				end
# 	#			end
# 	#		end
# 	#	end
#   #
# 	#	compiler = Closure::Compiler.new(:compilation_level => 'ADVANCED_OPTIMIZATIONS')
# 	#	compiler.compile(File.open(all, 'r'))	
# 	#	
# 	#end

	
# 	task :jammit => :environment do
	
# 		#coffee_compiled_js_files.each {|f| remove_first_line f}
		
# 		puts Console::warning "about to compress assets"
		
# 		asset_dir = "#{Rails.root}/public/assets"
		
# 		files = Dir.entries(asset_dir) - %w{ . .. }
# 		files.each do |f|
# 			full_path = File.join(asset_dir, f)
# 			unless File.directory?(full_path)
# 				FileUtils.rm(full_path)
# 				puts Console::warning "deleted #{full_path}"
# 			end
# 		end
		
# 		#require "#{File.dirname(__FILE__)}/../lib/jammit/command_line.rb"
	
# 		Jammit::CommandLine.new
		
# 		files = Dir.entries(asset_dir) - %w{ . .. }
# 		files.each do |f|
# 			size = File.size(File.join(asset_dir,f))
# 			puts Console::notice "created #{f} #{size}"
# 		end

# 	end	
# end


