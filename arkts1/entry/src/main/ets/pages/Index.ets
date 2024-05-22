import { Person } from './Person'

@Entry
@Component
struct Index {
  @State name: string = '看第一位用户姓名'
  @State detail1: string = '看第二位用户的描述'
  @State detail2: string = '看第三位用户的描述'

  build() {
    Column() {
      Text(this.name)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          let p1 = new Person('Tommy', 22, true)
          this.name = p1.name
        })

      Text(this.detail1)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          let p2 = new Person('Alice', 18, false)
          this.detail1 = p2.detail()
        })

      Text(this.detail2)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          let p3 = new Person('极客大侠', 38, true)
          p3.address = '北京三里屯'
          this.detail2 = p3.detail()
        })
    }
    .justifyContent(FlexAlign.SpaceAround) //空格环绕
    .height('100%')
    .width('100%')
  }
}