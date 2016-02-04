
struct TclPlatStubs {
  var magic: Int32
  var hooks: COpaquePointer
  init()
}
var tclPlatStubsPtr: UnsafeMutablePointer<TclPlatStubs>
