//
//  CustomTextField.swift
//  BankTableViewTask
//
//  Created by Kajol   on 03/05/23.
//

import UIKit

class CustomTextField: UITextField {

    
     let iconImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
     
     // Override the init methods to add the icon image view to the text field
     override init(frame: CGRect) {
         super.init(frame: frame)
         configureIconImageView()
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         configureIconImageView()
     }
     
     // Helper method to configure the icon image view
     func configureIconImageView() {
         iconImageView.image = UIImage(named: "SearchIcon")
         iconImageView.contentMode = .scaleAspectFit
         leftView = iconImageView
         leftViewMode = .always
   

     }

}
