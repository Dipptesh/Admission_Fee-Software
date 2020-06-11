Imports System.Data.SqlClient
Imports System.Data.DataTable
Public Class ManageData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim gender As String
    Dim accomodation As String
    Dim connection As New SqlConnection("Data Source=DESKTOP-NIO713H;Integrated Security=true;Initial Catalog=o7services")
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged, search.TextChanged
        FilterData(search.Text)
    End Sub
    Public Sub FilterData(valueToSearch As String)
        Dim ds As New DataSet()
        connection.Open()
        Dim searchQuery As String = "SELECT * from student WHERE stud_name like '%" & valueToSearch & "%' or stud_dep like '%" & valueToSearch & "%' or stud_cour like '%" & valueToSearch & "%'"
        Dim command As New SqlCommand(searchQuery, connection)
        Dim adapter As New SqlDataAdapter(command)
        adapter.Fill(ds)
        connection.Close()

        GridView1.DataSource = ds
        GridView1.DataBind()

    End Sub
    Protected Sub searchbtn_Click(sender As Object, e As EventArgs) Handles searchbtn.Click
        FilterData(search.Text)
    End Sub

    Protected Sub refresh_Click(sender As Object, e As EventArgs) Handles refresh.Click

    End Sub
End Class