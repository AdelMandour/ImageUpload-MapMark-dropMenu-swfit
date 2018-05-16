//
//  Form.swift
//  task
//
//  Created by mino on 5/8/18.
//  Copyright © 2018 marwa. All rights reserved.
//

import UIKit
import DropDown

class Form: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var dep: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var duration: UITextField!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.title="اضف اعلان"
        
    }
    @IBAction func depart(_ sender: AnyObject) {
        let dropDown = DropDown()
        
        // The view to which the drop down will appear on
        dropDown.anchorView = view // UIView or UIBarButtonItem
        
        // The list of items to display. Can be changed dynamically
        dropDown.dataSource = ["Car", "Motorcycle", "Truck"]
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            self.dep.text=item
            
           self.title="▽"
        }
        // Will set a custom width instead of the anchor view width
        dropDown.show()
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!/2)
        

        
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var map: UITextField!
 
    @IBAction func mapv(_ sender: AnyObject) {
        
        let viewController:UIViewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "map") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
