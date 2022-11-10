
import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userPhotoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var user: String!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhotoImageView.image = UIImage(named: "jonesy")
        title = user
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        cityLabel.text = person.city
        positionLabel.text = person.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.info = person.info
    }
}
