import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import Logger from '../common/utils/Logger';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    // 页面初始化
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    // 系统资源的释放、数据的保存等
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    // 设置WindowStage的事件订阅（获焦/失焦、可见/不可见）
    try {
      windowStage.on('windowStageEvent', (data) => {
        let stageEventType: window.WindowStageEventType = data;
        switch (stageEventType) {
          case window.WindowStageEventType.SHOWN:
            Logger.error('windowStage foreground. 切到前台');
            break;
          case window.WindowStageEventType.ACTIVE:
            Logger.error('windowStage active.获焦状态');
            break;
          case window.WindowStageEventType.INACTIVE:
            Logger.error('windowStage inactive.失焦状态');
            break;
          case window.WindowStageEventType.HIDDEN:
            Logger.error('windowStage background. 切到后台');
            break;
          default:
            break;
        }
      });
    } catch (exception) {
      Logger.error('Failed to enable the listener for window stage event changes. Cause:' + JSON.stringify(exception));
    }
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {

    // Ability has brought to foreground申请系统需要的资源，或者重新申请在onBackground()中释放的资源
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background 释放UI不可见时无用的资源，或者在此回调中执行较为耗时的操作、例如状态保存等
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
