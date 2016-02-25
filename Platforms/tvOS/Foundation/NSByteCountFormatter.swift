
struct NSByteCountFormatterUnits : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
@available(tvOS 6.0, *)
class NSByteCountFormatter : NSFormatter {
  class func stringFromByteCount(_ byteCount: Int64, countStyle countStyle: NSByteCountFormatterCountStyle) -> String
  func stringFromByteCount(_ byteCount: Int64) -> String
  var allowedUnits: NSByteCountFormatterUnits
  var countStyle: NSByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var adaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(tvOS 8.0, *)
  var formattingContext: NSFormattingContext
}
