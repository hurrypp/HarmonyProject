import {Person} from './Person'

@Entry
@Component
struct Index {
  @State title1: string = '看第一位用户的姓名'
  @State title2: string = '看第二位用户的姓名'
  @State title3: string = '看第三位用户的姓名'

  build() {
    Column() {
      Button(this.title1).onClick((event: ClickEvent) => {
        let p1 = new Person ('Tommy', 22, true)
        this.title1 = p1.name
      })

      Button(this.title2).onClick((event: ClickEvent) => {
        let p2 = new Person ('Arc', 25, false)
        this.title2 = p2.name
      })

      Button(this.title3).onClick((event: ClickEvent) => {
        let p3 = new Person ('yark', 32, true)
        this.title3 = p3.detail()
      })
    }.justifyContent(FlexAlign.SpaceAround)
    .height('100%')
    .width('100%')
  }
}