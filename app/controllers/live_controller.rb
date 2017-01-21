require 'reloader/sse'

class LiveController < ApplicationController
  include ActionController::Live

  def index
  end

  def feed
    logs = `tail -n 25 log/#{Rails.env}.log`.split(/\n/)
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream)
    sse.write(logs)
  ensure
    sse.close
  end
end
