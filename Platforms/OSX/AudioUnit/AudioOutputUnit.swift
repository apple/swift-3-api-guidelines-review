
@available(OSX 10.0, *)
func AudioOutputUnitStart(_ ci: AudioUnit) -> OSStatus
@available(OSX 10.0, *)
func AudioOutputUnitStop(_ ci: AudioUnit) -> OSStatus
var kAudioOutputUnitRange: Int { get }
var kAudioOutputUnitStartSelect: Int { get }
var kAudioOutputUnitStopSelect: Int { get }
typealias AudioOutputUnitStartProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioOutputUnitStopProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
