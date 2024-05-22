import { router } from '@kit.ArkUI';


class routerParams {
  src: string
  constructor(src: string) {
    this.src = src;
  }

}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Button('点我跳转第二页').onClick((event: ClickEvent) => {
        router.pushUrl({
          url: "pages/Page22",
          params: '来自第一页的数据'
        })
      })
    }
    .height('100%')
    .width('100%')
  }
}