<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<!--2015 Peds-->
<script runat="server">
    Public Function GetRandomImage() As String
	
        Dim path = Server.MapPath(SkinPath & "Images/Rotator/")
        
        Dim dir = New System.IO.DirectoryInfo(path)
        
        ' Dim files = System.IO.Directory.GetFiles(dir, "*.png", IO.SearchOption.TopDirectoryOnly)
	
        Return SkinPath & "Images/Rotator/" & (From f In dir.GetFiles("*.png") Order By Guid.NewGuid() Select f.Name).FirstOrDefault()
		
    End Function

    
    Protected Sub SearchButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextSearchButton.Click

        Dim term As String = Server.UrlEncode(Me.TextSearchBox.Text)
        
        Response.Redirect(String.Format("~/SearchPage.aspx?q={0}", term))
             
    End Sub
</script>

<link href="<%=SkinPath%>bootstrap/bootstrap.css" rel="stylesheet" />

<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<div class="body">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="under2">
        <img alt="" class="img-responsive hidden-xs hidden-sm" src="<%=SkinPath %>images/Brookings2.png" style="" usemap="#BrookingsMap"/>
        </div>
        <div class="over">        
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>    
        <a class="DeptTitleMobile hidden-md hidden-lg" href="/">Department of Pediatrics</a>      
        <a class="DeptTitleNavBar hidden-xs hidden-sm" href="/">Department of Pediatrics</a><br />
        <a class="" href="http://medicine.wustl.edu/" target="_blank"><img alt="" class="img-responsive hidden-xs" src="<%=SkinPath %>images/WUSLTMedLogo3.png" /></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->        
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Residency <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/residency/PediatricResidency.aspx">Residency Home</a></li>
            <li><a href="/residency/Welcome/Letterfromthechairman.aspx">Welcome</a></li>
            <li><a href="/residency/Program/Curriculum.aspx">The Program</a></li>
            <li><a href="/residency/TheDetails/Benefits.aspx">The Details</a></li>
            <li><a href="/residency/ApplicationProcess/Howtoapply.aspx">Application Process</a></li>
            <li><a href="/residency/Campus/Themedicalcenter.aspx">The Campus</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Fellowships <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/pulmonary/Fellowships.aspx">Allergy, Immunology & Pulmonary Medicine</a></li>
            <li><a href="/cardiology/Fellowship">Cardiology</a></li>
            <li><a href="/ChildAbusePediatrics">Child Abuse Pediatrics</a></li>
            <li><a href="/clinicalinformatics/ClinicalInformaticsHome.aspx">Clinical Informatics</a></li>
            <li><a href="/criticalcare/FellowshipOverview.aspx">Critical Care Medicine</a></li>
            <li><a href="/emergency/Fellowship.aspx">Emergency Medicine</a></li>
            <li><a href="/endodiabetes/Fellowship">Endocrinology & Diabetes</a></li>
            <li><a href="http://traininggrants.peds.wustl.edu/" target="_blank">Fellowship Training Grants</a></li>
            <li><a href="/gi/Fellowships.aspx">Gastroenterology, Hepatology & Nutrition</a></li>
            <li><a href="/genetics/ResidencyPrograms/GeneticsResidency">Genetics & Genomic Medicine </a></li>
            <li><a href="/hemonc/Fellowship">Hematology & Oncology</a></li>
            <li><a href="/id/Fellowships">Infectious Diseases</a></li>
            <li><a href="/nephrology/Fellowships">Nephrology</a></li>
            <li><a href="/newborn/Fellowships">Newborn Medicine</a></li>
            <li><a href="/rheum/TeachingFellowships">Rheumatology</a></li>
          </ul>
        </li>
        <li><a href="http://research.peds.wustl.edu/" target="_blank">Research</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Patient Care <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/patientcare/Home.aspx">Patient Care Home</a></li>
            <li><a href="/patientcare/PhoneNumbers.aspx">Phone Numbers</a></li>
            <li><a href="/patientcare/OfficeLocations.aspx">Office Locations</a></li>
            <li><a href="/patientcare/VirtualTours.aspx">Virtual Tours</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Divisions <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/Adolescent/home.aspx">Adolescent Medicine</a></li>
            <li><a href="/pulmonary/Home.aspx">Allergy, Immunology & Pulmonary Medicine</a></li>
            <li><a href="/ambulatory/Home.aspx">Ambulatory Medicine</a></li>
            <li><a href="/cardiology/Home.aspx">Cardiology</a></li>
            <li><a href="/criticalcare/Home.aspx">Critical Care Medicine</a></li>
            <li><a href="http://www.stlouischildrens.org/our-services/physicians/paul-s-simons-md" target="_blank">Developmental & Behavioral Pediatrics</a></li>
            <li><a href="/emergency/Home.aspx">Emergency Medicine</a></li>
            <li><a href="/endodiabetes/Home.aspx">Endocrinology & Diabetes</a></li>
            <li><a href="/gi/Home.aspx">Gastroenterology, Hepatology & Nutrition</a></li>
            <li><a href="/genetics/Home.aspx">Genetics & Genomic Medicine</a></li>
            <li><a href="/hemonc/Home.aspx">Hematology & Oncology</a></li>
            <li><a href="/hospitalists/Home.aspx">Hospitalist Medicine</a></li>
            <li><a href="/id/Home.aspx">Infectious Diseases</a></li>
            <li><a href="/labmed/Home.aspx">Laboratory Medicine</a></li>
            <li><a href="/nephrology/Home.aspx">Nephrology</a></li>
            <li><a href="/newborn/Home.aspx">Newborn Medicine</a></li>
            <li><a href="/apn/Home.aspx">Nurse Practitioners</a></li>
            <li><a href="/rheum/Home.aspx">Rheumatology</a></li>
            <li class="divider"></li>
            <li><a href="/pcf/Home.aspx">Pediatric Computing Facility</a></li>
            <li><a href="/clinicalinformatics/ClinicalInformaticsHome.aspx">Clinical Informatics</a></li>
            <li><a href="/Specialties">Other Services</a></li>
          </ul>
        </li>
        <li><a href="/Faculty">Faculty</a></li>
          <li> 
            <table border="0" cellpadding="0" cellspacing="0" class="SearchTable hidden-xs hidden-sm">
                <tr>
                <td style="" valign="top">
                <asp:TextBox ID="TextSearchBox" runat="server" CssClass="pedssearch"></asp:TextBox>
                </td>
                <td valign="top">
                <asp:ImageButton ID="TextSearchButton" runat="server" ImageUrl="images/PedsMagGlass.png"></asp:ImageButton>
                </td>
                </tr>
            </table>               
          </li>
          <li><a href="http://www.wustl.edu/" target="_blank">wustl</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid --></div>
</nav>
<div style="clear:both;"></div>
    <div class="MiddleBackground">
        <div class="container-fluid">
            <section class="row container" style="margin-left:auto;margin-right:auto;">
	            <div class="MainContentBody1Col pull-left" style="">
		            <div id="ContentPane" runat="server"></div>
	            </div>
            </section>
        </div>
    </div>
<div style="clear:both;"></div>
    <div class="BottomBackground">
    <div class="container-fluid">

        <div class="row container" style="margin-left:auto;margin-right:auto;">
          <div class="col-xs-12 col-sm-6 .col-sm-offset-1 col-md-3 col-lg-3 pull-left">
              <div class="PedsMegaMenuTitle">Internal Links</div>
              <a class="PedsMegaMenuLink" href="https://mail.wusm-pcf.wustl.edu/exchange" target="_blank">PCF Webmail</a><br />
              <div class="PedsMegaMenuLink">Citrix <a class="PedsMegaMenuLink" href="https://wii.pcf.wustl.edu/Citrix/AccessPlatform/auth/silentDetection.aspx">PC</a>/<a class="PedsMegaMenuLink" href="https://wii.pcf.wustl.edu/Citrix/Mac/auth/silentDetection.aspx">MAC</a></div>
              <a class="PedsMegaMenuLink" href="http://hr.wustl.edu" target="_blank">HRMS</a><br />
              <a class="PedsMegaMenuLink" href="https://pedsportal.pcf.wustl.edu" target="_blank">Pediatric Intranet</a><br />
              <a class="PedsMegaMenuLink" href="http://ofd.peds.wustl.edu" target="_blank">Office of Faculty Development</a><br />
             <dnn:LOGIN id="dnnLogin" runat="server" cssclass="PedsMegaMenuLink" legacymode="false" />
          </div>
          <div class="col-xs-12 col-sm-6 .col-sm-offset-1 col-md-3 col-lg-3 pull-left">
              <div class="PedsMegaMenuTitle">Affiliates</div>
              <a class="PedsMegaMenuLink" href="http://www.stlouischildrens.org" target="_blank">St. Louis Children’s Hospital</a><br />
              <a class="PedsMegaMenuLink" href="http://www.barnesjewish.org" target="_blank">Barnes-Jewish Hospital</a><br />
              <a class="PedsMegaMenuLink" href="http://www.bjc.org" target="_blank">BJC Healthcare</a><br />
              <a class="PedsMegaMenuLink" href="http://www.childrensdiscovery.org" target="_blank">Children’s Discovery Institute</a><br />
          </div>
          <div class="col-xs-12 col-sm-6 .col-sm-offset-1 col-md-3 col-lg-3 pull-right">
              <div class="PedsMegaMenuTitle">Contact Us</div>
              <a class="PedsMegaMenuLink" href="mailto:webmaster@kids.wustl.edu?subject=Question From Peds Website">webmaster@kids.wustl.edu</a><br />
              <div class="PedsMegaMenuLink">Follow Us:&nbsp;<a class="IconHover" href="https://www.facebook.com/WUSTLPeds" target="_blank"><img alt="" src="<%=SkinPath %>images/MMFacebookIcon.png" style="" /></a>&nbsp;<a class="IconHover" href="https://twitter.com/WUSTLPeds" target="_blank"><img alt="" src="<%=SkinPath %>images/MMTwitterIcon.png" style="" /></a>&nbsp;<a class="IconHover" href="https://www.youtube.com/user/WUSTLPeds" target="_blank"><img alt="" src="<%=SkinPath %>images/MMYouTubeIcon.png" style="" /></a></div>
              <a class="PedsMegaMenuLink" href="http://wuphysicians.wustl.edu/directory.aspx" target="_blank">Find a Physician</a><br />
              <a class="PedsMegaMenuLink" href="http://medicalalumni.wustl.edu/give/how-to-give" target="_blank">Make a Gift</a><br />
              <table border="0" cellpadding="0" cellspacing="0" class="SearchTable2 hidden-md hidden-lg .col-xs-4 pull-left" style="margin-top:5px;">
                <tr>
                <td style="" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="pedssearch"></asp:TextBox>
                </td>
                <td valign="top">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/PedsMagGlass.png"></asp:ImageButton>
                </td>
                </tr>
            </table>
          </div>
          <div class="col-xs-12 col-sm-6 .col-sm-offset-1 col-md-3 col-lg-3 pull-right">
              <div class="PedsMegaMenuTitle">IT Services</div>
              <a class="PedsMegaMenuLink" href="/pcf/Home">PCF Home</a><br />
              <a class="PedsMegaMenuLink" href="/clinicalinformatics">Clinical Informatics</a><br />
          </div>
        </div>
    </div>

<div style="clear:both;"></div>
    <div class="Footer">
        <div class="container-fluid hidden-xs hidden-sm">
            <section class="row">
                <div class="container">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"><div class="WhiteRue"></div>      
                        <a class="MMMedSchoolLogo" href="http://medicine.wustl.edu/" target="_blank"><img alt="" class="img-responsive" src="<%=SkinPath %>images/WUSLTMedLogo.png" /></a><br />
                        <div class="MMMedSchooltext">Our 2,100 employed and volunteer faculty — the <a class="MMMedSchoollink" href="http://wuphysicians.wustl.edu/" target="_blank">Washington University Physicians</a> — also are the medical staff of <a class="MMMedSchoollink" href="http://www.barnesjewish.org/" target="_blank">Barnes-Jewish</a> and <a class="MMMedSchoollink" href="http://www.stlouischildrens.org/" target="_blank">St. Louis Children's hospitals.</a> Through its hospital affiliations, the School is linked to BJC HealthCare.<br /><br />
                        <a class="MMMedSchoollink" href="http://www.wustl.edu/policies/copyright.html" target="_blank">&#169;&nbsp;2015 Washington Univeristy in St. Louis</a></div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"><div class="WhiteRue2"></div>
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/directory/academic-departments/" target="_blank">Departments & Programs</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/news/releases/" target="_blank">News</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://outlook.wustl.edu/" target="_blank">Outlook Magazine</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/maps/" target="_blank">Maps & Directions</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/calendar/" target="_blank">Calendar</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/contact/" target="_blank">Contact</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/directory/index/" target="_blank">A to Z Index</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="http://medicine.wustl.edu/policies/" target="_blank">Policies</a><br />
                        <a class="WhiteMedSchMegaMenuLink" href="https://emergency.wustl.edu/" target="_blank">Emergency Information</a><br /><br />
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                    <a class="IconHover" href="https://www.facebook.com/WUSTLmedicine.health" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolFBIcon.png" style="" /></a>&nbsp;&nbsp;<a class="IconHover" href="https://twitter.com/WUSTLmed" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolTIcon.png" style="" /></a>&nbsp;&nbsp;<a class="IconHover" href="https://www.linkedin.com/company/washington-university-school-of-medicine" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolINIcon.png" style="" /></a>&nbsp;&nbsp;<a class="IconHover" href="https://plus.google.com/+WashingtonUniversitySchoolofMedicineStLouis/videos" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolGIcon.png" style="" /></a>&nbsp;&nbsp;<a class="IconHover" href="http://feeds.feedburner.com/WUSTL-Medicine-News/" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolNewsIcon.png" style="" /></a>&nbsp;&nbsp;<a class="IconHover" href="http://reader.wustl.edu/" target="_blank"><img alt="" src="<%=SkinPath %>images/MedSchoolReadIcon.png" style="" /></a>       
                    <div class="WhiteRue3"></div>
                    <a href="http://together.wustl.edu/Pages/Home.aspx" target="_blank"><img alt="" class="img-responsive" src="<%=SkinPath %>images/LeadingTogetherLogo.png" style="" /></a>
                    <div class="WhiteRue3"></div>
                    <div class="MMMedSchooltext">660 S. Euclid Ave.<br />St. Louis, MO 63110
                    </div>
                    </div>
                </div>
            </section>
        </div>    
    </div>    </div>
<div style="clear:both;"></div>
</div>


<script src="<%=SkinPath%>js/cbpAnimatedHeader.js"></script>
<script src="<%=SkinPath%>js/jquery.easing.1.3.js"></script>
<script src="<%=SkinPath%>js/scrolling.js"></script>
<script src="<%=SkinPath%>bootstrap/bootstrap.js"></script>
<dnn:LANGUAGE id="dnnLANGUAGE" runat="server" showlinks="True" showmenu="False" />
    







