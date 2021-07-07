import UIKit

let defaultState = UserDefaults.standard

func stateOne(for imageView: UIImageView,in vc: UIViewController,forKey: String) {
    defaultState.set(true, forKey: forKey)
    imageView.image = UIImage(named: "light")
    vc.view.backgroundColor = .lightGray
    
}

func stateTwo(for imageView: UIImageView,in vc: UIViewController, forKey: String) {
    defaultState.set(false, forKey: forKey)
    imageView.image = UIImage(named: "dark")
    vc.view.backgroundColor = .darkGray
}

