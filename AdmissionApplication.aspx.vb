Imports System.Data.SqlClient

Public Class AdmissionApplication
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Dim gender As String
    Dim accomodation As String
    Dim connection As New SqlConnection("Data Source=DESKTOP-NIO713H;Integrated Security=true;Initial Catalog=o7services")

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        If male.Checked = True Then
            gender = "male"
        Else
            gender = "female"
        End If
        If No.Checked = True Then
            accomodation = "No"
        Else
            accomodation = "Yes"
        End If
        Dim duefees As Int64
        duefees = 10000 - CInt(Fees.Text)

        Dim command As New SqlCommand("insert into student(stud_name,stud_dep,stud_cour,stud_duration,stud_fee,stud_accom,stud_gender,stud_feesdue) values('" & sname.Text & "','" & dname.Text & "','" & cname.Text & "','" & duration.Text & "','" & Fees.Text & "','" & accomodation & "','" & gender & "','" & duefees & "')", connection)
        connection.Open()
        If command.ExecuteNonQuery = 1 Then
            MsgBox("Application Submitted")
            sname.Text = ""
            dname.Text = ""
            cname.Text = ""
            duration.Text = ""
            Fees.Text = ""

        Else
            MsgBox("Resubmit Application")
        End If
        connection.Close()
        
    End Sub
    
    Protected Sub male_CheckedChanged(sender As Object, e As EventArgs) Handles male.CheckedChanged
        gender = "Male"
    End Sub

    Protected Sub female_CheckedChanged(sender As Object, e As EventArgs) Handles female.CheckedChanged
        gender = "Female"
    End Sub

    Protected Sub Yes_CheckedChanged(sender As Object, e As EventArgs) Handles Yes.CheckedChanged
        accomodation = "Yes"
    End Sub

    Protected Sub No_CheckedChanged(sender As Object, e As EventArgs) Handles No.CheckedChanged
        accomodation = "No"
    End Sub
End Class