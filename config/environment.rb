# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Trades::Application.initialize!

# Haml options: preserve whitespace with the two Haml default tags of textarea and pre,
# plus also Javascript tags, to allow Ruby control structures within Javascript.
Haml::Template.options[:preserve] = ['textarea', 'pre']