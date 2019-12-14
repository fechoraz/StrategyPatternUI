using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	/// <summary>
	/// Writer Behavior - Can create or edit posts, and submit them for approval
	/// </summary>
	public class WriterBehavior : BaseBehavior
	{
		public WriterBehavior()
		{
			CanEdit = true;
			CanPublish = false;
			CanReject = false;
			CanSubmit = true;
		}
	}
}
