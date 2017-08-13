class PorterActionServer < Hyperloop::ServerOp
  param :acting_user, nils: true
  dispatch_to { Hyperloop::Application }

  step do 
    host_with_port 
  end

  def host_with_port
    system('touch lib/tasks/porter.log')
    system('echo "PorterActionServer is alive!!" >> lib/tasks/porter.log')
  end

end 

# called from client code as:
#
# PorterActionServer.run()
#
