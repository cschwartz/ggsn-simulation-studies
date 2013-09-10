repetitions 10

maximumNumberOfInstances = (10..100).step(10)
startstopTime = [60,120,180,240,300]

maximumNumberOfTunnels = [(100..700).step(100), (100..400).step(100), (50..300).step(50), (50..200).step(50), (50..200).step(50), (50..150).step(50), (25..100).step(25), (25..100).step(25), (20..80).step(20), (10..70).step(10)]



i = 0
maximumNumberOfInstances.each do |currentNumberOfInstances|
	maximumNumberOfTunnels[i].each do |currentNumberOfTunnels|
		startstopTime.each do |currentStartStopTime|
			simulate "multiserver", numberOfSupportedParallelTunnels: currentNumberOfTunnels,
		    maxInstanceNumber: currentNumberOfInstances,
		    duration: 7.day + 1.hour,
		    transientPhaseDuration: 1.hour,
		    startupTime: currentStartStopTime,
		    shutdownTime: currentStartStopTime
		end
	end
	i += 1
end