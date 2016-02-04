
var kAUParameterListener_AnyParameter: AudioUnitParameterID { get }
enum AudioUnitEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ParameterValueChange
  case BeginParameterChangeGesture
  case EndParameterChangeGesture
  case PropertyChange
}
typealias AUParameterListenerRef = COpaquePointer
typealias AUEventListenerRef = AUParameterListenerRef
struct AudioUnitEvent {
  struct __Unnamed_union_mArgument {
    var mParameter: AudioUnitParameter
    var mProperty: AudioUnitProperty
    init(mParameter: AudioUnitParameter)
    init(mProperty: AudioUnitProperty)
    init()
  }
  var mEventType: AudioUnitEventType
  var mArgument: AudioUnitEvent.__Unnamed_union_mArgument
  init()
  init(mEventType: AudioUnitEventType, mArgument: AudioUnitEvent.__Unnamed_union_mArgument)
}
typealias AUParameterListenerBlock = (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void
typealias AUEventListenerBlock = (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void
typealias AUParameterListenerProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void
typealias AUEventListenerProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void
@available(OSX 10.6, *)
func AUListenerCreateWithDispatchQueue(outListener: UnsafeMutablePointer<AUParameterListenerRef>, _ inNotificationInterval: Float32, _ inDispatchQueue: dispatch_queue_t, _ inBlock: AUParameterListenerBlock) -> OSStatus
@available(OSX 10.2, *)
func AUListenerCreate(inProc: AUParameterListenerProc, _ inUserData: UnsafeMutablePointer<Void>, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ outListener: UnsafeMutablePointer<AUParameterListenerRef>) -> OSStatus
@available(OSX 10.2, *)
func AUListenerDispose(inListener: AUParameterListenerRef) -> OSStatus
@available(OSX 10.2, *)
func AUListenerAddParameter(inListener: AUParameterListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(OSX 10.2, *)
func AUListenerRemoveParameter(inListener: AUParameterListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(OSX 10.2, *)
func AUParameterSet(inSendingListener: AUParameterListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inValue: AudioUnitParameterValue, _ inBufferOffsetInFrames: UInt32) -> OSStatus
@available(OSX 10.2, *)
func AUParameterListenerNotify(inSendingListener: AUParameterListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(OSX 10.6, *)
func AUEventListenerCreateWithDispatchQueue(outListener: UnsafeMutablePointer<AUEventListenerRef>, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ inDispatchQueue: dispatch_queue_t, _ inBlock: AUEventListenerBlock) -> OSStatus
@available(OSX 10.3, *)
func AUEventListenerCreate(inProc: AUEventListenerProc, _ inUserData: UnsafeMutablePointer<Void>, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ outListener: UnsafeMutablePointer<AUEventListenerRef>) -> OSStatus
@available(OSX 10.3, *)
func AUEventListenerAddEventType(inListener: AUEventListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(OSX 10.3, *)
func AUEventListenerRemoveEventType(inListener: AUEventListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(OSX 10.3, *)
func AUEventListenerNotify(inSendingListener: AUEventListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(OSX 10.2, *)
func AUParameterValueFromLinear(inLinearValue: Float32, _ inParameter: UnsafePointer<AudioUnitParameter>) -> AudioUnitParameterValue
@available(OSX 10.2, *)
func AUParameterValueToLinear(inParameterValue: AudioUnitParameterValue, _ inParameter: UnsafePointer<AudioUnitParameter>) -> Float32
@available(OSX 10.2, *)
func AUParameterFormatValue(inParameterValue: Float64, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inTextBuffer: UnsafeMutablePointer<Int8>, _ inDigits: UInt32) -> UnsafeMutablePointer<Int8>
