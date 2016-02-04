
@available(OSX 10.8, *)
func CMAudioDeviceClockCreate(allocator: CFAllocator?, _ deviceUID: CFString?, _ clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
@available(OSX 10.8, *)
func CMAudioDeviceClockCreateFromAudioDeviceID(allocator: CFAllocator?, _ deviceID: AudioDeviceID, _ clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
@available(OSX 10.8, *)
func CMAudioDeviceClockSetAudioDeviceUID(clock: CMClock, _ deviceUID: CFString?) -> OSStatus
@available(OSX 10.8, *)
func CMAudioDeviceClockSetAudioDeviceID(clock: CMClock, _ deviceID: AudioDeviceID) -> OSStatus
@available(OSX 10.8, *)
func CMAudioDeviceClockGetAudioDevice(clock: CMClock, _ deviceUIDOut: AutoreleasingUnsafeMutablePointer<CFString?>, _ deviceIDOut: UnsafeMutablePointer<AudioDeviceID>, _ trackingDefaultDeviceOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
