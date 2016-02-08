
struct ByteCountFormatterUnits : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var useDefault: ByteCountFormatterUnits { get }
  static var useBytes: ByteCountFormatterUnits { get }
  static var useKB: ByteCountFormatterUnits { get }
  static var useMB: ByteCountFormatterUnits { get }
  static var useGB: ByteCountFormatterUnits { get }
  static var useTB: ByteCountFormatterUnits { get }
  static var usePB: ByteCountFormatterUnits { get }
  static var useEB: ByteCountFormatterUnits { get }
  static var useZB: ByteCountFormatterUnits { get }
  static var useYBOrHigher: ByteCountFormatterUnits { get }
  static var useAll: ByteCountFormatterUnits { get }
}
enum ByteCountFormatterCountStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case file
  case memory
  case decimal
  case binary
}
@available(tvOS 6.0, *)
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
  @available(tvOS 8.0, *)
  var formattingContext: FormattingContext
  init()
  init?(coder aDecoder: Coder)
}
