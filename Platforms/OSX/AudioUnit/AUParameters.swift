
typealias AUValue = Float
typealias AUParameterAddress = UInt64
struct AURecordedParameterEvent {
  var hostTime: UInt64
  var address: AUParameterAddress
  var value: AUValue
  init()
  init(hostTime hostTime: UInt64, address address: AUParameterAddress, value value: AUValue)
}
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void
typealias AUParameterObserverToken = UnsafeMutablePointer<Void>
@available(OSX 10.11, *)
class AUParameterNode : NSObject {
  var identifier: String { get }
  var keyPath: String { get }
  var displayName: String { get }
  func displayNameWithLength(_ maximumLength: Int) -> String
  func tokenByAddingParameterObserver(_ observer: AUParameterObserver) -> AUParameterObserverToken
  func tokenByAddingParameterRecordingObserver(_ observer: AUParameterRecordingObserver) -> AUParameterObserverToken
  func removeParameterObserver(_ token: AUParameterObserverToken)
}
@available(OSX 10.11, *)
class AUParameterGroup : AUParameterNode, NSSecureCoding {
  var children: [AUParameterNode] { get }
  var allParameters: [AUParameter] { get }
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class AUParameterTree : AUParameterGroup, NSSecureCoding {
  func parameterWithAddress(_ address: AUParameterAddress) -> AUParameter?
  func parameterWithID(_ paramID: AudioUnitParameterID, scope scope: AudioUnitScope, element element: AudioUnitElement) -> AUParameter?
}
@available(OSX 10.11, *)
class AUParameter : AUParameterNode, NSSecureCoding {
  var minValue: AUValue { get }
  var maxValue: AUValue { get }
  var unit: AudioUnitParameterUnit { get }
  var unitName: String? { get }
  var flags: AudioUnitParameterOptions { get }
  var address: AUParameterAddress { get }
  var valueStrings: [String]? { get }
  var dependentParameters: [NSNumber]? { get }
  var value: AUValue
  func setValue(_ value: AUValue, originator originator: AUParameterObserverToken)
  func setValue(_ value: AUValue, originator originator: AUParameterObserverToken, atHostTime hostTime: UInt64)
  func stringFromValue(_ value: UnsafePointer<AUValue>) -> String
  func valueFromString(_ string: String) -> AUValue
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
