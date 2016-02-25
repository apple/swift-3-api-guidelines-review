
@available(iOS 7.0, *)
func CTFontManagerCreateFontDescriptorsFromURL(_ fileURL: CFURL) -> CFArray?
@available(iOS 7.0, *)
func CTFontManagerCreateFontDescriptorFromData(_ data: CFData) -> CTFontDescriptor?
enum CTFontManagerScope : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Process
  case User
  case Session
}
@available(iOS 4.1, *)
func CTFontManagerRegisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS 4.1, *)
func CTFontManagerUnregisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS 4.1, *)
func CTFontManagerRegisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS 4.1, *)
func CTFontManagerUnregisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS 4.1, *)
func CTFontManagerRegisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
@available(iOS 4.1, *)
func CTFontManagerUnregisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case Disabled
  case Enabled
  case PromptUser
}
@available(iOS 7.0, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
