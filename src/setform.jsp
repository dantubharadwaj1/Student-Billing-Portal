<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<head>
<script>

function get(obj) {
      var poststr = "id=" + encodeURI( document.getElementsByName("id").value );
                    "&fname=" + encodeURI( document.getElementsByName("fname").value );
                    "&lname=" + encodeURI( document.getElementsByName("lname").value );
                    "&faname=" + encodeURI( document.getElementsByName("faname").value );
                    "&mname=" + encodeURI( document.getElementsByName("mname").value );
                    "&dateofbirth=" + encodeURI( document.getElementsByName("dateofbirth").value );
                    "&dateofjoining=" + encodeURI( document.getElementsByName("dateofjoining").value );
                    "&batch=" + encodeURI( document.getElementsByName("batch").value );
                    "&course=" + encodeURI( document.getElementsByName("course").value );
                    "&mobile=" + encodeURI( document.getElementsByName("mobile").value );
                    "&homep=" + encodeURI( document.getElementsByName("homep").value );
                    "&address=" + encodeURI( document.getElementsByName("address").value );
                    "&fyf=" + encodeURI( document.getElementsByName("fyf").value );
                    "&fyfp=" + encodeURI( document.getElementsByName("fyfp").value );
                    "&fyfb=" + encodeURI( document.getElementsByName("fyfb").value );
                    "&syf=" + encodeURI( document.getElementsByName("syf").value );
                    "&syfp=" + encodeURI( document.getElementsByName("syfp").value );
                    "&syfb=" + encodeURI( document.getElementsByName("syfb").value );
                    "&tyf=" + encodeURI( document.getElementsByName("tyf").value );
                    "&tyfp=" + encodeURI( document.getElementsByName("tyfp").value );
                    "&tyfb=" + encodeURI( document.getElementsByName("tyfb").value );
                    "&lyf=" + encodeURI( document.getElementsByName("lyf").value );
                    "&lyfp=" + encodeURI( document.getElementsByName("lyfp").value );
                    "&lyfb=" + encodeURI( document.getElementsByName("lyfb").value );
                    "&nb=" + encodeURI( document.getElementsByName("nb").value );
                    "&branch=" + encodeURI( document.getElementsByName("branch").value );
      makePOSTRequest("save.jsp", poststr);
   }

function makePOSTRequest(url, parameters) {
    http_request=false;
      if (window.XMLHttpRequest) { // Mozilla, Safari,...
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
         	// set type accordingly to anticipated content type
            //http_request.overrideMimeType('text/xml');
            http_request.overrideMimeType('text/html');
         }
      } else if (window.ActiveXObject) { // IE
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      
		http_request.onreadystatechange = alertContents;
     	http_request.open('POST', url, true);
     	http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      http_request.setRequestHeader("Content-length", parameters.length);
      http_request.setRequestHeader("Connection", "close");
      http_request.send(parameters);
    
   }


</script>
</head>

<form action="javascript:get(document.getElementById('myform1'));" name="myform" id="myform1" method="post">
<table cellspacing=15 cellpadding=15>
<tr><td><font style="color:navy"><B>Student Details:</B></font></td></tr>
<tr><td><B>Student ID:</B></td><td><input type="text" autocomplete = "off" name="id"></input></td></tr>
<tr><td><B>First Name:</B></td><td><input type="text" autocomplete = "off" name="fname"></input></td></tr>
<tr><td><B>Last Name:</B></td><td><input type="text" autocomplete = "off" name="lname"></input></td></tr>
<tr><td><B>Father Name:</B></td><td><input type="text" autocomplete = "off" name="faname" ></input></td></tr>
<tr><td><B>Mother Name:</B></td><td><input type="text" autocomplete = "off" name="mname" ></input></td></tr>
<tr><td><B>Date of Birth:</B></td><td><input type="text" name="dateofbirth" id = "datepicker1"></input></td></tr>
<tr><td><B>Date of Joining:</B></td><td><input type="text" name="dateofjoining" id = "datepicker2" ></input></td></tr>
<tr><td><B>Batch:</B></td><td><input type="text" autocomplete = "off" name="batch" ></input></td></tr>
<tr><td><B>Branch:</B></td><td><select name="branch">
          <option>Select a Branch</option>
          <option>EEE</option>
          <option>MECH</option>
          <option>CSE</option>
          <option>ECE</option>
          <option>IT</option>
          <option>CIVIL</option>
          <option>PHARM</option>
          </select></td></tr>
<tr><td><B>Course:</B></td><td><select name="course">
          <option>Select a Course</option>
          <option>B.Tech</option>
          <option>M.Tech</option>
          <option>MBA</option>
          <option>MCA</option>
          <option>B.Pharmacy</option>
          <option>M.Pharmacy</option>
          </select></td></tr>
<tr><td><B>Mobile:</B></td><td><input type="text" autocomplete = "off" name="mobile"></input></td></tr>
<tr><td><B>Land Phone:</B></td><td><input type="text" autocomplete = "off" name="lphone"></input></td></tr>
<tr><td><B>Address:</B></td><td><textarea autocomplete = "off" name="address"></textarea></td></tr>
<tr><td><B>First year fees:</B></td><td><input type="text" autocomplete = "off" name="fyf"></input></td></tr>
<tr><td><B>First year fees paid:</B></td><td><input type="text" autocomplete = "off" name="fyfp"></input></td></tr>
<tr><td><B>First year fees balance:</B></td><td><input type="text"  autocomplete = "off" name="fyfb"></input></td></tr>
<tr><td><B>Second year fees:</B></td><td><input type="text" autocomplete = "off" name="syf"></input></td></tr>
<tr><td><B>Second year fees paid:</B></td><td><input type="text" autocomplete = "off" name="syfp"></input></td></tr>
<tr><td><B>Second year fees balance:</B></td><td><input type="text"  autocomplete = "off" name="syfb"></input></td></tr>
<tr><td><B>Third year fees:</B></td><td><input type="text" autocomplete = "off" name="tyf"></input></td></tr>
<tr><td><B>Third year fees paid:</B></td><td><input type="text" autocomplete = "off" name="tyfp"></input></td></tr>
<tr><td><B>Third year fees balance:</B></td><td><input type="text" autocomplete = "off" name="tyfb"></input></td></tr>
<tr><td><B>Fourth year fees:</B></td><td><input type="text" autocomplete = "off" name="lyf"></input></td></tr>
<tr><td><B>Fourth year fees paid:</B></td><td><input type="text" autocomplete = "off" name="lyfp"></input></td></tr>
<tr><td><B>Fourth year fees balance:</B></td><td><input type="text" autocomplete = "off" name="lyfb"></input></td></tr>
<tr><td><B>Net balance:</B></td><td><input type="text" autocomplete = "off" name="nb"></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value=" Save" type="submit"></td></tr>
</table>
</form>


