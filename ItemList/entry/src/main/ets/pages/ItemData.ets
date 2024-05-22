
@Component
export default struct ItemData {    //export 可以导出模块
  private content?:string

  @State isComplete: boolean = false  //判断是否完成

  @Builder                          //icon 装饰器
  labelIcon(icon: ResourceStr){
    Image(icon)
      .objectFit(ImageFit.Contain)
      .width(28)
      .height(28)
      .margin(20)
  }

  build() {
    Row(){
      if (this.isComplete) {
        this.labelIcon($r('app.media.ic_ok'))
      }else {
        this.labelIcon($r('app.media.ic_default'))
      }

      Text(this.content)
        .fontSize(20)
        .fontWeight(500)
        .opacity(this.isComplete ? 0.4 : 1)
        .decoration({
          type: this.isComplete
            ? TextDecorationType.LineThrough
            : TextDecorationType.None
        })
    }
    .borderRadius(24)
    .backgroundColor('#ffE5E4E2' )
    .width("90%")
    .height(64)
    .onClick(() => {
      this.isComplete = !this.isComplete
    })
    .borderColor('#E5E4E2')
  }
}