module QueView
  class HomeController < ActionController::Base
    layout "que_view/application"
    protect_from_forgery
    http_basic_authenticate_with name: ENV["QUEVIEW_USERNAME"],
                                 password: ENV["QUEVIEW_PASSWORD"] if ENV["QUEVIEW_PASSWORD"]

    def index
      @jobs = QueJob.all
    end
  end
end
