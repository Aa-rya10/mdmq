<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Student Table</title>
</head>

<body>

<h2>Student Records</h2>

<table border="1" cellpadding="10">
<tr>
    <th>Name</th>
    <th>Roll No</th>
    <th>Marks</th>
</tr>

<xsl:for-each select="students/student">
<tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="rollno"/></td>
    <td><xsl:value-of select="marks"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>