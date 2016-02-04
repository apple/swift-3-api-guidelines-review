
@available(OSX 10.11, *)
class NWHostEndpoint : NWEndpoint {
  @available(OSX 10.11, *)
  convenience init(hostname: String, port: String)
  @available(OSX 10.11, *)
  var hostname: String { get }
  @available(OSX 10.11, *)
  var port: String { get }
  init()
}
