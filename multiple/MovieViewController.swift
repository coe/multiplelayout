import UIKit

class MovieViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var playerView: AVPlayerView!
    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var titleLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "動画だよ〜"
        titleLabel?.text = "動画だよ〜"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playerView.play()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        playerView.pause()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "コメント\(indexPath.row)"
        return cell
    }

}
