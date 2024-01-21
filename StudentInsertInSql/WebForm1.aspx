<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StudentInsertInSql.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: arial;
            transition: all 0.5s ease;
            -webkit-transition: all 0.5s ease;
        }

        .container {
            padding: 40px;
            width: 500px;
            margin: 20px auto;
            background-color: #f1f1f1;
        }

            .container h2 {
                text-align: center;
            }

        fieldset {
            border: 1px solid #d4d4d4;
            padding: 20px 10px;
            margin-bottom: 20px;
            border-radius: 8px;
        }

        .input-field {
            display: flex;
            margin-bottom: 15px;
        }

        label {
            margin-right: 25px;
            margin-top: 5px;
            width: 30%;
            text-align: right;
            font-weight: bold;
        }

        .icon {
            background: #fcfcfa;
            color: black;
            min-width: 40px;
            border: 2px solid #e2e2e2;
            border-right: none;
            text-align: center;
            padding: 7px;
        }

        .inputs {
            padding: 3px 10px;
            border: 2px solid #e2e2e2;
            width: 70%;
        }

        input [type="radio"] {
            margin-right: 8px;
        }

        .textarea {
            padding: 8px;
            border: 2px solid #e2e2e2;
        }

        .textarea-icon {
            padding-top: 14px;
        }

        .button {
            text-align: center;
        }

        .submit {
            color: white;
            background: #ee9a25;
            padding: 9px 25px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 5px #c9c9c9;
        }

            .submit:hover {
                background: #d1871e;
            }

        .reset {
            color: white;
            background: #c93232;
            padding: 9px 25px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 5px #c9c9c9;
        }

            .reset:hover {
                background: #a32727;
            }

        .city {
            margin-left: -6px;
        }

        .gender {
            margin-left: -30px;
        }

        .courses {
            margin-left: -26px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        .message {
            margin-left: -30px;
        }

        .data_table {
            display: flex;
            margin:1.2rem;
            justify-content: center;
            align-items: center;
            font-size: 90%;
        }
    </style>

    <title></title>
</head>
<body>

    <div class="container">
        <h2>Registration From</h2>
        <form runat="server">
            <fieldset>
                <div class="input-field">
                    <label>Name</label>
                    <i class="fa fa-user icon"></i>
                    <asp:TextBox ID="name" placeholder="First Name" runat="server"></asp:TextBox>
                  
                    <asp:HiddenField ID="HDID" runat="server" />
                </div>
                <div class="input-field">
                    <label>Father's name</label>
                    <i class="fa-solid fa-people-roof icon"></i>
                    <asp:TextBox ID="faname" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label>Mother's name</label>
                    <i class="fa-solid fa-people-roof icon"></i>
                    <asp:TextBox ID="mname" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label>Email</label>
                    <i class="fa fa-envelope icon"></i>
                    <asp:TextBox ID="email" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label>Phone</label>
                    <i class="fa fa-eye-slash icon"></i>
                    <asp:TextBox ID="phone" placeholder="Phone" runat="server" MaxLength="10"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label class="gender">Gender</label>
                    <asp:RadioButtonList ID="gender" runat="server" DataTextField="ans2"
                        DataValueField="ans2">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <%--<asp:RadioButton ID="gbtn1" runat="server" Text="Male" GroupName="gender" class="inputs"/>  
                        <asp:RadioButton ID="gbtn2" runat="server" Text="Female" GroupName="gender" class="inputs"/>  --%>
                </div>
            </fieldset>

            <fieldset>
                <div class="input-field">
                    <label class="message">Address</label>
                    <i class="fa-solid fa-address-book icon textarea-icon"></i>
                    <asp:TextBox ID="addr" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label class="city">State</label>
                    <i class="fa fa-list icon"></i>
                    <asp:DropDownList ID="state" runat="server" class="inputs">
                        <asp:ListItem Text="Delhi"> </asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Biher</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Lucknow</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-field">
                    <label>Zip code</label>
                    <i class="fa fa-home icon"></i>
                    <asp:TextBox ID="code" placeholder="First Name" runat="server"></asp:TextBox>
                </div>
                <div class="input-field">
                    <label>Blood</label>
                    <i class="fa fa-phone icon"></i>
                    <asp:DropDownList ID="blood" runat="server" class="inputs">
                        <asp:ListItem Text="A+"> </asp:ListItem>
                        <asp:ListItem Text="A-"></asp:ListItem>
                        <asp:ListItem Text="B+"></asp:ListItem>
                        <asp:ListItem Text="B-"></asp:ListItem>
                        <asp:ListItem Text="O+"></asp:ListItem>
                        <asp:ListItem Text="O-"></asp:ListItem>
                        <asp:ListItem Text="AB+"></asp:ListItem>
                        <asp:ListItem Text="AB-"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-field">
                    <label class="courses">Courses</label>
                    <%--<input class="" type="checkbox" value="app-development">App Development
          <input class="" type="checkbox" value="marketing">Marketing
          <input class="" type="checkbox" value="editing">Editing--%>

                    <asp:RadioButtonList ID="courses" runat="server" DataTextField="ans2"
                        DataValueField="ans2">
                        <asp:ListItem>App development</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Editing</asp:ListItem>
                        <asp:ListItem>Web Development</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

            </fieldset>

            <div class="button">

                <asp:Button ID="create_acu" class="submit" runat="server" Text="Register Now" OnClick="create_acu_Click" />
                <asp:Button ID="updat_b" class="submit" runat="server" Text="Update" OnClick="updat_b_Click1"></asp:Button>
            </div>
    


    <div class="data_table">
        <table style="width: 100%;">
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                        CellPadding="4" DataKeyNames="id" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="key" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="cname" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Father">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="cfname" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mother name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("mname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lmnae" runat="server" Text='<%# Bind("mname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lemail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Phone">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lphone" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Gender">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lgender" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("addr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="laddr" runat="server" Text='<%# Bind("addr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="State">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lstate" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Zip code">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("code") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lcode" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Blood">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("blood") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblood" runat="server" Text='<%# Bind("blood") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Courses">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("courses") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lcourses" runat="server" Text='<%# Bind("courses") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <EditItemTemplate>
                                    <%--<asp:Button ID="edit_b" class="submit" runat="server" Text="Edit" OnClick="create_acu_Click"/>--%>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%--<asp:Button ID="edit_b" class="submit" runat="server" Text="Edit" Onclick="edit_b_Click"/>--%>
                                    <asp:LinkButton ID="edit_b" Class="submit" runat="server" Text="Edit" CommandName="_MODIFY" CommandArgument='<%# Eval("id") %>'  ToolTip="Edit" ></asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                    <EditItemTemplate>
                                 <%--<asp:Button ID="edit_b" class="submit" runat="server" Text="Edit" OnClick="create_acu_Click"/>--%>
                            </EditItemTemplate>
                            <ItemTemplate>
        <%--<asp:Button ID="edit_b" class="submit" runat="server" Text="Edit" Onclick="edit_b_Click"/>--%>
                                        <asp:LinkButton ID="delete_b" Class="reset" runat="server" Text="DELETE" CommandName="_DELETE" CommandArgument='<%# Eval("id") %>'  ToolTip="Delete"></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
     </div>
</body>
</html>
