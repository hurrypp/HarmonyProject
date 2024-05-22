import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

//1.在最外层定义函数
function sub(x: number, y: number ) {
  return x - y
}

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');

    //变量
    let count = 40 //类型推断： 类型标注通常可以省略。 number类型
    // count = '50' //不允许更改类型，如果确实需要，请参考联合类型
    count += 10
    console.log('count的值：' + count)

    let isCorrect: boolean = false // boolean类型，只有2个值： true和false
    isCorrect = true

    //常量
    const name = "next课程"  // string类型
    // name = '4.0' //常量不允许赋新值

    //枚举： 代表一个定义下的所有成员，数目固定
    enum MyColor {
      Red = 1, Green, Blue //成员默认是number，从0开始
    }
    let bgColor = MyColor.Blue //枚举变量
    bgColor = MyColor.Green

    //集合类型： 数组（Array）
    let times = [1, 2, 3, 4, 5]
    let students = ['Zhao', 'Sun', 'Wang', 'Li']
    console.log('第一个学生是：' + students[0]) //索引访问数组元素
    students[10] = 'XX'  // 数组不越界
    students['ff'] //不出错

    console.log('第999个学生是：' + students['fff'])  //undefined

    //联合类型:适用于变量可能为多个不同类型的值
    let id1 : number | string = "101"  //无法使用类型推断，比如注明类型
    id1 = 102  //允许，因为id可以是number 或 string的任意一种

    //类型别名: 给一个类型，起一个更有含义的新名字
    type ID = number | string
    let id2: ID = 6
    id2 = '9'

    //可空类型： 类型可能含有空值，例如  string | null ,  string | undefined
    let license: string | null = null //驾照号
    let passport: string | undefined  //护照号

    //空安全，  空值合并运算符(相当于快捷的判断)
    // console.log('驾照信息是:' + license?.length.toString())
    console.log('护照号是：' + (passport ?? '没有护照号'))   //没有护照号

    //判断语句
    if (license == null) {
      console.log('驾照信息是: 无驾照！')
    } else {
      console.log('驾照信息是:' + license)
    }

    //循环: 重复执行某一类语句， 或者对一个集合类型变量，例如数组，进行遍历
    for (let index = 0; index < students.length; index++) {
      const element = students[index];

      //字符串插值，使用``来包含字符串，将其他变量插入
      console.log(`第${index + 1}个学生是：${element}`)
    }

    //for of 循环，更简洁
    for (const element of students) {
      // console.log('学生：' + element)
      hilog.info(0x0000, 'forof', '%{public}s', '学生：' + element)  //hilog日志可归类，使用tag筛选
    }

    //3.在函数内定义： 箭头函数
    let add = (a : number, b :number ) => { return a + b }

    hilog.info(0x0000, '函数调用', '%{public}s', "3+5=" + add(3,5))
    hilog.info(0x0000, '函数调用', '%{public}s', "3×5=" + this.multiply(3,5))
    hilog.info(0x0000, '函数调用', '%{public}s', "3-5=" + sub(3,5));
    
  }

  //2.在class内定义一个函数
  multiply(a: number , b: number) {
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

