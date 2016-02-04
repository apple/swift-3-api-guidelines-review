
var kAudioServicesNoError: OSStatus { get }
var kAudioServicesUnsupportedPropertyError: OSStatus { get }
var kAudioServicesBadPropertySizeError: OSStatus { get }
var kAudioServicesBadSpecifierSizeError: OSStatus { get }
var kAudioServicesSystemSoundUnspecifiedError: OSStatus { get }
var kAudioServicesSystemSoundClientTimedOutError: OSStatus { get }
typealias SystemSoundID = UInt32
typealias AudioServicesPropertyID = UInt32
typealias AudioServicesSystemSoundCompletionProc = @convention(c) (SystemSoundID, UnsafeMutablePointer<Void>) -> Void
var kSystemSoundID_UserPreferredAlert: SystemSoundID { get }
var kSystemSoundID_FlashScreen: SystemSoundID { get }
var kUserPreferredAlert: SystemSoundID { get }
var kAudioServicesPropertyIsUISound: AudioServicesPropertyID { get }
var kAudioServicesPropertyCompletePlaybackIfAppDies: AudioServicesPropertyID { get }
@available(OSX 10.5, *)
func AudioServicesCreateSystemSoundID(inFileURL: CFURL, _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus
@available(OSX 10.5, *)
func AudioServicesDisposeSystemSoundID(inSystemSoundID: SystemSoundID) -> OSStatus
@available(OSX 10.11, *)
func AudioServicesPlayAlertSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(OSX 10.11, *)
func AudioServicesPlaySystemSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(OSX 10.5, *)
func AudioServicesGetPropertyInfo(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func AudioServicesGetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.5, *)
func AudioServicesSetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
@available(OSX 10.5, *)
func AudioServicesPlayAlertSound(inSystemSoundID: SystemSoundID)
@available(OSX 10.5, *)
func AudioServicesPlaySystemSound(inSystemSoundID: SystemSoundID)
@available(OSX 10.5, *)
func AudioServicesAddSystemSoundCompletion(inSystemSoundID: SystemSoundID, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inCompletionRoutine: AudioServicesSystemSoundCompletionProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.5, *)
func AudioServicesRemoveSystemSoundCompletion(inSystemSoundID: SystemSoundID)
var kAudioHardwareServiceProperty_ServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterVolume: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterBalance: AudioObjectPropertySelector { get }
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceHasProperty(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>) -> Bool
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceIsPropertySettable(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceGetPropertyDataSize(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceGetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceSetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ inDataSize: UInt32, _ inData: UnsafePointer<Void>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceAddPropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceRemovePropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
