require 'httparty'

class Net::HTTP
  alias_method :original_begin_transport, :begin_transport
  alias_method :original_end_transport, :end_transport

  def begin_transport req
    original_begin_transport req
    @init_time = Time.now
  end

  def end_transport(req, res)
    res.duration = ( (Time.now - @init_time) * 1000 ).to_i
    original_end_transport(req, res)
  end

end

class HTTParty::Response
  def duration
    @response.duration
  end
end

class Net::HTTPResponse
  attr :duration, true
end
