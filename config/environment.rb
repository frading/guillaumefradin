# Load the rails application
require File.expand_path('../application', __FILE__)

Time::DATE_FORMATS[:pretty] = "%A, %B %d, %Y"
Time::DATE_FORMATS[:pretty_short] = "%A, %B %d"
Time::DATE_FORMATS[:pretty_v_short] = "%A %d"


# Initialize the rails application
Guillaumefradin::Application.initialize!
