using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	/// <summary>
	/// Simple user Behavior - no permissions
	/// </summary>
	public class UserBehavior : BaseBehavior
	{
		public UserBehavior()
		{
			CanEdit = false;
			CanPublish = false;
			CanReject = false;
			CanSubmit = false;
		}
	}
}
