import {router} from '@kit.ArkUI';
@Entry
@Component
struct Page22 {
  @State message: string = 'Hello World';
  @State param: string = router.getParams() as string
  @State msg: string = this.param.toString()

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}