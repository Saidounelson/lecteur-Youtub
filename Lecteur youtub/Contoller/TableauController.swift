//
//  TableauController.swift
//  Lecteur youtub
//
//  Created by mac on 30/05/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

//Une methode qui permet de retourner le nombre de ligne du tableau
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson(){
        chansons = [Chanson]()
        let santana = Chanson(artiste: "Alonzo", titre: "Santana", code: "J7GL8kO-DBw")
        chansons.append(santana)
        
        let mohamedsalah = Chanson(artiste: "La Fouine", titre: "Mohamed Salah", code: "g7tVCaeM2Dc")
        chansons.append(mohamedsalah)
        
        let Diarabi = Chanson(artiste: "Kaaris", titre: "Diarabi", code: "qmUs-uiaRvw")
        chansons.append(Diarabi)
        
        let mafuzzyStyle  = Chanson(artiste: "DADJU", titre: "Mafuzzy Style ", code: "J7GL8kO-DBw")
        chansons.append(mafuzzyStyle)
        
        let detrone = Chanson(artiste: "Rohff", titre: "detrone", code: "AisWm_niafc")
        chansons.append(detrone)
        
        //Permet de rechanger les donner
        tableView.reloadData()
    }
}
