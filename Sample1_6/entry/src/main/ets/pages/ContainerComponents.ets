@Entry
@Component
struct ContainerComponents {

  build() {

    Column() {
      // // Column容器组件
      // ColumnDemo()
      // Row容器组件
      RowDemo()
    }

  }
}

@Component
struct ColumnDemo {
  build() {
    Column({space: 60}) {
      Button('Image', { type: ButtonType.Normal, stateEffect: true })
        .width('90%')
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
      Button('Text', { type: ButtonType.Normal, stateEffect: true })
        .width('90%')
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
      Button('TextInput', { type: ButtonType.Normal, stateEffect: true })
        .width('90%')
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
      Button('Button', { type: ButtonType.Normal, stateEffect: true })
        .width('90%')
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

@Component
struct RowDemo {
  build() {
    Row({space: 10}) {
      Button('Image', { type: ButtonType.Normal, stateEffect: true })
        .width(100)
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
      Button('Text', { type: ButtonType.Normal, stateEffect: true })
        .width(100)
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
      Button('Button', { type: ButtonType.Normal, stateEffect: true })
        .width(100)
        .height(70)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')

    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}