class Console
	
	def self.error(text)
		"\e[31m#{text}\e[0m" # red
	end
	def self.warning(text)
		"\e[35m#{text}\e[0m" # magenta
	end
	def self.notice(text)
		"\e[32m#{text}\e[0m" # green
	end
end
