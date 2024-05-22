/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { router } from '@kit.ArkUI';
import CommonConstants from '../common/constants/CommonConstants';

class routerParams {
  src:string = 'data222'
}
/**
 * The SecondPage is the router push page.
 */
@Entry
@Component
struct SecondPage {
  @State message: string = CommonConstants.SECOND_MESSAGE;
  @State params: routerParams = new routerParams() //router.getParams() as routerParams
  @State src: string = this.params.src;

  build() {
    Row() {
      Column() {
        Text()
          .height(150)
        Text(this.message)
          .fontSize(CommonConstants.FONT_SIZE)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(CommonConstants.PARAMS_FONT_SIZE)
          .opacity(CommonConstants.PARAMS_OPACITY)
        Blank()
        Button($r('app.string.back'))
          .fontSize(CommonConstants.BUTTON_FONT_SIZE)
          .width(CommonConstants.BUTTON_WIDTH)
          .height(CommonConstants.BUTTON_HEIGHT)
          .backgroundColor($r('app.color.button_bg'))
          //点击事件
          .onClick(() => {
            // 设置按钮点击事件的处理函数为一个箭头函数，该函数会执行 router.back() 方法进行页面跳转
            router.back();
          })
      }
      .width(CommonConstants.FULL_WIDTH)
      .height(CommonConstants.LAYOUT_HEIGHT)
    }
    .height(CommonConstants.FULL_HEIGHT)
    // .backgroundColor($r('app.color.page_bg')
    .backgroundImage('/common/res/xc.png', ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)


  }
}