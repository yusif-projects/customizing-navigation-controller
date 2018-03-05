// Created by Yusif Aliyev
// March 5, 2018

import UIKit

class First_VC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        let label_1 = UILabel()
        
        label_1.text = "First "
        label_1.font = UIFont(name: "Lobster-Regular", size: 30)
        label_1.textColor = .white
        label_1.sizeToFit()
        
        let label_2 = UILabel()
        
        label_2.text = "VC"
        label_2.font = UIFont(name: "Futura-Bold", size: 25)
        label_2.textColor = .white
        label_2.sizeToFit()
        
        let sv = UIStackView(arrangedSubviews: [label_1, label_2])
        sv.axis = .horizontal
        sv.frame.size.width = label_1.frame.width + label_2.frame.width
        sv.frame.size.height = max(label_1.frame.height, label_2.frame.height)
        
        navigationItem.titleView = sv
    }
}
