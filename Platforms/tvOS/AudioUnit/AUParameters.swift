
typealias AUValue = Float
typealias AUParameterAddress = UInt64
struct AURecordedParameterEvent {
  var hostTime: UInt64
  var address: AUParameterAddress
  var value: AUValue
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue)
}
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void
typealias AUParameterObserverToken = UnsafeMutablePointer<Void>
@available(tvOS 9.0, *)
class AUParameterNode : Object {
  var identifier: String { get }
  var keyPath: String { get }
  var displayName: String { get }
  func displayNameWithLength(maximumLength: Int) -> String
  func tokenByAddingParameterObserver(observer: AUParameterObserver) -> AUParameterObserverToken
  func tokenByAddingParameterRecordingObserver(observer: AUParameterRecordingObserver) -> AUParameterObserverToken
  func removeParameterObserver(token: AUParameterObserverToken)
  init()
}
@available(tvOS 9.0, *)
class AUParameterGroup : AUParameterNode, SecureCoding {
  var children: [AUParameterNode] { get }
  var allParameters: [AUParameter] { get }
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
class AUParameterTree : AUParameterGroup, SecureCoding {
  func parameterWithAddress(address: AUParameterAddress) -> AUParameter?
  func parameterWithID(paramID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement) -> AUParameter?
  init()
  init?(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
class AUParameter : AUParameterNode, SecureCoding {
  var minValue: AUValue { get }
  var maxValue: AUValue { get }
  var unit: AudioUnitParameterUnit { get }
  var unitName: String? { get }
  var flags: AudioUnitParameterOptions { get }
  var address: AUParameterAddress { get }
  var valueStrings: [String]? { get }
  var dependentParameters: [Number]? { get }
  var value: AUValue
  func setValue(value: AUValue, originator: AUParameterObserverToken)
  func setValue(value: AUValue, originator: AUParameterObserverToken, atHostTime hostTime: UInt64)
  func stringFromValue(value: UnsafePointer<AUValue>) -> String
  func valueFrom(string: String) -> AUValue
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
