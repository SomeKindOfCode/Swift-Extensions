import UIKit

extension UIViewController {
    /// Get a parent view controller of a specific type.
    /// The search is recursive
    func parent<T: UIViewController>(of type: T.Type) -> T? {
        if let d = self.parent as? T {
            return d
        } else {
            return self.parent?.parent(of: type)
        }
    }
}

/*
// self is a UIViewController instance
let myFrame = self.parent(of: MyPageViewController.self)
// myFrame is of the type `MyPageViewController?`
*/
