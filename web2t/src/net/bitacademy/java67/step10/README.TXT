[Forward/Include]
한 요청에 대해 여러 서블릿이 협력하여 처리하는 기법.

1. Forward
- 특정 조건에 대해 다른 서블릿으로 실행을 위임한다.
- 한 번 위임하면 다시 이전 서블릿으로 실행을 되돌릴 수 없다.
- 요청이 바뀌는 것이 아니기 때문에 클라이언트의 주소창에 변화가 없다. 
- 포워딩하면 이전 서블릿의 출력은 버린다.
  => step11의 BoardDetailServlet을 확인하라!

2. 각 페이지에 꼬리말 및 꼬리말 스타일 추가
1) BoardListServlet
2) BoardDetailServlet

3. 포워드/인클루드 서블릿끼리 데이터 공유
- ServletRequest 보관소에 데이터를 저장하라!