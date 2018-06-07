//
//  VideoController.swift
//  Lecteur youtub
//
//  Created by mac on 07/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    
    var chanson:Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
view.backgroundColor = .blue
        
        if chanson != nil {
            title = chanson?.titre
        }
    }

   
}
