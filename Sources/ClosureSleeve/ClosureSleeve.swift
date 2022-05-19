import Foundation

public final class ClosureSleeve {
    
    let closure: () -> Void

    init(for object: AnyObject, _ closure: @escaping () -> Void) {
        
        self.closure = closure
        
        objc_setAssociatedObject(
            object,
            String(format: "[%d]", arc4random()),
            self,
            objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN
        )
    }
    
    @objc func invoke() {
        closure()
    }
    
}
