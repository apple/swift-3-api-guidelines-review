
struct AudioComponentFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(iOS 5.0, *)
  static var Unsearchable: AudioComponentFlags { get }
  @available(iOS 6.0, *)
  static var SandboxSafe: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var IsV3AudioUnit: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var RequiresAsyncInstantiation: AudioComponentFlags { get }
  @available(iOS 9.0, *)
  static var CanLoadInProcess: AudioComponentFlags { get }
}
struct AudioComponentInstantiationOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(iOS 9.0, *)
  static var LoadOutOfProcess: AudioComponentInstantiationOptions { get }
}
struct AudioComponentDescription {
  var componentType: OSType
  var componentSubType: OSType
  var componentManufacturer: OSType
  var componentFlags: UInt32
  var componentFlagsMask: UInt32
  init()
  init(componentType: OSType, componentSubType: OSType, componentManufacturer: OSType, componentFlags: UInt32, componentFlagsMask: UInt32)
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
func AudioComponentFindNext(inComponent: AudioComponent, _ inDesc: UnsafePointer<AudioComponentDescription>) -> AudioComponent
@available(iOS 2.0, *)
func AudioComponentCount(inDesc: UnsafePointer<AudioComponentDescription>) -> UInt32
@available(iOS 2.0, *)
func AudioComponentCopyName(inComponent: AudioComponent, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentGetDescription(inComponent: AudioComponent, _ outDesc: UnsafeMutablePointer<AudioComponentDescription>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentGetVersion(inComponent: AudioComponent, _ outVersion: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentInstanceNew(inComponent: AudioComponent, _ outInstance: UnsafeMutablePointer<AudioComponentInstance>) -> OSStatus
@available(iOS 9.0, *)
func AudioComponentInstantiate(inComponent: AudioComponent, _ inOptions: AudioComponentInstantiationOptions, _ inCompletionHandler: (AudioComponentInstance, OSStatus) -> Void)
@available(iOS 2.0, *)
func AudioComponentInstanceDispose(inInstance: AudioComponentInstance) -> OSStatus
@available(iOS 2.0, *)
func AudioComponentInstanceGetComponent(inInstance: AudioComponentInstance) -> AudioComponent
@available(iOS 3.0, *)
func AudioComponentInstanceCanDo(inInstance: AudioComponentInstance, _ inSelectorID: Int16) -> Bool
@available(iOS 5.0, *)
func AudioComponentRegister(inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inFactory: AudioComponentFactoryFunction) -> AudioComponent
enum AudioComponentValidationResult : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unknown
  case Passed
  case Failed
  case TimedOut
  case UnauthorizedError_Open
  case UnauthorizedError_Init
}
var kAudioComponentConfigurationInfo_ValidationResult: String { get }
var kAudioComponentValidationParameter_TimeOut: String { get }
var kAudioComponentValidationParameter_ForceValidation: String { get }
