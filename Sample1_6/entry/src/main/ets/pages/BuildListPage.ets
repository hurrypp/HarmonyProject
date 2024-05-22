@Entry
@Component
struct BuildListPage {

  build() {

    Column() {
      // // List组件
      // ListDemo()
      // Grid组件
      GridDemo()
    }

  }
}



@Component
struct ListDemo {
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  build() {
    Column() {
      List({ space: 10 }) {
        ForEach(this.arr, (item: number) => {
          ListItem() {
            Text(`ListItem${item+1}`)
              .width('100%')
              .height(100)
              .fontSize(20)
              .fontColor(Color.White)
              .textAlign(TextAlign.Center)
              .borderRadius(10)
              .backgroundColor(0x007DFF)
          }
        }, (item: number) => JSON.stringify(item))
      }
    }
    .padding(12)
    .height('100%')
    .backgroundColor(0xF1F3F5)
  }
}


@Component
struct GridDemo {
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  build() {
    Column() {
      Grid() {
        ForEach(this.arr, (day: number) => {
          ForEach(this.arr, (day: number) => {
            GridItem() {
              Text(`GridItem${day+1}`)
                .fontSize(12)
                .fontColor(Color.White)
                .backgroundColor(0x007DFF)
                .width('100%')
                .height('100%')
                .textAlign(TextAlign.Center)
            }
          }, (day: number) => JSON.stringify(day))
        }, (day: number) => JSON.stringify(day))
      }
      .columnsTemplate('1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr')
      .columnsGap(10)
      .rowsGap(10)
      .height(300)
    }
    .padding(12)
    .height('100%')
    .backgroundColor(0xF1F3F5)
  }
}