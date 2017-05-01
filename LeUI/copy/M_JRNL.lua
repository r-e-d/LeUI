function wrapper(journalId, recvTime, stateType, chapter, timeStamp)
	-- "Murder Most Foul" should be an "Info".
	local id = engine_mode == 0 and 27084 or 227084
	if journalId == id then
		stateType = const.ENTRY_TYPE_INFO
	end

	-- Attach Kylee's entry into "Investigating the Nashkel Mines".
	id = engine_mode == 0 and 27224 or 227224
	if journalId == id then
		stateType = const.ENTRY_TYPE_INPROGRESS
	end

	savedUpdateJournalEntry(journalId, recvTime, stateType, chapter, timeStamp)
end

function inject()
	savedUpdateJournalEntry = updateJournalEntry
	updateJournalEntry = wrapper

	buildQuestsTable = savedBuildQuestsTable
	buildQuestsTable()
end

savedBuildQuestsTable = buildQuestsTable
buildQuestsTable = inject
savedUpdateJournalEntry = nil
