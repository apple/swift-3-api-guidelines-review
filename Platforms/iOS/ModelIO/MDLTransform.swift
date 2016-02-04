
@available(iOS 9.0, *)
protocol MDLTransformComponent : MDLComponent {
  var matrix: matrix_float4x4 { get set }
  var minimumTime: NSTimeInterval { get }
  var maximumTime: NSTimeInterval { get }
  optional func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)
  optional func setLocalTransform(transform: matrix_float4x4)
  optional func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4
  optional static func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
@available(iOS 9.0, *)
class MDLTransform : NSObject, MDLTransformComponent {
  init(identity: ())
  convenience init(transformComponent component: MDLTransformComponent)
  convenience init(matrix: matrix_float4x4)
  func setIdentity()
  func translationAtTime(time: NSTimeInterval) -> vector_float3
  func rotationAtTime(time: NSTimeInterval) -> vector_float3
  func shearAtTime(time: NSTimeInterval) -> vector_float3
  func scaleAtTime(time: NSTimeInterval) -> vector_float3
  func setTranslation(translation: vector_float3, forTime time: NSTimeInterval)
  func setRotation(rotation: vector_float3, forTime time: NSTimeInterval)
  func setShear(shear: vector_float3, forTime time: NSTimeInterval)
  func setScale(scale: vector_float3, forTime time: NSTimeInterval)
  func rotationMatrixAtTime(time: NSTimeInterval) -> matrix_float4x4
  var translation: vector_float3
  var rotation: vector_float3
  var shear: vector_float3
  var scale: vector_float3
  convenience init()
  @available(iOS 9.0, *)
  var matrix: matrix_float4x4
  @available(iOS 9.0, *)
  var minimumTime: NSTimeInterval { get }
  @available(iOS 9.0, *)
  var maximumTime: NSTimeInterval { get }
  @available(iOS 9.0, *)
  func setLocalTransform(transform: matrix_float4x4, forTime time: NSTimeInterval)
  @available(iOS 9.0, *)
  func setLocalTransform(transform: matrix_float4x4)
  @available(iOS 9.0, *)
  func localTransformAtTime(time: NSTimeInterval) -> matrix_float4x4
  @available(iOS 9.0, *)
  class func globalTransformWithObject(object: MDLObject, atTime time: NSTimeInterval) -> matrix_float4x4
}
