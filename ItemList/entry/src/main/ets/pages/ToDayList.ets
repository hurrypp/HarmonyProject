import ItemData from './ItemData'
import { router } from '@kit.ArkUI'

@Entry
@Component


struct ToDayList {
  private totalTasks:string[] =[
    '早餐',
    '散步',
    '学习',
    '午餐',
    '午休',
    '刷剧',
    '跑步'
  ]


  build() {
    Column({space: 16}) {
      Text('今日待办')
        .fontSize(28)
        .fontWeight(FontWeight.Bolder)
        .lineHeight(33)
        .width("75%")
        .margin({
          top:48,
          bottom:20
        })
        .backgroundImagePosition(Alignment.TopStart)
        .backgroundImageSize(ImageSize.Auto)
      Line()
      ForEach(this.totalTasks,(item: string) => {
        ItemData({content:item})
      })
      Button('返回').onClick(() => {
         router.back()
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#FEFCFF")
  }
}