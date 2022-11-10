
import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var aboutTextView: UITextView!
    
    var info: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutTextView.text = info
    }
}
