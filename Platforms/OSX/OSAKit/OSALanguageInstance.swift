
class OSALanguageInstance : NSObject {
  init(language: OSALanguage)
  var language: OSALanguage { get }
  var componentInstance: ComponentInstance { get }
  @available(OSX 10.10, *)
  var defaultTarget: NSAppleEventDescriptor?
  @available(OSX 10.10, *)
  func richTextFromDescriptor(descriptor: NSAppleEventDescriptor) -> NSAttributedString?
  init()
}
