<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Simplify your UI with Strategy pattern</title>
    <style type="text/css">
    	*
    	{
    		font-family: Verdana, Arial;
    		font-size: 10pt;	
    	}
    	
		.header, .actions
		{
			width: 100%;
			margin: 5px 0px;
			padding: 5px;
			text-align: center;	
			vertical-align: middle;
		}
		
		.actions a
		{
			text-align: center;
			width: 150px;
			margin: 5px;
			padding: 5px 20px;
			background-color: Yellow;
			border: 1px solid blue;
		}
		
		h1
		{
			text-align: center;
			font-family: MS Sans Serif;
		}
		
		h1 a
		{
			font-size: 18pt;
		}
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="header">
		<asp:Label ID="lblRoles" runat="server" Width="100px" Text="Roles"></asp:Label>
    
    	<asp:DropDownList ID="ddlRoleTypes" runat="server" AutoPostBack="True" Width="200px" onselectedindexchanged="ddlRoleTypes_SelectedIndexChanged">
			<asp:ListItem Selected="True" Value="0">Simple User</asp:ListItem>
			<asp:ListItem Value="1">Writer</asp:ListItem>
			<asp:ListItem Value="2">Editor</asp:ListItem>
			<asp:ListItem Value="3">Administrator</asp:ListItem>
		</asp:DropDownList>
    </div>
    
    <div class="actions">
		<asp:LinkButton ID="btNewPost" runat="server">New</asp:LinkButton>
		<asp:LinkButton ID="btEditPost" runat="server">Edit Post</asp:LinkButton>
		<asp:LinkButton ID="btSubmitPost" runat="server">Submit Post</asp:LinkButton>
		<asp:LinkButton ID="btRejectPost" runat="server">Reject Post</asp:LinkButton>
		<asp:LinkButton ID="btPublishPost" runat="server">Publish Post</asp:LinkButton>
    </div>
    
    <div class="post">
		<h1><a href="http://www.lipsum.com/">Lorem ipsum</a></h1>
		
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae neque sapien, eu euismod elit. Nunc a semper tellus. Curabitur interdum nisl non nisl sagittis gravida mattis est scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam vitae est dolor, ac ultricies leo. Suspendisse ut purus libero, quis ornare lacus. Suspendisse lorem tortor, consequat nec vehicula sit amet, gravida vel orci. Vestibulum pulvinar aliquet pharetra. Donec lacinia nulla at orci accumsan faucibus. Sed porta fringilla ornare. Curabitur tortor nisi, sollicitudin sagittis condimentum nec, mollis eget mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur id lacus nisi, in luctus nulla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus gravida laoreet mi, et pulvinar felis tincidunt eu. Vestibulum laoreet, dui at ornare volutpat, ante metus aliquam nibh, bibendum faucibus justo purus nec sapien. Suspendisse tempus nulla nec est luctus semper a ut elit. Praesent ac semper ligula.</p>
		<p>Aenean ullamcorper risus at massa condimentum placerat imperdiet purus condimentum. Vestibulum eget nisi ipsum. In id commodo tortor. Morbi pellentesque, lorem in commodo malesuada, ligula mauris viverra augue, non consectetur mauris mi ut leo. Duis sem lorem, feugiat vel aliquam in, porttitor pretium neque. Nullam justo est, faucibus quis dapibus non, porta ac nibh. Donec fringilla ultrices magna at suscipit. In mollis purus et sapien vulputate at condimentum sem suscipit. Pellentesque consectetur sem non sem pharetra et porta velit fermentum. Mauris pulvinar risus nec lectus facilisis ultricies vulputate nisl dictum. Sed id sem et libero dapibus pulvinar. Phasellus tellus risus, aliquet non lacinia non, imperdiet eu velit. Sed vel leo id metus auctor imperdiet ut eu eros. Sed elementum mi vel ante tempor id sollicitudin tortor laoreet. Vestibulum rhoncus arcu eget augue ultricies vestibulum. Nulla congue dui ac turpis lacinia dignissim in ac enim. Morbi mauris tortor, scelerisque sit amet tincidunt nec, aliquam sed nisi. Morbi leo quam, euismod vitae iaculis at, malesuada facilisis ligula. Curabitur nunc lectus, eleifend fringilla consequat non, viverra et ipsum.</p>
		<p>Aliquam dignissim, lacus et interdum porttitor, nibh sapien viverra nibh, eget gravida mi dui vel purus. Mauris a eros nec massa gravida consectetur nec consequat arcu. Maecenas eu risus at nulla semper semper. In ultrices egestas magna eu varius. Etiam a purus neque, eget convallis lacus. Praesent id suscipit mi. Etiam nisi mauris, auctor vel sollicitudin sed, varius non urna. In laoreet dapibus nunc, nec bibendum felis porttitor eget. Ut convallis hendrerit adipiscing. Donec eleifend sem enim, sed cursus ligula. </p>
    </div>
    
    </form>
</body>
</html>
