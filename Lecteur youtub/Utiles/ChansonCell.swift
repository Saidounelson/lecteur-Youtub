//
//  ChansonCell.swift
//  Lecteur youtub
//
//  Created by mac on 02/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {

    
    @IBOutlet weak var minuature: UIImageView!
    
    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    var chanson: Chanson!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    
    func creerCell(_ chanson: Chanson)  {
        self.chanson = chanson
        telechargerImage()
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font : UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        
        let secondLigne = NSAttributedString(string: "\n"+self.chanson.artiste, attributes: [.font:UIFont.italicSystemFont(ofSize: 20), .foregroundColor:UIColor.darkGray])
        attributed.append(secondLigne)
        artisteEtTitreLabel.attributedText = attributed
        
    }
    
    func telechargerImage()  {
        minuature.image = #imageLiteral(resourceName: "logo")
        
        if let url = URL(string: self.chanson.minuatureUrl) {
            let session = URLSession.shared
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if let imageData = data, let image = UIImage(data: imageData) {
                    
                    DispatchQueue.main.async {
                        self.minuature.image = image
                    }
                }
            }
            task.resume()
        }
    }
}
