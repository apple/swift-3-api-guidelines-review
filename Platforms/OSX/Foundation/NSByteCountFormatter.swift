
struct NSByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: NSByteCountFormatterUnits { get }
  static var UseBytes: NSByteCountFormatterUnits { get }
  static var UseKB: NSByteCountFormatterUnits { get }
  static var UseMB: NSByteCountFormatterUnits { get }
  static var UseGB: NSByteCountFormatterUnits { get }
  static var UseTB: NSByteCountFormatterUnits { get }
  static var UsePB: NSByteCountFormatterUnits { get }
  static var UseEB: NSByteCountFormatterUnits { get }
  static var UseZB: NSByteCountFormatterUnits { get }
  static var UseYBOrHigher: NSByteCountFormatterUnits { get }
  static var UseAll: NSByteCountFormatterUnits { get }
}
enum NSByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
@available(OSX 10.8, *)
class NSByteCountFormatter : NSFormatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: NSByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: NSByteCountFormatterUnits
  var countStyle: NSByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var adaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  init()
  init?(coder aDecoder: NSCoder)
}
