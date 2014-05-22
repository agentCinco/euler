Dim res As Long = 0 

For i As Integer = 1 To 99 
   res += UseUpTo(100, i) 
Next i 

MessageBox.Show(res.ToString())

Private Function UseUpTo(ByVal targ As Integer, ByVal mx As Integer) As Long
    If (mx = 1) Then Return 1

    Dim wk As Long = 0
    Dim mn As Integer

    If (targ = 100) Then
        mn = mx
    Else
        mn = 0
    End If

    For i As Integer = mn To targ Step mx
        If (targ = i) Then
            wk += 1
        Else
            wk += UseUpTo(targ - i, mx - 1)
        End If
    Next i

    Return wk
End Function