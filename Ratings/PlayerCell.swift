//
//  Ratings
//
//  Created by Max X on 4/17/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//



import UIKit

class PlayerCell: UITableViewCell {
  
  @IBOutlet weak var gameLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var ratingImageView: UIImageView!
  
  var player: Player! {
    didSet {
      gameLabel.text = player.game
      nameLabel.text = player.name
      ratingImageView.image = imageForRating(player.rating)
    }
  }
  
  func imageForRating(rating:Int) -> UIImage? {
    let imageName = "\(rating)Stars"
    return UIImage(named: imageName)
  }
  
  
}
