require "que_view/version"
require "active_record"
require "que_view/engine" if defined?(Rails)

module QueView
  # hack for connection
  class Connection < ActiveRecord::Base
    establish_connection ENV["QUEVIEW_DATABASE_URL"] if ENV["QUEVIEW_DATABASE_URL"]
  end

  class << self
    # custom queries
  end
end
