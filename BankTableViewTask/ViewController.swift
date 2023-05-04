//
//  ViewController.swift
//  BankTableViewTask
//
//  Created by Kajol   on 03/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{
    
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var allBanksLabel: UILabel!
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    struct bank{
        let title: String
        let imageName: String
        
    }
    
    var isSearch : Bool!
    
    var data: [bank] = [
        bank(title: "Agriculture Development Bank", imageName: "Agriculture"),
        bank(title: "Bank of Kathmandu", imageName: "Bank"),
        bank(title: "Best Finance Company", imageName: "Best"),
        bank(title: "Century Bank Limited", imageName: "Century"),
        bank(title: "Citizens Bank International", imageName: "Citizens"),
        bank(title: "Everest Bank", imageName: "Everest"),
        bank(title: "Excel Development Bank Ltd", imageName: "Excel"),
        bank(title: "Global IME Bank Smart Plus", imageName: "Global"),
        bank(title: "Green Development Bank Limited", imageName: "Green"),
        bank(title: "ICFC Finance", imageName: "ICFC"),
        bank(title: "Jyoti Bikas Bank", imageName: "Jyoti"),
        bank(title: "Kamana Sewa Bikash Bank", imageName: "Kamana"),
        bank(title: "Kumari Bank", imageName: "Kumari"),
        bank(title: "Laxmi Bank", imageName: "Laxmi"),
        bank(title: "Lumbini Bikas Bank Limited", imageName: "Lumbini"),
        bank(title: "Machhapuchchhre Bank", imageName: "Machha"),
        bank(title: "Manjushree Finance Limited", imageName: "Manjushree"),
        bank(title: "Miteri Development Bank Limited", imageName: "Miteri"),
        bank(title: "NIC Asia Bank", imageName: "NIC"),
        bank(title: "Nabil Bank", imageName: "Nabil"),
        bank(title: "Nepal Bank", imageName: "Nepal"),
        bank(title: "Nepal Finance Limited", imageName: "NepalFinance"),
        bank(title: "Prabhu Bank", imageName: "Prabhu"),
        bank(title: "Prime Commercial Bank Limited", imageName: "Prime"),
        bank(title: "Rastriya Banijya Bank", imageName: "Rastriya"),
        bank(title: "Sanima Bank", imageName: "Sanima"),
        bank(title: "Saptakoshi Development Bank", imageName: "Saptakoshi"),
        bank(title: "Shangrila Development Bank", imageName: "Shangrila"),
        bank(title: "Siddhartha Bank", imageName: "Siddhartha"),
        bank(title: "Sindhu Bikas Bank", imageName: "Sindhu"),
        bank(title: "Sunrise Bank", imageName: "Sunrise")
    ]
    var filteredBank:[bank] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        myTableView.separatorStyle = .none
        filteredBank = data
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return filteredBank.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let bank = data[indexPath.row]
        let cell = myTableView.dequeueReusableCell(withIdentifier: "bankCell", for: indexPath) as! MyCustomTableViewCell
        
        cell.bankNameLabel.text = filteredBank[indexPath.row].title
        cell.bankImageView.image = UIImage(named: filteredBank[indexPath.row].imageName)
        
        return cell
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        print(textField.text as Any)
        
        var searchText = textField.text?.lowercased()
        if searchText == ""{
            filteredBank = data
            self.myTableView.reloadData()
        }else{
            filteredBank = data.filter {
                $0.title.lowercased().contains(searchText ?? "")
            }
            print("\(filteredBank)")
            self.myTableView.reloadData()
        }
      
    }
}



