-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 2497 then
  queststatus = getPlayerStorageValue(cid,2497)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a crusader helmet.")
   item_uid = doPlayerAddItem(cid,2497,1)
   setPlayerStorageValue(cid,2497,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

