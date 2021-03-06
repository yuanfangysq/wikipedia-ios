import UIKit

open class WMFArticlePreviewViewController: UIViewController {

    @IBOutlet weak open var marginWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak open var imageView: UIImageView!
    @IBOutlet weak open var subtitleLabel: UILabel!
    @IBOutlet weak open var titleLabel: UILabel!
    @IBOutlet weak open var rankLabel: UILabel!
    @IBOutlet weak open var separatorView: UIView!
    @IBOutlet weak open var viewCountAndSparklineContainerView: UIView!
    @IBOutlet weak open var viewCountLabel: UILabel!
    @IBOutlet weak open var sparklineView: WMFSparklineView!
    
    @IBOutlet var imageWidthConstraint: NSLayoutConstraint!
    @IBOutlet var titleLabelTrailingConstraint: NSLayoutConstraint!

    public required init() {
        let bundle = Bundle(identifier: "org.wikimedia.WMFUI")
        super.init(nibName: "WMFArticlePreviewViewController", bundle: bundle)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    open override func viewDidLoad() {
        rankLabel.textColor = UIColor.wmf_darkGray()
        separatorView.backgroundColor = UIColor.wmf_darkGray()
    }

    open override func awakeFromNib() {
        collapseImageAndWidenLabels = true
    }
    
    
    open var collapseImageAndWidenLabels: Bool = true {
        didSet {
            imageWidthConstraint.constant = collapseImageAndWidenLabels ? 0 : 86
            titleLabelTrailingConstraint.constant = collapseImageAndWidenLabels ? 0 : 8
            self.imageView.alpha = self.collapseImageAndWidenLabels ? 0 : 1
            self.view.layoutIfNeeded()
        }
    }
}
