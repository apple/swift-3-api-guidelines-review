
@available(tvOS 9.0, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveForPlayer(_ player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveForPlayer(_ player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  @available(tvOS 9.0, *)
  var gameModel: GKGameModel?
  @available(tvOS 9.0, *)
  var randomSource: GKRandom?
  @available(tvOS 9.0, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
