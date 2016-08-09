//
//  secondScreen.swift
//  Linder_forTest_1
//
//  Created by Kop Liu on 6/08/2016.
//  Copyright © 2016 Liu Junyuan. All rights reserved.
//

import UIKit

class secondScreen: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var newsTitles = ["Two firms replace Hunt & Hunt Tasmania","Changing business models prompt new legal prospects","Students invited behind closed doors of domestic violence court"]
    var newsContents = ["Hunt & Hunt Tasmania has closed its doors, with its lawyers being snapped up by two national firms both establishing Hobart offices.","An evolving workforce has affected the legal rights of employers and employees, creating new opportunities and challenges for Australian lawyers, according to a new report.","A new work experience program offers law students exposure to work in Queensland’s first dedicated domestic and family violence court."]
    
    
    @IBOutlet weak var tableView: UITableView!
    
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
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! NewsCell
        
        cell.newsTitle.text = newsTitles[indexPath.row]
        
        cell.newsContent.text = newsContents[indexPath.row]
        
        return cell
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
