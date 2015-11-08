class Publish

	def urls
		list = []
		list << "printmosaic"
		list << "assets/application.css"
		list << "assets/application.js"
		list << ""
		list
	end

	def dest_folder
		#{}"/home/frading/work/web/guillaumefradin/dev/frading.github.io"
		"/home/frading/work/web/guillaumefradin/github_pages/frading.github.io"
	end

	def host
		"http://localhost:5000"
	end

	def fetch_url(url)
		file_name = url.blank? ? "index" : url
		file_name = "#{file_name}.html" if file_name.split('.').count == 1
		file_dest = "#{dest_folder}/#{file_name}"
		cmd = "curl #{host}/#{url} > #{file_dest}"
		puts cmd
		`#{cmd}`
	end

	def start
		urls.each do |url|
			fetch_url(url)
		end
	end

end
