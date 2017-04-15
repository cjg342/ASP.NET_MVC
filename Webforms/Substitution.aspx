<%@ Page Language="C#" %>
<%@ OutputCache Duration=60 VaryByParam="None" %>


<script runat="server">
    void Page_Load()
    {
        Label1.Text = DateTime.Now.ToString();
    }
    
    public static String GetTime(HttpContext context)
    {
      return DateTime.Now.ToString();
    }
</script>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
    <asp:Label runat="server" ID="Label1" />
    </p>
    <p>
    <asp:Substitution runat="server" 
        ID="Substitution1" 
        MethodName="GetTime" />
    </p>
    <p>
    <asp:Button runat="server" ID="Button1" Text="Submit"/>
    </p>
    </div>
    </form>
</body>
</html>
