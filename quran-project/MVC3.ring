#!c:\ring\bin\ring.exe -cgi
/*
	#Author 	:Sara Hamdy
	#Date		:2018/01/26
	#Application	:all quraan web page
*/

Load "weblib.ring"
Load "datalib2.ring"
Import System.Web

website = "MVC3.ring"

New QuranController { Routing() }

Class QuranModel from ModelBase

	cSearchColumn = "text"  

Class QuranController From ControllerBase

Class QuranView From ViewBase

  oLanguage = new QuranLanguageEnglish


  Func AddFuncScript oPage,oController
        return   oPage.scriptfuncajax("myadd",oController.cMainURL+
                 oController.cOperation+"=add","mysubpage")

  Func FormViewContent oController,oTranslation,oPage
        return [

                        [ oTranslation.aColumnsTitles[2], "textbox", "sura",
                          oController.oModel.sura, oPage.stylewidth("50%") ],
                        [ oTranslation.aColumnsTitles[3], "textbox", "aya",
                          oController.oModel.aya, oPage.stylewidth("50%") ],
                        [ oTranslation.aColumnsTitles[4], "textbox", "text",
                          oController.oModel.text, oPage.stylewidth("100%") ]
                   ]

Class QuranLanguageEnglish
	cTitle = "All Quran"
	cBack = "back"
	aColumnsTitles = ["ID","Sura","AYA ","text"]
	cOptions = "Options"
	cSearch = "Search"
	comboitems = ["Select Option...","Edit","Delete"]
	cAddRecord = "Add Record"
	cEditRecord = "Edit Record"
	cRecordDeleted = "Record Deleted!"
	aMovePages = ["First","Prev","Next","Last"]
	cPage = "Page"
	cOf = "of"
	cRecordsCount = "Records Count"
	cSave = "Save"
	temp = new page
	cTextAlign = temp.StyleTextRight()
	cNoRecords = "No records!"




