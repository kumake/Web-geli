<%
'*************LCache_Class.asp****************
Class LCache_Class
	'-------------------------------------------------------------
	'���̻����� LCache Ver 1.0 Build 20060810
	'-------------------------------------------------------------
	'��;��
	'	����html����
	'	
	'���Ա��
	'	(����)
	'		Version			�汾��Ϣ��ֻ��
	'		Name			�����ļ����ƣ�����·��������C:\aaa.rst��ֻд
	'		IsAvailable		�����ļ��Ƿ���ã�ֻ��
	'	(����)
	'		Add(file_tmp)	����¼��file_tmp���浽�����ļ��У������ļ�����Ӧ��ͨ��Name�����趨��
	'		Load()			�����������������
	'		Clear			��������ļ��������ļ�����Ӧ��ͨ��Name�����趨��
	'-------------------------------------------------------------
	'���ߣ�Lukin
	'��ϵ��mylukin@gmail.com
	'-------------------------------------------------------------
	'
	'==========================����������ʾ����ʼ===========================
	'
	'	Dim LCache
	'	Set LCache = New LCache_Class    '�����������
	'	
	'	thePath = "Cache/"
	'	
	'	LCache.Name = Server.Mappath(thePath&server.urlencode(FileName)&".LCT")    '�����ļ�����·�����ļ�����������չ���������ж���    '���û������Name����
	'	
	'	If LCache.IsAvailable Then    '����������
	'		LoadLCache = LCache.Load()        '����ػ����ļ�����¼����
	'	Else                        '����
	'		LoadLCache = Content
	'		LCache.Add TheBody    '����¼�����뻺��
	'	End If
	'	
	'	Set LCache = Nothing    '�ͷŻ������
	'==========================����������ʾ������===========================
	Private pName		'�����ļ����ƣ�����·��������C:\aaa.rst
	Private pFso		'fso����
	Private pVersion	'�汾
	Private pExpireHours '�������Сʱ�����

	Public Property Get Version()
		Version = pVersion
	End Property

	Public Property Let Name(ByVal str_tmp)
		pName = str_tmp
	End Property

	Public Property Get IsAvailable()
		Dim pRndMinutes,pExpireMinutes,pFile,pFileLastModifyTime
		If (pFso.FileExists(pName)) Then
			Randomize
			pRndMinutes = Int(9 * Rnd) + 1	'������֣��������л���ͬʱ����
			pExpireMinutes = 60 * pExpireHours + pRndMinutes

			Set pFile = pFso.GetFile(pName)
				pFileLastModifyTime = pFile.DateLastModified
			Set pFile = Nothing
				
			If DateDiff("n",pFileLastModifyTime,Now()) >= pExpireMinutes Then
				IsAvailable = False
			Else
				IsAvailable = True
			End If
		Else
			IsAvailable = False
		End If
	End Property

	Public Sub Add(ByRef file_tmp)
		Call Clear()
		Set Fout = pFso.CreateTextFile(pName)
			Fout.Write file_tmp
			Fout.Close
		Set Fout = Nothing
	End Sub
	
	Public Function Load()
		Set FinFile = pFso.OpenTextFile(pName)
			If Not FinFile.atEndOfStream Then '��ȷ����û�е����β��λ��
				Load = FinFile.ReadAll '��ȡ�����ļ�������
			End If
			FinFile.Close
		Set FinFile = Nothing
	End Function

	
	Public Sub Clear()
		If (pFso.FileExists(pName)) Then
			pFso.DeleteFile pName,True
		End If
	End Sub
	
	Private Sub Class_Initialize()
		pVersion = "���̻����� LCache Ver 1.0 Build 20050628"
		pExpireHours = LExpireHours	'Ĭ�Ϲ���ʱ��Ϊ1��
		Set pFso = Server.CreateObject("Scripting.FileSystemObject")
	End Sub

	Private Sub Class_Terminate()
		Set pFso = Nothing
	End Sub
End Class


%>