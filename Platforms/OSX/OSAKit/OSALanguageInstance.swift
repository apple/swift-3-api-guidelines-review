
class OSALanguageInstance : Object {
  init(language: OSALanguage)
  var language: OSALanguage { get }
  var componentInstance: ComponentInstance { get }
  @available(OSX 10.10, *)
  var defaultTarget: AppleEventDescriptor?
  @available(OSX 10.10, *)
  func richTextFrom(descriptor: AppleEventDescriptor) -> AttributedString?
  init()
}
