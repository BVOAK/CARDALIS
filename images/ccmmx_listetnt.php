<HTML><HEAD>
<TITLE>CRM Cardalis - Liste des dernières expéditions TNT</TITLE>
<link REL="stylesheet" HREF="ccmmx_intranet.css" TYPE="text/css" media="screen"/>
</HEAD>
<BODY id="tnt">
<?php

$connection = mysql_connect("localhost","root","");
if ( ! $connection )
die ("connection impossible");

$mabasededonnee="cardalisrm";
mysql_select_db($mabasededonnee) or die ("pas de connection");

// Requête sur les prochains contacts

$requete="SELECT * from EXPEDITION WHERE (DATEDIFF(Now(),JOUR_ENVOI)<20) order by JOUR_ENVOI DESC"; 
$rs=mysql_query($requete,$connection) or die(mysql_error());
$num_rows = mysql_num_rows($rs);
?>
<table width="100%" border="0" align="center">
<tr id="enteteTNT">
<td width="100px" style="background-color: transparent;">&nbsp;</td>
<td width="100px">DATE D'ENVOI</td>
<td width="150px">N°SUIVI</td>
<td width="80px">FACTURE</td>
<td width="30px">LIV</td>
<td width="35%">CLIENT</td>
<td width="150px">SUIVI MAIL DE L'EXPEDITION</td>
</tr>
<?php
$lecompteurmumu = 0;
if ($num_rows == 0){
echo "<p>enregitrement non touvé</p>";
}
else {
while(($rs_row=mysql_fetch_assoc($rs))){
	$tnt = $rs_row['tnt'];
	$nocli = $rs_row['nocli'];
	$jour_envoi = $rs_row['jour_envoi'];
	$nom = $rs_row['nom'];
	$reference = $rs_row['reference'];
	$etat = $rs_row['etat'];
	$mailsuivi = $rs_row['mailsuivi'];
	$codeliv = $rs_row['codeliv'];
   if ($lecompteurmumu == 0) { $jour_envoiavant = $jour_envoi;};
   if ($jour_envoiavant != $jour_envoi) {
      echo '<tr style="background-color:#C54B00; height=3px;"><td style="background-color: transparent;"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>';		
    };
    if ($lecompteurmumu) { $jour_envoiavant = $jour_envoi;};
	if ($etat > 4) {	
	echo '<tr><td>'.$jour_envoi.'</td></td><td><a href="https://www.coliposte.net/pro/services/suivi_inet_pro.jsp?colispro='.$tnt.'" >'.$tnt.'</a></td><td>'.$reference.'</td><td>'.$nocli.' - '.$nom.'</td><td><img src="images/env.gif" /> '.$mailsuivi.'</td><td></td></tr>';
	} else {
	echo '<tr><td></td><td>'.$jour_envoi.'</td></td><td><a href="http://www.tnt.fr/public/suivi_colis/recherche/visubontransport.do?radiochoixrecherche=BT&bonTransport='.$tnt.'" >'.$tnt.'</a></td><td>'.$reference.'</td><td>' .$codeliv.'</td><td>'.$nocli.' - '.$nom.'</td><td><img src="images/env.gif" /> '.$mailsuivi.'</td></tr>';
	}
	$lecompteurmumu = $lecompteurmumu + 1;
}}
?>
</table>
<?php
mysql_close($connection);
?>
 
</BODY></HTML>

