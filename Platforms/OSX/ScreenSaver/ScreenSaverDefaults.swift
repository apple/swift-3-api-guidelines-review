
class ScreenSaverDefaults : NSUserDefaults {
  convenience init?(forModuleWithName inModuleName: String)
  convenience init()
  @available(OSX 10.9, *)
  init?(suiteName suitename: String?)
}
