<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeSheetMainPage.ascx.cs" Inherits="TimeSheetProject.TimeSheetMainPage" %>

<head>
<title>Ionnor Timesheet Portal</title>
<link href="Styles/IonnorTimesheet.css" rel="stylesheet" type="text/css" />    

    <script type="text/javascript"    src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js">   
    </script>    
    <script language="javascript" type="text/javascript">
        function SaveAllData() { 
         var totalTaskSum = "";
         $('table.TaskTable').each(function () {
             var $table = $(this);
             $('tr', $table).each(function () {
                 var $tr = $(this);
                 $($tr).children().each(function () {    
                 if( $(this).text()!="")      
                     totalTaskSum += $(this).text() + ",";
                 });

             $('INPUT', $tr).each(function (column) {
                 if ($(this).val() != "")
                     totalTaskSum += $(this).val() + ",";
                 });
                 totalTaskSum += ";";
             });
         });         
         $("#<%= txtHidd.ClientID %>").val(totalTaskSum);
        }


    $(document).ready (function () {
    UpdateTotal();
});

        function UpdateRemarks() {
           
        }

        function UpdateTotal() {
                var add = 0;
                $(".MonTaskTime").each(function () {
                    add += Number($(this).val());
                });
                $("#MonTaskSum").text(add);

                var add = 0;
                $(".TueTaskTime").each(function () {
                    add += Number($(this).val());
                });
                $("#TueTaskSum").text(add);

                var add = 0;
                $(".WedTaskTime").each(function () {
                    add += Number($(this).val());
                });
                $("#WedTaskSum").text(add);

                var add = 0;
                $(".ThuTaskTime").each(function () {
                    add += Number($(this).val());
                });
                $("#ThuTaskSum").text(add);

                var add = 0;
                $(".SatTaskTime").each(function () {
                    add += Number($(this).val());
                });                
                $("#SatTaskSum").text(add);

                var add = 0;
                $(".SunTaskTime").each(function () {
                    add += Number($(this).val());                    
                });
                $("#SunTaskSum").text(add);

                var add = 0;
                $(".FriTaskTime").each(function () {
                    add += Number($(this).val());
                });
                $("#FriTaskSum").text(add);

                var totalTaskSum = 0;
                $('table.TaskTable').each(function () {
                    var $table = $(this);
                    $('tr', $table).each(function () {
                        var $tr = $(this);
                        var add = 0;
                        $('INPUT', $tr).each(function () {
                            add += Number($(this).val());
                        });
                        $("#HorizontalTaskSum", $tr).text(add);
                        totalTaskSum += add;
                    });
                    $("#AllTaskSum").text(totalTaskSum);
                });                                    
                
        }
     
 </script>
   
    <style type="text/css">
        .ms-listbox
        {
            margin-left: 0px;
        }
    </style>
   
</head>
 <form id="Form1" runat="server" > 
<table style="width: 100%;">
    <tr>
        <td colspan="3"  >            
            <asp:Label  class="ms-mainheading" ID="Label1" runat="server" Text="TimeSheet Entry Weekly" >
</asp:Label>
        </td>        
        
    </tr>
    <tr>
        <td  >
            &nbsp;
           
           <asp:RadioButtonList runat="server" Width="242px" AutoPostBack="True" 
                RepeatDirection="Horizontal" >
           <asp:ListItem Selected="True">For Self</asp:ListItem>
           <asp:ListItem>For Team Member</asp:ListItem>
           </asp:RadioButtonList>
        </td>        
        <td align="right" valign="top" >
            <asp:Label CssClass="ms-pagelabels" ID="Label2" runat="server" Text="Team Member Name"></asp:Label>
            
        </td>
        <td style="width:100px"><asp:ListBox CssClass="ms-listbox" ID="listBoxTeamMembers" runat="server" 
                Height="54px" Width="191px"></asp:ListBox></td>
            
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;
            <asp:Label CssClass="ms-pagelabels" ID="Label3" runat="server" Text="Date"></asp:Label>
        &nbsp;:&nbsp; 
            <asp:Button ID="btnPreviousWeek" runat="server" Text="<" Width="22px" 
                Height="29px" onclick="BtnPreviousWeekClick" />
            
            <asp:Label ID="lblDate" CssClass="ms-pagelabels" runat="server">
            </asp:Label>         
            <asp:Button ID="btnNextWeek" runat="server" Text=">>" Height="28px" 
                onclick="BtnNextWeekClick" Width="22px" />
        </td>       
    </tr>  
    <tr> 
       <td colspan="3">
       <asp:Repeater runat="server" id="rptTasks" >
        <HeaderTemplate>
            <table id="taskTable" class="TaskTable" border ="1" cellspacing=0>
            <thead >
            <td style="min-width:200px; font-size:15pt; font-weight:bold">Project</td>
            <td style="min-width:400px; font-size:15pt;font-weight:bold">Task</td>
            <td style="font-size:12pt;font-weight:bold" ><%= "Mon, " + TaskStartDate.Day %></td>
            <td style="font-size:12pt;font-weight:bold"><%= "Tue, " + TaskStartDate.AddDays(1).Day %></td>
            <td style="font-size:12pt;font-weight:bold"><%= "Wed, " + TaskStartDate.AddDays(2).Day %></td>
            <td style="font-size:12pt;font-weight:bold"><%= "Thu, " + TaskStartDate.AddDays(3).Day%></td>
            <td style="font-size:12pt;font-weight:bold"><%= "Fri, " + TaskStartDate.AddDays(4).Day%></td>
             <td style="font-size:12pt;font-weight:bold"><%= "Sat, " + TaskStartDate.AddDays(3).Day%></td>
            <td style="font-size:12pt;font-weight:bold"><%= "Sun, " + TaskStartDate.AddDays(4).Day%></td>
            <td style="font-size:12pt;font-weight:bold;width:60px;">Total</td>
            </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
            <td><%# Eval("Project.Description") %></td>
            <td><%# Eval("Description") %></td>
            <td ><input id="txtMonTime" class="MonTaskTime" style="width:60px; border:0px" onblur="UpdateTotal()" value="<%# Eval("MonTimeHours")%>" /></td>
            <td ><input id="txtTusTime" class="TueTaskTime" style="width:60px; border:0px" onblur="UpdateTotal()" value="<%# Eval("TueTimeHours")%>"/></td>
            <td ><input id="txtWedTime" class="WedTaskTime" style="width:60px; border:0px" onblur="UpdateTotal()" value="<%# Eval("WedTimeHours")%>"/></td>
            <td ><input id="txtThuTime" class="ThuTaskTime" style="width:60px; border:0px" onblur="UpdateTotal()" value="<%# Eval("ThuTimeHours")%>"/></td>
            <td ><input id="txtFriTime" class="FriTaskTime" style="width:60px; border:0px" onblur="UpdateTotal()" value="<%# Eval("FriTimeHours")%>"/></td>
            <td ><input id="txtSatTime"   class="SatTaskTime" style="width:60px; border:0px"  onclick="UpdateRemarks()" value="<%# Eval("SatTimeHours")%>"  /></td>
            <td ><input id="txtSunTime"  class="SunTaskTime" style="width:60px; border:0px" onclick="UpdateRemarks()" value="<%# Eval("SunTimeHours")%>" /></td>
            <td id="HorizontalTaskSum" class="HorizontalTaskTime"></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            <tfoot>
            <td style="font-size:12pt;font-weight:bold">Total</td>
            <td > &nbsp;</td>
            <td id="MonTaskSum"></td>
            <td id="TueTaskSum"></td>                
            <td id="WedTaskSum"></td>
            <td id="ThuTaskSum"></td>
            <td id="FriTaskSum"></td>
            <td id="SatTaskSum"></td>
            <td id="SunTaskSum"></td>
            <td id="AllTaskSum"></td>
            </tfoot>
            <tr></tr>
        </table>
        </FooterTemplate>
       </asp:Repeater>
       </td>
       </tr>
       <tr>
       <td colspan="3" align="right">
       <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="31px" Width="156px" 
               OnClientClick="SaveAllData()" onclick="btnUpdate_Click" />
       </td></tr>
    
       <tr>
       <td >
       <asp:Label ID="lblRemarks" runat="server" ></asp:Label>
     </td>     
        </tr>
        <tr>
        <td>
        <input type="hidden" id="txtHidd" runat="server" />
        </td>
        </tr>
</table> 
</form>



 










