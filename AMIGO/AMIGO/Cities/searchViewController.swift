//
//  searchViewController.swift
//  AMIGO
//
//  Created by user1 on 03/01/24.
//

import UIKit

class searchViewController: UIViewController {
    
    @IBOutlet weak var sbar: UISearchBar!
    
    @IBOutlet weak var citytv: UITableView!
    
    
    var filtercountryname = [String]()
    
    let citynamearr = ["Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Indore","Bhopal","Thane","Vishakhapatnam","Patna","Ludhiana","Agra","Nashik","Meerut","Amritsar","Coimbatore","Jodhpur","Kota","Raipur","Gwalior","Chandigarh","Gurgaon","Pondycherry","Bikaner","Noida","Gaya"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.filtercountryname = citynamearr
        
        

        
        
    }
    
}

extension searchViewController: UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtercountryname.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = filtercountryname[indexPath.row]
        return cell!
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != "" {
            filtercountryname = citynamearr.filter({$0.contains(searchText)})
            citytv.reloadData()
        }
        
        else{
            self.filtercountryname = citynamearr
            citytv.reloadData()
        }
    }
}
