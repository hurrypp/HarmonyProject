@Component
@Entry
struct Index{
  @State count:number = 100

  build() {
    let score: number = 90
    let passed: boolean = score >= 60 ? true : false
    console.log(passed)
  }
}