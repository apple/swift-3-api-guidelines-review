
@available(OSX 10.11, *)
class MTLVertexAttribute : Object {
  var name: String? { get }
  var attributeIndex: Int { get }
  @available(OSX 10.11, *)
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  init()
}
@available(OSX 10.11, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Fragment
  case Kernel
}
@available(OSX 10.11, *)
protocol MTLFunction : ObjectProtocol {
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  var name: String { get }
}
@available(OSX 10.11, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Version1_1
}
@available(OSX 10.11, *)
class MTLCompileOptions : Object, Copying {
  var preprocessorMacros: [String : Object]?
  var fastMathEnabled: Bool
  @available(OSX 10.11, *)
  var languageVersion: MTLLanguageVersion
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
let MTLLibraryErrorDomain: String
@available(OSX 10.11, *)
enum MTLLibraryError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unsupported
  case Internal
  case CompileFailure
  case CompileWarning
}
let MTLRenderPipelineErrorDomain: String
@available(OSX 10.11, *)
enum MTLRenderPipelineError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Internal
  case Unsupported
  case InvalidInput
}
@available(OSX 10.11, *)
protocol MTLLibrary : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func newFunctionWith(name functionName: String) -> MTLFunction?
  var functionNames: [String] { get }
}
