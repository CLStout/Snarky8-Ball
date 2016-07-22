import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        view.endEditing(true)
        let dvc = segue.destinationViewController as! ThirdViewController
        dvc.question = questionTextField.text!
        
    }
}
