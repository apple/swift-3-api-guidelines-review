
enum UIPrintInfoOutputType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case general
  case photo
  case grayscale
  @available(iOS 7.0, *)
  case photoGrayscale
}
enum UIPrintInfoOrientation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case portrait
  case landscape
}
enum UIPrintInfoDuplex : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case longEdge
  case shortEdge
}
@available(iOS 4.2, *)
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  class func printInfo() -> UIPrintInfo
  /*not inherited*/ init(dictionary dictionary: [NSObject : AnyObject]?)
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfoOutputType
  var orientation: UIPrintInfoOrientation
  var duplex: UIPrintInfoDuplex
  @available(iOS 4.2, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.2, *)
  func encode(with aCoder: NSCoder)
}
