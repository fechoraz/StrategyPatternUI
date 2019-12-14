using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Strategy.BusinessLogic;

namespace WebApplication
{
	public partial class _Default : System.Web.UI.Page
	{
		private RoleType CurrentRole;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ddlRoleTypes.SelectedIndex = 1;
				SetVisibility();
			}
		}

		protected void ddlRoleTypes_SelectedIndexChanged(object sender, EventArgs e)
		{
			CurrentRole = (RoleType) Convert.ToInt32(ddlRoleTypes.SelectedValue);

            //SetVisibilityBad();
			SetVisibility();
		}

		private void SetVisibility()
		{
			var behavior = BaseBehavior.GetBehavior(CurrentRole);

			btEditPost.Visible = behavior.CanEdit;
			btNewPost.Visible = behavior.CanEdit;
			btPublishPost.Visible = behavior.CanPublish;
			btRejectPost.Visible = behavior.CanReject;
			btSubmitPost.Visible = behavior.CanSubmit;
		}

		/// <summary>
		/// Bad code - don's use it
		/// </summary>
		private void SetVisibilityBad()
		{
			switch (CurrentRole)
			{
                case RoleType.Administrator:
                    btEditPost.Visible = true;
                    btNewPost.Visible = true;
                    btPublishPost.Visible = true;
                    btRejectPost.Visible = true;
                    btSubmitPost.Visible = true;
                    break;

				case RoleType.Editor:
					btEditPost.Visible = false;
					btNewPost.Visible = false;
					btPublishPost.Visible = true;
					btRejectPost.Visible = true;
					btSubmitPost.Visible = false;
					break;

				case RoleType.User:
					btEditPost.Visible = true;
					btNewPost.Visible = true;
					btPublishPost.Visible = false;
					btRejectPost.Visible = false;
					btSubmitPost.Visible = true;
					break;

				default:
					btEditPost.Visible = false;
					btNewPost.Visible = false;
					btPublishPost.Visible = false;
					btRejectPost.Visible = false;
					btSubmitPost.Visible = false;
					break;
			}
		}
	}
}
