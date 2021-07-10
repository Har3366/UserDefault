import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var switcher: UISwitch!
    @IBOutlet weak var nextVarButton: UIButton!
    @IBOutlet weak var thirdVarButton: UIButton!
    
    let key = "VC1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switcher.isOn = defaultState.bool(forKey:key)
        switcher.isOn ? stateOne(for: imageView, in: self, forKey: key)
                      : stateTwo(for: imageView, in: self, forKey: key)
        
        nextVarButton.layer.cornerRadius = nextVarButton.frame.height/3
        thirdVarButton.layer.cornerRadius = nextVarButton.frame.height/3
    }
    

    @IBAction func switcherToggle(_ sender: UISwitch) {
        switcher.isOn ? stateOne(for: imageView, in: self, forKey: key)
                      : stateTwo(for: imageView, in: self, forKey: key)
        
    }
    @IBAction func nextVarButtonPressed(_ sender: UIButton) {
        guard let rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier:"ViewController2") as? ViewController2 else {return}
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.navigationBar.prefersLargeTitles = true
        present(navVC,animated: true)
    }
    @IBAction func thirdVarButtonPressed(_ sender: UIButton) {
        let rootVC = ViewController3()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.navigationBar.prefersLargeTitles = true
        present(navVC,animated: true)
    }
}

