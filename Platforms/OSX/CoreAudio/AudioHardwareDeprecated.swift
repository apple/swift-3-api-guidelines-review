
var kAudioDevicePropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioPropertyWildcardPropertyID: AudioObjectPropertySelector { get }
var kAudioPropertyWildcardSection: UInt8 { get }
var kAudioPropertyWildcardChannel: AudioObjectPropertyElement { get }
var kAudioISubOwnerControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
enum AudioLevelControlTransferFunction : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TranferFunctionLinear
  case TranferFunction1Over3
  case TranferFunction1Over2
  case TranferFunction3Over4
  case TranferFunction3Over2
  case TranferFunction2Over1
  case TranferFunction3Over1
  case TranferFunction4Over1
  case TranferFunction5Over1
  case TranferFunction6Over1
  case TranferFunction7Over1
  case TranferFunction8Over1
  case TranferFunction9Over1
  case TranferFunction10Over1
  case TranferFunction11Over1
  case TranferFunction12Over1
}
typealias AudioHardwarePropertyID = AudioObjectPropertySelector
typealias AudioHardwarePropertyListenerProc = @convention(c) (AudioHardwarePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioHardwareRunLoopMode: String { get }
var kAudioHardwarePropertyRunLoop: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDeviceForUID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInForBundleID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
typealias AudioDeviceID = AudioObjectID
typealias AudioDevicePropertyID = AudioObjectPropertySelector
typealias AudioDevicePropertyListenerProc = @convention(c) (AudioDeviceID, UInt32, DarwinBoolean, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioDeviceUnknown: AudioObjectID { get }
var kAudioDeviceTransportTypeAutoAggregate: UInt32 { get }
var kAudioDevicePropertyVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDriverShouldOwniSub: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturer: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturerCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRegisterBufferList: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySupportsMixing: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormat: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormats: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatSupported: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatMatch: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForID: AudioObjectPropertySelector { get }
typealias AudioStreamID = AudioObjectID
typealias AudioStreamPropertyListenerProc = @convention(c) (AudioStreamID, UInt32, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioStreamUnknown: AudioObjectID { get }
var kAudioStreamPropertyOwningDevice: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatSupported: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatMatch: AudioObjectPropertySelector { get }
var kAudioBootChimeVolumeControlClassID: AudioClassID { get }
var kAudioControlPropertyVariant: AudioObjectPropertySelector { get }
var kAudioClockSourceControlPropertyItemKind: AudioObjectPropertySelector { get }
