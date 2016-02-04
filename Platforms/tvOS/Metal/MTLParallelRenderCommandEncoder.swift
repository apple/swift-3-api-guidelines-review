
@available(tvOS 8.0, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func renderCommandEncoder() -> MTLRenderCommandEncoder
}
