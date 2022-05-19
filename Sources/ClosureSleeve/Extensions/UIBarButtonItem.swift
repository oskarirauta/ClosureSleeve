import UIKit

extension UIBarButtonItem {
    
    /// Add closure to UIBarButtonItem
    ///
    /// - Parameters:
    ///   - execute: closure.
    public func add(_ execute: (() -> (Void))? ) {
        self.target = execute == nil ? nil : ClosureSleeve(for: self, execute!)
        self.action = execute == nil ? nil : #selector(ClosureSleeve.invoke)
        }
    
}
