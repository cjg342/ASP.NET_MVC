<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PackTracker._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jQuery UI Sortable - Connect lists</title>
</head>
<body>
    <form id="form1" runat="server">

        
        <%--http://www.c-sharpcorner.com/UploadFile/abhikumarvatsa/Asp-Net-toolbox-standard-controls-part-1-in-VB-Net/--%>
        <h1>STANDARD Toolbox</h1> 
        
        <h3>Pointer</h3>
        It is just a pointer. 

        <h3>Ad Rotator</h3>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adFile.xml" Target="_blank" Height="100px" Width="100px" />
           
        <h3>BulletedList</h3>   
        <asp:BulletedList ID="BulletedList" runat="server" 
            DisplayMode="LinkButton" onclick="BulletedList_Click">
            <asp:ListItem Text="Google" Value="1"></asp:ListItem>
            <asp:ListItem Text="Microsoft" Value="2"></asp:ListItem>
            <asp:ListItem Text="Dell" Value="3"></asp:ListItem>
            <asp:ListItem Text="IBM" Value="4"></asp:ListItem>
        </asp:BulletedList>
        <asp:TextBox ID="BulletedListTextBox" runat="server" Width="393px"></asp:TextBox>

        <h3>Button</h3>        
        <asp:TextBox ID="ButtonTextBox" runat="server" Height="100px" ToolTip="TextBoxExample" 
            Font-Bold="True" MaxLength="10">Holder</asp:TextBox>
        <br />
        <asp:Button ID="Button" runat="server" Text="TextBoxButton" OnClick="Button_Click" />

        <h3>Calendar</h3>
        <asp:TextBox ID="CalendarTextBox" runat="server" Width="242px"></asp:TextBox>
        <asp:ImageButton ID="CalendarButton" runat="server" ImageUrl="~/Images/Calendar.png" onclick="Calendar_Click" />
        <asp:Calendar ID="Calendar" runat="server" ondayrender="Calendar_DayRender" onselectionchanged="Calendar_SelectionChanged"></asp:Calendar> 

        <h3>CheckBox</h3>
        <asp:CheckBox ID="CheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" />
        <asp:TextBox ID="CheckBoxTextBox" runat="server"></asp:TextBox>
                
        <h3>CheckBoxList</h3>
        <asp:CheckBoxList ID="CheckBoxList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList_SelectedIndexChanged">
            <asp:ListItem>zero</asp:ListItem>
            <asp:ListItem>one</asp:ListItem>
            <asp:ListItem>two</asp:ListItem>
        </asp:CheckBoxList>
        <asp:TextBox ID="CheckBoxListTextBox" runat="server" Width="480px"></asp:TextBox>
        
        <h3>DropDownList</h3>
        <asp:DropDownList ID="DropDownList" DataTextField="Name" 
            DataValueField="Id" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
        </asp:DropDownList> 
        <asp:TextBox ID="DropDownListTextBox" runat="server"></asp:TextBox>

        <h3>FileUpload</h3>
        <asp:FileUpload ID="FileUpload" runat="server" />
        <asp:Button ID="btnFileUpload" runat="server" Text="Upload File" onclick="btnFileUpload_Click" />
        <asp:Label ID="lblFileUploadMessage" Font-Bold="true" runat="server"></asp:Label> 


        <h3>HiddenField</h3>
        <script type="text/javascript">
            function GetHiddenFieldValue() 
            {
                alert(document.getElementById('HiddenField').value);
            }
        </script>
        <asp:HiddenField ID="HiddenField" runat="server" />
        <input id="btnHiddenField" type="button" value="Click to see hidden value load from javascript. Set on page load event" onclick="GetHiddenFieldValue()" />

        <h3>HyperLink</h3>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://google.com" Target="_blank">To Google</asp:HyperLink>

        <h3>Image</h3>
        <asp:Image ID="Image" runat="server" Height="100px" ImageUrl="~/Images/ad1.jpg" Width="100px" />

        <h3>ImageButton</h3>
        <asp:ImageButton ID="ImageButton" runat="server" Height="100px" ImageUrl="~/Images/ad2.jpg" OnClick="ImageButton_Click" Width="100px" />
        <asp:TextBox ID="ImageButtonTextBox" runat="server"></asp:TextBox>

        <h3>ImageMap</h3>
        Click on first head to google. Click on second head to gmail <br />
        <asp:ImageMap ID="ImageMap1" runat="server" Height="200px" ImageUrl="~/Images/ad3.jpg" Width="250px">
            <asp:RectangleHotSpot Bottom="9" HotSpotMode="Navigate" Left="12" NavigateUrl="http://google.com" Right="68" Target="_blank" Top="74" />
            <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="http://gmail.com" Radius="41" Target="_blank" X="139" Y="50" />
        </asp:ImageMap>

        <h3>Label</h3>
        <asp:Button ID="btnLabel" runat="server" Text="Button" OnClick="btnLabe_Click" />
        <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>

        <h3>LinkButton</h3>
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>

        <h3>ListBox</h3>
        <asp:ListBox ID="ListBox" runat="server" SelectionMode="Multiple">
            <asp:ListItem>one</asp:ListItem>
            <asp:ListItem>two</asp:ListItem>
            <asp:ListItem>three</asp:ListItem>
            <asp:ListItem>four</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:Button ID="ButtonListBox" runat="server" Text="Button" OnClick="ButtonListBox_Click" />
        <br />
        <asp:TextBox ID="ListBoxTextBox" runat="server" Width="514px"></asp:TextBox>

        <h3>Literal</h3>
        <asp:Literal ID="Literal" runat="server" Text="A label renders a <span> tag. It allows you to programmatically change the display characteristics of some text you want to display. A LiteralControl renders exactly whatever static HTML you want it to. There is no general advantage of using one over the other. One may be more useful than another in certain circumstances. For example, if you want to display static text, and make no programmatic changes to it, you might want to use a LiteralControl."></asp:Literal>
        
        <h3>Localize</h3>
        <asp:Localize ID="Localize" runat="server" Text="The Localize control is identical to the Literal Web server control and similar to the Label Web server control. Although the Label control lets you apply a style to the displayed text, the Localize control does not. You can programmatically control the text that is displayed in the Localize control by setting the Text property, which is inherited from the Literal control."></asp:Localize>

        <h3>Multiview</h3>
        <asp:MultiView ID="multiView" runat="server">
            <%--view1--%>
            <asp:View ID="viewPersonalDetails" runat="server">
                <table style="border:1px solid black">
                    <tr>
                        <td><h2>Step 1 - Personal Details.</h2></td>
                    </tr>
                    <tr>
                        <td style="text-align:right"> <asp:Button ID="btnGoToStep2" runat="server" Text="Step 2 >>" onclick="MultiViewbtnGoToStep2_Click" /></td>
                    </tr>
                </table>
            </asp:View>
            <%--view2--%>    
            <asp:View ID="viewContactDetails" runat="server">
                <table style="border:1px solid black">
                    <tr>
                        <td colspan="2"><h2>Step 2 - Contact Details</h2></td>
                    </tr>
                    <tr>
                        <td><asp:Button ID="btnBackToStep1" runat="server" Text="<< Step 1" onclick="MultiViewBacktoStep1_Click" /></td>
                        <td style="text-align:right"><asp:Button ID="btnGoToStep3" runat="server" Text="Step 3 >>" onclick="MultiViewBacktoStep3_Click" /></td>
                    </tr>
                </table>
            </asp:View>
            <%--view3--%>
            <asp:View ID="viewSummary" runat="server">
                <table style="border:1px solid black">
                    <tr>
                        <td colspan="2"><h2>Step 3 - Summary</h2></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="<< Step 2" onclick="MultiViewBacktoStep2" />
                        </td>
                        <td style="text-align:right">
                            <asp:Button ID="Button2" runat="server" Text="Submit >>" onclick="MultiViewSubmit" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
        <asp:TextBox ID="MultiViewTextBox" runat="server"></asp:TextBox>


        <h3>Panel</h3>
        <asp:DropDownList ID="PanelDropDownList" runat="server" AutoPostBack="true" onselectedindexchanged="PanelDropDownList_SelectedIndexChanged">
            <asp:ListItem Text="Select User" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
            <asp:ListItem Text="Non-Admin" Value="Non-Admin"></asp:ListItem>
        </asp:DropDownList>

        <asp:Panel ID="AdminPanel" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="AdminGreeting" runat="server" Font-Size="XX-Large" Text="You are logged in as an administrator">
                    </asp:Label>
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="NonAdminPanel" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="NonAdminGreeting" runat="server" Font-Size="XX-Large" Text="Welcome Non Admin User Tom!">
                    </asp:Label>
                </td>
            </tr>
        </table>
        </asp:Panel>

        <h3>Placeholder</h3>
        <asp:PlaceHolder ID="PlaceHolder" runat="server"></asp:PlaceHolder>

        <h3>RadioButton</h3>
        <asp:RadioButton ID="RadioButton" runat="server" Text="SelectOrNot" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" />
        <asp:TextBox ID="RadioButtonTextBox" runat="server" OnLoad="RadioButtonTextBox_Load"></asp:TextBox>
        
        <h3>RadioButtonList</h3>
        <asp:RadioButtonList ID="RadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList_SelectedIndexChanged">
            <asp:ListItem>zero</asp:ListItem>
            <asp:ListItem>one</asp:ListItem>
            <asp:ListItem>two</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="RadioButtonListTextBox" runat="server"></asp:TextBox>
        
        <h3>Substitution</h3>
        In some circumstances, you might want to cache an ASP.NET page but update selected portions of the page on every request. For example, you might want to cache the majority of a page but be able to dynamically update time-sensitive information on the page.
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Substitution.aspx">Substitution Page Example</asp:HyperLink>

        <h3>Table</h3>
        <asp:Table ID="Table1" runat="server" Font-Size="X-Large" Width="550" BackColor="Orange" BorderColor="DarkRed" BorderWidth="2" ForeColor="Snow" CellPadding="5" CellSpacing="5">
            <asp:TableHeaderRow runat="server" ForeColor="Snow" BackColor="OliveDrab" Font-Bold="true">
                <asp:TableHeaderCell>Serial</asp:TableHeaderCell>
                <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>Value</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                <asp:TableRow ID="TableRow1" runat="server" BackColor="OrangeRed">
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>Azure</asp:TableCell>
                    <asp:TableCell>#F0FFFF</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="TableRow4" runat="server" BackColor="DarkOrange">
                    <asp:TableCell>4</asp:TableCell>
                    <asp:TableCell>Crimson</asp:TableCell>
                    <asp:TableCell>#DC143C</asp:TableCell>
                </asp:TableRow>

            <asp:TableFooterRow runat="server" BackColor="DarkOrange">
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Right" Font-Italic="true">
                    Number of colors 5
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>

        <h3>TextBox</h3>
        <asp:TextBox ID="TextBox" runat="server">Holder</asp:TextBox>
        <br />
        <asp:Button ID="TextBoxButton" runat="server" Text="TextBoxButton" OnClick="TextBoxButton_Click" />

        <h3>View</h3>
        <asp:Literal ID="ViewLiteral" runat="server" Text="Can only be placed inside multiview. See above for example."></asp:Literal>

        <h3>Wizard</h3>
        <asp:Wizard ID="Wizard1" runat="server" onfinishbuttonclick="Wizard1_FinishButtonClick" onnextbuttonclick="Wizard1_NextButtonClick"> <SideBarStyle HorizontalAlign="Left" VerticalAlign="Top" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="Step 1 - Personal Details">
                <table style="border: 1px solid black">
                    <tr>
                        <td>First Name</td>
                        <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" StepType="Step" Title="Step 2 - Contact Details">
                <table style="border: 1px solid black">
                    <tr>
                        <td>Email Address</td>
                        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" StepType="Finish" Title="Step 3 - Summary">
                <table style="border: 1px solid black">
                    <tr>
                        <td colspan="2"><h3>Personal Details</h3></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td>:<asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td>:<asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </asp:WizardStep>
        </WizardSteps>
        </asp:Wizard>
        <br />
        <asp:TextBox ID="WizardTextBox" runat="server"></asp:TextBox>

        <h3>XML</h3>
        <asp:Xml ID="Xml" runat="server" DocumentSource="~/adFile.xml"></asp:Xml>
        
        

        <br />
        <br />
        <br />
        <br />  
        <h1>DATA Toolbox</h1> 
        
        <h3>Pointer</h3>
        Does nothing

        <h3>Chart</h3>
        
        <h3>GridView</h3>    
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>

        <br />
        <br />
        <br />
        <br />  
        <h1>Validation Toolbox</h1> 
        
        <h3>Pointer</h3>
        Does nothing

        <h3>CompareValidator</h3>
        <table>
            <tr>
                <td>
                    <b>Password</b>
                </td>
                <td>
                    :<asp:TextBox ID="CompareValidatortxtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Retype Password</strong></td>
                <td>
                    :<asp:TextBox ID="CompareValidatortxtRetypePassword" runat="server" 
                        Width="150px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server"
                    ErrorMessage="Password and Retype Password must match"
                    ControlToValidate="CompareValidatortxtRetypePassword" ControlToCompare="CompareValidatortxtPassword"
                    Type="String" Operator="Equal" ForeColor="Red">
                    </asp:CompareValidator>
                </td>
            </tr>
        </table>

        <asp:TextBox ID="CompareValidatortxtDateofapplicationTextBox" runat="server" Width="150px">Date of Application</asp:TextBox>

        <asp:CompareValidator ID="CompareValidatorDateofbirth" runat="server" 
        ErrorMessage="Date of application must be greater than 01/01/2012"
        ControlToValidate="CompareValidatortxtDateofapplicationTextBox" ValueToCompare="01/01/2012"
        Type="Date" Operator="GreaterThan" ForeColor="Red"
        SetFocusOnError="true"></asp:CompareValidator>

        <br />

        <asp:TextBox ID="CompareValidatorCompareValidatorAgeTextBox" runat="server" Width="150px">Age</asp:TextBox>

        <asp:CompareValidator ID="CompareValidatorAge" runat="server" 
        ErrorMessage="Age must be a number" ControlToValidate="CompareValidatorCompareValidatorAgeTextBox" 
        Operator="DataTypeCheck" Type="Integer" ForeColor="Red"
        SetFocusOnError="true"></asp:CompareValidator> 

        <br />

        <asp:Button ID="CompareValidatorButton" runat="server" Text="Save" Width="100px" onclick="CompareValidatorbtnSave_Click" />
        <asp:Label ID="CompareValidatorLabel" runat="server" Font-Bold="true"></asp:Label>

        <h3>CustomValidator</h3>
        <script type="text/javascript">
            // Client side validation function to check if the number is even. 
            function IsEven(source, args) 
            {
                if (args.Value == "") 
                {
                    args.IsValid = false;
                }
                else 
                {
                    if (args.Value % 2 == 0) 
                    {
                        args.IsValid = true;
                    }
                    else 
                    {
                        args.IsValid = false;
                    }
                }
            }
        </script>

        <table>
            <tr>
                <td><b>Please enter a positive even number</b></td>
                <td>
                    <asp:TextBox ID="txtEvenNumber" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidatorEvenNumber" runat="server"
                        ForeColor="Red" 
                        ErrorMessage="Not an even number"
                        OnServerValidate="CustomValidatorEvenNumber_ServerValidate"
                        ControlToValidate="txtEvenNumber"
                        ClientValidationFunction="IsEven"
                        ValidateEmptyText="true">
                    </asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="CustomValidatorbtnSubmit" runat="server" Text="Save" onclick="CustomValidatorbtnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="CustomValidatorlblStatus" runat="server" Font-Bold="true"></asp:Label></td>
            </tr>
        </table>



        <h3>RangeValidator</h3>
        <table>
            <tr>
            <td><b>Age</b></td>
            <td>
                :<asp:TextBox ID="txtAge" runat="server" Width="150px"></asp:TextBox>

                <asp:RangeValidator ID="RangeValidatorAge" runat="server" 
                    ErrorMessage="Age must be between 1 & 100"
                    MinimumValue="1" MaximumValue="100"
                    ControlToValidate="txtAge" Type="Integer" 
                    ForeColor="Red" Display="Dynamic">
                </asp:RangeValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" 
                runat="server" ErrorMessage="Age is required" 
                ControlToValidate="txtAge" ForeColor="Red"
                Display="Dynamic" >
                </asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
            <td><b>Date Available</b></td>
            <td>
                :<asp:TextBox ID="txtDateAvailable" runat="server" Width="150px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidatorDateAvailable" runat="server" 
                    ErrorMessage="Date must be between 01/01/2012 & 12/12/2012"
                    MinimumValue="01/01/2012" MaximumValue="12/12/2012"
                    ControlToValidate="txtDateAvailable" Type="Date" 
                    ForeColor="Red">
                </asp:RangeValidator>
            </td>
            </tr>
            <tr>
            <td colspan="2"><asp:Button ID="Button3" runat="server" Text="Save" Width="100px" onclick="RangeValidatorbtnSave_Click" />
            </td>
            </tr>
            <tr>
            <td colspan="2"> <asp:Label ID="RangeValidatorlblStatus" runat="server" Font-Bold="true"></asp:Label>
            </td>
            </tr>
        </table> 

        <h3>RegularExpressionValidator</h3>
        <h5>Email format blah@blah.com</h5>
        <asp:TextBox ID="RegularExpressionValidatorTextBox" runat="server" Width="150px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" 
        ControlToValidate="RegularExpressionValidatorTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ErrorMessage="Invalid Email" ForeColor="Red"></asp:RegularExpressionValidator> 


        <h3>RequiredFieldValidator</h3>
        <table>
            <tr>
                <td> <b>Name</b></td>
                <td>
                    :<asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" 
                        ForeColor="Red" ControlToValidate="txtName" Display="Dynamic" >
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><b>Gender</b></td>
                <td>
                    :<asp:DropDownList ID="ddlGender" runat="server" Width="150px">
                        <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" 
                    ErrorMessage="Gender is required" ForeColor="Red" InitialValue="-1"
                    ControlToValidate="ddlGender" Display="Dynamic" >
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnSave" runat="server" Text="Save" Width="100px" onclick="RequiredFieldValidatorbtnSave_Click"/></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="RequiredFieldValidatorlblStatus" runat="server" Font-Bold="true"></asp:Label></td>
            </tr>
        </table>

        <h3>ValidationSummary</h3>
        <table style="border: 1px solid black">
            <tr>
                <td colspan="2">
                    <h2>User Registration</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email</b>
                </td>
                <td>
                    <asp:TextBox ID="ValidationSummarytxtEmail" runat="server" Width="100px">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Email is required"
                    ControlToValidate="ValidationSummarytxtEmail" Display="Dynamic" Text="*">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ErrorMessage="Invalid Email Format"
                    ControlToValidate="ValidationSummarytxtEmail" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Text="*">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>User Name</b>
                </td>
                <td>
                    <asp:TextBox ID="ValidationSummarytxtUserName" runat="server" Width="100px">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Username is required"
                    ControlToValidate="ValidationSummarytxtUserName" Display="Dynamic" Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Password</b>
                </td>
                <td>
                    <asp:TextBox ID="ValidationSummarytxtPassword" runat="server" Width="100px" 
                    TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Password is required"
                    ControlToValidate="ValidationSummarytxtPassword" Display="Dynamic" Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Confirm Password</b>
                </td>
                <td>
                    <asp:TextBox ID="ValidationSummarytxtConfirmPassword" runat="server" TextMode="Password" 
                    Width="100px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password and Confirm Password must match"
                    ControlToValidate="ValidationSummarytxtConfirmPassword" ControlToCompare="ValidationSummarytxtPassword"
                    Operator="Equal" Type="String" ForeColor="Red" Text="*">
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Save" onclick="ValidationSummarybtnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                    ShowSummary="true" DisplayMode="List"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
                </td>
            </tr>
        </table>



    </form>
</body>
</html>



