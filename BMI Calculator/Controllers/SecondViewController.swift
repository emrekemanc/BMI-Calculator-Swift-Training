
import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var bmıResult: UILabel!
    @IBOutlet weak var bmıLabel: UILabel!
    var bmı:String?
    let bmıBrain=BmıBrain()
    override func viewDidLoad() {
        
        bmıResult.text=bmı
        bmıLabel.text=bmıBrain.returnText(bmı: bmı ?? "0")
        background.backgroundColor=bmıBrain.returnColor(bmı: bmı ?? "0")
        super.viewDidLoad()
       

       
    }
    
    @IBAction func goToBack(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
