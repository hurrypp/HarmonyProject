
export  class Person {
  name: string
  age: number
  isMale: boolean

  constructor(name: string, age: number, isMale: boolean) {
    this.name = name
    this.age = age
    this.isMale = isMale
  }
  address?: string

  detail(){
    let suffix = ''

    if (this.isMale){
      suffix = (this.age <= 18 ? '活力男生：' : '男士')
    }else {
      suffix = (this.age <= 18 ? '活力女生：' : '女士')
    }

    let result = `${this.name}是一位${this.age}岁的${suffix}。${this.address ?? ''}`
    return result
  }
}