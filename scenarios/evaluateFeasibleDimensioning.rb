repetitions 10
maximumNumberOfTunnels = (100..20000).step(100)

maximumNumberOfTunnels.each do |currentNumberOfTunnels|
  simulate "traditional", numberOfSupportedParallelTunnels: currentNumberOfTunnels,
    duration: 7.day + 1.hour,
    transientPhaseDuration: 1.hour
end
