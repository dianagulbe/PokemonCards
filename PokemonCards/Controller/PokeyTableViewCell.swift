//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by diana.gulbe on 08/08/2021.
//

import UIKit

class PokeyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pokeyImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var supertypeLabel: UILabel!
    
    @IBOutlet weak var hpLabel: UILabel!
    
    @IBOutlet weak var subtypLabel: UILabel!
    
    func setupUI(with: Pokemon){
           nameLabel.text = "Name: " + with.name
           hpLabel.text = "Card value: " + with.number
           
           ImageController.getImage(for: with.image) { image in
               self.pokeyImageView.image = image
           }
           
           if let subtype = with.subtype {
               subtypeLabel.text = "Card: " + subtype
           }
           
           if let supertype = with.supertype {
               
               supertypeLabel.text = "Type: " + supertype
               
               if with.supertype == "Trainer" {
                   contentView.backgroundColor = .blue
               }else{
                   contentView.backgroundColor = .systemYellow
               }
           }
       }
       
   }
