repetitions 10
maximumNumberOfTunnels = (0..1000).step(50)
#maximumNumberOfInstances = (10...100).step(10)
currentNumberOfInstances = 100


# maximumNumberOfInstances.each do |currentNumberOfInstances|
	maximumNumberOfTunnels.each do |currentNumberOfTunnels|
	  simulate "multiserver", numberOfSupportedParallelTunnels: currentNumberOfTunnels,
	    maxInstanceNumber: currentNumberOfInstances,
	    duration: 7.day + 1.hour,
	    transientPhaseDuration: 1.hour
	end
# end