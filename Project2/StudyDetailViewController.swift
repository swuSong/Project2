//
//  StudyDetailViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 23/06/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData
class StudyDetailViewController: UIViewController {

    @IBOutlet var Studyactivity: UITextField!
    @IBOutlet var Studyfeeling: UITextView!
    
    var SdetailActivity: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let Sactivity = SdetailActivity{
            Studyactivity.text = Sactivity.value(forKey: "activity")as? String
            Studyfeeling.text = Sactivity.value(forKey: "feeling")as? String
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
