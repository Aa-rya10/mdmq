<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <title>Student Records</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 60%;
                        margin: auto;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: #cccccc;
                    }
                </style>
            </head>

            <body>
                <h2 style="text-align:center;">Student Records</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Grade</th>
                    </tr>

                    <xsl:for-each select="students/student">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="grade"/></td>
                        </tr>
                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>