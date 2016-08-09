//
//  2_profileViewController.swift
//  Linder_forTest_1
//
//  Created by Kop Liu on 6/08/2016.
//  Copyright © 2016 Liu Junyuan. All rights reserved.
//

import UIKit

class __profileViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Matthew Gardner", "Sue Xia", "Nicolas Parry-Jones"]
    var expertise = ["BANKING & FINANCE, PROPERTY", "PROPERTY, DISPUTE", "PROPERTY, INTELLECTUAL PROPERTY"]
    var images = [UIImage(named: "mattface"),UIImage(named: "sueface"),UIImage(named: "nickface")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cells", forIndexPath: indexPath) as!  TableViewCell
        
        cell.pic.image = images[indexPath.row]
        cell.name.text = name[indexPath.row]
        cell.discreption.text = expertise[indexPath.row]
        
        return cell
        
    }
    


}
