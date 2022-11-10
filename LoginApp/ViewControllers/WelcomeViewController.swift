
import SwiftUI
import UIKit

class WelcomeViewController: UIViewController {
    
    var user: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    private let primaryColor = Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
    private let secondaryColor = Color(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome \(user!)"
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: Color, bottomColor: Color) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor!, bottomColor.cgColor!]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
