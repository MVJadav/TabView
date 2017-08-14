

import UIKit

class FeedListVC: UIViewController {

    @IBOutlet var IBbarbtnAdd               : UIBarButtonItem!
    
    //@IBOutlet weak var tblFeedList: UITableView!
    let numberOfRow = 15
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItems     = [IBbarbtnAdd]
        self.title = "Feed List"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

//MARK: - IBAction Methods
extension FeedListVC {
    
    //btnBack Click
    @IBAction func barbtnAddClick(sender: AnyObject) {
        let objAddUserVC                            = FeedDetailView(nibName: "FeedDetailView", bundle: nil)
        objAddUserVC.hidesBottomBarWhenPushed       = true
        self.navigationController?.pushViewController(objAddUserVC, animated: true)
    }

}
