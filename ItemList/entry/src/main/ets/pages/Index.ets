import { router } from '@kit.ArkUI'

@Entry
@Component


struct Index {


  build() {
    Column(){
      Text('待办清单')
        .fontSize(28)
        .fontWeight(FontWeight.Bolder)
        .backgroundImagePosition(Alignment.Center)
        .position({ x: '35.00%', y: '10.00%' })
      Button('昨日').onClick(() => {
        router.pushUrl({url:''})
      })
        .position({ x: '10%', y: '50%' })

      Button('今日').onClick(() => {
        router.pushUrl({url:'pages/ToDayList'})
      })
        .position({ x: '40%', y: '50%' })

      Button('明日').onClick(() => {
        router.pushUrl({url:''})
      })
        .position({ x: '70%', y: '50%' })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#FEFCFF")
  }
}