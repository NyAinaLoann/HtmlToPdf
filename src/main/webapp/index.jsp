<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facture</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div id="facture">
        <h2>Facture</h2>
        <table>
            <thead>
            <tr>
                <th>Description</th>
                <th>Quantité</th>
                <th>Prix unitaire</th>
                <th>Total</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Produit 1</td>
                <td>2</td>
                <td>$10.00</td>
                <td>$20.00</td>
            </tr>
            <tr>
                <td>Produit 2</td>
                <td>1</td>
                <td>$15.00</td>
                <td>$15.00</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td colspan="3" style="text-align: right;">Total:</td>
                <td>$35.00</td>
            </tr>
            </tfoot>
        </table>
    </div>
    <button type="submit" id="export"> Exporter en PDF </button>

    <script src="./style/html2pdf/dist/html2pdf.bundle.js"> </script>
    <script>
        document.getElementById("export").addEventListener('click',function (){
            var element = document.getElementById("facture");
            html2pdf(element);
        });
    </script>
</body>


</html>
