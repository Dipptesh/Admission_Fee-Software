﻿Imports System.Data.SqlClient
Public Class AccountantLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As ImageClickEventArgs)
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnection").ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("select * from login_old where UserName =@username and Password=@password", con)
        cmd.Parameters.AddWithValue("@username", AUserName.Text)
        cmd.Parameters.AddWithValue("@password", APWD.Text)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Response.Redirect("AccountantData.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
        End If
    End Sub
End Class