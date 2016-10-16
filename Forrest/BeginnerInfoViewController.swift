//
//  BeginnerInfoViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 10..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class BeginnerInfoViewController: UIViewController
{
    var scroll_view: UIScrollView!
    var won_name = ["백합원", "무궁화원", "창포원", "지피식물원", "삼미담", "잔디광장", "철쭉원"]
    
    @IBOutlet weak var explanation: UITextView!
    @IBOutlet weak var img_flower: UIImageView!
    @IBOutlet weak var bt_juhang: UIButton!
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar text set */
        self.navigationItem.title = "코스 설명"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        /*
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.navigationController!.navigationBar.barTintColor = real_back_color
        self.navigationController!.navigationBar.tintColor = background_color_state
        */
        /* 주행하기 버튼 설정 */
        bt_juhang.setTitle("주행 하기", forState: .Normal)
        bt_juhang.setTitleColor(UIColor.blackColor(), forState: .Normal)
        bt_juhang.backgroundColor = background_color_state
        bt_juhang.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        createScrollMenu()
        if info == 0
        {
        img_flower.image = UIImage(named: "img_begin_backhop")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
           explanation.text = "일본 원산으로 관상용으로 심어 기르는 여러해살이풀입니다. 높이는 30-100cm정도 됩니다. 비늘줄기는 편평한 구형으로 지름 4-7cm, 연한 황색을 띄고 있습니다. 잎은 잎자루가 없으며, 피침형으로 길이 10-20cm, 폭 5-20mm, 털이 없습니다. 꽃은 5-6월에 흰색으로 피며, 원줄기 끝에 2-3개씩 옆을 향해 달리고 나팔 모양으로 벌어집니다. 향기가 좋고, 열매는 삭과, 장타원형이고 길이 5-10cm정도 됩니다. 전국의 공원, 화단, 온실에 관상용으로 식재하고 있습니다."
        }
        else
        {
            img_flower.image = UIImage(named: "img_begin_mugung")
            explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
            explanation.text = "무궁화는 대한민국의 나라꽃(국화)입니다. 낙엽 관목으로서 여러 품종이 있고 높이가 3-4m에 달하며, 어린 가지에 털이 많으나 점차 없어집니다. 무궁화는 정원에서 재배가 쉽고 씨로 번식이 가능하지만 꺽꽂이로 번식되므로 형질을 변형시키지 않고 유지하는 것이 쉽습니다. 잎은 어긋나며 달걀모양이고 대개 3개로 갈라지고 가장자리에는 톱니가 있습니다."
            
        }// Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func createScrollMenu()
    {
        scroll_view = UIScrollView(frame: CGRectMake(0, 280, self.view.frame.size.width, 80))
        
        var bt_X = CGFloat(0)
        for i in 0...6
        {
            let bt = UIButton()
            bt.frame = CGRectMake(bt_X, 20, 150, 60)
            bt.setTitle(won_name[i], forState: .Normal)
            bt.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: text_size)
            bt.setTitleColor(background_color_state, forState: .Normal)
            switch i
            {
            case 0: bt.addTarget(self, action: #selector(clicked_0), forControlEvents: UIControlEvents.TouchUpInside)
            case 1: bt.addTarget(self, action: #selector(clicked_1), forControlEvents: UIControlEvents.TouchUpInside)
            case 2: bt.addTarget(self, action: #selector(clicked_2), forControlEvents: UIControlEvents.TouchUpInside)
            case 3: bt.addTarget(self, action: #selector(clicked_3), forControlEvents: UIControlEvents.TouchUpInside)
            case 4: bt.addTarget(self, action: #selector(clicked_4), forControlEvents: UIControlEvents.TouchUpInside)
            case 5: bt.addTarget(self, action: #selector(clicked_5), forControlEvents: UIControlEvents.TouchUpInside)
            case 6: bt.addTarget(self, action: #selector(clicked_6), forControlEvents: UIControlEvents.TouchUpInside)
            default : break
            }
            bt.backgroundColor = real_back_color
            scroll_view.addSubview(bt)
            bt_X += bt.frame.size.width
        }
        
        scroll_view.contentSize = CGSizeMake(bt_X, scroll_view.frame.size.height)
        scroll_view.bounces = false
        self.view.addSubview(scroll_view)
    }
    
    /* menu click */
    func clicked_0()
    {
        img_flower.image = UIImage(named: "img_begin_backhop")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "일본 원산으로 관상용으로 심어 기르는 여러해살이풀입니다. 높이는 30-100cm정도 됩니다. 비늘줄기는 편평한 구형으로 지름 4-7cm, 연한 황색을 띄고 있습니다. 잎은 잎자루가 없으며, 피침형으로 길이 10-20cm, 폭 5-20mm, 털이 없습니다. 꽃은 5-6월에 흰색으로 피며, 원줄기 끝에 2-3개씩 옆을 향해 달리고 나팔 모양으로 벌어집니다. 향기가 좋고, 열매는 삭과, 장타원형이고 길이 5-10cm정도 됩니다. 전국의 공원, 화단, 온실에 관상용으로 식재하고 있습니다."
        
    }
    func clicked_1()
    {
        img_flower.image = UIImage(named: "img_begin_mugung")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "무궁화는 대한민국의 나라꽃(국화)입니다. 낙엽 관목으로서 여러 품종이 있고 높이가 3-4m에 달하며, 어린 가지에 털이 많으나 점차 없어집니다. 무궁화는 정원에서 재배가 쉽고 씨로 번식이 가능하지만 꺽꽂이로 번식되므로 형질을 변형시키지 않고 유지하는 것이 쉽습니다. 잎은 어긋나며 달걀모양이고 대개 3개로 갈라지고 가장자리에는 톱니가 있습니다."
    }
    func clicked_2()
    {
        img_flower.image = UIImage(named: "img_begin_chang")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
         explanation.text = "창포는 우리나라 호수나 연못가의 습지에서 나는 다년생 초본입니다. 생육환경은 햇볕이 잘 들어오는 곳의 물웅덩이나 물이 잘 빠지지 않는 습지에서 잘 자랍니다. 키는 약 70㎝ 정도이고, 잎은 뿌리 끝에서 촘촘히 나오고 길이는 약 70㎝, 폭은 1~2㎝이며 가운데 뚜렷한 선이 있습니다. 꽃은 원기둥 모양으로 잎 사이에서 비스듬히 옆으로 올라오며 흰색을 띄고 있습니다. 열매는 7~8월경에 달리고 긴 타원형으로 적색입니다. 주로 관상용으로 쓰이며, 뿌리는 약용으로 쓰이고 있습니다."
    }
    func clicked_3()
    {
        img_flower.image = UIImage(named: "img_begin_jipi")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "지피수종은 땅에 밀착하여 자라면서, 토양유실을 방지하고 땅의 건조를 막는 식물을 말합니다. 흔히 위성류, 만경류라고 이야기되는 식물들과 백리향과 같은 땅에 낮게 자라는 식물등 우리 지표에 살고 있는 각종 식물 114종 6,808본을 식재하여 전시하고 있습니다."

    }
    func clicked_4()
    {
        img_flower.image = UIImage(named: "img_begin_sim")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "숲에서 미래를 찾자는 의미의 삼미담에서는 연못과 가제보, 가지각색의 수련, 부들 뿐 아니라 1/10로 축소된 독도의 모습도 볼 수 있습니다."
    }
    func clicked_5()
    {
        img_flower.image = UIImage(named: "img_begin_jandi")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "잔디로 깔려진 광장으로써 수목원을 관람하시다가 언제든지 편안하게 쉬었다가 가실 수 있도록 마련한 편의시설입니다."
    }
    func clicked_6()
    {
        img_flower.image = UIImage(named: "img_begin_chul")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "산에서 자라는 낙엽 떨기나무입니다. 줄기는 높이 2-5m정도 됩니다. 잎은 가지 끝에 4-5장씩 어긋나게 모여 나며 잎자루는 짧습니다. 잎몸은 도란형 또는 넓은 난형으로 가장자리가 밋밋하게 생겼습니다. 꽃은 4-6월에 잎과 동시에 피며 가지 끝에 3-7개씩 산형으로 달리고 연분홍색 또는 드물게 흰색입니다. 꽃자루는 길이 1-1.5cm정도 됩니다. 화관은 깔때기 모양이며 윗부분 안쪽에 붉은 갈색 반점이 있습니다. 수술은 10개인데 그 중 5개가 길게 나있습니다. 암술은 1개입니다. 열매는 삭과이며 난형입니다. 우리나라 전역에 자생하고 중국에 분포합니다."
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
