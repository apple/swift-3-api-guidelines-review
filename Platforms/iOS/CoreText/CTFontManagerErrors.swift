
@available(iOS 3.2, *)
let kCTFontManagerErrorDomain: CFString
@available(iOS 3.2, *)
let kCTFontManagerErrorFontURLsKey: CFString
enum CTFontManagerError : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case FileNotFound
  case InsufficientPermissions
  case UnrecognizedFormat
  case InvalidFontData
  case AlreadyRegistered
  case NotRegistered
  case InUse
  case SystemRequired
}
