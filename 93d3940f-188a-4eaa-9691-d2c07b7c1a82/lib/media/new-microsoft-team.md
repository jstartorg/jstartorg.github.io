>[!caution]
>*Please* read over the [[Teams]] documentation around  [[Teams#Creation]] and [[Teams#Planning]] before moving forward.

1. Create an [[Active Directory#Groups]]  In the `Teams` OU
	* `_Jumpstart > JS Security Groups > Teams`
	* `Team-TEAMNAME` or `Team-AffinityGroup-NAME` for affinity groups
	*  Set the following:
		* Group Scope `Universal`
		* Group Type `Security`
		* Email should mirror the same convention above with `@jstart.org`
	* Add `Teams Admin` as a member
		* I like to add myself as well so I know when the following sync happens
		* If you're feeling confident you can add everyone else here too
2. Create Team in [[Teams]] Portal with o365admin
	* https://admin.teams.microsoft.com
	* `Teams > Manage teams > Add`
	* Set the name, ex: `Affinity Group - Caregivers`
	* Add a short description, ex `The caregivers affinity group`
	* Privacy: `Private`
	* Use the [[Exchange]] Admin Panel  to update the Teams email address
		* https://admin.exchange.microsoft.com
		* The email address should look like this: `Team.AffinityGroup-Caregivers@jstart.org` This allows Azure to find and sync to the corresponding AD group: `Team-AffinityGroup-Caregivers@jstart.org`

3. Wait for the system to sync up
	* This is will likely take a few hours, buckle up
	* If you added yourself you'll be notified via email and Teams
5. Add remaining members to the AD group
	* Remove yourself (if you're not needed)
	* When the sync runs again they'll get the same email and teams notifications

6.  You did it, congrats 🎉