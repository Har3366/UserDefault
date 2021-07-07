import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let key = "VC2"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switcherPlacement()
        imagePlacement()
        
    }
    
    func switcherPlacement(){
        let switcher = UISwitch(frame: CGRect(x: 20, y: 670, width: 0, height:0))
        switcher.onTintColor = .lightGray
        switcher.isOn = defaultState.bool(forKey: key)
        switcher.isOn ? stateOne(for: imageView, in: self, forKey: key)
                       :stateTwo(for: imageView, in: self, forKey: key)
        switcher.addTarget(self, action: #selector(switcherToggle), for: .touchUpInside)
        view.addSubview(switcher)
        
    }
    
    @objc func switcherToggle(_ sender:UISwitch){
        sender.isOn ?stateOne(for: imageView, in: self, forKey: key)
                    :stateTwo(for: imageView, in: self, forKey: key)
    }
    
    func imagePlacement() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view.addSubview(imageView)
        
    }

}



