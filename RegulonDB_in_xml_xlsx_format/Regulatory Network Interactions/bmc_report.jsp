<!--
    /*
     *
     * @name BMC_Report
     * @author ljmuniz
     *         liporron (nueva estructura)  2012/12/06
     * @version 
     * @Created  2008/04/15 17:48:32 
     * @description  
     * @requirements 
     * @category JSP
     * @environment 
     * @language java
     *
     */
-->



    <head>
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- 
/**
 *
 * @name header (headerWebSite)
 * @author ljmuniz
 *          jsgarcia (nueva estructura)  2012/11/09
 * @version 1.0
 * @Created  2008/04/15 17:48:32
 * @description Pagina que despliega el menu de la aplicacion y el combo de busquedas.
 * @requirements 
 * @category 
 * @environment 
 * @language java
 *
 */
-->






<!--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">-->
<html>
<head>
    <link rel="shortcut icon" href="/images/icon/favicon.ico" >

    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

    <script LANGUAGE="JavaScript" type="text/JavaScript"  src="js/local/SelectAll.js"></script>
    <script language="javascript" type="text/JavaScript" src="/js/local/tip.js"></script>
    <script language="javascript" type="text/JavaScript" src="/js/local/tools.js"></script>
    <script language="JavaScript" type="text/JavaScript" src="/js/local/regulondb_menu.js"></script>
    <script language="JavaScript" type="text/JavaScript" src="/js/local/mm_menu.js"></script>
    <script language="Javascript" type="text/JavaScript" src="/js/local/showMenu.js"></script>

    <link href="/css/local/regulondbCSS.css" rel="stylesheet" type="text/css">
    <link href="/css/local/styleSheetRegulonDBV5.css" rel="stylesheet" type="text/css">

    
    <link type="text/css" rel="stylesheet" href="/css/local/style.css"> <!-- Para central panel home  -->
    <link type="text/css" rel="stylesheet" href="/css/local/style_distr.css"><!-- Para central panel menu   -->
    <!--
    ToolTips code
    -->
       
    
    <script type="text/javascript">
    //alert(document.URL);
    </script>

    
    <script> 
        function send_form(){ 
           document.form.submit() 
        } 
    </script> 
</head>

<body> <!-- pleaseWait(); -->
    <!--<DIV id="prepage" style="position:absolute; font-family:arial; font-size:16; left:250px; top:326px; background-color:white; layer-background-color:white; height:100%; width:581px;"> 
            <TABLE width=100%><TR><TD><div align="center"><img src="images/indicator_medium.gif" width="32" height="32"></div></TD></TR>
            <TR>
                <TD><div align="center"><B>Loading ...  Please wait!</B></div></TD>
        </TR>
            </TABLE>
    </DIV> -->
    
    
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title> RegulonDB </title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
</head>

<body>

<!-- HEADER -->

	<div id="header"> 
    	<div id="logo">
        	<a class="logo_style" href="#"></a>
            <div id="search_head">
        		
                <form id="form_top" name="form" method="get" action="/search?term=" onSubmit="return validateBox();">
                    <label>search</label>
                    <input name="term" type="text">
                    <label class="header_aligns">in</label>
                    <select name="type" class="labelBlack" valign="bottom">
                        
                            <option value="all"  >All</option>
                        
                            <option value="gene" selected="selected" >Gene</option>
                        
                            <option value="gensorunit"  >Gensor Unit</option>
                        
                            <option value="operon"  >Operon</option>
                        
                            <option value="regulon"  >Regulon</option>
                        
                            <option value="sigmulon"  >Sigmulon</option>
                        
                            <option value="srna"  >sRNA</option>
                        
                            <option value="growthcondition"  >Growth Condition</option>
                        
                    </select>
                    <input name="organism" type="hidden" id="organism" value="ECK12">
                    <a class="button_form" href="javascript:send_form()"></a>
                </form>
        	</div>
        </div>
    	<div id="espacio_pestanas">
        	<div id="pestanas">
            	<ul>
                	<!-- Las clases "active_a" y "active_b" sirven para pintar los fondos de la pestaña activa -->
                    <li><a href="/index.jsp">Home</a></li>
                    <li><a href="/central_panel_menu/features_menu.jsp">Features</a></li>                 
                    <li><a href="/central_panel_menu/integrated_views_and_tools_menu.jsp">Integrated Views & Tools</a></li>
                    <li><a href="/central_panel_menu/downloads_menu.jsp">Downloads</a></li>
                    <li><a href="/central_panel_menu/doc_and_help_menu.jsp">Doc & Help</a></li>
                    
                </ul>
            </div>    
        </div>
    </div>
    
</body>
</html>


                
                
      <script language="JavaScript1.2">mmLoadMenus();</script>
        
        <script>

            function visualizar(idFormulario) {
                document.formContact.url.defaultValue = document.URL.toString();
                document.formContact.url.value=document.URL.toString();

                document.formContact.action="/menu/about_regulondb/contact_us/index.jsp";
                //document.formContact.action="/menu/about_regulondb/contact_us/index.jsp";
                popup();

                document.formContact.submit();
            }
            function popup() {
                var opciones='left=100,top=600,width=600,height=600,scrollbars=yes,directories=no,status=no,toolbar=no,menubar=no,location=no';
                window.open('/menu/about_regulondb/contact_us/index.jsp','popup',opciones);
                //window.open('/menu/about_regulondb/contact_us/index.jsp','popup',opciones);

            }
                    
        </script>
    

    
        <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
        </script>
        <script type="text/javascript">
            _uacct = "UA-2862700-2";
            urchinTracker();
        </script>
    

        <title>RegulonDB 8.6: Regulatory NetWork Interactions Report</title>
        <link href="css/styleSheetRegulonDBV5.css" rel="stylesheet" type="text/css">
    </head>

    <div align="center"><span class="title">Regulatory
            NetWork Interactions Report</span> </div>
    
    <P STYLE="margin-bottom: 0cm"><BR></P>
    <P STYLE="margin-bottom: 0cm"><B>Table 1. Summary of differences
        comparing with the regulatory interactions from Ma.</B>
    </P>

    <CENTER>
            <TABLE WIDTH=564 BORDER=1 BORDERCOLOR="#000000" CELLPADDING=5 CELLSPACING=0>
                    <COL WIDTH=330>
                    <COL WIDTH=110>
                    <COL WIDTH=92>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330 BGCOLOR="#e6ff00">
                                <P><BR>
                                </P>
                            </TD>
                            <TD WIDTH=110 BGCOLOR="#e6ff00">
                                <P><B><SPAN STYLE="background: transparent">Alon </SPAN></B>
                                </P>
                            </TD>
                            <TD WIDTH=92 BGCOLOR="#e6ff00">
                                <P><B><SPAN STYLE="background: transparent">Ma </SPAN></B>
                                </P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>New interactions according by :</P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT><B>346</B></P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT><B>93</B></P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>New Regulatory interactions added in RegulonDB and EcoCyc</P>
                            </TD>
                            <TD WIDTH=110>
                                    <P ALIGN=RIGHT>69</P>
                            </TD>
                            <TD WIDTH=92>
                                    <P ALIGN=RIGHT>27</P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>Sigma Factor Regulatory interactions added in RegulonDB and
                                    EcoCyc</P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT>32</P>
                            </TD>
                            <TD WIDTH=92>
                                    <P ALIGN=RIGHT>22</P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>already curated Regulatory interactions 
                                </P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT>130</P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT>13</P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>already curated sigma factor Regulatory interactions</P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT>93</P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>Interactions updated</P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT>3</P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330 BGCOLOR="#ffffcc">
                                <P><BR>
                                </P>
                            </TD>
                            <TD WIDTH=110 BGCOLOR="#ffffcc">
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                            <TD WIDTH=92 BGCOLOR="#ffffcc">
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                    </TR>
                    <TR>
                            <TD WIDTH=330 VALIGN=TOP>
                                <P>Other kind of regulation</P>
                            </TD>
                            <TD WIDTH=110 VALIGN=TOP>
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                            <TD WIDTH=92 VALIGN=BOTTOM SDVAL="12" SDNUM="1033;">
                                <P ALIGN=RIGHT>12</P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>Interactions inferred from microarray data 
                                </P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT><BR>
                                </P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT>10</P>
                            </TD>
                    </TR>
                    <TR VALIGN=TOP>
                            <TD WIDTH=330>
                                <P>Interactions not found in any literature source</P>
                            </TD>
                            <TD WIDTH=110>
                                <P ALIGN=RIGHT>19</P>
                            </TD>
                            <TD WIDTH=92>
                                <P ALIGN=RIGHT>9</P>
                            </TD>
                    </TR>
            </TABLE>
    </CENTER>

    <P STYLE="margin-bottom: 0cm"><BR></P>
    <P STYLE="margin-bottom: 0cm"><BR></P>
    <P STYLE="margin-bottom: 0cm"><FONT SIZE=4><B>Uri Alon NetWork Interactions.</B></FONT></P>
    <P STYLE="margin-bottom: 0cm"><BR></P>
    <OL>
            <LI><P STYLE="margin-bottom: 0cm">Interactions not found in any
            literature source</P>
    </OL>
    <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR>
    </P>

    <PRE>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><B>TF		operon name</B></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">Fis		sdhCDAB-b0725-sucABCD</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">FlhDC		fliE</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">FlhDC		fliFGHIJK</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">RpoE		rpoD</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">RpoN		atoC</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">RpoN		nycA</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">RpoN		rtcR</FONT></P>
        <P STYLE="margin-bottom: 0cm"><BR>
        </P>
    </PRE>

    <P STYLE="margin-bottom: 0cm"><FONT SIZE=4><B>MA  NetWork Interactions.</B></FONT></P>
    <P STYLE="margin-bottom: 0cm"><BR></P>
    <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm">1. Other kind of regulation</P>
    <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR></P>
    <PRE>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><B>TF		operon name</B></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ryhB		bfr</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">sohA		degP</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ryhB		ftnA</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ryhB		fumA</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">luxS		lsrR</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">RnK		ndk</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">hfq		ryhB</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ryhB		sdhCDAB</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ryhB		sodB</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR> </P>

    </PRE>
    <OL START=2>
            <LI><P STYLE="margin-bottom: 0cm"><SPAN LANG="en-US">Interactions
            inferred from microarray data</SPAN></P>
    </OL>
    <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR></P>
    <PRE>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><B>TF		operon name</B></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ydeO		appCB</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ydeO		gadA</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ydeO		gadBC</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ydeO		hdeD</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">ydeO		slp</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">gadX		slp</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">evgA		ydeO</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">evgA		yegZ</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR>
        </P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR>
        </P>
    </PRE>

    <OL START=3>
            <LI><P STYLE="margin-bottom: 0cm"><FONT FACE="Thorndale">Interactions
            not found in any literature source</FONT></P>
    </OL>
    <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><BR>
    </P>
    <PRE>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><B>TF		operon name</B></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">rpoS		csgC</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">lsrR		ego</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">hns		evgA</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">EvgA		mdtABCD</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">yhiE		slp</FONT></P>
        <P STYLE="margin-left: 2.2cm; margin-bottom: 0cm"><FONT FACE="Courier, monospace">gadX		yhiD</FONT></P>
    </PRE>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title> RegulonDB </title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
</head>

<body>

 <div id="footer">
		<div id="spacer">
    	</div>
        <div id="logos">
                <a target="_blank" href="http://www.unam.mx" class="logoss logo_1"></a>
                <a target="_blank" href="http://www.ccg.unam.mx" class="logoss logo_2"></a>
                <a target="_blank" href="http://www.nih.gov" class="logoss logo_3"></a>
                <a target="_blank" href="http://www.conacyt.gob.mx" class="logoss logo_4"></a>
                <a href="/menu/about_regulondb/contact_us/index.jsp" class="cont">Contact us</a>
                <a href="/menu/about_regulondb/funding/index.jsp" class="cont">Funding</a>
                <a href="/menu/download/full_version/terms_and_conditions.jsp" class="cont">Terms & conditions</a>
                <a href="/menu/using_regulondb/terms_and_conditions/citing_conditions/index.jsp" class="cont">How to cite</a>
        </div>
        <div id="script" align="center">
        <form name="formContact" action="/menu/about_regulondb/contact_us/index.jsp" method="get" target="popup" id="contact_us">
        <Strong>&copy;1998-2014</Strong>, CCG/UNAM All Rights Reserved.
        RegulonDB is free for academic/noncommercial use. </br> RegulonDB 8.6, 4-11-2014. Our curation knowledge is currently mapped to the GenBank Reference Sequence for <em>E. coli </em>K12.<br>Version NC_000913.2  GI:49175990.
        <INPUT TYPE="hidden" NAME="url" value="">
        <INPUT TYPE="hidden" NAME="popPup" value="yes">
        Send your comments to RegulonDB Team <a href="#" onclick="javascript:visualizar();return false;" class="linkOrange" > <Strong>HERE</Strong></a>
        </form>
    	</div> 
    </div>
    
</body>
</html>




