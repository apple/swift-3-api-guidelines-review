
class SKVideoNode : SKNode {
  @available(tvOS, introduced=7.0, deprecated=8.0)
  init(videoFileNamed videoFile: String)
  @available(tvOS 8.0, *)
  init(fileNamed videoFile: String)
  @available(tvOS, introduced=7.0, deprecated=8.0)
  init(videoURL url: NSURL)
  @available(tvOS 8.0, *)
  init(url url: NSURL)
  init?(coder aDecoder: NSCoder)
  func play()
  func pause()
  var size: CGSize
  var anchorPoint: CGPoint
  convenience init()
}
