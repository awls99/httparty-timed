require "httparty/timmed/version"

class Net::HTTP
  alias_method :original_begin_transport, :begin_transport
  alias_method :original_end_transport, :end_transport

  def begin_transport
    @init_time = Time.now
  end

  def end_transport(req, res)
    res.duration = Time.now.to_ms - @init_time.to_ms
    end_transport(req, res)
  end

end

class HTTParty::Response
  def duration
    @response.duration
  end
end

class Time
  def to_ms
    (to_f * 1000).to_i
  end
end

class Net::HTTPResponse
  attr :duration, true
end

module Httparty
  module Timmed
    # Your code goes here...
  end
end
