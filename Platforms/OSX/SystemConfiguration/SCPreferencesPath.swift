
@available(OSX 10.1, *)
func SCPreferencesPathCreateUniqueChild(prefs: SCPreferences, _ prefix: CFString) -> CFString?
@available(OSX 10.1, *)
func SCPreferencesPathGetValue(prefs: SCPreferences, _ path: CFString) -> CFDictionary?
@available(OSX 10.1, *)
func SCPreferencesPathGetLink(prefs: SCPreferences, _ path: CFString) -> CFString?
@available(OSX 10.1, *)
func SCPreferencesPathSetValue(prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool
@available(OSX 10.1, *)
func SCPreferencesPathSetLink(prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool
@available(OSX 10.1, *)
func SCPreferencesPathRemoveValue(prefs: SCPreferences, _ path: CFString) -> Bool
