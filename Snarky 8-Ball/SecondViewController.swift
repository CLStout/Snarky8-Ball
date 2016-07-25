import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
            performSegueWithIdentifier("initiateSegue", sender: nil)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        view.endEditing(true)
        let dvc = segue.destinationViewController as! ThirdViewController
        dvc.question = questionTextField.text!
    }
    
    
}
