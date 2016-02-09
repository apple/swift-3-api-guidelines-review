
enum AURenderEventType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case parameter
  case parameterRamp
  case MIDI
  case midiSysEx
}
struct AURenderEventHeader {
  var next: UnsafeMutablePointer<AURenderEvent>
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: UInt8
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8)
}
struct AUParameterEvent {
  var next: UnsafeMutablePointer<AURenderEvent>
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: (UInt8, UInt8, UInt8)
  var rampDurationSampleFrames: AUAudioFrameCount
  var parameterAddress: AUParameterAddress
  var value: AUValue
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: (UInt8, UInt8, UInt8), rampDurationSampleFrames: AUAudioFrameCount, parameterAddress: AUParameterAddress, value: AUValue)
}
struct AUMIDIEvent {
  var next: UnsafeMutablePointer<AURenderEvent>
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: UInt8
  var length: UInt16
  var cable: UInt8
  var data: (UInt8, UInt8, UInt8)
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8, length: UInt16, cable: UInt8, data: (UInt8, UInt8, UInt8))
}
struct AURenderEvent {
  var head: AURenderEventHeader
  var parameter: AUParameterEvent
  var MIDI: AUMIDIEvent
  init(head: AURenderEventHeader)
  init(parameter: AUParameterEvent)
  init(MIDI: AUMIDIEvent)
  init()
}
typealias AUInternalRenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AURenderEvent>, AURenderPullInputBlock?) -> AUAudioUnitStatus
extension AUAudioUnit {
  class func registerSubclass(cls: AnyClass, as componentDescription: AudioComponentDescription, name: String, version: UInt32)
  var internalRenderBlock: AUInternalRenderBlock { get }
  func setRenderResourcesAllocated(flag: Bool)
}
extension AUAudioUnitBus {
  var supportedChannelCounts: [Number]?
  var maximumChannelCount: AUAudioChannelCount
}
extension AUAudioUnitBusArray {
  func replaceBusses(busArray: [AUAudioUnitBus])
}
extension AUParameterTree {
  class func createParameter(withIdentifier identifier: String, name: String, address: AUParameterAddress, min: AUValue, max: AUValue, unit: AudioUnitParameterUnit, unitName: String?, flags: AudioUnitParameterOptions = [], valueStrings: [String]?, dependentParameters: [Number]?) -> AUParameter
  class func createGroup(withIdentifier identifier: String, name: String, children: [AUParameterNode]) -> AUParameterGroup
  class func createGroupTemplate(children: [AUParameterNode]) -> AUParameterGroup
  class func createGroup(fromTemplate templateGroup: AUParameterGroup, identifier: String, name: String, addressOffset: AUParameterAddress) -> AUParameterGroup
  class func createTree(withChildren children: [AUParameterNode]) -> AUParameterTree
}
typealias AUImplementorValueObserver = (AUParameter, AUValue) -> Void
typealias AUImplementorValueProvider = (AUParameter) -> AUValue
typealias AUImplementorStringFromValueCallback = (AUParameter, UnsafePointer<AUValue>) -> String
typealias AUImplementorValueFromStringCallback = (AUParameter, String) -> AUValue
typealias AUImplementorDisplayNameWithLengthCallback = (AUParameterNode, Int) -> String
extension AUParameterNode {
  var implementorValueObserver: AUImplementorValueObserver
  var implementorValueProvider: AUImplementorValueProvider
  var implementorStringFromValueCallback: AUImplementorStringFromValueCallback
  var implementorValueFromStringCallback: AUImplementorValueFromStringCallback
  var implementorDisplayNameWithLengthCallback: AUImplementorDisplayNameWithLengthCallback
}
@available(OSX 10.11, *)
class AUAudioUnitV2Bridge : AUAudioUnit {
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = []) throws
  convenience init(componentDescription: AudioComponentDescription) throws
}
protocol AUAudioUnitFactory : ExtensionRequestHandling {
  @available(OSX 10.11, *)
  func createAudioUnit(withComponentDescription desc: AudioComponentDescription) throws -> AUAudioUnit
}
