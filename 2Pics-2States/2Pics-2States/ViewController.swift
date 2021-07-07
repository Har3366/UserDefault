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
        self.performSegue(withIdentifier: "nextVarSeague", sender: self)
    }
    @IBAction func thirdVarButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "thirdVarSeague", sender: self)
    }
}

