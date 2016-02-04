
var kAudioUnitScope_Global: AudioUnitScope { get }
var kAudioUnitScope_Input: AudioUnitScope { get }
var kAudioUnitScope_Output: AudioUnitScope { get }
var kAudioUnitScope_Group: AudioUnitScope { get }
var kAudioUnitScope_Part: AudioUnitScope { get }
var kAudioUnitScope_Note: AudioUnitScope { get }
var kAudioUnitScope_Layer: AudioUnitScope { get }
var kAudioUnitScope_LayerItem: AudioUnitScope { get }
var kAudioUnitProperty_ClassInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_MakeConnection: AudioUnitPropertyID { get }
var kAudioUnitProperty_SampleRate: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterList: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_CPULoad: AudioUnitPropertyID { get }
var kAudioUnitProperty_StreamFormat: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementCount: AudioUnitPropertyID { get }
var kAudioUnitProperty_Latency: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedNumChannels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MaximumFramesPerSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueStrings: AudioUnitPropertyID { get }
var kAudioUnitProperty_AudioChannelLayout: AudioUnitPropertyID { get }
var kAudioUnitProperty_TailTime: AudioUnitPropertyID { get }
var kAudioUnitProperty_BypassEffect: AudioUnitPropertyID { get }
var kAudioUnitProperty_LastRenderError: AudioUnitPropertyID { get }
var kAudioUnitProperty_SetRenderCallback: AudioUnitPropertyID { get }
var kAudioUnitProperty_FactoryPresets: AudioUnitPropertyID { get }
var kAudioUnitProperty_RenderQuality: AudioUnitPropertyID { get }
var kAudioUnitProperty_HostCallbacks: AudioUnitPropertyID { get }
var kAudioUnitProperty_InPlaceProcessing: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementName: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedChannelLayoutTags: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentPreset: AudioUnitPropertyID { get }
var kAudioUnitProperty_DependentParameters: AudioUnitPropertyID { get }
var kAudioUnitProperty_InputSamplesInOutput: AudioUnitPropertyID { get }
var kAudioUnitProperty_ShouldAllocateBuffer: AudioUnitPropertyID { get }
var kAudioUnitProperty_FrequencyResponse: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterHistoryInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_NickName: AudioUnitPropertyID { get }
var kAudioUnitProperty_OfflineRender: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterIDName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterStringFromValue: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterClumpName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueFromString: AudioUnitPropertyID { get }
var kAudioUnitProperty_ContextName: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentationLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_ClassInfoFromDocument: AudioUnitPropertyID { get }
var kAudioUnitProperty_RequestViewController: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParametersForOverview: AudioUnitPropertyID { get }
var kAudioUnitProperty_RemoteControlEventListener: AudioUnitPropertyID { get }
var kAudioUnitProperty_IsInterAppConnected: AudioUnitPropertyID { get }
var kAudioUnitProperty_PeerURL: AudioUnitPropertyID { get }
var kAUPresetVersionKey: String { get }
var kAUPresetTypeKey: String { get }
var kAUPresetSubtypeKey: String { get }
var kAUPresetManufacturerKey: String { get }
var kAUPresetDataKey: String { get }
var kAUPresetNameKey: String { get }
var kAUPresetRenderQualityKey: String { get }
var kAUPresetCPULoadKey: String { get }
var kAUPresetElementNameKey: String { get }
var kAUPresetExternalFileRefs: String { get }
var kAUPresetPartKey: String { get }
struct AudioUnitConnection {
  var sourceAudioUnit: AudioUnit
  var sourceOutputNumber: UInt32
  var destInputNumber: UInt32
}
struct AUChannelInfo {
  var inChannels: Int16
  var outChannels: Int16
  init()
  init(inChannels: Int16, outChannels: Int16)
}
struct AudioUnitExternalBuffer {
  var buffer: UnsafeMutablePointer<UInt8>
  var size: UInt32
}
struct AURenderCallbackStruct {
  var inputProc: AURenderCallback
  var inputProcRefCon: UnsafeMutablePointer<Void>
}
struct AUPreset {
  var presetNumber: Int32
  var presetName: Unmanaged<CFString>
}
var kRenderQuality_Max: Int { get }
var kRenderQuality_High: Int { get }
var kRenderQuality_Medium: Int { get }
var kRenderQuality_Low: Int { get }
var kRenderQuality_Min: Int { get }
var kNumberOfResponseFrequencies: Int { get }
struct AudioUnitFrequencyResponseBin {
  var mFrequency: Float64
  var mMagnitude: Float64
  init()
  init(mFrequency: Float64, mMagnitude: Float64)
}
typealias HostCallback_GetBeatAndTempo = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetMusicalTimeLocation = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float32>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetTransportState = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
typealias HostCallback_GetTransportState2 = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus
struct HostCallbackInfo {
  var hostUserData: UnsafeMutablePointer<Void>
  var beatAndTempoProc: HostCallback_GetBeatAndTempo?
  var musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?
  var transportStateProc: HostCallback_GetTransportState?
  var transportStateProc2: HostCallback_GetTransportState2?
  init()
  init(hostUserData: UnsafeMutablePointer<Void>, beatAndTempoProc: HostCallback_GetBeatAndTempo?, musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?, transportStateProc: HostCallback_GetTransportState?, transportStateProc2: HostCallback_GetTransportState2?)
}
struct AUDependentParameter {
  var mScope: AudioUnitScope
  var mParameterID: AudioUnitParameterID
  init()
  init(mScope: AudioUnitScope, mParameterID: AudioUnitParameterID)
}
struct AUInputSamplesInOutputCallbackStruct {
  var inputToOutputCallback: AUInputSamplesInOutputCallback
  var userData: UnsafeMutablePointer<Void>
}
struct AudioUnitParameterHistoryInfo {
  var updatesPerSecond: Float32
  var historyDurationInSeconds: Float32
  init()
  init(updatesPerSecond: Float32, historyDurationInSeconds: Float32)
}
enum AudioUnitParameterUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Generic
  case Indexed
  case Boolean
  case Percent
  case Seconds
  case SampleFrames
  case Phase
  case Rate
  case Hertz
  case Cents
  case RelativeSemiTones
  case MIDINoteNumber
  case MIDIController
  case Decibels
  case LinearGain
  case Degrees
  case EqualPowerCrossfade
  case MixerFaderCurve1
  case Pan
  case Meters
  case AbsoluteCents
  case Octaves
  case BPM
  case Beats
  case Milliseconds
  case Ratio
  case CustomUnit
}
struct AudioUnitParameterOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Flag_CFNameRelease: AudioUnitParameterOptions { get }
  static var Flag_OmitFromPresets: AudioUnitParameterOptions { get }
  static var Flag_PlotHistory: AudioUnitParameterOptions { get }
  static var Flag_MeterReadOnly: AudioUnitParameterOptions { get }
  static var Flag_DisplayMask: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquareRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquared: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubed: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubeRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplayExponential: AudioUnitParameterOptions { get }
  static var Flag_HasClump: AudioUnitParameterOptions { get }
  static var Flag_ValuesHaveStrings: AudioUnitParameterOptions { get }
  static var Flag_DisplayLogarithmic: AudioUnitParameterOptions { get }
  static var Flag_IsHighResolution: AudioUnitParameterOptions { get }
  static var Flag_NonRealTime: AudioUnitParameterOptions { get }
  static var Flag_CanRamp: AudioUnitParameterOptions { get }
  static var Flag_ExpertMode: AudioUnitParameterOptions { get }
  static var Flag_HasCFNameString: AudioUnitParameterOptions { get }
  static var Flag_IsGlobalMeta: AudioUnitParameterOptions { get }
  static var Flag_IsElementMeta: AudioUnitParameterOptions { get }
  static var Flag_IsReadable: AudioUnitParameterOptions { get }
  static var Flag_IsWritable: AudioUnitParameterOptions { get }
}
struct AudioUnitParameterInfo {
  var name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var unitName: Unmanaged<CFString>?
  var clumpID: UInt32
  var cfNameString: Unmanaged<CFString>?
  var unit: AudioUnitParameterUnit
  var minValue: AudioUnitParameterValue
  var maxValue: AudioUnitParameterValue
  var defaultValue: AudioUnitParameterValue
  var flags: AudioUnitParameterOptions
  init()
  init(name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), unitName: Unmanaged<CFString>?, clumpID: UInt32, cfNameString: Unmanaged<CFString>?, unit: AudioUnitParameterUnit, minValue: AudioUnitParameterValue, maxValue: AudioUnitParameterValue, defaultValue: AudioUnitParameterValue, flags: AudioUnitParameterOptions)
}
var kAudioUnitClumpID_System: Int { get }
func GetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions) -> AudioUnitParameterOptions
func SetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions, _ displayType: AudioUnitParameterOptions) -> AudioUnitParameterOptions
var kAudioUnitParameterName_Full: Int { get }
struct AudioUnitParameterNameInfo {
  var inID: AudioUnitParameterID
  var inDesiredLength: Int32
  var outName: Unmanaged<CFString>?
  init()
  init(inID: AudioUnitParameterID, inDesiredLength: Int32, outName: Unmanaged<CFString>?)
}
typealias AudioUnitParameterIDName = AudioUnitParameterNameInfo
struct AudioUnitParameterStringFromValue {
  var inParamID: AudioUnitParameterID
  var inValue: UnsafePointer<AudioUnitParameterValue>
  var outString: Unmanaged<CFString>?
}
struct AudioUnitParameterValueFromString {
  var inParamID: AudioUnitParameterID
  var inString: Unmanaged<CFString>
  var outValue: AudioUnitParameterValue
}
enum AudioUnitRemoteControlEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TogglePlayPause
  case ToggleRecord
  case Rewind
}
typealias AudioUnitRemoteControlEventListener = (AudioUnitRemoteControlEvent) -> Void
var kAudioUnitConfigurationInfo_HasCustomView: String { get }
var kAudioUnitConfigurationInfo_ChannelConfigurations: String { get }
var kAudioUnitConfigurationInfo_InitialInputs: String { get }
var kAudioUnitConfigurationInfo_InitialOutputs: String { get }
var kAudioUnitConfigurationInfo_IconURL: String { get }
var kAudioUnitConfigurationInfo_BusCountWritable: String { get }
var kAudioUnitConfigurationInfo_SupportedChannelLayoutTags: String { get }
var kAudioOutputUnitProperty_IsRunning: AudioUnitPropertyID { get }
var kAudioUnitProperty_SampleRateConverterComplexity: AudioUnitPropertyID { get }
var kAudioUnitSampleRateConverterComplexity_Linear: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Normal: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Mastering: UInt32 { get }
var kAudioOutputUnitProperty_CurrentDevice: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_ChannelMap: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_EnableIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTime: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_SetInputCallback: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HasIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTimestampsAtZero: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_MIDICallbacks: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HostReceivesRemoteControlEvents: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_RemoteControlToHost: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HostTransportState: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_NodeComponentDescription: AudioUnitPropertyID { get }
struct AudioOutputUnitMIDICallbacks {
  var userData: UnsafeMutablePointer<Void>
  var MIDIEventProc: @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UInt32) -> Void
  var MIDISysExProc: @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<UInt8>, UInt32) -> Void
}
struct AudioOutputUnitStartAtTimeParams {
  var mTimestamp: AudioTimeStamp
  var mFlags: UInt32
  init()
  init(mTimestamp: AudioTimeStamp, mFlags: UInt32)
}
var kAUVoiceIOProperty_BypassVoiceProcessing: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingEnableAGC: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_MuteOutput: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_DuckNonVoiceAudio: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingQuality: AudioUnitPropertyID { get }
var kAUNBandEQProperty_NumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_MaxNumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_BiquadCoefficients: AudioUnitPropertyID { get }
var kAudioUnitProperty_MeteringMode: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixLevels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixDimensions: AudioUnitPropertyID { get }
var kAudioUnitProperty_MeterClipping: AudioUnitPropertyID { get }
struct AudioUnitMeterClipping {
  var peakValueSinceLastCall: Float32
  var sawInfinity: DarwinBoolean
  var sawNotANumber: DarwinBoolean
  init()
  init(peakValueSinceLastCall: Float32, sawInfinity: DarwinBoolean, sawNotANumber: DarwinBoolean)
}
var kAudioUnitProperty_ReverbRoomType: AudioUnitPropertyID { get }
var kAudioUnitProperty_UsesInternalReverb: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatializationAlgorithm: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerRenderingFlags: AudioUnitPropertyID { get }
enum AUSpatializationAlgorithm : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatializationAlgorithm_EqualPowerPanning
  case SpatializationAlgorithm_SphericalHead
  case SpatializationAlgorithm_HRTF
  case SpatializationAlgorithm_SoundField
  case SpatializationAlgorithm_VectorBasedPanning
  case SpatializationAlgorithm_StereoPassThrough
}
enum AUReverbRoomType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ReverbRoomType_SmallRoom
  case ReverbRoomType_MediumRoom
  case ReverbRoomType_LargeRoom
  case ReverbRoomType_MediumHall
  case ReverbRoomType_LargeHall
  case ReverbRoomType_Plate
  case ReverbRoomType_MediumChamber
  case ReverbRoomType_LargeChamber
  case ReverbRoomType_Cathedral
  case ReverbRoomType_LargeRoom2
  case ReverbRoomType_MediumHall2
  case ReverbRoomType_MediumHall3
  case ReverbRoomType_LargeHall2
}
enum AUSpatialMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatialMixerAttenuationCurve_Power
  case SpatialMixerAttenuationCurve_Exponential
  case SpatialMixerAttenuationCurve_Inverse
  case SpatialMixerAttenuationCurve_Linear
}
struct MixerDistanceParams {
  var mReferenceDistance: Float32
  var mMaxDistance: Float32
  var mMaxAttenuation: Float32
  init()
  init(mReferenceDistance: Float32, mMaxDistance: Float32, mMaxAttenuation: Float32)
}
struct AUSpatialMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var SpatialMixerRenderingFlags_InterAuralDelay: AUSpatialMixerRenderingFlags { get }
  static var SpatialMixerRenderingFlags_DistanceAttenuation: AUSpatialMixerRenderingFlags { get }
}
var kAudioUnitProperty_3DMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_DopplerShift: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerRenderingFlags: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerDistanceAtten: AudioUnitPropertyID { get }
var kAudioUnitProperty_ReverbPreset: AudioUnitPropertyID { get }
struct AU3DMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var k3DMixerRenderingFlags_InterAuralDelay: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DopplerShift: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceFilter: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceDiffusion: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_LinearDistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_ConstantReverbBlend: AU3DMixerRenderingFlags { get }
}
enum AU3DMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case k3DMixerAttenuationCurve_Power
  case k3DMixerAttenuationCurve_Exponential
  case k3DMixerAttenuationCurve_Inverse
  case k3DMixerAttenuationCurve_Linear
}
var kAudioUnitProperty_ScheduleAudioSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduleStartTimeStamp: AudioUnitPropertyID { get }
var kAudioUnitProperty_CurrentPlayTime: AudioUnitPropertyID { get }
struct AUScheduledAudioSliceFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ScheduledAudioSliceFlag_Complete: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRender: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRenderLate: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Loop: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Interrupt: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_InterruptAtLoop: AUScheduledAudioSliceFlags { get }
}
typealias ScheduledAudioSliceCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioSlice>) -> Void
struct ScheduledAudioSlice {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioSliceCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mFlags: AUScheduledAudioSliceFlags
  var mReserved: UInt32
  var mReserved2: UnsafeMutablePointer<Void>
  var mNumberFrames: UInt32
  var mBufferList: UnsafeMutablePointer<AudioBufferList>
}
var kAudioUnitProperty_ScheduledFileIDs: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileRegion: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFilePrime: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileBufferSizeFrames: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileNumberBuffers: AudioUnitPropertyID { get }
typealias ScheduledAudioFileRegionCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioFileRegion>, OSStatus) -> Void
struct ScheduledAudioFileRegion {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioFileRegionCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mAudioFile: COpaquePointer
  var mLoopCount: UInt32
  var mStartFrame: Int64
  var mFramesToPlay: UInt32
}
var kMusicDeviceProperty_InstrumentName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentNumber: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentCount: AudioUnitPropertyID { get }
var kMusicDeviceProperty_BankName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankURL: AudioUnitPropertyID { get }
var kAUMIDISynthProperty_EnablePreload: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadInstrument: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadAudioFiles: AudioUnitPropertyID { get }
struct AUSamplerInstrumentData {
  var fileURL: Unmanaged<CFURL>
  var instrumentType: UInt8
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
}
var kInstrumentType_DLSPreset: Int { get }
var kInstrumentType_SF2Preset: Int { get }
var kInstrumentType_AUPreset: Int { get }
var kInstrumentType_Audiofile: Int { get }
var kInstrumentType_EXS24: Int { get }
var kAUSampler_DefaultPercussionBankMSB: Int { get }
var kAUSampler_DefaultMelodicBankMSB: Int { get }
var kAUSampler_DefaultBankLSB: Int { get }
var kAudioUnitProperty_DeferredRendererPullSize: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererExtraLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererWaitFrames: AudioUnitPropertyID { get }
struct AUSamplerBankPresetData {
  var bankURL: Unmanaged<CFURL>
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
  var reserved: UInt8
}
var kAUSamplerProperty_LoadPresetFromBank: AudioUnitPropertyID { get }
var kAUSamplerProperty_BankAndPreset: AudioUnitPropertyID { get }
