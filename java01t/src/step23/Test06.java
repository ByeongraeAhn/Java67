package step23;

import java.lang.reflect.Method;
import java.util.ArrayList;



/* 실습 목표: 메서드 호출하기
 * 
 */
public class Test06 {
  static class MyClass {
    public int plus(int a, int b) {
      return a + b;
    }
    public int minus(int a, int b) {
      return a - b;
    }
  }
  
  public static void main(String[] args) throws Exception {
    MyClass p = new MyClass();
    Class clazz = p.getClass();
    Method m = clazz.getMethod("plus", int.class, int.class);
    System.out.println(m.invoke(p, new Object[]{30, 20}));
    
    ArrayList<Object> list = new ArrayList<Object>();
    list.add(100);
    list.add(200);
    System.out.println(m.invoke(p, list.toArray()));
  }

}










