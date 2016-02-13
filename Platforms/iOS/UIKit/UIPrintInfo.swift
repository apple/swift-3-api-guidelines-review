
enum UIPrintInfoOutputType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case general
  case photo
  case grayscale
  @available(iOS 7.0, *)
  case photoGrayscale
}
enum UIPrintInfoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case portrait
  case landscape
}
enum UIPrintInfoDuplex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case longEdge
  case shortEdge
}
@available(iOS 4.2, *)
class UIPrintInfo : Object, Copying, Coding {
  init?(coder aDecoder: Coder)
  class func printInfo() -> UIPrintInfo
  /*not inherited*/ init(dictionary: [Object : AnyObject]?)
  func dictionaryRepresentation() -> [Object : AnyObject]
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfoOutputType
  var orientation: UIPrintInfoOrientation
  var duplex: UIPrintInfoDuplex
  convenience init()
  @available(iOS 4.2, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 4.2, *)
  func encode(with aCoder: Coder)
}
