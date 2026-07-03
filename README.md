# Headless-iOS v1.2.2

Quickstart Guide (iOS)
---


The iOS Embedded Payment SDK provides the same core payment APIs and capabilities as Android, but **does not support UI customization**. The reader UI is handled by iOS system.

You can find the example project [here via GitHub](https://github.com/theminesec/ms-example-headless-ios).

For the full SDK API guide, see [api-guide.md](api-guide.md).


## iOS Embedded Payment SDK Quickstart

### Add dependency via Swift Package Manager

Add the Embedded Payment SDK package following these steps

- File → Add Package Dependencies
- Paste this link https://github.com/theminesec/ms-registry-ios
- Keep the selection on latest version v1.2.2 and click Add Package

### Start Pre-requisite
1. You’ll need Tap to Pay [entitlement](https://developer.apple.com/documentation/ProximityReader/setting-up-the-entitlement-for-tap-to-pay-on-iPhone) before you can use the iOS Embedded Payment SDK.
2. For developer, please download and install [iOS Certification configuration file](https://register-docs.apple.com/tap-to-pay-on-iphone/docs/appendix-connectivity-and-certificates#device-to-server-connectivity) for development and testing

### License File Setup

Before initializing the Embedded Payment SDK and reader, you need to include a license file in your iOS project.

- Place your license file, e.g., `public-test.license`, into your Xcode project bundle (e.g.,root of your target).
- Ensure that the file is included in the app target.


### Initialize SDK and reader

```swift
@State private var service = HeadlessService()

Task {
    let result = await service.initSoftPOS(profileId: "prof_01K1FKGYYT5EMAYJZEDDBMJHQ4", licenseFile: "public-test")
    switch result {
    case .success(let info):
        print("✅ Reader initialized with ID: \(info.headlessId)")
        print("Version: \(info.headlessVersion)")
        print("License ID: \(info.licenseId)")
        print("Customer ID: \(info.customerId)")
        // Start observing events
        Task {
            for await event in service.events {
                print("📡 Event: \(event)")
            }
        }
    case .failure(let error):
        print("❌ Init failed: \(error)")
    }
}
```

### Launch card reading action [Sale, Refund, Pre-Auth]

```swift
let poi = PoiRequest(
    tranType: .sale, //.refund, .auth
    amount: Amount(value: "100", currency: "USD"),
    profileId: "prof_01K8SFE6NZ0NDD6FR1K52DT8V7",
    posReference: getPosReference(),
    cvmSignatureMode: .signOnPaper
)

let result = await service.launchPayment(poi)
switch result {
case .success(let success):
    print("✅ Transaction Completed, tranId: \(success.tranId)")
    let encoder = JSONEncoder()
    encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
    if let jsonData = try? encoder.encode(success),
       let jsonString = String(data: jsonData, encoding: .utf8) {
        print("TransactionResponse:\n\(jsonString)")
    }
case .failure(let error):
    print("❌ Transaction failed: \(error)")
}
```

### Launch other actions

```swift
// Void last transaction
await service.actionVoid(tranId: "lastTranId")

// Linked refund
await service.actionLinkedRefund(tranId: "lastTranId")

// Auth completion
await service.actionAuthComp(tranId: "lastTranId", amount: amount)

// Query transaction
await service.actionQuery(tranId: "lastTranId")
```
