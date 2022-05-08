function getPagination(data){
   //페이지 목록 출력
   var str = "";
   if (data.pm.prev)
      str += "<a href = '" + (data.pm.startPage - 1) + "'> << </a>";
   for (var i = data.pm.startPage; i <= data.pm.endPage; i++) {
      var active = data.pm.cri.page == i ? 'active' : '';
      str += "<a href = '" + i + "' class=" + active + ">" + i + "</a>";
   }
   if (data.pm.next)
      str += "<a href = '" + (data.pm.endPage + 1) + "'> >> </a>";
   
   return str;
}