
@available(iOS 2.0, *)
func AudioOutputUnitStart(ci: AudioUnit) -> OSStatus
@available(iOS 2.0, *)
func AudioOutputUnitStop(ci: AudioUnit) -> OSStatus
var kAudioOutputUnitRange: Int { get }
var kAudioOutputUnitStartSelect: Int { get }
var kAudioOutputUnitStopSelect: Int { get }
typealias AudioOutputUnitStartProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioOutputUnitStopProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
