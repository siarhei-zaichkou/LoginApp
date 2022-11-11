
import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var aboutTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutTextView.text = user.person.info
    }
}
