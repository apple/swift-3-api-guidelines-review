
enum UIDeviceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case portrait
  case portraitUpsideDown
  case landscapeLeft
  case landscapeRight
  case faceUp
  case faceDown
}

extension UIDeviceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
enum UIDeviceBatteryState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case unplugged
  case charging
  case full
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  @available(iOS 3.2, *)
  case phone
  @available(iOS 3.2, *)
  case pad
  @available(iOS 9.0, *)
  case TV
}
func UIDeviceOrientationIsPortrait(orientation: UIDeviceOrientation) -> Bool
func UIDeviceOrientationIsLandscape(orientation: UIDeviceOrientation) -> Bool
@available(iOS 2.0, *)
class UIDevice : Object {
  class func current() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  @available(iOS 6.0, *)
  var identifierForVendor: UUID? { get }
  var isGeneratingDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  @available(iOS 3.0, *)
  var isBatteryMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var batteryState: UIDeviceBatteryState { get }
  @available(iOS 3.0, *)
  var batteryLevel: Float { get }
  @available(iOS 3.0, *)
  var isProximityMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var proximityState: Bool { get }
  @available(iOS 4.0, *)
  var isMultitaskingSupported: Bool { get }
  @available(iOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 4.2, *)
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : ObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
let UIDeviceOrientationDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryStateDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryLevelDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceProximityStateDidChangeNotification: String
