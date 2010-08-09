<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="JqueryTest.ascx.cs" Inherits="TimeSheetProject.JqueryTest" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head> 
   <title>Sum of all TextBox values using jQuery</title>    
   <script type="text/javascript"    src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js">   
    </script>    <script type="text/javascript">
                     $(function () {
                         $("#addAll").click(function () {
                             var add = 0; $(".amt").each(function () { add += Number($(this).val()); });
                             $("#para").text("Sum of all textboxes is : " + add);
                         });
                     }); 
      </script></head><body>    
      <input id="Text1" class="amt" type="text" /><br /> 
         <input id="Text2" class="amt" type="text" /><br />  
           <input id="Text3" class="amt" type="text" /><br />     
            <input id="addAll" type="button" value="Sum all Textboxes" /><br /> 
               <p id="para" /></body></html>
