using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	/// <summary>
	/// Administrator Behavior - can do everything
	/// </summary>
	public class AdministratorBehavior : BaseBehavior
	{
		public AdministratorBehavior()
		{
			CanEdit = true;
			CanPublish = true;
			CanReject = true;
			CanSubmit = true;
		}
	}
}
