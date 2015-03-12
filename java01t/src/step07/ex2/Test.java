package step07.ex2;

/* 기본 생성자
 * - 파라미터 없이 호출되는 생성자이다.
 * - 개발자가 명시적으로 선언하지 않으면, 컴파일러가 자동으로 추가한다.
 * - 따라서, 생성자가 없는 클래스는 존재하지 않는다. 
 */

public class Test {

  // 이 클래스 조차도 생성자를 만들지 않으면, 컴파일러가 기본 생성자를 자동으로 추가한다.
  //public Test() {}
  
  public static void main(String[] args) {
    // 인스턴스를 생성할 때는 어떤 생성자를 호출할지 반드시 지정해야 한다.
    // 지정하는 방법:
    // 클래스 이름 뒤에 파라미터 값을 어떻게 넣느냐에 따라 결정한다.
    // 다음과 같이 아무런 값을 넣지 않으면, 기본 생성자가 호출된다.
    Score s2 = new Score();

    s2.summarize();
    s2.average();
    s2.print();
    
    // 다음과 같이 생성자를 호출하지 않겠다고 괄호를 쓰지 않으면, 문법 오류!
    //Score s3 = new Score;
  }

}



















