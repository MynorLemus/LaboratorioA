VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9990
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11265
   LinkTopic       =   "Form1"
   ScaleHeight     =   9990
   ScaleWidth      =   11265
   StartUpPosition =   3  'Windows Default
   Begin VB.Data m 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\estudiante\Desktop\LABORATORIOa\SVisualDB\SVisualDB.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   375
      Left            =   1200
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Estudiante"
      Top             =   8760
      Width           =   5775
   End
   Begin VB.CommandButton Command50 
      Caption         =   "Eliminar registro."
      Height          =   495
      Index           =   2
      Left            =   4200
      TabIndex        =   19
      Top             =   7440
      Width           =   2055
   End
   Begin VB.CommandButton Comman 
      Caption         =   "Guardar registro."
      Height          =   495
      Index           =   1
      Left            =   1920
      TabIndex        =   18
      Top             =   7440
      Width           =   2055
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Siguiente registro."
      Height          =   495
      Left            =   5400
      TabIndex        =   17
      Top             =   6600
      Width           =   2055
   End
   Begin VB.CommandButton ComM 
      Caption         =   "Agregar registro."
      Height          =   495
      Left            =   3120
      TabIndex        =   16
      Top             =   6600
      Width           =   2055
   End
   Begin VB.CommandButton Com 
      Caption         =   "Anterior registro."
      Height          =   495
      Index           =   0
      Left            =   720
      TabIndex        =   15
      Top             =   6600
      Width           =   2055
   End
   Begin VB.TextBox Text7 
      DataField       =   "Foto"
      DataSource      =   "m"
      Height          =   2535
      Left            =   7320
      TabIndex        =   14
      Text            =   "Text1"
      Top             =   480
      Width           =   2775
   End
   Begin VB.TextBox Text6 
      DataField       =   "semestre"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   13
      Text            =   "Text1"
      Top             =   4800
      Width           =   3735
   End
   Begin VB.TextBox Text5 
      DataField       =   "facultad"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   12
      Text            =   "Text1"
      Top             =   4080
      Width           =   3735
   End
   Begin VB.TextBox Text4 
      DataField       =   "edad"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Text            =   "Text1"
      Top             =   3360
      Width           =   3735
   End
   Begin VB.TextBox Text3 
      DataField       =   "apeliido"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   10
      Text            =   "Text1"
      Top             =   2520
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nombre"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   9
      Text            =   "Text1"
      Top             =   1800
      Width           =   3735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Foto."
      Height          =   375
      Index           =   4
      Left            =   7920
      TabIndex        =   8
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Semestre."
      Height          =   375
      Index           =   3
      Left            =   1080
      TabIndex        =   7
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Facultad."
      Height          =   375
      Index           =   2
      Left            =   1080
      TabIndex        =   6
      Top             =   4080
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Edad."
      Height          =   375
      Index           =   1
      Left            =   1080
      TabIndex        =   5
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Apellidos."
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   2520
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Carne."
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Nombre."
      Height          =   375
      Index           =   0
      Left            =   1080
      TabIndex        =   2
      Top             =   1800
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      DataField       =   "carne"
      DataSource      =   "m"
      Height          =   375
      Left            =   3120
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   1080
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Estudiantes."
      Height          =   495
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   5055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Com_Click(Index As Integer)
m.Recordset.MovePrevious
If m.Recordset.BOF Then
m.Recordset.MoveNext
End If
End Sub

Private Sub ComM_Click()
m.Recordset.AddNew
End Sub

Private Sub Comman_Click(Index As Integer)
m.Recordset.Update
End Sub

Private Sub Command50_Click(Index As Integer)
m.Recordset.Delete
End Sub

Private Sub Command7_Click()
m.Recordset.MoveNext
If m.Recordset.EOF Then
m.Recordset.MovePrevious
End If
End Sub
