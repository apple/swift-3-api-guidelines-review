
var kFFAPIMajorRev: Int { get }
var kFFAPIMinorAndBugRev: Int { get }
var kFFAPIStage: Int { get }
var kFFAPINonRelRev: Int { get }
struct FFCONSTANTFORCE {
  var lMagnitude: LONG
  init()
  init(lMagnitude: LONG)
}
typealias PFFCONSTANTFORCE = UnsafeMutablePointer<FFCONSTANTFORCE>
struct FFRAMPFORCE {
  var lStart: LONG
  var lEnd: LONG
  init()
  init(lStart: LONG, lEnd: LONG)
}
typealias PFFRAMPFORCE = UnsafeMutablePointer<FFRAMPFORCE>
struct FFPERIODIC {
  var dwMagnitude: DWORD
  var lOffset: LONG
  var dwPhase: DWORD
  var dwPeriod: DWORD
  init()
  init(dwMagnitude: DWORD, lOffset: LONG, dwPhase: DWORD, dwPeriod: DWORD)
}
typealias PFFPERIODIC = UnsafeMutablePointer<FFPERIODIC>
struct FFCONDITION {
  var lOffset: LONG
  var lPositiveCoefficient: LONG
  var lNegativeCoefficient: LONG
  var dwPositiveSaturation: DWORD
  var dwNegativeSaturation: DWORD
  var lDeadBand: LONG
  init()
  init(lOffset: LONG, lPositiveCoefficient: LONG, lNegativeCoefficient: LONG, dwPositiveSaturation: DWORD, dwNegativeSaturation: DWORD, lDeadBand: LONG)
}
typealias PFFCONDITION = UnsafeMutablePointer<FFCONDITION>
struct FFCUSTOMFORCE {
  var cChannels: DWORD
  var dwSamplePeriod: DWORD
  var cSamples: DWORD
  var rglForceData: LPLONG
  init()
  init(cChannels: DWORD, dwSamplePeriod: DWORD, cSamples: DWORD, rglForceData: LPLONG)
}
typealias PFFCUSTOMFORCE = UnsafeMutablePointer<FFCUSTOMFORCE>
struct FFENVELOPE {
  var dwSize: DWORD
  var dwAttackLevel: DWORD
  var dwAttackTime: DWORD
  var dwFadeLevel: DWORD
  var dwFadeTime: DWORD
  init()
  init(dwSize: DWORD, dwAttackLevel: DWORD, dwAttackTime: DWORD, dwFadeLevel: DWORD, dwFadeTime: DWORD)
}
typealias PFFENVELOPE = UnsafeMutablePointer<FFENVELOPE>
struct FFEFFECT {
  var dwSize: DWORD
  var dwFlags: DWORD
  var dwDuration: DWORD
  var dwSamplePeriod: DWORD
  var dwGain: DWORD
  var dwTriggerButton: DWORD
  var dwTriggerRepeatInterval: DWORD
  var cAxes: DWORD
  var rgdwAxes: LPDWORD
  var rglDirection: LPLONG
  var lpEnvelope: PFFENVELOPE
  var cbTypeSpecificParams: DWORD
  var lpvTypeSpecificParams: UnsafeMutablePointer<Void>
  var dwStartDelay: DWORD
  init()
  init(dwSize: DWORD, dwFlags: DWORD, dwDuration: DWORD, dwSamplePeriod: DWORD, dwGain: DWORD, dwTriggerButton: DWORD, dwTriggerRepeatInterval: DWORD, cAxes: DWORD, rgdwAxes: LPDWORD, rglDirection: LPLONG, lpEnvelope: PFFENVELOPE, cbTypeSpecificParams: DWORD, lpvTypeSpecificParams: UnsafeMutablePointer<Void>, dwStartDelay: DWORD)
}
typealias PFFEFFECT = UnsafeMutablePointer<FFEFFECT>
struct FFEFFESCAPE {
  var dwSize: DWORD
  var dwCommand: DWORD
  var lpvInBuffer: UnsafeMutablePointer<Void>
  var cbInBuffer: DWORD
  var lpvOutBuffer: UnsafeMutablePointer<Void>
  var cbOutBuffer: DWORD
  init()
  init(dwSize: DWORD, dwCommand: DWORD, lpvInBuffer: UnsafeMutablePointer<Void>, cbInBuffer: DWORD, lpvOutBuffer: UnsafeMutablePointer<Void>, cbOutBuffer: DWORD)
}
typealias PFFEFFESCAPE = UnsafeMutablePointer<FFEFFESCAPE>
struct FFCAPABILITIES {
  var ffSpecVer: NumVersion
  var supportedEffects: UInt32
  var emulatedEffects: UInt32
  var subType: UInt32
  var numFfAxes: UInt32
  var ffAxes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var storageCapacity: UInt32
  var playbackCapacity: UInt32
  var firmwareVer: NumVersion
  var hardwareVer: NumVersion
  var driverVer: NumVersion
  init()
  init(ffSpecVer: NumVersion, supportedEffects: UInt32, emulatedEffects: UInt32, subType: UInt32, numFfAxes: UInt32, ffAxes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), storageCapacity: UInt32, playbackCapacity: UInt32, firmwareVer: NumVersion, hardwareVer: NumVersion, driverVer: NumVersion)
}
typealias PFFCAPABILITIES = UnsafeMutablePointer<FFCAPABILITIES>
struct __FFDHIDDEN {
  init()
}
typealias FFDeviceObjectReference = UnsafeMutablePointer<__FFDHIDDEN>
struct __FFEHIDDEN {
  init()
}
typealias FFEffectObjectReference = UnsafeMutablePointer<__FFEHIDDEN>
func FFCreateDevice(hidDevice: io_service_t, _ pDeviceReference: UnsafeMutablePointer<FFDeviceObjectReference>) -> HRESULT
func FFReleaseDevice(deviceReference: FFDeviceObjectReference) -> HRESULT
func FFIsForceFeedback(hidDevice: io_service_t) -> HRESULT
func FFDeviceCreateEffect(deviceReference: FFDeviceObjectReference, _ uuidRef: CFUUID!, _ pEffectDefinition: UnsafeMutablePointer<FFEFFECT>, _ pEffectReference: UnsafeMutablePointer<FFEffectObjectReference>) -> HRESULT
func FFDeviceReleaseEffect(deviceReference: FFDeviceObjectReference, _ effectReference: FFEffectObjectReference) -> HRESULT
func FFDeviceEscape(deviceReference: FFDeviceObjectReference, _ pFFEffectEscape: UnsafeMutablePointer<FFEFFESCAPE>) -> HRESULT
func FFDeviceGetForceFeedbackState(deviceReference: FFDeviceObjectReference, _ pFFState: UnsafeMutablePointer<FFState>) -> HRESULT
func FFDeviceSendForceFeedbackCommand(deviceReference: FFDeviceObjectReference, _ flags: FFCommandFlag) -> HRESULT
func FFDeviceSetForceFeedbackProperty(deviceReference: FFDeviceObjectReference, _ property: FFProperty, _ pValue: UnsafeMutablePointer<Void>) -> HRESULT
func FFDeviceGetForceFeedbackProperty(deviceReference: FFDeviceObjectReference, _ property: FFProperty, _ pValue: UnsafeMutablePointer<Void>, _ valueSize: IOByteCount) -> HRESULT
func FFDeviceSetCooperativeLevel(deviceReference: FFDeviceObjectReference, _ taskIdentifier: UnsafeMutablePointer<Void>, _ flags: FFCooperativeLevelFlag) -> HRESULT
func FFDeviceGetForceFeedbackCapabilities(deviceReference: FFDeviceObjectReference, _ pFFCapabilities: UnsafeMutablePointer<FFCAPABILITIES>) -> HRESULT
func FFEffectDownload(effectReference: FFEffectObjectReference) -> HRESULT
func FFEffectEscape(effectReference: FFEffectObjectReference, _ pFFEffectEscape: UnsafeMutablePointer<FFEFFESCAPE>) -> HRESULT
func FFEffectGetEffectStatus(effectReference: FFEffectObjectReference, _ pFlags: UnsafeMutablePointer<FFEffectStatusFlag>) -> HRESULT
func FFEffectGetParameters(effectReference: FFEffectObjectReference, _ pFFEffect: UnsafeMutablePointer<FFEFFECT>, _ flags: FFEffectParameterFlag) -> HRESULT
func FFEffectSetParameters(effectReference: FFEffectObjectReference, _ pFFEffect: UnsafeMutablePointer<FFEFFECT>, _ flags: FFEffectParameterFlag) -> HRESULT
func FFEffectStart(effectReference: FFEffectObjectReference, _ iterations: UInt32, _ flags: FFEffectStartFlag) -> HRESULT
func FFEffectStop(effectReference: FFEffectObjectReference) -> HRESULT
func FFEffectUnload(effectReference: FFEffectObjectReference) -> HRESULT
