%dw 2.0
output application/json
---
{
    TopCandidateList: (payload.candidates map ((candidate) -> {
        firstName: candidate.name,
        rank: candidate.score
    }) orderBy $.rank) [ -payload.availablePositions to -1]
}
