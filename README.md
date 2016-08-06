### Elegant Controls in Swift With Closures

#### Author: Bart Jacobs

In [yesterday's tutorial](https://cocoacasts.com/references-delegation-and-notifications/), I showed you how to use closures as an alternative to delegate protocols. Closures—or blocks in Objective-C—are incredibly useful and I frequently use them as an alternative to existing design patterns. One such pattern is the **target-action** pattern.

## What Is It?

The target-action pattern is one of the most common Cocoa design patterns.

> Target-action is a design pattern in which an object holds the information necessary to send a message to another object when an event occurs. — [iOS Developer Library](https://developer.apple.com/library/ios/documentation/General/Conceptual/Devpedia-CocoaApp/TargetAction.html)

The sending object keeps a reference to the message it needs to send and the object it needs to send the message to. That is how buttons and other Cocoa controls work, for example. Take a look at the following example.

```language-swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        button.addTarget(self, action: #selector(didTapButton(_:)), forControlEvents: .TouchUpInside)
    }

    // MARK: - Actions

    @IBAction func didTapButton(sender: UIButton) {

    }

}
```

In this example, `button` is the sender and `self`, a `ViewController` instance, is the target or receiver. When the button detects a `.TouchUpInside` event, it sends a `didTapButton(_:)` message to the view controller. The result is that the `didTapButton(_:)` action is invoked on the view controller.

**Read this article on the [blog](https://cocoacasts.com/elegant-controls-in-swift-with-closures/)**.
