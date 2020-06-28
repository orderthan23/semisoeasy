<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int col = 30;
	int row = 3;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<style>
*{margin : 0;}
</style>
<title>Insert title here</title>
</head>
<body>


			<%
				for (int i = 1; i <= col;) {
			%>
			<br>
				<%
					for (int j = 1; j <= row; i++, j++) {
				%>
				<%
					if (i > 30) {
								break;
							}
				%>
				

			
				<div class="max-w-3xl mx-auto">
        <div class="flex items-center justify-center min-h-screen">
            <div class="max-w-sm w-full sm:w-1/2 lg:w-1/3 py-6 px-3">
                <div class="bg-white shadow-xl rounded-lg overflow-hidden">
                    <div class="bg-cover bg-center h-56 p-4" style="background-image: url(https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80)">
                        <div class="flex justify-end">
                            <svg class="h-6 w-6 text-white fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path d="M12.76 3.76a6 6 0 0 1 8.48 8.48l-8.53 8.54a1 1 0 0 1-1.42 0l-8.53-8.54a6 6 0 0 1 8.48-8.48l.76.75.76-.75zm7.07 7.07a4 4 0 1 0-5.66-5.66l-1.46 1.47a1 1 0 0 1-1.42 0L9.83 5.17a4 4 0 1 0-5.66 5.66L12 18.66l7.83-7.83z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="p-4">
                        <p class="uppercase tracking-wide text-sm font-bold text-gray-700">코워킹 스페이스 <%=i%>번째 공간</p>
                        <p class="text-3xl text-gray-900">	<%=i * 10000%>원 /개월</p>
                        <p class="text-gray-700">시발 되라좀</p>
                    </div>
                    
                        </div>
                    </div>
                </div>
            </div>
			

				<%
					}
				%>
			<br>
			<%
				}
			%>

	




    
					
      
    
</body>
</html>