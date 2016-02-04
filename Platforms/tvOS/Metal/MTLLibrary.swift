
@available(tvOS 8.0, *)
class MTLVertexAttribute : NSObject {
  var name: String? { get }
  var attributeIndex: Int { get }
  @available(tvOS 8.3, *)
  var attributeType: MTLDataType { get }
  var active: Bool { get }
  init()
}
@available(tvOS 8.0, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Fragment
  case Kernel
}
@available(tvOS 8.0, *)
protocol MTLFunction : NSObjectProtocol {
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  var name: String { get }
}
@available(tvOS 9.0, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case Version1_0
  case Version1_1
}
@available(tvOS 8.0, *)
class MTLCompileOptions : NSObject, NSCopying {
  var preprocessorMacros: [String : NSObject]?
  var fastMathEnabled: Bool
  @available(tvOS 9.0, *)
  var languageVersion: MTLLanguageVersion
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
let MTLLibraryErrorDomain: String
@available(tvOS 8.0, *)
enum MTLLibraryError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unsupported
  case Internal
  case CompileFailure
  case CompileWarning
}
let MTLRenderPipelineErrorDomain: String
@available(tvOS 8.0, *)
enum MTLRenderPipelineError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Internal
  case Unsupported
  case InvalidInput
}
@available(tvOS 8.0, *)
protocol MTLLibrary : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func newFunctionWithName(functionName: String) -> MTLFunction?
  var functionNames: [String] { get }
}
