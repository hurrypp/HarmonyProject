import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { loginComponentManager } from '@kit.AccountKit';

//减法函数测试
function sub(x: number, y: number) {
  return x - y
}
export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');

    //变量
    let count = 0 //number类型,不写类型：类型推断
    // count = "abn"
    count += 10
    console.log('count的值：' + count)

    const isCorrect: boolean = false
    // isCorrect = true

    enum Mycolor {
      Red, Blue, Green
    }

    let bgColor = Mycolor.Green

    //集合类型：数组（Array）
    let times = [1, 2, 3]
    let students = ['zhao', 'wang', 'sun', 'li']
    console.log('第三个同学是：' + students[3-1])

    students[10+1] = 'X man'
    console.log('第十个同学是：' + students[12-1])

    //Union 类型
    let id : number | string = '101'
    id = 202

    //别名
    type ID = number | string | null | undefined
    let id2 : ID = 900
    id2 = 'No. 900'

    //可空类型：类型里面有可空的值， null undefined
    let license: string | null = null //驾照
    let passport: string | undefined = 'G980776544' //护照=
    //空合运算符
    console.log('护照号是：' + (passport ?? '没有护照号！'))
    //判断语句
    if (license == null)  {
      console.log('驾照：没有驾照')
    }else {
      console.log('驾照：' + license)
    }

    for (let index = 0; index < times.length; index++) {
      const element = students[index];
      console.log('学生是：' + element)

    }

    for (const element of students) {
      console.log('学生是(forof)：' + students)
    }
    console.log('函数减法测试，3-5 = ' +sub(3,5))
    console.log('函数乘法测试，3X5 = ' +this.multiply(3,5))

    //在函数内部定义
    let add3 = (a: number, b:number, c: number) => {return a + b +c}
    console.log('函数加法测试，3+5+8 = ' + add3(3,5,8))
  }

  multiply(a: number, b: number){
    return a * b
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

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
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
