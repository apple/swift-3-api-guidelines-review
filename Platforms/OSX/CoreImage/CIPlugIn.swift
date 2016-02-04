
@available(OSX 10.4, *)
class CIPlugIn : Object {
  class func loadAllPlugIns()
  class func loadNonExecutablePlugIns()
  @available(OSX 10.7, *)
  class func load(url: URL!, allowExecutableCode: Bool)
  init()
}
