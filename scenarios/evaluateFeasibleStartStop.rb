repetitions 10
maximumNumberOfTunnels = (100..600).step(100)
maximumNumberOfInstances = (10...100).step(10)
startstop_time = [60,120,180,240,300]

startstop_time.each do |currentStartStopTime|
	maximumNumberOfInstances.each do |currentNumberOfInstances|
		maximumNumberOfTunnels.each do |currentNumberOfTunnels|
		  simulate "multiserver", numberOfSupportedParallelTunnels: currentNumberOfTunnels,
		    maxInstanceNumber: currentNumberOfInstances,
		    duration: 7.day + 1.hour,
		    transientPhaseDuration: 1.hour,
		    startup_time: currentStartStopTime,
		    shutdown_time: currentStartStopTime
		end
	end
end