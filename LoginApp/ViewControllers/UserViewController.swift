
import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userPhotoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.user = user
    }
    
    private func setupUI() {
        userPhotoImageView.image = UIImage(named: user.person.photo)
        title = user.login
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        cityLabel.text = user.person.city
        positionLabel.text = user.person.position
    }
}
