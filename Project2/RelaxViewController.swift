//
//  RelaxViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 23/06/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class RelaxViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var relaxtextActivity: UITextField!
    @IBOutlet var relaxtextFeeling: UITextView!
    @IBOutlet var relaxtextStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Activity", in: context)
        
        let object = NSManagedObject(entity: entity!, insertInto: context)
        object.setValue(relaxtextActivity.text, forKey: "activity")
        object.setValue(relaxtextFeeling.text, forKey: "feeling")
        
        do{
            try context.save()
            print("saved")
        }catch let error as NSError{
            print("could not save \(error),\(error.userInfo)")
        }
        //이전화면으로 돌아가기
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      
    }
    */

}
