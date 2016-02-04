
var kAudioServicesNoError: OSStatus { get }
var kAudioServicesUnsupportedPropertyError: OSStatus { get }
var kAudioServicesBadPropertySizeError: OSStatus { get }
var kAudioServicesBadSpecifierSizeError: OSStatus { get }
var kAudioServicesSystemSoundUnspecifiedError: OSStatus { get }
var kAudioServicesSystemSoundClientTimedOutError: OSStatus { get }
typealias SystemSoundID = UInt32
typealias AudioServicesPropertyID = UInt32
typealias AudioServicesSystemSoundCompletionProc = @convention(c) (SystemSoundID, UnsafeMutablePointer<Void>) -> Void
var kSystemSoundID_Vibrate: SystemSoundID { get }
var kAudioServicesPropertyIsUISound: AudioServicesPropertyID { get }
var kAudioServicesPropertyCompletePlaybackIfAppDies: AudioServicesPropertyID { get }
@available(tvOS 2.0, *)
func AudioServicesCreateSystemSoundID(inFileURL: CFURL, _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus
@available(tvOS 2.0, *)
func AudioServicesDisposeSystemSoundID(inSystemSoundID: SystemSoundID) -> OSStatus
@available(tvOS 9.0, *)
func AudioServicesPlayAlertSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(tvOS 9.0, *)
func AudioServicesPlaySystemSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(tvOS 2.0, *)
func AudioServicesGetPropertyInfo(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 2.0, *)
func AudioServicesGetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioServicesSetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioServicesPlayAlertSound(inSystemSoundID: SystemSoundID)
@available(tvOS 2.0, *)
func AudioServicesPlaySystemSound(inSystemSoundID: SystemSoundID)
@available(tvOS 2.0, *)
func AudioServicesAddSystemSoundCompletion(inSystemSoundID: SystemSoundID, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inCompletionRoutine: AudioServicesSystemSoundCompletionProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioServicesRemoveSystemSoundCompletion(inSystemSoundID: SystemSoundID)
