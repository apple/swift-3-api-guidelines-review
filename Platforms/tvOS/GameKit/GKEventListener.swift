
protocol GKChallengeListener : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
