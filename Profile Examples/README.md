# Profile Examples

Here are the before-and-afters for both profiles used during my presentation.

### macOS - Security & Privacy

- [FileVaultOriginal.mobileconfig](https://github.com/iMatthewCM/RollYourOwnConfigProfile/blob/master/Profile%20Examples/FileVaultOriginal.mobileconfig) is how the Security & Privacy profile originally looked after being downloaded from the server, with its signing removed

- [FileVaultModified.mobileconfig](https://github.com/iMatthewCM/RollYourOwnConfigProfile/blob/master/Profile%20Examples/FileVaultModified.mobileconfig) is the result of removing all non-FileVault key/value pairs from the original profile

### Mobile Devices - Single App Mode

- [VoiceControlOriginal.mobileconfig](https://github.com/iMatthewCM/RollYourOwnConfigProfile/blob/master/Profile%20Examples/VoiceControlOriginal.mobileconfig) is how the Single App Mode profile originally looked after being downloaded from the server, with its signing removed

- [VoiceControlModified.mobileconfig](https://github.com/iMatthewCM/RollYourOwnConfigProfile/blob/master/Profile%20Examples/VoiceControlModified.mobileconfig) is the result of injecting additional key/value pairs into the profile to enable the Voice Control functionality in the Single App Mode payload for Mobile Devices prior to Jamf Pro 10.16
