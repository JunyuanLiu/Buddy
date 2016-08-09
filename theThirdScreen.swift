//
//  theThirdScreen.swift
//  Linder_forTest_1
//
//  Created by Kop Liu on 6/08/2016.
//  Copyright © 2016 Liu Junyuan. All rights reserved.
//

import UIKit

class theThirdScreen: UIViewController, UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate,UISearchDisplayDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var lawyerArray = [lawyerItem]()
    var filteredArray = [lawyerItem]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lawyerArray += [lawyerItem(name: "Banking and Finance")]
        self.lawyerArray += [lawyerItem(name: "Contract")]
        self.lawyerArray += [lawyerItem(name: "Construction")]
        self.lawyerArray += [lawyerItem(name: "Property")]
        self.lawyerArray += [lawyerItem(name: "Intellectual Property")]
        self.lawyerArray += [lawyerItem(name: "Corporations law")]
        self.lawyerArray += [lawyerItem(name: "Telecommunications")]
        self.lawyerArray += [lawyerItem(name: "IT Law")]
        self.lawyerArray += [lawyerItem(name: "Merges and Acquisitions")]
        self.lawyerArray += [lawyerItem(name: "Disputes")]



        

        
        
       // self.tableView.reloadData()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Table View
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.searchDisplayController?.searchResultsTableView){
            return self.filteredArray.count
        }
        else{
            return self.lawyerArray.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell2 = self.tableView.dequeueReusableCellWithIdentifier("cell2")! as UITableViewCell
        var lawyer : lawyerItem
        
        if(tableView == self.searchDisplayController?.searchResultsTableView){
            lawyer = self.filteredArray[indexPath.row]
        }
        else{
            lawyer = self.lawyerArray[indexPath.row]
            
        }
        cell2.textLabel?.text = lawyer.name
        
        return cell2
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        var lawyer : lawyerItem
        
        if(tableView == self.searchDisplayController?.searchResultsTableView){
            lawyer = self.filteredArray[indexPath.row]
        }
        else{
            lawyer = self.lawyerArray[indexPath.row]
        }
    
        print(lawyer.name)
    }
    
    
    //MARK: -filter
    
    func filterContentForSearchText(searchText: String, scope: String = "Titile"){
        self.filteredArray = self.lawyerArray.filter({(lawyer: lawyerItem) -> Bool in
            var catogoryMatch = (scope == "Title")
            var stringMatch = lawyer.name.rangeOfString(searchText)
            
            return catogoryMatch && (stringMatch != nil)
        })

    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool {
        self.filterContentForSearchText(searchString!, scope: "Title")
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text!, scope: "Title")
        return true
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
