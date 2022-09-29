//
//  RandomLanguages.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//
import UIKit

class RandomLanguages: UIViewController {
    
    let stackView = UIStackView()
    let pageTitle = UILabel()
    let labelAmharic = UILabel()
    let labelArabic = UILabel()
    let labelArmenian = UILabel()
    let labelBangla = UILabel()
    let labelBelarusian = UILabel()
    let labelBurmese = UILabel()
    let labelChineseSimple = UILabel()
    let labelChineseTrad = UILabel()
    let labelDanish = UILabel()
    let labelGeorgian = UILabel()
    let labelGerman = UILabel()
    let labelGreek = UILabel()
    let labelGujarati = UILabel()
    let labelHebrew = UILabel()
    let labelHindi = UILabel()
    let labelJapanese = UILabel()
    let labelKorean = UILabel()
    let labelMalayalam = UILabel()
    let labelSinhala = UILabel()
    let labelYiddish = UILabel()
    
    func setLabelLanguage(with stack: UIStackView, with label: UILabel, with str: String) {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = str
        label.textAlignment = .center
//        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(label)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension RandomLanguages {
    func style() {
        pageTitle.translatesAutoresizingMaskIntoConstraints = false
        pageTitle.text = "Foreign Languages"
        pageTitle.font = UIFont.preferredFont(forTextStyle: .title1)
        pageTitle.textAlignment = .center
        
        
        setLabelLanguage(with: stackView, with: labelAmharic, with: "ከሶፋው ጀርባ ያሉ እግሮች የሶፋ ፍሎፕን ያበላሻሉ እንግዶች ወደላይ ሲመጡ አመለካከታቸውን ይደብቁ")
        setLabelLanguage(with: stackView, with: labelArabic, with: "هجوم القدمين خلف الأريكة تدمير الأريكة المتخلفة وإخفاء الموقف عندما يأتي الضيوف يقفزون")
        setLabelLanguage(with: stackView, with: labelArmenian, with: "Հարձակվող ոտքերը բազմոցի ետևում ոչնչացնում են բազմոցը, որպեսզի թաքցնեն վերաբերմունքը, երբ հյուրերը մոտենան թռչկոտելով")
        setLabelLanguage(with: stackView, with: labelBangla, with: "পালঙ্কের পিছনে আক্রমণ পা পালঙ্ক ধ্বংস করে ফ্লপ ওভারে মনোভাব লুকাতে দেয় যখন অতিথিরা আসে")
        setLabelLanguage(with: stackView, with: labelBelarusian, with: "Атакуйце нагамі за канапай, знішчайце канапу, плюхайцеся, дайце пазіцыю, схавайцеся, калі госці падыходзяць падскокваючы")
        setLabelLanguage(with: stackView, with: labelBurmese, with: "အိပ်ရာခင်းရဲ့နောက်က ခြေဖဝါးတွေကို တိုက်ခိုက်ဖျက်ဆီးပြီး ညောင်စောင်းကို လှန်ပေးကြတဲ့အခါ ဧည့်သည်တွေ ခုန်ပျံကျော်လွှားလာပြီး သဘောထားလွှဲပေးကြတယ်။")
        setLabelLanguage(with: stackView, with: labelChineseSimple, with: "攻击沙发后的双脚，破坏沙发翻滚，当客人跳起来时，让态度隐藏起来")
        setLabelLanguage(with: stackView, with: labelChineseTrad, with: "攻擊沙發後的雙腳，破壞沙發翻滾，當客人跳起來時，讓態度隱藏起來")
        setLabelLanguage(with: stackView, with: labelDanish, with: "Angrebsfødder bag sofaen ødelægger sofaflop over giver holdningsskjul, når gæster kommer hoppet op")
        setLabelLanguage(with: stackView, with: labelGeorgian, with: "თავდასხმის ფეხები ტახტის უკან ანადგურებს ტახტის ჩამოშლას, აძლევენ დამოკიდებულების დამალვას, როდესაც სტუმრები გადმოხტებიან")
        setLabelLanguage(with: stackView, with: labelGerman, with: "Attackieren Sie die Füße hinter der Couch, zerstören Sie die Couch")
        setLabelLanguage(with: stackView, with: labelGreek, with: "Τα πόδια επίθεσης πίσω από τον καναπέ καταστρέφουν τον καναπέ από το να αποκρύπτουν τη στάση όταν οι επισκέπτες έρχονται σηκωμένοι")
        setLabelLanguage(with: stackView, with: labelGujarati, with: "પલંગની પાછળના પગ પર હુમલો કરવાથી પલંગનો નાશ થાય છે ફ્લોપ ઓવર જ્યારે મહેમાનો આવે ત્યારે વલણ છુપાવો")
        setLabelLanguage(with: stackView, with: labelHebrew, with: "לתקוף רגליים מאחורי הספה להרוס את הספה הפלופ מעל לתת גישה להסתיר כאשר אורחים באים קפוץ למעלה")
        setLabelLanguage(with: stackView, with: labelHindi, with: "सोफे के पीछे पैर पर हमला सोफे फ्लॉप को नष्ट कर देता है जब मेहमान आते हैं तो रवैया छुपाते हैं")
        setLabelLanguage(with: stackView, with: labelJapanese, with: "ソファの後ろの足を攻撃する ソファを破壊する")
        setLabelLanguage(with: stackView, with: labelKorean, with: "소파 뒤에서 발을 공격하여 소파를 부수고 손님이 올라올 때 자세를 숨기십시오.")
        setLabelLanguage(with: stackView, with: labelMalayalam, with: "കട്ടിലിന് പിന്നിലെ ആക്രമണ പാദങ്ങൾ കട്ടിലിനെ നശിപ്പിക്കുന്നു, അതിഥികൾ കയറിവരുമ്പോൾ മനോഭാവം മറയ്ക്കുക")
        setLabelLanguage(with: stackView, with: labelSinhala, with: "සයනය පිටුපස ප්‍රහාරක පාද සයනය විනාශ කරයි, අමුත්තන් ඉහළට පැන්නා විට ආකල්ප සැඟවීම")
        setLabelLanguage(with: stackView, with: labelYiddish, with: "באַפאַלן פֿיס הינטער די קאַנאַפּע צעשטערן קאַנאַפּע פלאַפּ איבער געבן שטעלונג באַהאַלטן ווען געסט קומען איבער כאַפּט אַרויף")
        

    }
    
    func layout() {
       
        view.addSubview(pageTitle)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            pageTitle.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 8),
            pageTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pageTitle.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: pageTitle.trailingAnchor, multiplier: 1)
        ])
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: pageTitle.bottomAnchor, multiplier: 2),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: pageTitle.trailingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 5)
        ])
    }
}
