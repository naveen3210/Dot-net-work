<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Application.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%-----------Calendar------------%>
   <link href="http://www.jquerycookbook.com/demos/css/jquery-ui.css" rel="stylesheet" />
   <script src="http://www.jquerycookbook.com/demos/scripts/jquery-1.11.1.min.js"></script>
   <script src="http://www.jquerycookbook.com/demos/scripts/jquery-ui.min.js"></script>
   <script>
       $(function () {
           $("#datep").datepicker();
           
       });
   </script>

</head>
<body>
    <form id="form1" runat="server">
        <div style ="margin-left:100px; margin-right :100px;margin-top:50px;margin-bottom :50px">
        <h1 style ="text-align :center">Sample Employment Application Form</h1>
       <div style="height:60px">
            <div style ="text-align :center ; float :left;margin-left :50px">
            <p style="text-align :center; border :solid ; width: 220px; height: auto "> PLEASE PRINT ALL INFORMATION REQUESTED EXCEPT SIGNATURE</p>
        </div>
        <div style ="text-align :right; float :right;margin-right :50px ">
             <p style="text-align :center; border :solid ; width: 220px; height: 60px "> </p>
        </div>
       </div>
       
        <h4 style ="text-align :center "> APPLICATION FOR EMPLOYMENT</h4>
        <div style="border: solid; height: auto">
            <div style ="text-align :center"> APPLICANTS MAY BE TESTED FOR ILLEGAL DRUGS</div>
            <div style ="border :solid ;height :auto;margin-top :10px;margin-left :10px;margin-right :10px">
            <p style ="margin-top :10px;margin-left :10px; font-weight: bold"> PLEASE COMPLETE PAGES 1-4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label22" runat="server" Text="DATE"></asp:Label> &nbsp;
              <input type="text" id="datep" /></p>
         

            <table >
                <tr>
                     <td style="font-weight: bold">&nbsp;&nbsp; First Name</td>
                     <td> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label2" runat="server" Text="Middle Name" Font-Bold="True"></asp:Label> </td>
                     <td>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label3" runat="server" Text="Last Name" Font-Bold ="true" ></asp:Label> </td>
                     <td> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label4" runat="server" Text="Maiden Name" Font-Bold="true"></asp:Label> </td>
                     <td> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
            </table>
                <div style ="text-align :left;margin-top :10px;margin-left :10px;font-weight:bold "> ADDRESS DETAILS:</div>
                <table >
                    <tr>
                        <td> &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Address Line 1" Font-Bold ="true" ></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Address Line 2" Font-Bold ="true" ></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td> &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="City" Font-Bold ="true" ></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td> 
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="State" Font-Bold ="true" ></asp:Label></td>
                        <td>&nbsp;
                            <select><option value="AL">Alabama</option>
<option value="AK">Alaska</option>
<option value="AZ">Arizona</option>
<option value="AR">Arkansas</option>
<option value="CA">California</option>
<option value="CO">Colorado</option>
<option value="CT">Connecticut</option>
<option value="DE">Delaware</option>
<option value="FL">Florida</option>
<option value="GA">Georgia</option>
<option value="HI">Hawaii</option>
<option value="ID">Idaho</option>
<option value="IL">Illinois</option>
<option value="IN">Indiana</option>
<option value="IA">Iowa</option>
<option value="KS">Kansas</option>
<option value="KY">Kentucky</option>
<option value="LA">Louisiana</option>
<option value="ME">Maine</option>
<option value="MD">Maryland</option>
<option value="MA">Massachusetts</option>
<option value="MI">Michigan</option>
<option value="MN">Minnesota</option>
<option value="MS">Mississippi</option>
<option value="MO">Missouri</option>
<option value="MT">Montana</option>
<option value="NE">Nebraska</option>
<option value="NV">Nevada</option>
<option value="NH">New Hampshire</option>
<option value="NJ">New Jersey</option>
<option value="NM">New Mexico</option>
<option value="NY">New York</option>
<option value="NC">North Carolina</option>
<option value="ND">North Dakota</option>
<option value="OH">Ohio</option>
<option value="OK">Oklahoma</option>
<option value="OR">Oregon</option>
<option value="PA">Pennsylvania</option>
<option value="RI">Rhode Island</option>
<option value="SC">South Carolina</option>
<option value="SD">South Dakota</option>
<option value="TN">Tennessee</option>
<option value="TX">Texas</option>
<option value="UT">Utah</option>
<option value="VT">Vermont</option>
<option value="VA">Virginia</option>
<option value="WA">Washington</option>
<option value="WV">West Virginia</option>
<option value="WI">Wisconsin</option>
<option value="WY">Wyoming</option>
<option value="DC">Washington DC</option>
<option value="AA">Armed Forces Americas</option>
<option value="AE">Armed Forces Europe</option>
<option value="AP">Armed Forces Pacific</option>
</select>
                        </td>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Zip-Code" Font-Bold ="true" ></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Country" Font-Bold ="true" ></asp:Label></td>
                        <td> &nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                    </tr>
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <tr style ="margin-bottom :15px">
                        <td> &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="How Long(InYears)" Font-Bold="True"></asp:Label> </td>
                        <td> &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9 +</asp:ListItem>
                            </asp:DropDownList> </td>
                    </tr> 
                </table>
                <table > 
                    <tr>
                    <td>&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Social Security Number" Font-Bold="True"></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="!" ControlToValidate="TextBox8" ForeColor="Red">!</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="xxx-xx-xxxx" ControlToValidate="TextBox8" ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="Mobile Number " Font-Bold="True"></asp:Label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter mobile number" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(xxx) xxx-xxxx" ControlToValidate="TextBox11" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
                <br />
         <div style ="margin-left :10px"><asp:Label ID="Label14" runat="server" Text="Above 18" Font-Bold="True"></asp:Label>
             <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                 <asp:ListItem>Yes</asp:ListItem>
                 <asp:ListItem>No</asp:ListItem>
             </asp:RadioButtonList></div>
                <div>
                    <table>
                    <tr>
                        <td> &nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Position Applied for" Font-Bold="True"></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label16" runat="server" Text="Desired Pay" Font-Bold="True"></asp:Label></td>
                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                        <td> &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                            <asp:ListItem>Hourly</asp:ListItem>
                            <asp:ListItem>Monthly</asp:ListItem>
                            <asp:ListItem>Annually</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                        </table>
                    <table>
                        <tr>
                            <td>&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Text="Days Available To Work"></asp:Label></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="No Pref" /></td>
                         </tr>
                        <tr> 
                             <td><asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                <asp:ListItem>Mon</asp:ListItem>
                                <asp:ListItem>Tue</asp:ListItem>
                                <asp:ListItem>Wed</asp:ListItem>
                                <asp:ListItem>Thu</asp:ListItem>
                                <asp:ListItem>Fri</asp:ListItem>
                                <asp:ListItem>Sat</asp:ListItem>
                                <asp:ListItem>Sun</asp:ListItem>
                                </asp:CheckBoxList></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Text="How many hours can you work weekly?"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                            <td><asp:Label ID="Label19" runat="server" Text="Can you work nights?"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                        </tr>    
                </table>
                    <table >
                         <tr>
                             <td>&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Text="Employment Desired"></asp:Label></td>
                           <td><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>FULL-TIME ONLY &nbsp;&nbsp;</asp:ListItem>
                                <asp:ListItem>PART-TIME ONLY&nbsp;&nbsp;</asp:ListItem>
                                <asp:ListItem>FULL OR PART-TIME</asp:ListItem>
                                </asp:RadioButtonList></td>
                            </tr>
                    </table>
                    <div style ="margin-left :10px"><asp:Label ID="Label21" runat="server" Text="When available for work?"></asp:Label> &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></div>
                    <br /> 
                </div> 
    </div>
          
            <%--Second Table  --%>
    <div style ="border :solid ;height :auto;margin-top :10px;margin-left :10px;margin-right :10px">
                <div style ="text-align :left;margin-top :10px;margin-left :10px ">
                    
                    <table style="width: 100%;">
                        <tr>
                            <td><asp:Label ID="Label23" runat="server" Text="TYPE OF SCHOOL"></asp:Label></td>
                            <td><asp:Label ID="Label24" runat="server" Text="NAME OF SCHOOL"></asp:Label></td>
                            <td><asp:Label ID="Label25" runat="server" Text="LOCATION (Complete mailing address)"></asp:Label></td>
                            <td><asp:Label ID="Label27" runat="server" Text="NUMBER OF YEARS COMPLETED"></asp:Label></td>
                            <td><asp:Label ID="Label26" runat="server" Text="MAJOR & DEGREE"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label28" runat="server" Text="High School"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox18" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox19" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox20" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox21" runat="server" Width="310px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label29" runat="server" Text="College"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox22" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox23" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox24" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox25" runat="server" Width="310px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label30" runat="server" Text="Bus. or Trade School"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox26" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox27" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox28" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox29" runat="server" Width="310px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label31" runat="server" Text="Professional School"></asp:Label>&nbsp;</td>
                            <td><asp:TextBox ID="TextBox30" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox31" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox32" runat="server" Width="320px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox33" runat="server" Width="310px"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
            </div> 
       </div>
            <p> </p>
               <div style ="margin-left :10px"> &nbsp; HAVE YOU EVER BEEN CONVICTED OF A CRIME? &nbsp;
               <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>&nbsp;&nbsp;Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                    </div>
            <p style ="margin-left :15px; font-size: medium;text-align :justify;margin-right :20px"> If yes, explain number of conviction(s), nature of offense(s) leading to convition(s), how recently such offense(s) was/were committed, sentence(s) imposed, and type(s) of rehabilitation
                <asp:TextBox ID="TextBox17" runat="server" Width ="700px" TextMode="MultiLine"></asp:TextBox>
            </p>
          
    </div>
 </div>


    </form>

</body>
</html>
