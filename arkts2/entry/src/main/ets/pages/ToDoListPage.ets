import ToDoItem from '../ToDoItem'

@Entry
@Component
struct ToDoListPage {
  private totalTasks: Array<string> = [
    "晨练",
    "做早餐",
    "读书",
    "学习",
    "刷剧"
  ]

  build() {
    Column({ space: 16 }) {
      Text("待办")
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .lineHeight(33)
        .width("80%")
        .margin({
          top: 24,
          bottom: 12
        })
        .textAlign(TextAlign.Start)

      ForEach(this.totalTasks, (item) => {
        ToDoItem({ content: item })
      }
        // , (item: string) => JSON.stringify(item)
      )
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#F1F3F5")
  }
}