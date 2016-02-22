
struct AudioComponentFlags : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  @available(iOS 5.0, *)
  static var unsearchable: AudioComponentFlags { get }
  @available(iOS 6.0, *)
  static var sandboxSafe: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var isv3AudioUnit: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var requiresAsyncInstantiation: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var canLoadInProcess: AudioComponentFlags { get }
}
struct AudioComponentInstantiationOptions : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  @available(iOS 9.0, *)
  static var loadOutOfProcess: AudioComponentInstantiationOptions { get }
}
struct AudioComponentDescription {
  var componentType: OSType
  var componentSubType: OSType
  var componentManufacturer: OSType
  var componentFlags: UInt32
  var componentFlagsMask: UInt32
  init()
  init(componentType componentType: OSType, componentSubType componentSubType: OSType, componentManufacturer componentManufacturer: OSType, componentFlags componentFlags: UInt32, componentFlagsMask componentFlagsMask: UInt32)
}
typealias AudioComponent = COpaquePointer
typealias AudioComponentInstance = COpaquePointer
typealias AudioComponentMethod = COpaquePointer
struct AudioComponentPlugInInterface {
  var Open: @convention(c) (UnsafeMutablePointer<Void>, AudioComponentInstance) -> OSStatus
  var Close: @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
  var Lookup: @convention(c) (Int16) -> AudioComponentMethod
  var reserved: UnsafeMutablePointer<Void>
}
typealias AudioComponentFactoryFunction = @convention(c) (UnsafePointer<AudioComponentDescription>) -> UnsafeMutablePointer<AudioComponentPlugInInterface>
@available(iOS 2.0, *)
func AudioComponentFindNext(_ inComponent: AudioComponent, _ inDesc: UnsafePointer<AudioComponentDescription>) -> AudioComponent
@available(iOS 2.0, *)
func AudioComponentCount(_ inDesc: UnsafePointer<AudioComponentDescription>) -> UInt32
@available(iOS 2.0, *)
func AudioComponentCopyName(_ inComponent: AudioComponent, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentGetDescription(_ inComponent: AudioComponent, _ outDesc: UnsafeMutablePointer<AudioComponentDescription>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentGetVersion(_ inComponent: AudioComponent, _ outVersion: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentInstanceNew(_ inComponent: AudioComponent, _ outInstance: UnsafeMutablePointer<AudioComponentInstance>) -> OSStatus
@available(iOS 9.0, *)
func AudioComponentInstantiate(_ inComponent: AudioComponent, _ inOptions: AudioComponentInstantiationOptions, _ inCompletionHandler: (AudioComponentInstance, OSStatus) -> Void)
@available(iOS 2.0, *)
func AudioComponentInstanceDispose(_ inInstance: AudioComponentInstance) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentInstanceGetComponent(_ inInstance: AudioComponentInstance) -> AudioComponent
@available(iOS 3.0, *)
func AudioComponentInstanceCanDo(_ inInstance: AudioComponentInstance, _ inSelectorID: Int16) -> Bool
@available(iOS 5.0, *)
func AudioComponentRegister(_ inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inFactory: AudioComponentFactoryFunction) -> AudioComponent
enum AudioComponentValidationResult : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case unknown
  case passed
  case failed
  case timedOut
  case unauthorizedError_Open
  case unauthorizedError_Init
}
var kAudioComponentConfigurationInfo_ValidationResult: String { get }
var kAudioComponentValidationParameter_TimeOut: String { get }
var kAudioComponentValidationParameter_ForceValidation: String { get }
