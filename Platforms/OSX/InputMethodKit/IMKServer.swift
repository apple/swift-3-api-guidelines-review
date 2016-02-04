
let IMKModeDictionary: String
let IMKControllerClass: String
let IMKDelegateClass: String
class IMKServer : Object {
  init!(name: String!, bundleIdentifier: String!)
  init!(name: String!, controllerClass controllerClassID: AnyClass!, delegateClass delegateClassID: AnyClass!)
  func bundle() -> Bundle!
  @available(OSX 10.7, *)
  func paletteWillTerminate() -> Bool
  @available(OSX 10.7, *)
  func lastKeyEventWasDeadKey() -> Bool
  init()
}
