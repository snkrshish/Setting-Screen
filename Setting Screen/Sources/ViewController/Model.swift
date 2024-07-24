import UIKit


struct DataSources: Hashable {

    var textCell: String
    var iconCell: UIImage
    var cellType: TypeOfAccsessories
    var statusText: String = ""
}
    enum TypeOfAccsessories {
        case disclosureIndicator
        case switchButton
    }

extension DataSources {
   static var cell: [[DataSources]] = [
        [DataSources(textCell: "Авиарежим", iconCell: UIImage(named: "авиарежим")!, cellType: .switchButton),
         DataSources(textCell: "Wi-Fi", iconCell: UIImage(named: "вай фай")!, cellType: .disclosureIndicator, statusText: "Не подключен"),
         DataSources(textCell: "Bluetooth", iconCell: UIImage(named: "блютуз")!, cellType: .disclosureIndicator, statusText: "Вкл."),
         DataSources(textCell: "Сотовая связь", iconCell: UIImage(named: "сотовая сеть")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Режим Модема", iconCell: UIImage(named: "модем")!, cellType: .disclosureIndicator),
         DataSources(textCell: "VPN", iconCell: UIImage(named: "впн")!, cellType: .switchButton)],

        [DataSources(textCell: "Уведомления", iconCell: UIImage(named: "уведомления")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Звуки, тактильные сигналы", iconCell: UIImage(named: "звук")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Фокусирование", iconCell: UIImage(named: "не беспокоить")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Экранное вреия", iconCell: UIImage(named: "экранное время")!, cellType: .disclosureIndicator)],

        [DataSources(textCell: "Основные", iconCell: UIImage(named: "настройки")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Обои", iconCell: UIImage(named: "обои")!, cellType: .disclosureIndicator),
         DataSources(textCell: "Siri", iconCell: UIImage(named: "обои")!, cellType: .disclosureIndicator)]
    ]
}
