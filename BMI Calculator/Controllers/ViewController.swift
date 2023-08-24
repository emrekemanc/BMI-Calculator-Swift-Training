
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    var weight:Float = 0.0
    var height:Float=0.0
    let bmıBrain=BmıBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func slider(_ sender: UISlider) {
        if(sender.restorationIdentifier! == "Height"){
        height = sender.value
            heightLable.text=String(format: "%.2f",height)+"m"
            
        }
        else{
            weight=sender.value
            weightLable.text = "\(Int(weight))Kg"
            }
        
    }
    @IBAction func calculate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmı = bmıBrain.bmıCalculate(n1:weight , n2:height)
            
            
        }
    }
}

