function onUse(cid, item, frompos, item2, topos)

if item.uid == 25294 then
	if item.itemid == 1223 or item.itemid == 1225 or item.itemid == 1227 or item.itemid == 1229 then
		if getPlayerVocation(cid) == 2 then
		pos = getPlayerPosition(cid)

			if pos.x == topos.x then
				if pos.y < topos.y then
				pos.y = topos.y + 0
				else
				pos.y = topos.y - 0
				end
			elseif pos.y == topos.y then
				if pos.x < topos.x then
				pos.x = topos.x + 0
				else
				pos.x = topos.x - 0
				end
		else
		doPlayerSendTextMessage(cid,22,'Please stand in front of the door.')
		return 1
		end
		doTransformItem(item.uid, item.itemid+1)
		doTeleportThing(cid,pos)
		else
		doPlayerSendTextMessage(cid,22,'It\'s Locked!')
		end
	else
		doPlayerSendTextMessage(cid,22,'Sorry, not possible.')
		end	
return 1
else
return 0
end
end