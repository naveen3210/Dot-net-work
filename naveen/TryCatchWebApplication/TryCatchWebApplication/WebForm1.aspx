<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TryCatchWebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    try
{
        string connectionString =
"Metadata=.\\<specify the entity here>.csdl|.\\< specify the entity here >.ssdl|.\\< specify the
entity here >.msl;" +
"Provider=System.Data.SqlClient;Provider Connection String=\"" +
"Data Source=localhost;Initial Catalog=<specify the database name>;Integrated Security=True\"";
using (EntityConnection connection =
new EntityConnection(connectionString))
{
connection.Open();
EntityCommand command = new EntityCommand(
"<Specify your SQL Select Statement here>",
connection);
// Entity command requires SequentialAccess
DbDataReader reader = command.ExecuteReader(
CommandBehavior.SequentialAccess);

    while (reader.Read())
{
Console.WriteLine("{0}\t{1}",
reader[0], reader[1]);
}
}
}
catch(QueryException ex)
{
Console.WriteLine(ex.ToString());
}



    </div>
    </form>
</body>
</html>
