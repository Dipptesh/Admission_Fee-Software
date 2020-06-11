Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class Enquiry
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim connection As New SqlConnection("Data Source=DESKTOP-NIO713H;Integrated Security=true;Initial Catalog=o7services")
    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles esubmit.Click

        Dim command As New SqlCommand("INSERT INTO enquiry1 VALUES ('" & fname.Text & "','" & college.Text & "','" & cnumber.Text & "','" & email.Text & "','" & country.Text & "','" & course.Text & "','" & duration.Text & "')", connection)
        connection.Open()
        If command.ExecuteNonQuery = 1 Then
            MsgBox("Application Submitted")
            fname.Text = ""
            college.Text = ""
            cnumber.Text = ""
            email.Text = ""
            country.Text = ""
            course.Text = ""
            duration.Text = ""
        Else
            MsgBox("Resubmit Application")
        End If
        connection.Close()
    End Sub
End Class