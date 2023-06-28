import SwiftUI

private struct RadioButton: View {
    @Binding var isSelected:Bool
    private var item:String
    
    private var selectChoice:(_ item:String) -> Void
    
    private var buttonColor: Color?
    private var titleColor: Color?
    
    private var unselectedSymbolName = "circle"
    private var selectedSymbolName = "circle.inset.filled"
    
    init(isSelected: Binding<Bool>, title item: String, buttonColor: Color? = nil, titleColor: Color? = nil, selectChoice: @escaping (_: String) -> Void) {
        self._isSelected = isSelected
        self.item = item
        self.buttonColor = buttonColor
        self.titleColor = titleColor
        self.selectChoice = selectChoice
    }
    
    var body: some View {
        HStack{
            Button{
                self.selectChoice(self.item)
            } label: {
                !isSelected ? Image(systemName: "circle") : Image(systemName: "circle.inset.filled")
            }
            .foregroundColor(buttonColor ?? Color(UIColor.label))
            
            Text(item)
                .foregroundColor(titleColor ?? Color(UIColor.label))
        }
    }
}

public struct RadioButtonGroup: View{
    
    private var collectionOfItems: [String]
    @Binding var selectedOption:String
    
    private var buttonColor: Color?
    private var titleColor: Color?
    
    public init(collectionOfItems: [String], selectedOption: Binding<String>, buttonColor: Color? = nil, titleColor: Color? = nil) {
        self.collectionOfItems = collectionOfItems
        self._selectedOption = selectedOption
        self.buttonColor = buttonColor
        self.titleColor = titleColor
    }
    
    public var body: some View{
        VStack(alignment: .leading){
            ForEach(collectionOfItems, id:\.self){ item in
                RadioButton(isSelected: .constant(self.selectedOption==item), title: item, selectChoice: {(i) in
                    self.selectedOption = i
                })
            }
        }
    }
}
