//
//  AdvancedInfoViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 11..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class AdvancedInfoViewController: UIViewController
{
    var scroll_view: UIScrollView!
    var won_name = ["가로수원", "목련원", "생울타리원", "들국화원", "망개나무원", "철쭉원", "희귀식물원", "전시온실", "삼미담", "창포원", "무궁화원", "백합원"]
    
    @IBOutlet weak var img_flower: UIImageView!
    @IBOutlet weak var bt_juhang: UIButton!
    
    @IBOutlet weak var explanation: UITextView!
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar text set */
        self.navigationItem.title = "코스 설명"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
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
        img_flower.image = UIImage(named: "img_begin_backhop")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "일본 원산으로 관상용으로 심어 기르는 여러해살이풀입니다. 높이는 30-100cm정도 됩니다. 비늘줄기는 편평한 구형으로 지름 4-7cm, 연한 황색을 띄고 있습니다. 잎은 잎자루가 없으며, 피침형으로 길이 10-20cm, 폭 5-20mm, 털이 없습니다. 꽃은 5-6월에 흰색으로 피며, 원줄기 끝에 2-3개씩 옆을 향해 달리고 나팔 모양으로 벌어집니다. 향기가 좋고, 열매는 삭과, 장타원형이고 길이 5-10cm정도 됩니다. 전국의 공원, 화단, 온실에 관상용으로 식재하고 있습니다."

        // Do any additional setup after loading the view.
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
        for i in 0...11
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
            case 7: bt.addTarget(self, action: #selector(clicked_7), forControlEvents: UIControlEvents.TouchUpInside)
            case 8: bt.addTarget(self, action: #selector(clicked_8), forControlEvents: UIControlEvents.TouchUpInside)
            case 9: bt.addTarget(self, action: #selector(clicked_9), forControlEvents: UIControlEvents.TouchUpInside)
            case 10: bt.addTarget(self, action: #selector(clicked_10), forControlEvents: UIControlEvents.TouchUpInside)
            case 11: bt.addTarget(self, action: #selector(clicked_11), forControlEvents: UIControlEvents.TouchUpInside)
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
        img_flower.image = UIImage(named: "img_inte_garo")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "가로수는 도시에 산소와 청량감을 주고, 자동차 배기가스 등 각종 공해 물질을 흡수하여 사람의 건강에 도움을 준 뿐아니라, 여름에 더위를 낮춰주는 등 도시와 사람에 여러 가지로 도움을 줍니다. 가로수원은 도시 가로수로 많이 사용되는 수종과 가로수로 활용될 수 있는 여러 수종 46종 7,955본을 전시하고 있습니다."
    }
    func clicked_1()
    {
        img_flower.image = UIImage(named: "img_inte_mok")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "목련은 높이 10m 정도로 자라며 수피는 회백색으로 매끄러운 편이고 껍질눈이 있습니다. 가지는 털이 없고 많이 갈라집니다. 어긋나게 달리는 잎은 넓은 난형 또는 도란형으로 끝이 꼬리처럼 뾰족하고 가장자리는 밋밋합니다. 표면에 털이 없고 뒷면에 털이 있거나 없다. 3~4월 가지 끝에 잎보다 먼저 흰색꽃이 피는데 양성화로 6개의 꽃잎은 흰색이고 기부는 연홍색을 띱니다. 꽃받침잎은 3개, 수술은 30개입니다. 꽃은 활짝 피고 기부에 1개의 어린잎이 붙어 있습니다. 열매는 닭의 볏 모양으로 9~10월에 익으면서 칸칸이 벌어져 주홍색의 씨를 내놓습니다."
    }
    func clicked_2()
    {
        img_flower.image = UIImage(named: "img_begin_backhop")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "일본 원산으로 관상용으로 심어 기르는 여러해살이풀입니다. 높이는 30-100cm정도 됩니다. 비늘줄기는 편평한 구형으로 지름 4-7cm, 연한 황색을 띄고 있습니다. 잎은 잎자루가 없으며, 피침형으로 길이 10-20cm, 폭 5-20mm, 털이 없습니다. 꽃은 5-6월에 흰색으로 피며, 원줄기 끝에 2-3개씩 옆을 향해 달리고 나팔 모양으로 벌어집니다. 향기가 좋고, 열매는 삭과, 장타원형이고 길이 5-10cm정도 됩니다. 전국의 공원, 화단, 온실에 관상용으로 식재하고 있습니다."
    }
    func clicked_3()
    {
        img_flower.image = UIImage(named: "img_begin_delguk")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "들국화는 국화과에 속한 여러해살이풀로서 높이는 60~90㎝ 정도로 자라며 몸 전체에 흰 털이 나 있습니다. 잎은 어긋나며 가장자리가 갈라지고 톱니가 있습니다. 9~10월에 노란색 꽃이 핍니다. 어린잎은 식용하며 꽃은 약재로 쓰입니다. 우리나라, 중국, 일본에 분포한다. 종류로는 산국(山菊)[Chrysanthemum boreale], 구절초(九節草)[Chrysanthemum zawadskii var. latilobum], 감국(甘菊)[Chrysanthemum indicum], 울릉국화(鬱陵菊花)[Chrysanthemum lucidum], 쑥부쟁이[Aster yomena] 등이 있습니다."
    }
    func clicked_4()
    {
        img_flower.image = UIImage(named: "img_begin_mang")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "망개나무는 속리산, 월악산, 내연산, 주왕산, 주흘산의 숲 속에 매우 드물게 자라며 세계적으로는 중국과 일본에 분포합니다. 큰키나무로 줄기는 높이 10-15m입니다. 가지는 붉은 갈색을 띠고, 종종 늘어지기도 합니다. 잎은 어긋나며, 긴 타원형 또는 난상 긴 타원형, 가장자리가 밋밋하거나 뚜렷하지 않은 물결 모양 톱니가 있습니다. 잎 뒷면은 흰 분을 칠한 듯합니다. 꽃은 5-6월에 가지 끝의 잎겨드랑이에서 나온 취산꽃차례 또는 가지 끝의 총상꽃차례에 작은 꽃이 몇 개씩 모여 달리며, 녹색이 도는 노란색을 띄고 있습니다. 열매는 핵과이며, 처음에는 노란색이지만 완전히 익으면 붉은색입니다."
    }
    func clicked_5()
    {
        img_flower.image = UIImage(named: "img_begin_chul")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "산에서 자라는 낙엽 떨기나무입니다. 줄기는 높이 2-5m정도 됩니다. 잎은 가지 끝에 4-5장씩 어긋나게 모여 나며 잎자루는 짧습니다. 잎몸은 도란형 또는 넓은 난형으로 가장자리가 밋밋하게 생겼습니다. 꽃은 4-6월에 잎과 동시에 피며 가지 끝에 3-7개씩 산형으로 달리고 연분홍색 또는 드물게 흰색입니다. 꽃자루는 길이 1-1.5cm정도 됩니다. 화관은 깔때기 모양이며 윗부분 안쪽에 붉은 갈색 반점이 있습니다. 수술은 10개인데 그 중 5개가 길게 나있습니다. 암술은 1개입니다. 열매는 삭과이며 난형입니다. 우리나라 전역에 자생하고 중국에 분포합니다."
    }
    func clicked_6()
    {
        img_flower.image = UIImage(named: "img_begin_heui")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "희귀식물원은 희귀식물들이 모여 있는 원입니다. 드물어서 귀한 식물이며, 저절로 개체가 줄어들거나 사람들이 무분별하게 캐는 등 여러 원인으로 개체수가 극히 적고 분포면적이 매우 좁은 식물들 입니다."
    }
    func clicked_7()
    {
        img_flower.image = UIImage(named: "img_begin_junsi")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "전시온실은 온실식물들을 살펴볼수 있습니다. 온실식물은 가온 설비가 있는 온실 내에서 기르는 열대 ·아열대 식물을 말하는데, 이들은 천연상태로는 추위를 이길 수 없으므로 월동을 위하여 실내에서 보호하여 원생지의 조건에 가깝게 해야 잘 생육합니다."
    }
    func clicked_8()
    {
        img_flower.image = UIImage(named: "img_begin_sim")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "숲에서 미래를 찾자는 의미의 삼미담에서는 연못과 가제보, 가지각색의 수련, 부들 뿐 아니라 1/10로 축소된 독도의 모습도 볼 수 있습니다."
    }
    func clicked_9()
    {
        img_flower.image = UIImage(named: "img_begin_chang")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "창포는 우리나라 호수나 연못가의 습지에서 나는 다년생 초본입니다. 생육환경은 햇볕이 잘 들어오는 곳의 물웅덩이나 물이 잘 빠지지 않는 습지에서 잘 자랍니다. 키는 약 70㎝ 정도이고, 잎은 뿌리 끝에서 촘촘히 나오고 길이는 약 70㎝, 폭은 1~2㎝이며 가운데 뚜렷한 선이 있습니다. 꽃은 원기둥 모양으로 잎 사이에서 비스듬히 옆으로 올라오며 흰색을 띄고 있습니다. 열매는 7~8월경에 달리고 긴 타원형으로 적색입니다. 주로 관상용으로 쓰이며, 뿌리는 약용으로 쓰이고 있습니다."
    }
    func clicked_10()
    {
        img_flower.image = UIImage(named: "img_begin_mugung")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "낙엽 관목으로서 여러 품종이 있고 높이가 3-4m에 달하며, 어린 가지에 털이 많으나 점차 없어집니다. 무궁화는 정원에서 재배가 쉽고 씨로 번식이 가능하지만 꺽꽂이로 번식되므로 형질을 변형시키지 않고 유지하는 것이 쉽습니다. 잎은 어긋나며 달걀모양이고 대개 3개로 갈라지고 가장자리에는 톱니가 있습니다."
    }
    func clicked_11()
    {
        img_flower.image = UIImage(named: "img_begin_backhop")
        explanation.font =  UIFont(name: "AppleSDGothicNeo-Regular", size: text_size + 20)
        explanation.text = "일본 원산으로 관상용으로 심어 기르는 여러해살이풀입니다. 높이는 30-100cm정도 됩니다. 비늘줄기는 편평한 구형으로 지름 4-7cm, 연한 황색을 띄고 있습니다. 잎은 잎자루가 없으며, 피침형으로 길이 10-20cm, 폭 5-20mm, 털이 없습니다. 꽃은 5-6월에 흰색으로 피며, 원줄기 끝에 2-3개씩 옆을 향해 달리고 나팔 모양으로 벌어집니다. 향기가 좋고, 열매는 삭과, 장타원형이고 길이 5-10cm정도 됩니다. 전국의 공원, 화단, 온실에 관상용으로 식재하고 있습니다."
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
