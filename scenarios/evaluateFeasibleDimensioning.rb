repetitions 10
maximumNumberOfTunnels = (10000..50000).step(100)

maximumNumberOfTunnels.each do |currentNumberOfTunnels|
  simulate numberOfSupportedParallelTunnels: currentNumberOfTunnels,
    duration: 2.day + 1.hour,
    transientPhaseDuration: 1.hour
end
