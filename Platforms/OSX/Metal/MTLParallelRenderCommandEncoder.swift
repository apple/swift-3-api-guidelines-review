
@available(OSX 10.11, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func renderCommandEncoder() -> MTLRenderCommandEncoder
}
