
@available(tvOS 9.0, *)
class CISampler : Object, Copying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [Object : AnyObject]? = [:])
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
  convenience init()
  @available(tvOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
let kCISamplerAffineMatrix: String
@available(tvOS 9.0, *)
let kCISamplerWrapMode: String
@available(tvOS 9.0, *)
let kCISamplerFilterMode: String
@available(tvOS 9.0, *)
let kCISamplerWrapBlack: String
@available(tvOS 9.0, *)
let kCISamplerWrapClamp: String
@available(tvOS 9.0, *)
let kCISamplerFilterNearest: String
@available(tvOS 9.0, *)
let kCISamplerFilterLinear: String
@available(tvOS 9.0, *)
let kCISamplerColorSpace: String
