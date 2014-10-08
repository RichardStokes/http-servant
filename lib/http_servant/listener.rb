require 'socket'

module HttpServant
	class Listener
		def self.listen(port = 2000)
			TCPServer.open(port)
		end
	end
end
