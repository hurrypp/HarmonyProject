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
import Logger from '../common/utils/Logger';

const TAG = '[IndexPage]';
class routerParams {
  src:string
  constructor(str:string) {
    this.src = str
  }
}

/**
 * The IndexPage is the entry point of the application.
 */
@Entry
@Component
struct Index {
  @State message: string = CommonConstants.INDEX_MESSAGE;

  build() {
    Row() {
      Column() {
        Text()
          .height(150)
        Text(this.message)
          .fontSize(CommonConstants.FONT_SIZE)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button($r('app.string.next'))
          .fontSize(CommonConstants.BUTTON_FONT_SIZE)
          .width(CommonConstants.BUTTON_WIDTH)
          .height(CommonConstants.BUTTON_HEIGHT)
          .backgroundColor($r('app.color.button_bg'))
          .onClick(() => {
            //跳转
            router.pushUrl({
              //跳转到的url
              url: CommonConstants.SECOND_URL,
              // 传递的对象 创建一个新的 routerParams 对象，并设置其中的 src 属性为 CommonConstants.SECOND_SRC_MSG
              params: new routerParams(CommonConstants.SECOND_SRC_MSG)
            }).catch((error:Error) => {
              // 如果页面跳转失败，使用 Logger.info 方法打印错误信息到控制台
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            });
          })
      }
      .width(CommonConstants.FULL_WIDTH)
      .height(CommonConstants.LAYOUT_HEIGHT)
    }
    .height(CommonConstants.FULL_HEIGHT)
    // .backgroundColor($r('app.color.page_bg'))
    .backgroundImage('/common/res/tp.png', ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)

  }
}