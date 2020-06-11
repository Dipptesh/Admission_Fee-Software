Imports System.Data.SqlClient
Imports System.Data.DataTable
Public Class AccountantData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim gender As String
    Dim accomodation As String
    Dim connection As New SqlConnection("Data Source=DESKTOP-NIO713H;Integrated Security=true;Initial Catalog=o7services")

    Protected Sub asearchbtn_Click(sender As Object, e As EventArgs) Handles asearchbtn.Click
        FilterData(asearch.Text)
    End Sub
    Public Sub FilterData(valueToSearch As String)

        Dim ds As New DataSet()
        connection.Open()
        Dim searchQuery As String = "SELECT * from student WHERE stud_name like '%" & valueToSearch & "%' or stud_fee like '%" & valueToSearch & "%' or stud_feesdue like '%" & valueToSearch & "%'"
        Dim command As New SqlCommand(searchQuery, connection)
        Dim adapter As New SqlDataAdapter(command)
        adapter.Fill(ds)
        connection.Close()

        aGridView1.DataSource = ds
        aGridView1.DataBind()


    End Sub

    Protected Sub aGridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles aGridView1.SelectedIndexChanged
        FilterData(asearch.Text)
    End Sub
End Class