/*
 * Max Xing 2016
 *
 
 */


import UIKit


class PlayersViewController: UITableViewController {
  
    
    var selected:Int!
    
  var players:[Player] = playersData
    
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return players.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
    -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
        as! PlayerCell
      
      let player = players[indexPath.row] as Player
      cell.player = player
      return cell
  }
  
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
      //var selected  = [indexPathfo.row];
   
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "pictureSegue") {
            var svc = segue!.destinationViewController as! ProfileViewController;
            
            var selectedIndexPath = tableView.indexPathForSelectedRow?.row
            svc.toPass = selectedIndexPath

        }
    }
    
}
