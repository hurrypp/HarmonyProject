
//类的定义，通常用于反映一个具体业务中的一个相对固定的结构。比如用户系统中的用户的主体结构
//export关键字用于导出给其他源码使用
export class Person {
  name: string
  age: number
  isMale: boolean
  address? : string

  constructor(name: string, age: number, isMale: boolean ) {
    this.name = name
    this.age = age
    this.isMale = isMale
  }

  detail() {
    let suffix = ''

    if (this.isMale) {
      suffix = (this.age <= 18 ? '活力男生' : '男士')

    } else {
      suffix = (this.age <= 18 ? '可爱女生' : '女士')
    }

    return `${this.name}是一位${this.age}岁的${suffix}。${this.address ?? ''}`
  }

}


