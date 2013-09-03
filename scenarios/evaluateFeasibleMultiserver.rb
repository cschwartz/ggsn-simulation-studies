repetitions 10
maximumNumberOfTunnels = (10..1000).step(10)
maximumNumberOfInstances = (10...1000).step(10)

maximumNumberOfInstances.each do |currentNumberOfInstances|
	maximumNumberOfTunnels.each do |currentNumberOfTunnels|
	  simulate "multiserver", numberOfSupportedParallelTunnels: currentNumberOfTunnels,
	    maxInstanceNumber: currentNumberOfInstances,
	    duration: 7.day + 1.hour,
	    transientPhaseDuration: 1.hour
	end
end