
@available(OSX 10.0, *)
func AudioGetCurrentHostTime() -> UInt64
@available(OSX 10.0, *)
func AudioGetHostClockFrequency() -> Float64
@available(OSX 10.0, *)
func AudioGetHostClockMinimumTimeDelta() -> UInt32
@available(OSX 10.0, *)
func AudioConvertHostTimeToNanos(inHostTime: UInt64) -> UInt64
@available(OSX 10.0, *)
func AudioConvertNanosToHostTime(inNanos: UInt64) -> UInt64
