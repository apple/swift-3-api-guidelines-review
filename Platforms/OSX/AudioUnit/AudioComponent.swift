
struct AudioComponentFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(OSX 10.7, *)
  static var Unsearchable: AudioComponentFlags { get }
  @available(OSX 10.8, *)
  static var SandboxSafe: AudioComponentFlags { get }
  @available(OSX 10.11, *)
  static var IsV3AudioUnit: AudioComponentFlags { get }
  @available(OSX 10.11, *)
  static var RequiresAsyncInstantiation: AudioComponentFlags { get }
  @available(OSX 10.11, *)
  static var CanLoadInProcess: AudioComponentFlags { get }
}
struct AudioComponentInstantiationOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(OSX 10.11, *)
  static var LoadOutOfProcess: AudioComponentInstantiationOptions { get }
  @available(OSX 10.11, *)
  static var LoadInProcess: AudioComponentInstantiationOptions { get }
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
typealias AudioComponentInstance = UnsafeMutablePointer<ComponentInstanceRecord>
typealias AudioComponentMethod = COpaquePointer
struct AudioComponentPlugInInterface {
  var Open: @convention(c) (UnsafeMutablePointer<Void>, AudioComponentInstance) -> OSStatus
  var Close: @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
  var Lookup: @convention(c) (Int16) -> AudioComponentMethod
  var reserved: UnsafeMutablePointer<Void>
}
typealias AudioComponentFactoryFunction = @convention(c) (UnsafePointer<AudioComponentDescription>) -> UnsafeMutablePointer<AudioComponentPlugInInterface>
@available(OSX 10.6, *)
func AudioComponentFindNext(inComponent: AudioComponent, _ inDesc: UnsafePointer<AudioComponentDescription>) -> AudioComponent
@available(OSX 10.6, *)
func AudioComponentCount(inDesc: UnsafePointer<AudioComponentDescription>) -> UInt32
@available(OSX 10.6, *)
func AudioComponentCopyName(inComponent: AudioComponent, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.6, *)
func AudioComponentGetDescription(inComponent: AudioComponent, _ outDesc: UnsafeMutablePointer<AudioComponentDescription>) -> OSStatus
@available(OSX 10.6, *)
func AudioComponentGetVersion(inComponent: AudioComponent, _ outVersion: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.11, *)
func AudioComponentGetIcon(comp: AudioComponent) -> NSImage?
@available(OSX 10.6, *)
func AudioComponentInstanceNew(inComponent: AudioComponent, _ outInstance: UnsafeMutablePointer<AudioComponentInstance>) -> OSStatus
@available(OSX 10.11, *)
func AudioComponentInstantiate(inComponent: AudioComponent, _ inOptions: AudioComponentInstantiationOptions, _ inCompletionHandler: (AudioComponentInstance, OSStatus) -> Void)
@available(OSX 10.6, *)
func AudioComponentInstanceDispose(inInstance: AudioComponentInstance) -> OSStatus
@available(OSX 10.6, *)
func AudioComponentInstanceGetComponent(inInstance: AudioComponentInstance) -> AudioComponent
@available(OSX 10.6, *)
func AudioComponentInstanceCanDo(inInstance: AudioComponentInstance, _ inSelectorID: Int16) -> Bool
@available(OSX 10.7, *)
func AudioComponentRegister(inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inFactory: AudioComponentFactoryFunction) -> AudioComponent
@available(OSX 10.7, *)
func AudioComponentCopyConfigurationInfo(inComponent: AudioComponent, _ outConfigurationInfo: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
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
@available(OSX 10.7, *)
func AudioComponentValidate(inComponent: AudioComponent, _ inValidationParameters: CFDictionary?, _ outValidationResult: UnsafeMutablePointer<AudioComponentValidationResult>) -> OSStatus
var kAudioComponentValidationParameter_TimeOut: String { get }
var kAudioComponentValidationParameter_ForceValidation: String { get }
