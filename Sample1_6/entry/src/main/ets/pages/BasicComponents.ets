@Entry
@Component
struct BasicComponents {
  build() {
    Column({space: 10}) {
      // // Text组件
      // TextDemo()
      // // Image组件
      // ImageDemo()
      // TextInput组件
      TextInputDemo()
      // // Button组件
      // ButtonDemo()
      // // LoadingProgress组件
      // LoadingProgressDemo()
      // // 用资源引用类型
      // ResourceDemo()

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)
    .padding(10)
  }
}

@Component
struct TextDemo {
  build() {
    Column() {
      Text('Hello ArkTs')
      Text('Hello ArkTs')
        .fontColor(Color.Blue)
        .fontSize(20)
        .fontStyle(FontStyle.Italic)
        .fontWeight(FontWeight.Bold)
        .fontFamily('Arial')
    }
    .backgroundColor(0xF1F3F5)
    .justifyContent(FlexAlign.Center)
    .height(100)
    .width(200)
  }
}


@Component
struct ImageDemo {
  build() {
    Column({space: 10}) {
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.Cover)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.Contain)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.Auto)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.Fill)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.ScaleDown)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
      Image($r("app.media.imageDemo"))
        .objectFit(ImageFit.None)
        .backgroundColor(0xCCCCCC)
        .width(100)
        .height(100)
    }
    .backgroundColor(0xF1F3F5)
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}

@Component
struct TextInputDemo {
  @State text: string = '';

  build() {
    Column({space: 10}) {
      TextInput()
        .fontColor(Color.Blue)
        .fontSize(20)
        .fontStyle(FontStyle.Italic)
        .fontWeight(FontWeight.Bold)
        .fontFamily('Arial')

      TextInput({ placeholder: '请输入帐号' })
        .placeholderColor(0x999999)
        .placeholderFont({ size: 20, weight: FontWeight.Medium, family: 'cursive', style: FontStyle.Italic })

      TextInput({ placeholder: '请输入密码' })
        .type(InputType.Password)

      Column() {
        TextInput({ placeholder: '请输入账号' })
          .caretColor(Color.Blue)
          .onChange((value: string) => {
            this.text = value;
          })
        Text(this.text)
      }
      .alignItems(HorizontalAlign.Center)
      .padding(12)
      .backgroundColor(0xE6F2FD)
    }
    .backgroundColor(0xF1F3F5)
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}

@Component
struct ButtonDemo {
  build() {
    Column({space: 10}) {
      Button('登录', { type: ButtonType.Capsule, stateEffect: true })
        .width('90%')
        .height(50)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')

      Button('登录', { type: ButtonType.Circle, stateEffect: true })
        .width(100)
        // .height(100)
        .fontSize(24)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')

      Button('登录', { type: ButtonType.Normal, stateEffect: true })
        .width('90%')
        .height(50)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')

    }
    .backgroundColor(0xF1F3F5)
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}

@Component
struct LoadingProgressDemo {
  build() {
    Column({space: 10}) {

      LoadingProgress()
        .color(Color.Blue)
        .height(100)
        .width(100)

      LoadingProgress()
        .color(Color.Orange)
        .height(100)
        .width(100)

      LoadingProgress()
        .color(Color.Green)
        .height(100)
        .width(100)
    }
    .backgroundColor(0xF1F3F5)
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}

@Component
struct ResourceDemo {
  build() {

    Column() {
      Button('登录', { type: ButtonType.Capsule, stateEffect: true })
        .width(300)
        .height(40)
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#007DFF')
    }
    .width('100%')
    .height('100%')

  }
}