import Foundation
import UIKit

final class NavigationBarController: UIView {
    
    private static let NIB_NAME = "NavigationBarXIB"
    
    @IBOutlet private var view: UIView!
    @IBOutlet private weak var leftButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var rightFirstButton: UIButton!
    @IBOutlet private weak var rightSecondButton: UIButton!
    
    var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    var isLeftButtonHidden: Bool {
        set {
            leftButton.isHidden = newValue
        }
        get {
            return leftButton.isHidden
        }
    }
    
    var isRightFirstButtonEnabled: Bool {
        set {
            rightFirstButton.isEnabled = newValue
        }
        get {
            return rightFirstButton.isEnabled
        }
    }
    
    var isRightSecondButtonEnabled: Bool {
        set {
            rightSecondButton.isEnabled = newValue
        }
        get {
            return rightSecondButton.isEnabled
        }
    }
    
    override func awakeFromNib() {
        initWithNib()
    }
    
    private func initWithNib() {
        Bundle.main.loadNibNamed(NavigationBarController.NIB_NAME, owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate(
            [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.leadingAnchor.constraint(equalTo: leadingAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor),
                view.trailingAnchor.constraint(equalTo: trailingAnchor),
            ]
        )
    }
    @IBAction func cloudAction(_ sender: UIButton) {
        print("cloud clicked")
    }
    @IBAction func redAction(_ sender: UIButton) {
        print("red clicked")
    }
    @IBAction func ballAction(_ sender: UIButton) {
        print("ball clicked")
    }
}
