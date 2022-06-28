import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customNavbar: NavigationBarController!
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Setup UI
        setupUI()
    }
    
    private func setupUI() {
        customNavbar.title = "test title"
        customNavbar.isLeftButtonHidden = true
        customNavbar.isRightFirstButtonEnabled = false
        customNavbar.isRightSecondButtonEnabled = false
    }
}

