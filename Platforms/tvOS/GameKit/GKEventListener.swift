
protocol GKChallengeListener : ObjectProtocol {
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlay challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didReceive challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didComplete challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
