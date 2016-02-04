
struct ByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UseDefault: ByteCountFormatterUnits { get }
  static var UseBytes: ByteCountFormatterUnits { get }
  static var UseKB: ByteCountFormatterUnits { get }
  static var UseMB: ByteCountFormatterUnits { get }
  static var UseGB: ByteCountFormatterUnits { get }
  static var UseTB: ByteCountFormatterUnits { get }
  static var UsePB: ByteCountFormatterUnits { get }
  static var UseEB: ByteCountFormatterUnits { get }
  static var UseZB: ByteCountFormatterUnits { get }
  static var UseYBOrHigher: ByteCountFormatterUnits { get }
  static var UseAll: ByteCountFormatterUnits { get }
}
enum ByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case File
  case Memory
  case Decimal
  case Binary
}
@available(OSX 10.8, *)
class ByteCountFormatter : Formatter {
  class func stringFromByteCount(byteCount: Int64, countStyle: ByteCountFormatterCountStyle) -> String
  func stringFromByteCount(byteCount: Int64) -> String
  var allowedUnits: ByteCountFormatterUnits
  var countStyle: ByteCountFormatterCountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var isAdaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  init()
  init?(coder aDecoder: Coder)
}
