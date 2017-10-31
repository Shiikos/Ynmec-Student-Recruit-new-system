<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="ht_Default2" EnableEventValidation = "false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    请选择部门：<asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="115px">
    <asp:ListItem>组织部</asp:ListItem>
    <asp:ListItem>秘书处</asp:ListItem>
    <asp:ListItem>学宣部</asp:ListItem>
    <asp:ListItem>外联部</asp:ListItem>
    <asp:ListItem>体育部</asp:ListItem>
    <asp:ListItem>卫生部</asp:ListItem>
    <asp:ListItem>纪检部</asp:ListItem>
    <asp:ListItem>信息部</asp:ListItem>
    <asp:ListItem>影视制作部</asp:ListItem>
    <asp:ListItem>文艺部</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="刷新" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="导出Excel" />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" OnRowEditing="GridView1_RowEditing" DataKeyNames="姓名,性别,班级,手机号码,第一志愿,第二志愿" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True">
    <Columns>
        <asp:BoundField DataField="姓名" HeaderText="姓名" ReadOnly="True" />
        <asp:BoundField DataField="性别" HeaderText="性别" />
        <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" />
        <asp:BoundField DataField="班级" HeaderText="班级" />
        <asp:BoundField DataField="手机号码" HeaderText="手机号码" />
        <asp:BoundField DataField="第一志愿" HeaderText="第一志愿" />
        <asp:BoundField DataField="第二志愿" HeaderText="第二志愿" />
        <asp:CommandField ShowEditButton="True" />
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick=" return confirm(&quot;确定要删除吗&quot;);" Text="删除"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
</asp:GridView>
</asp:Content>

