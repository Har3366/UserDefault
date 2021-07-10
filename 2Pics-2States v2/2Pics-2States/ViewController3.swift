import UIKit

class ViewController3: UIViewController {
    let key = "VC3"
    let button = UIButton()
    var isPushed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConfig()
        buttonPlacement()
    }

    func viewConfig() {
        title = "The third variant"
        
        isPushed = defaultState.bool(forKey: key)
        
        view.backgroundColor = isPushed ? .darkGray : .lightGray
        isPushed ? button.setImage(UIImage(named: "dark"), for: .normal)
                  : button.setImage(UIImage(named: "light"), for: .normal)
        
        button.addTarget(self, action: #selector(imageToggle), for: .touchUpInside)
    }
    
    @objc func imageToggle(){
    isPushed.toggle()
        
    isPushed ? button.setImage(UIImage(named: "dark"), for: .normal)
              : button.setImage(UIImage(named: "light"), for: .normal)
    view.backgroundColor = isPushed ? .darkGray : .lightGray
    
    defaultState.set(isPushed, forKey: key)
    }
    
    func buttonPlacement() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.rightAnchor.constraint(equalTo: view.rightAnchor,
                                      constant: -1).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                       constant: -210).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor,
                                       constant: 1).isActive = true
        button.heightAnchor.constraint(equalToConstant: 370).isActive = true
    }
}
